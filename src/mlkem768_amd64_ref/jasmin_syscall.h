#ifndef JASMIN_SYSCALL_H
#define JASMIN_SYSCALL_H

#include <stdint.h>

// notes:
// - this function must return 'dest'
uint8_t* __jasmin_syscall_randombytes__(uint8_t* dest, uint64_t length_in_bytes);

#endif
