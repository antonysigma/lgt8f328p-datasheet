; unsigned long dsu_xmuluu (unsigned short dy, unsigned short dx)
#include "udsc_def.inc" ; opcode definitions
    .global dsu_xmuluu  ; declare for called from C/C++ code

dsu_xmuluu:
    out DSDX, r24   ; load DX
    out DSDX, r22   ; load DY
    ldi r20, XMULUU ; load opcode
    out DSIR, r20   ; do multiply
    in r22, DSAL    ; {r23, r22} = AL
    in r24, DSAH    ; {r25, r24} = AH
    ret