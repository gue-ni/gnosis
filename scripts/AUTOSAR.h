#ifndef AUTOSAR_H
#define AUTOSAR_H

#include <stdio.h>
#include <stdint.h>
#include <assert.h>

typedef uint8_t                                     uint8;
typedef uint16_t                                    uint16;
typedef uint32_t                                    uint32;
typedef uint_least8_t                               uint8_least;
typedef uint_least16_t                              uint16_least;
typedef uint_least32_t                              uint32_least;
typedef unsigned char                               boolean;

#define TRUE    1
#define FALSE   0

#define AUTOMATIC                                   /* memclass */
#define SOAD_APPL_DATA                              /* ptrclass */
#define P2VAR(ptrtype, memclass, ptrclass)          ptrtype * memclass ptrclass
#define P2CONST(ptrtype, memclass, ptrclass)        ptrtype const * memclass ptrclass
#define CONSTP2VAR(ptrtype, memclass, ptrclass)     ptrtype * const memclass ptrclass
#define CONSTP2CONST(ptrtype, memclass, ptrclass)   ptrtype const * const memclass ptrclass

#endif /* AUTOSAR_H */