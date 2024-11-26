// notes about this file:
//
// this file contains an example of how to use the corresponding Jasmin MLKEM
// implementation:
// - we distribute this file **purely** for illustration purposes
// - this file was only tested in Debian and using the corresponding .s file
// - to compile and execute this file, type `make` and `./example`
// - what it does:
//   - it runs keypair, enc(apsulate), and dec(apsulate)
//   - it prints the outputs/arguments of the functions
//   - and it performs a simple check (shared secret from encapsulate is the
//     same after decapsulate)

#include <stdint.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>
#include <inttypes.h>
#include <limits.h>

//
// auxiliary functions for printing
static void print_info(const char *algname, const char *arch, const char *impl)
{
  printf("// {\"%s\" : { architecture : \"%s\", implementation : \"%s\"} }",
         algname, arch, impl);
  printf("\n");
}

static void print_u8(const uint8_t *a, size_t l)
{
  size_t i;

  if(l == 0)
  { return; }

  printf("{\n  ");
  for(i=0; i<(l-1); i++)
  { printf("0x%02" PRIx8 ", ", a[i]);
    if((i+1)%16 == 0)
    { printf("\n  "); }
  }

  printf("0x%02" PRIx8 "\n};\n", a[i]);
  return;
}

static void print_str_u8(const char *str, const uint8_t *a, size_t l)
{
  if( l == 0 )
  { printf("uint8_t *%s = NULL;\n", str);
    return;
  }
  
  printf("uint8_t %s[%zu] = ",str, l);
  print_u8(a, l);
}

//
// IMPORTANT NOTES:
//
// The Jasmin implementation of ML-KEM includes the randomized and derandomized
// API. For instance, there are two functions that allow to generate a keypair:
// keypair and keypair_derand.
//
// The first function, keypair, expects two arguments: public_key and 
// secret_key (pointers to a memory region with an appropriate length).
//
// When executed, the Jasmin implementation will call the function
// __jasmin_syscall_randombytes__ to get randombytes. This function is
// defined in the file jasmin_syscall.c, which is located in the corresponding
// implementation folder, next to the Jasmin and assembly files, for the user's
// convenience. __jasmin_syscall_randombytes__ must not be changed.
//
// Even though we provide a __jasmin_syscall_randombytes__ function, we only
// provide a partial definition of it: __jasmin_syscall_randombytes__ calls
// randombytes, and randombytes is not defined in this repository (except
// for demonstration and testing purposes).
//
// The keypair_derand function expects an additional argument: random_coins
// (a pointer to a memory region with an appropriate length containing 
// cryptographically secure random bytes) and, as such, it does not call
// __jasmin_syscall_randombytes__ because it gets the random bytes it
// needs from the caller. The case is similar for the enc(apsulate) and
// enc_derand functions.
//
// ****************************************************************************
// WARNING: In REAL-WORLD DEPLOYMENTS, it is the USER's RESPONSIBILITY to 
// implement/select/provide a cryptographically secure implementation of
// randombytes that fulfills, for instance, their organization's policies,
// compliance requirements, etc. 
// ****************************************************************************
//
// Next, and purely for illustration purposes, we define randombytes.
//
#include <openssl/rand.h>

void randombytes(uint8_t *dest, uint64_t length_in_bytes)
{
  int r;

  assert(length_in_bytes <= INT_MAX); // production code should check
  // assumptions systematically and handle errors more 'graciously'
  // (assert calls abort, which "cause abnormal process termination");
  // this is to highlight the previous discussion, please do not copy
  // paste this code.

  r = RAND_bytes((unsigned char*)dest, (int)length_in_bytes);
  assert(r == 1); // man RAND_bytes says "RAND_bytes() and RAND_priv_bytes()
  // return 1 on success"
}

//
// this corresponds to the api.h file that can be found in folders
// mlkem-libjade/src/mlkem768_** (check Makefile and -I compiler option)
#include "api.h"

//
// notes:
// - api.h files are heavily namespaced; for instance, they define 
//   jade_kem_mlkem_mlkem768_amd64_ref_PUBLICKEYBYTES instead of 
//   mlkem768_PUBLICKEYBYTES or crypto_PUBLICBYTES.
//
// - api.h files are defined this way to avoid conflicts, facilitate
//   integration, and, in general, make clear what a given macro
//   refers to at any given point. We leave it to the user, as it
//   heavily depends on the integration context, to define more
//   convenient namespaces.
//
// - We will do something similar next to simplify the reading of this file.
//   For that, we define the following macros.

#define mlkem768_SECRETKEYBYTES jade_kem_mlkem_mlkem768_amd64_ref_SECRETKEYBYTES
#define mlkem768_PUBLICKEYBYTES jade_kem_mlkem_mlkem768_amd64_ref_PUBLICKEYBYTES
#define mlkem768_CIPHERTEXTBYTES jade_kem_mlkem_mlkem768_amd64_ref_CIPHERTEXTBYTES
#define mlkem768_KEYPAIRCOINBYTES jade_kem_mlkem_mlkem768_amd64_ref_KEYPAIRCOINBYTES
#define mlkem768_ENCCOINBYTES jade_kem_mlkem_mlkem768_amd64_ref_ENCCOINBYTES
#define mlkem768_BYTES jade_kem_mlkem_mlkem768_amd64_ref_BYTES
#define mlkem768_keypair jade_kem_mlkem_mlkem768_amd64_ref_keypair
#define mlkem768_enc jade_kem_mlkem_mlkem768_amd64_ref_enc
#define mlkem768_dec jade_kem_mlkem_mlkem768_amd64_ref_dec
#define mlkem768_keypair_derand jade_kem_mlkem_mlkem768_amd64_ref_keypair_derand
#define mlkem768_enc_derand jade_kem_mlkem_mlkem768_amd64_ref_enc_derand
#define mlkem768_ALGNAME jade_kem_mlkem_mlkem768_amd64_ref_ALGNAME
#define mlkem768_ARCH jade_kem_mlkem_mlkem768_amd64_ref_ARCH
#define mlkem768_IMPL jade_kem_mlkem_mlkem768_amd64_ref_IMPL

int main(void)
{
  int r;
  uint8_t public_key[mlkem768_PUBLICKEYBYTES];
  uint8_t secret_key[mlkem768_SECRETKEYBYTES];

  uint8_t shared_secret_a[mlkem768_BYTES];
  uint8_t ciphertext[mlkem768_CIPHERTEXTBYTES];
  uint8_t shared_secret_b[mlkem768_BYTES];

  uint8_t keypair_random_coins[mlkem768_KEYPAIRCOINBYTES];
  uint8_t enc_random_coins[mlkem768_ENCCOINBYTES];

  print_info(mlkem768_ALGNAME, mlkem768_ARCH, mlkem768_IMPL);

  // create key pair
  r = mlkem768_keypair(public_key, secret_key);
    assert(r == 0);

  // encapsulate
  r = mlkem768_enc(ciphertext, shared_secret_a, public_key);
    assert(r == 0);

  // decapsulate
  r = mlkem768_dec(shared_secret_b, ciphertext, secret_key);
    assert(r == 0);
    assert(memcmp(shared_secret_a, shared_secret_b, mlkem768_BYTES) == 0);

  print_str_u8("secret_key", secret_key, mlkem768_SECRETKEYBYTES);
  print_str_u8("public_key", public_key, mlkem768_PUBLICKEYBYTES);
  print_str_u8("ciphertext", ciphertext, mlkem768_CIPHERTEXTBYTES);
  print_str_u8("shared_secret", shared_secret_a, mlkem768_BYTES);

  // 
  // create key pair using derand function (random coins are given as input)
  randombytes(keypair_random_coins, mlkem768_KEYPAIRCOINBYTES);
  r = mlkem768_keypair_derand(public_key, secret_key, keypair_random_coins);
    assert(r == 0);

  // encapsulate using derand function (random coins are given as input)
  randombytes(enc_random_coins, mlkem768_ENCCOINBYTES);
  r = mlkem768_enc_derand(ciphertext, shared_secret_a, public_key, enc_random_coins);
    assert(r == 0);

  // decapsulate
  r = mlkem768_dec(shared_secret_b, ciphertext, secret_key);
    assert(r == 0);
    assert(memcmp(shared_secret_a, shared_secret_b, mlkem768_BYTES) == 0);

  // and next, we print the results of the 'derand' execution
  print_str_u8("derand_keypair_random_coins", keypair_random_coins, mlkem768_KEYPAIRCOINBYTES);
  print_str_u8("derand_secret_key", secret_key, mlkem768_SECRETKEYBYTES);
  print_str_u8("derand_public_key", public_key, mlkem768_PUBLICKEYBYTES);
  print_str_u8("derand_enc_random_coins", enc_random_coins, mlkem768_ENCCOINBYTES);
  print_str_u8("derand_ciphertext", ciphertext, mlkem768_CIPHERTEXTBYTES);
  print_str_u8("derand_shared_secret", shared_secret_a, mlkem768_BYTES);

  return 0;
}

