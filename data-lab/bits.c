/* 
 * CS:APP Data Lab 
 * 
 * <Heming Zhang Userid: 475982>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2012 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* We do support the IEC 559 math functionality, real and complex.  */
/* wchar_t uses ISO/IEC 10646 (2nd ed., published 2011-03-15) /
   Unicode 6.0.  */
/* We do not support C11 <threads.h>.  */
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
  // What Xor does is to rule out same bits
  // same bits can get by & for 1 and inverse them then use & for 0
  // then we inverse them to get bits not the same and use & to get answer
  // if we can use | op, maybe we can change last step
  int x1 = ~x;
  int y1 = ~y;
  int z = (~(x & y)) & (~(x1 & y1)); 
  return z ;
}
/* 
 * evenBits - return word with all even-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int evenBits(void) {
  // Set x = 0x55 (01010101b), then use left shift operation to make it fill left
  int x = 0x55;
  int xt = x << 8;
  int xs = x | xt;
  int word = xs | xs << 16;
  return word;
}
/* 
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) {
  // Form an original mask which can remove them from number by ~ operation
  // we can get xt with empty space for swaped bits to fill in
  // use right shift to fetch wanted bits with 0xff
  // swap can be achieved by upside down shift op, m for n, and n for m
  // then we can combine them together to get s_mask
    int nt = 0;
    int mt = 0;
    int mask = 0xFF;
    int s_mask = 0;
    int xt = 0;
    int n1 = n<<3; 
    int m1 = m<<3; 
    // Form an original mask which tag destinated bytes
    int t_mask = ((x & (mask<< (n1))) | (x & (mask<< (m1)))); 
    nt = (x >> (n1)) & mask; 
    mt = (x >> (m1)) & mask;
    // Given fetched bytes and switch them to destinated bytes
    s_mask = mt << (n1)|nt << (m1);
    // Use ~ operation with destinated bytes to empty them for new s_mask
    xt = x & ~t_mask;
    return (xt | s_mask);
}
/* 
 * bitMask - Generate a mask consisting of all 1's 
 *   between lowbit and highbit
 *   Examples: bitMask(5,3) = 0x38
 *   Assume 0 <= lowbit <= 31, and 0 <= highbit <= 31
 *   If lowbit > highbit, then mask should be all 0's
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int bitMask(int highbit, int lowbit) {
  // get the highbit and expect to get all bit from highbit to 0th bit are all 1
  // bits larger than highbit are all 0
  // bits larger than lowbit-1 are all 0
  // After this we can ~lmask&hmask to get middle of them
  int one = 1 << 31 >> 31;
  int hmask = (2 << highbit) + one;
  int lmask = (1 << lowbit) + one;
  int result = (~lmask) & hmask;
  return result;
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
  // create a mask to chop off the first nth bits
  // use arithmetic shift for mask to form first nth bits with 1 then ~ with 0
  // therefore, with whatever shift we just use mask to chop off first nth bits with &
  int preserve = 32+~n;
  int code_mask0 = 1<<31>>n;
  int code_mask = (code_mask0 ^ (1 << (preserve)));
  int result = ((~code_mask) & (x >> n));
  return result;
}
// #include "rotateRight.c" /*3 = 13*/
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
  // form a 32 bits list and shift to count
  // use mask1 to count bits in every 4 bits with right shift
  // add count together in every 4 bits by divide them into 8 and then 4
  // since we use every 4 bits to count, last 4 is just the count
  // Besides, we do not need to worry about overflow for every 4 bits
  // since the maximum count for 4 bits is 0100b, we can reserve them
  int num = 0;
  int num1 = 0;
  int num2 = 0;
  int sum = 0;
  int mask = 0xff | 0xff<<8;
  int mask0 = 0x11 | 0x11<<8 ;
  // Form a mask like 0x11111111
  int mask1 = mask0 |mask0 <<16;
  // Then we can use 4 times shift to calculate number of 1 bits in each 4 bits
  int check = x & mask1;
  check = check + (x >> 1 & mask1);
  check = check + (x >> 2 & mask1);
  check = check + (x >> 3 & mask1);
  // After that we can break them down to 4 bits again
  num = (check & mask) + (check >> 16);
  num1 = 0xff & num;
  num2 = num >> 8;
  sum = (num1 & 0xf) + (num1 >> 4) + (num2 & 0xf) +(num2 >> 4);
  return sum;
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  // we can use right shift to leave some bits
  // if they are all one or all zero, then we can consider this as valid
  int useful = n + ~1 + 1;
  int shifted = x >> useful;
  int one = ~0;
  int result = ((!(shifted ^ 0)) | (!(shifted ^ one)));
  return result;
}
/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
  // The key factor here is MSB to judge overflow
  // Postive Overflow will change sign of sum to negative
  // Negative Overflow will change sign of sum to postive
  // Otherwise, if they have different sign, they cannot cause overflow
  int sign = 0;
  int x_head = (x >> 31) + 1;
  int y_head = (y >> 31) + 1;
  int xy_head = ((x + y) >> 31) + 1;
  sign = (!!(x_head ^ y_head)) | (!(x_head ^ xy_head));
  return sign;
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
    // The hidden trick here is that negative number with same sign with x>>1 and mul
    // is also not overflow, since we only move one bit, if the MSB is 1, 
    // the bits before MSB can just be chopped off without further consideration

    // first we need to judge whether x<<1 is overflow, if so, we will get wrong answer which can not lead to overflow
    // second is just like the original one, mul is overflow with new sign
    
    // Since we cannot use if control, what we can do is use check to judge whether we can use original value
    // if check ==1111.. this means overflow, therefore we can ~check to unmask all original code
    // AT here, we can use the unique apperance and the apply check as if condition tool
    // ~Check ==111..1 then we use mul; else check=11111.., we will give them t_min or t_max 
    // then we can use x_sign with XOR op to cast value
    int x_head = x >> 31;
    int t_min = 1 << 31;
    int t_max = ~t_min;
    int shift_sign = (x << 1) >> 31;
    int mul = ((x << 1)+ x);
    int check = (x_head ^ (shift_sign)) | (x_head ^ (mul >> 31)) ; 
    int result = (~check&mul) | ((check) & ((t_min & x_head)|(t_max & (~x_head))));
    return result;
}
/*                         
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int isPower2(int x) {
  // We can use the trick mentioned in lecture: x&(-x) can give us the LSB
  // The Power2 should have feature that LSB==MSB
  // Then we remove LSB, for Power2, it should be 0000...0
  // If not, then after rule out circumstance of 0 and t_min, we can get the answer
  int t_min = 1 << 31;
  int new_x = x & (~(x & (~x + 1)));
  return (!!(x ^ t_min)) & (!(new_x ^ 0)) & (!!x);
}
// #include "howManyBits.c" /*4 = 33*/
/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples: trueThreeFourths(11) = 8
 *             trueThreeFourths(-9) = -6
 *             trueThreeFourths(1073741824) = 805306368 (no overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int trueThreeFourths(int x)
{
  // Through the law of rounding down to Zero, we find out 4 circumstances
  // (1)First, if the binary of that number ended with 00, or positive number ended with 01,10; we do not need to alter;
  // (2)Second, if the number is positive and ended with 11, we need to add 1 for them;
  // (3)Third, if the number is negative number ended with 11, we need to add 2 for them;
  // (4)Fourth, uf the number is negative number ended with 10,01, we need to add 1 for them;
  // To cope with this situation, we can use remain to distinguish 11,01,10
  // 11+1 =100 100>>2=1  and 10 or 01 +1 ,  >>1&1 =1
  // Besides, sign trick is the one used for many times as if condition for negative and positive
  int value = (x >> 2) + (x >> 1);
  int sign = x >> 31;
  int remain = (((x & 3)+ 1) & 7);
  int result = value + (remain >> 2)+(sign & (remain >> 2))+ (sign & ((remain >> 1) & 1));
  return result;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  // First we name 0 as 0 and -2^31 as 0xCF000000
  // Then we consider about negative number to fetch their abs number to use ~x+1
  // And we want to use shift op to find their MSB to count their actual exponent=E
  // Besides, since we have 31 bits to put number, float only have (23+1)bits for int( first default 1)
  // For M, we can just use 0x7FFFFF to preserve 23 bits for it.
  // Therefore, we need to preserve lost precision to round them to even
  // This task can be achieved by &ff, and use 0x80 and 0x7f to judge if lostpart is larger than 0.5
  // After rounding to even, we may check if M has overflow since we may add 1 to make it to be 0x800000
  // If so, we need to exp++ and make m_temp = 0;
  // At last, we can combine those part together with | op
  int abs = x;
  unsigned counts = 0;
  unsigned E =0;
  unsigned exp = 0;
  unsigned m_temp = 0;
  int sign = x >> 31;
  unsigned lost_precision = 0;
  unsigned large_precision = 0;
  unsigned rest_precision = 0;
  unsigned half_judge = 0;
  unsigned result = 0;
  if( x==0 ){
    return 0x0;
  }else if( x == 0x80000000){
    return 0xcf000000;
  }
  if(sign){
    abs = -x;
  }
  while(abs > 0){
    abs = abs << 1;
    counts = counts + 1;
  }
  // E=32-counts-1, for counts is bits in right of MSB, and (n-1)th bits is 2^(n-1)
  E = 31 - counts;
  exp = E + 127;
  // >>8 is because that we actually only need 23bits, and left first bits to be 1 in default
  // abs = 1 + m + (...) = 32 (m has 23 bits)
  m_temp = (abs >> 8) & 0x7fffff;
  lost_precision = abs & 0xff;
  large_precision = lost_precision & 0x80;
  rest_precision = lost_precision & 0x7f;
  // if lost_precision is larger than half or half with 1 in head, add 1 for m
  half_judge = large_precision && rest_precision;
  m_temp = m_temp + (half_judge || (large_precision && (m_temp & 0x1)));
  // if add 1 for m, it may lead m to overflow to 1000..0(24bits)
  // then we need to make m=000..0, and add 1 for exp
  if(m_temp >> 23){
    m_temp = 0;
    exp=exp + 1;
  }
  result = ((sign << 31) | (exp << 23) | m_temp);
  return result;
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  // Only 3 circumstances happend to us
  // (1) Denormalized number, if m starts with 1, we need to add 1 for exp and m<<1, else we just need m<<1
  // (2) For infty and NaN, we just return what it is
  // (3) Normalized number, just add 1 for exp
  int uf_sign = uf & (1 << 31) ;
  int exp = ((uf >> 23) & 0xff);
  int m = (uf & 0x7fffff);
  int judge = m >> 22;
  int result = 0 ;
  if (exp == 0){
      m = m << 1;
      if(judge){
        exp = 1;
      }
  }else if (exp == 0xff){
    return uf;
  }else {
    exp ++;
  }
  result = (uf_sign | (exp << 23) | m);
  return result;
}