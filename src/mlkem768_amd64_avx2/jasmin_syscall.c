#include <stdint.h>

// TODO: add discussion about types

extern void randombytes(uint8_t*,uint64_t);

uint8_t* __jasmin_syscall_randombytes__(uint8_t* dest, uint64_t length_in_bytes)
{
  randombytes(dest, length_in_bytes);
  return dest;
}

