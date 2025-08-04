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

// ////////////////////////////////////////////////////////////////////////////
// IMPORTANT NOTES:
//
// The Jasmin implementation of ML-KEM 1024 is derandomized.
//
// The first function, keypair, expects two arguments: public_key and 
// secret_key (pointers to a memory region with an appropriate length)
// plust the random coins.
//
//
// ****************************************************************************
// WARNING: In REAL-WORLD DEPLOYMENTS, it is the USER's RESPONSIBILITY to 
// implement/select/provide a cryptographically secure implementation of
// random coin generation that fulfills, for instance, their organization's policies,
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


// ////////////////////////////////////////////////////////////////////////////

//

// this corresponds to the api.h file that can be found in folders
// mlkem-libjade/src/mlkem1024_** (check Makefile and -I compiler option)
#include "api.h"

//
// notes:
// - api.h files are heavily namespaced; for instance, they define 
//   jade_kem_mlkem_mlkem1024_amd64_avx2_PUBLICKEYBYTES instead of 
//   mlkem1024_PUBLICKEYBYTES or crypto_PUBLICBYTES.
//
// - api.h files are defined this way to avoid conflicts, facilitate
//   integration, and, in general, make clear what a given macro
//   refers to at any given point. We leave it to the user, as it
//   heavily depends on the integration context, to define more
//   convenient namespaces.
//
// - We will do something similar next to simplify the reading of this file.
//   For that, we define the following macros.

#define mlkem1024_SECRETKEYBYTES jade_kem_mlkem_mlkem1024_amd64_avx2_SECRETKEYBYTES
#define mlkem1024_PUBLICKEYBYTES jade_kem_mlkem_mlkem1024_amd64_avx2_PUBLICKEYBYTES
#define mlkem1024_CIPHERTEXTBYTES jade_kem_mlkem_mlkem1024_amd64_avx2_CIPHERTEXTBYTES
#define mlkem1024_KEYPAIRCOINBYTES jade_kem_mlkem_mlkem1024_amd64_avx2_KEYPAIRCOINBYTES
#define mlkem1024_ENCCOINBYTES jade_kem_mlkem_mlkem1024_amd64_avx2_ENCCOINBYTES
#define mlkem1024_BYTES jade_kem_mlkem_mlkem1024_amd64_avx2_BYTES
#define mlkem1024_keypair jade_kem_mlkem_mlkem1024_amd64_avx2_keypair
#define mlkem1024_enc jade_kem_mlkem_mlkem1024_amd64_avx2_enc
#define mlkem1024_dec jade_kem_mlkem_mlkem1024_amd64_avx2_dec
#define mlkem1024_keypair_derand jade_kem_mlkem_mlkem1024_amd64_avx2_keypair_derand
#define mlkem1024_enc_derand jade_kem_mlkem_mlkem1024_amd64_avx2_enc_derand
#define mlkem1024_ALGNAME jade_kem_mlkem_mlkem1024_amd64_avx2_ALGNAME
#define mlkem1024_ARCH jade_kem_mlkem_mlkem1024_amd64_avx2_ARCH
#define mlkem1024_IMPL jade_kem_mlkem_mlkem1024_amd64_avx2_IMPL

int main(void)
{
  int r;
  uint8_t public_key[mlkem1024_PUBLICKEYBYTES];
  uint8_t secret_key[mlkem1024_SECRETKEYBYTES];

  uint8_t shared_secret_a[mlkem1024_BYTES];
  uint8_t ciphertext[mlkem1024_CIPHERTEXTBYTES];
  uint8_t shared_secret_b[mlkem1024_BYTES];

  uint8_t keypair_random_coins[mlkem1024_KEYPAIRCOINBYTES];
  uint8_t enc_random_coins[mlkem1024_ENCCOINBYTES];

  print_info(mlkem1024_ALGNAME, mlkem1024_ARCH, mlkem1024_IMPL);

  // 
  // create key pair using derand function (random coins are given as input)
  randombytes(keypair_random_coins, mlkem1024_KEYPAIRCOINBYTES);
  r = mlkem1024_keypair_derand(public_key, secret_key, keypair_random_coins);
    assert(r == 0);

  // encapsulate using derand function (random coins are given as input)
  randombytes(enc_random_coins, mlkem1024_ENCCOINBYTES);
  r = mlkem1024_enc_derand(ciphertext, shared_secret_a, public_key, enc_random_coins);
    assert(r == 0);

  // decapsulate
  r = mlkem1024_dec(shared_secret_b, ciphertext, secret_key);
    assert(r == 0);
    assert(memcmp(shared_secret_a, shared_secret_b, mlkem1024_BYTES) == 0);

  // and next, we print the results of the 'derand' execution
  print_str_u8("derand_keypair_random_coins", keypair_random_coins, mlkem1024_KEYPAIRCOINBYTES);
  print_str_u8("derand_secret_key", secret_key, mlkem1024_SECRETKEYBYTES);
  print_str_u8("derand_public_key", public_key, mlkem1024_PUBLICKEYBYTES);
  print_str_u8("derand_enc_random_coins", enc_random_coins, mlkem1024_ENCCOINBYTES);
  print_str_u8("derand_ciphertext", ciphertext, mlkem1024_CIPHERTEXTBYTES);
  print_str_u8("derand_shared_secret", shared_secret_a, mlkem1024_BYTES);

  return 0;
}

