//

#ifndef RUNS
#define RUNS 5
#endif

#ifndef TIMINGS
#define TIMINGS 1001
#endif

#ifndef CHECK_SHARED_SECRET
#define CHECK_SHARED_SECRET 1
#endif

#ifndef CHECK_POINTERS_ALIGNMENT
#define CHECK_POINTERS_ALIGNMENT 1
#endif

#ifndef PRINT_SORTED_RUNS
#define PRINT_SORTED_RUNS 1
#endif

#ifndef PRINT_RUNS_MEDIAN
#define PRINT_RUNS_MEDIAN 1
#endif

#ifndef PRINT_JUST_DERAND
#define PRINT_JUST_DERAND 1
#endif

//

#ifndef NAMESPACE
#error "crypto_kem.c requires the macro NAMESPACE to be defined. \
        - for instance, jade_kem_mlkem_mlkem768_amd64_ref_ \
          or jade_kem_mlkem_mlkem768_amd64_avx2. \
        For examples, check bench/Makefile."
#endif

//

#define PASTER(x, y) x##_##y
#define EVALUATOR(x, y) PASTER(x, y)
#define EVAL_NAMESPACE(fun) EVALUATOR(NAMESPACE, fun)

#define xstr(s,e) str(s)#e
#define str(s) #s

//

#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

//

// this corresponds to the api.h file that can be found in folders
// mlkem-libjade/src/mlkem768_** (check Makefile and -I compiler option)
#include "api.h"

#define mlkem_SECRETKEYBYTES EVAL_NAMESPACE(SECRETKEYBYTES)
#define mlkem_PUBLICKEYBYTES EVAL_NAMESPACE(PUBLICKEYBYTES)
#define mlkem_CIPHERTEXTBYTES EVAL_NAMESPACE(CIPHERTEXTBYTES)
#define mlkem_KEYPAIRCOINBYTES EVAL_NAMESPACE(KEYPAIRCOINBYTES)
#define mlkem_ENCCOINBYTES EVAL_NAMESPACE(ENCCOINBYTES)
#define mlkem_BYTES EVAL_NAMESPACE(BYTES)

#define mlkem_keypair EVAL_NAMESPACE(keypair)
#define mlkem_enc EVAL_NAMESPACE(enc)
#define mlkem_dec EVAL_NAMESPACE(dec)
#define mlkem_keypair_derand EVAL_NAMESPACE(keypair_derand)
#define mlkem_enc_derand EVAL_NAMESPACE(enc_derand)

#define mlkem_ALGNAME EVAL_NAMESPACE(ALGNAME)
#define mlkem_ARCH EVAL_NAMESPACE(ARCH)
#define mlkem_IMPL EVAL_NAMESPACE(IMPL)

//

#if PRINT_JUST_DERAND == 1

  #define OPS 3
  #define keypair_derand_index 0
  #define enc_derand_index 1
  #define dec_index 2

  char *ops_str[] = {xstr(mlkem_keypair_derand,.csv),
                     xstr(mlkem_enc_derand,.csv),
                     xstr(mlkem_dec,.csv)};

  char *ops_str_short[] =
                    {"keypair_derand",
                     "enc_derand    ",
                     "dec           "};
#else

  #define OPS 5
  #define keypair_index 0
  #define keypair_derand_index 1
  #define enc_index 2
  #define enc_derand_index 3
  #define dec_index 4

  char *ops_str[] = {xstr(mlkem_keypair,.csv),
                     xstr(mlkem_keypair_derand,.csv),
                     xstr(mlkem_enc,.csv),
                     xstr(mlkem_enc_derand,.csv),
                     xstr(mlkem_dec,.csv)};

  char *ops_str_short[] =
                    {"keypair       ",
                     "keypair_derand",
                     "enc           ",
                     "enc_derand    ",
                     "dec           "};

#endif

//

static inline uint64_t cpucycles(void) {
  uint64_t result;

  __asm__ volatile ("rdtsc; shlq $32,%%rdx; orq %%rdx,%%rax"
    : "=a" (result) : : "%rdx");

  return result;
}

static int cmp_uint64(const void *a, const void *b)
{
  if(*(uint64_t *)a < *(uint64_t *)b){ return -1; }
  if(*(uint64_t *)a > *(uint64_t *)b){ return 1; }
  return 0;
}

static void cpucycles_sort(uint64_t *c, size_t clen)
{
  qsort(c,clen,sizeof(uint64_t),cmp_uint64);
}

static uint64_t cpucycles_median(uint64_t *c, size_t clen)
{
  if(clen % 2)
  { return c[clen/2]; }
  else
  { return (c[clen/2-1] + c[clen/2]) / 2; }
}

#if 0
static void cpucycles_subtract(uint64_t *c, size_t clen)
{
  size_t i;
  for (i = 0; i < clen-1; i++)
  { c[i] = c[i+1] - c[i]; }
}
#endif

//

static size_t alignedcalloc_step(size_t len)
{
  size_t step;
  step = len + (63 & (-len));
  return step;
}

static uint8_t *alignedcalloc(uint8_t** _x, size_t len)
{
  uint8_t* x = (uint8_t*) calloc(1, len + 128);
  if (!x) exit(-1);
  if(_x){ *_x = x; }
  x += 63 & (-(unsigned long) x);
  return x;
}

//

static void pb_init_1(int argc, char *op_str[])
{
  int op;
  FILE *f;

  if(argc == 2)
  { for (op = 0; op < OPS; op++)
    { f = fopen(op_str[op], "w");
      fclose(f);
    }
  }
}

static void pb_print_1(
  int argc,
  uint64_t results[OPS][RUNS],
  char *op_str[],
  char *op_str_short[])
{
  size_t op;
  FILE *f;

  f = stdout;
  for (op = 0; op < OPS; op++)
  {
    if(argc == 2)
    { f = fopen(op_str[op], "a"); }
    else
    { fprintf(f, "%s, ", op_str_short[op]); }

    #if PRINT_RUNS_MEDIAN == 1
     fprintf(f, "%" PRIu64 "\n", cpucycles_median(&(results[op][0]), RUNS));
    #else
      #if RUNS > 1
      size_t run;
      for(run = 0; run < RUNS-1; run++)
      { fprintf(f, "%" PRIu64 ",", results[op][run]); }
      #endif
      fprintf(f, "%" PRIu64 "\n", results[op][RUNS-1]);
    #endif

    if(argc == 2) { fclose(f); }
  }
}

///////////////////////////////////////////////////////////////////////////////
//
// ****************************************************************************
// WARNING: In REAL-WORLD DEPLOYMENTS, it is the USER's RESPONSIBILITY to
// implement/select/provide a cryptographically secure implementation of
// randombytes that fulfills, for instance, their organization's policies,
// compliance requirements, etc.
// ****************************************************************************
//
// Next, and purely for illustration purposes, we define randombytes and
// __jasmin_syscall_randombytes__.

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

uint8_t* __jasmin_syscall_randombytes__(uint8_t* dest, uint64_t length_in_bytes)
{
  randombytes(dest, length_in_bytes);
  return dest;
}

///////////////////////////////////////////////////////////////////////////////

int main(int argc, char**argv __attribute__((unused)))
{
  size_t run, op, i;
  uint64_t cycles_begin, cycles_end;
  uint64_t cycles[RUNS][OPS][TIMINGS]; // for R=5, O=5, T=1001, < 0.2MB
  uint64_t medians[OPS][RUNS];

  #if PRINT_JUST_DERAND == 0
  // 'rand' pointers              // length                 // where it is used
  uint8_t *_ss,  *ss,  *s;        // mlkem_SECRETKEYBYTES   // keypair, dec
  uint8_t *_ps,  *ps,  *p;        // mlkem_PUBLICKEYBYTES   // keypair, enc
  uint8_t *_cs,  *cs,  *c;        // mlkem_CIPHERTEXTBYTES  // enc, dec
  uint8_t *_ks,  *ks,  *k;        // mlkem_BYTES            // enc
  #endif

  // 'derand' pointers
  uint8_t *_d_ss,  *d_ss,  *d_s;  // mlkem_SECRETKEYBYTES   // keypair, dec
  uint8_t *_d_ps,  *d_ps,  *d_p;  // mlkem_PUBLICKEYBYTES   // keypair, enc
  uint8_t *_d_cs,  *d_cs,  *d_c;  // mlkem_CIPHERTEXTBYTES  // enc, dec
  uint8_t *_d_ks,  *d_ks,  *d_k;  // mlkem_BYTES            // enc
  uint8_t *_d_kcs, *d_kcs, *d_kc; // mlkem_KEYPAIRCOINBYTES // keypair
  uint8_t *_d_ecs, *d_ecs, *d_ec; // mlkem_ENCCOINBYTES     // enc

  // 'common' pointers (dec)
  uint8_t *_ts,  *ts,  *t;        // mlkem_BYTES            // dec

  size_t slen, plen, clen, klen, tlen;
  size_t kclen, eclen;

  slen  = alignedcalloc_step(mlkem_SECRETKEYBYTES);
  plen  = alignedcalloc_step(mlkem_PUBLICKEYBYTES);
  clen  = alignedcalloc_step(mlkem_CIPHERTEXTBYTES);
  klen  = alignedcalloc_step(mlkem_BYTES);
  tlen  = alignedcalloc_step(mlkem_BYTES);
  kclen = alignedcalloc_step(mlkem_KEYPAIRCOINBYTES);
  eclen = alignedcalloc_step(mlkem_ENCCOINBYTES);

  #if PRINT_JUST_DERAND == 0
  ss    = alignedcalloc(&_ss,    slen  * TIMINGS);
  ps    = alignedcalloc(&_ps,    plen  * TIMINGS);
  cs    = alignedcalloc(&_cs,    clen  * TIMINGS);
  ks    = alignedcalloc(&_ks,    klen  * TIMINGS);
  #endif

  d_ss  = alignedcalloc(&_d_ss,  slen  * TIMINGS);
  d_ps  = alignedcalloc(&_d_ps,  plen  * TIMINGS);
  d_cs  = alignedcalloc(&_d_cs,  clen  * TIMINGS);
  d_ks  = alignedcalloc(&_d_ks,  klen  * TIMINGS);
  d_kcs = alignedcalloc(&_d_kcs, kclen * TIMINGS);
  d_ecs = alignedcalloc(&_d_ecs, eclen * TIMINGS);

  ts    = alignedcalloc(&_ts,    tlen  * TIMINGS);

  #if CHECK_POINTERS_ALIGNMENT == 1
   #if PRINT_JUST_DERAND == 0
   s = ss; p = ps; c = cs; k = ks;
   for (i = 0; i < TIMINGS; i++)
   { assert( ((uintptr_t)s    & 63) == 0 );
     assert( ((uintptr_t)p    & 63) == 0 );
     assert( ((uintptr_t)c    & 63) == 0 );
     assert( ((uintptr_t)k    & 63) == 0 );
     s += slen; p += plen; c += clen; k += klen;
   }
   #endif

  d_s = d_ss; d_p = d_ps; d_c = d_cs; d_k = d_ks; d_kc = d_kcs; d_ec = d_ecs; t = ts;
  for (i = 0; i < TIMINGS; i++)
  { assert( ((uintptr_t)d_s  & 63) == 0 );
    assert( ((uintptr_t)d_p  & 63) == 0 );
    assert( ((uintptr_t)d_c  & 63) == 0 );
    assert( ((uintptr_t)d_k  & 63) == 0 );
    assert( ((uintptr_t)d_kc & 63) == 0 );
    assert( ((uintptr_t)d_ec & 63) == 0 );
    assert( ((uintptr_t)t    & 63) == 0 );
    d_s += slen; d_p += plen; d_c += clen; d_k += klen; d_kc += kclen; d_ec += eclen; t += tlen;
  }
  #endif //ends CHECK_POINTERS_ALIGNMENT == 1

  // benchmarking loop
  for(run = 0; run < RUNS; run++)
  {


    #if PRINT_JUST_DERAND == 0
    // keypair
    p = ps; s = ss;
    for (i = 0; i < TIMINGS; i++, p += plen, s += slen)
    { cycles_begin = cpucycles();

      mlkem_keypair(p, s);

      cycles_end = cpucycles();
      cycles[run][keypair_index][i] = cycles_end - cycles_begin;
    }
    #endif


    // keypair derand
    d_kc = d_kcs;
    for (i = 0; i < TIMINGS; i++, d_kc += kclen)
    { randombytes(d_kc, mlkem_KEYPAIRCOINBYTES); }

    d_p = d_ps; d_s = d_ss; d_kc = d_kcs;
    for (i = 0; i < TIMINGS; i++, d_p += plen, d_s += slen, d_kc += kclen)
    { cycles_begin = cpucycles();

      mlkem_keypair_derand(d_p, d_s, d_kc);

      cycles_end = cpucycles();
      cycles[run][keypair_derand_index][i] = cycles_end - cycles_begin;
    }


    #if PRINT_JUST_DERAND == 0
    // enc
    c = cs; k = ks; p = ps;
    for (i = 0; i < TIMINGS; i++, c += clen, k += klen, p += plen)
    { cycles_begin = cpucycles();

      mlkem_enc(c, k, p);

      cycles_end = cpucycles();
      cycles[run][enc_index][i] = cycles_end - cycles_begin;
    }
    #endif



    // enc derand
    d_ec = d_ecs;
    for (i = 0; i < TIMINGS; i++, d_ec += eclen)
    { randombytes(d_ec, mlkem_ENCCOINBYTES); }

    d_c = d_cs; d_k = d_ks; d_p = d_ps; d_ec = d_ecs;
    for (i = 0; i < TIMINGS; i++, d_c += clen, d_k += klen, d_p += plen, d_ec += eclen)
    { cycles_begin = cpucycles();

      mlkem_enc_derand(d_c, d_k, d_p, d_ec);

      cycles_end = cpucycles();
      cycles[run][enc_derand_index][i] = cycles_end - cycles_begin;
    }




    // dec
    t = ts; d_c = d_cs; d_s = d_ss;
    for (i = 0; i < TIMINGS; i++, t += tlen, d_c += clen, d_s += slen)
    { cycles_begin = cpucycles();

      mlkem_dec(t, d_c, d_s);

      cycles_end = cpucycles();
      cycles[run][dec_index][i] = cycles_end - cycles_begin;
    }



    // checks
    #if CHECK_SHARED_SECRET == 1

    // 'derand': check that shared_secret from enc matches the one from dec
    d_k = d_ks; t = ts;
    for (i = 0; i < TIMINGS; i++, d_k += klen, t += tlen)
    { assert(memcmp(d_k, t, mlkem_BYTES) == 0); }

     #if PRINT_JUST_DERAND == 0
     // 'rand': decapsulate and then check
     k = ks; t = ts; c = cs; s = ss;
     for (i = 0; i < TIMINGS; i++, k += klen, t += tlen, c += clen, s += slen)
     { mlkem_dec(t, c, s);
       assert(memcmp(k, t, mlkem_BYTES) == 0);
     }
     #endif // ends PRINT_JUST_DERAND == 0

    #endif
  }



  // sort cycle counts and get medians
  for(run = 0; run < RUNS; run++)
  { for(op = 0; op < OPS; op++)
    { cpucycles_sort(&(cycles[run][op][0]), TIMINGS);
      medians[op][run] = cpucycles_median(&(cycles[run][op][0]), TIMINGS);
    }
  }



  #if (PRINT_SORTED_RUNS == 1  || PRINT_RUNS_MEDIAN == 1)
  for(op = 0; op < OPS; op++)
  { cpucycles_sort(&(medians[op][0]), RUNS); }
  #endif

  pb_init_1(argc, ops_str);
  pb_print_1(argc, medians, ops_str, ops_str_short);



  #if PRINT_JUST_DERAND == 0
  free(_ps);
  free(_ss);
  free(_ks);
  free(_cs);
  #endif

  free(_d_ps);
  free(_d_ss);
  free(_d_ks);
  free(_d_cs);
  free(_d_kcs);
  free(_d_ecs);

  free(_ts);

  return 0;

  #undef keypair_index
  #undef keypair_derand_index
  #undef enc_index
  #undef enc_derand_index
  #undef dec_index
}

