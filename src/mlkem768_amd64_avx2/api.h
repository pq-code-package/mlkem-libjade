#ifndef jade_kem_mlkem_mlkem768_amd64_avx2_API_H
#define jade_kem_mlkem_mlkem768_amd64_avx2_API_H

#include <stdint.h>

#define jade_kem_mlkem_mlkem768_amd64_avx2_SECRETKEYBYTES 2400
#define jade_kem_mlkem_mlkem768_amd64_avx2_PUBLICKEYBYTES 1184
#define jade_kem_mlkem_mlkem768_amd64_avx2_CIPHERTEXTBYTES 1088
#define jade_kem_mlkem_mlkem768_amd64_avx2_KEYPAIRCOINBYTES 64
#define jade_kem_mlkem_mlkem768_amd64_avx2_ENCCOINBYTES 32
#define jade_kem_mlkem_mlkem768_amd64_avx2_BYTES 32

#define jade_kem_mlkem_mlkem768_amd64_avx2_ALGNAME "mlkem768"
#define jade_kem_mlkem_mlkem768_amd64_avx2_ARCH "amd64"
#define jade_kem_mlkem_mlkem768_amd64_avx2_IMPL "avx2"

int jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand(
  uint8_t *public_key,
  uint8_t *secret_key,
  const uint8_t *random_coins
);

int jade_kem_mlkem_mlkem768_amd64_avx2_keypair(
  uint8_t *public_key,
  uint8_t *secret_key
);

int jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand(
  uint8_t *ciphertext,
  uint8_t *shared_secret,
  const uint8_t *public_key,
  const uint8_t *random_coins
);

int jade_kem_mlkem_mlkem768_amd64_avx2_enc(
  uint8_t *ciphertext,
  uint8_t *shared_secret,
  const uint8_t *public_key
);

int jade_kem_mlkem_mlkem768_amd64_avx2_dec(
  uint8_t *shared_secret,
  const uint8_t *ciphertext,
  const uint8_t *secret_key
);

#endif
