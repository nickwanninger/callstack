#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define CS_SIZE 1024

#define unlikely(x)     __builtin_expect((x),0)

__thread long depth = 0;
__thread void *callstack[CS_SIZE];


void __push_return_address(void *ra) {
	/*
  if (unlikely(depth >= CS_SIZE)) {
    fprintf(stderr, "error: depth >= CS_SIZE\n");
    exit(0);
  }
	*/
  callstack[depth++] = ra;
}


void __pop_return_address(void) {
  void *ra = callstack[--depth];
}
