#ifndef _EXAMPLE_H_
#define _EXAMPLE_H_

#include <time.h>

#ifdef __cplusplus
extern "C" {
#endif

extern double My_variable;

extern int fact(int n);

extern int my_mod(int x, int y);

extern char *get_time();

#ifdef __cpluplus
};
#endif

#endif /* _EXAMPLE_H_ */
