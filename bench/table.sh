#!/usr/bin/env bash

get() { sed -n "s/^$2[[:space:]]*,[[:space:]]*//p" "$1"; }

f=(bin/mlkem768_amd64_avx2.csv \
   bin/pqcrystals_kyber768_avx2.csv \
   bin/mlkem1024_amd64_avx2.csv \
   bin/pqcrystals_kyber1024_avx2.csv )

printf "| operation        | mlkem768_avx2 | pqcrystals_kyber768_avx2   | mlkem1024_avx2 | pqcrystals_kyber1024_avx2 |\n"
printf "|------------------|---------------|----------------------------|----------------|---------------------------|\n"

w=(16 13 26 14 25)
for op in keypair_derand enc_derand dec; do
  printf "| %-*s | %-*d | %-*d | %-*d | %-*d |\n" \
    ${w[0]} "$op" \
    ${w[1]} "$(get "${f[0]}" ${op})" \
    ${w[2]} "$(get "${f[1]}" ${op})" \
    ${w[3]} "$(get "${f[2]}" ${op})" \
    ${w[4]} "$(get "${f[3]}" ${op})"
done

