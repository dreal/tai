/*
 * Written by J.T. Conklin <jtc@netbsd.org>.
 * Changed to return -1 for -Inf by Ulrich Drepper <drepper@cygnus.com>.
 * Public domain.
 */

/*
 * isinf(x) returns 1 is x is inf, -1 if x is -inf, else 0;
 * no branching!
 */

#include "math.h"
#include "math_private.h"

int
__isinf (double x)
{
	int64_t ix;
	EXTRACT_WORDS64(ix,x);
	int64_t t = ix & UINT64_C(0x7fffffffffffffff);
	t ^= UINT64_C(0x7ff0000000000000);
	t |= -t;
	return ~(t >> 63) & (ix >> 62);
}
hidden_def (__isinf)
weak_alias (__isinf, isinf)
#ifdef NO_LONG_DOUBLE
strong_alias (__isinf, __isinfl)
weak_alias (__isinf, isinfl)
#endif
