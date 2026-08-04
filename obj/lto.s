	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"llvm-link"
	.section	.text.__Z7bn_zerov,"ax",@progbits
	.globl	__Z7bn_zerov                    ; -- Begin function _Z7bn_zerov
	.type	__Z7bn_zerov,@function
__Z7bn_zerov:                           ; @_Z7bn_zerov
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld.sis	de, 0
	ld	(iy), hl
	ld	(iy + 3), d
	ld	(iy + 4), e
	ld	(iy + 5), d
	lea	hl, iy + 0
	pop	ix
	ret
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	__Z7bn_zerov, .Lfunc_end0-__Z7bn_zerov
                                        ; -- End function
	.section	.text.__Z12bn_normalize6BigNum,"ax",@progbits
	.globl	__Z12bn_normalize6BigNum        ; -- Begin function _Z12bn_normalize6BigNum
	.type	__Z12bn_normalize6BigNum,@function
__Z12bn_normalize6BigNum:               ; @_Z12bn_normalize6BigNum
; %bb.0:
	ld	hl, -8
	call	__frameset
	ld	iy, (ix + 6)
	ld	bc, 0
	ld	hl, (ix + 10)
	ld	e, (ix + 13)
	call	__lcmpzero
	jr	nz, .LBB1_3
; %bb.1:
	ld	(iy), bc
	.local	.LBB1_2
.LBB1_2:
	ld	(iy + 3), 0
	ld.sis	hl, 0
	jp	.LBB1_15
	.local	.LBB1_3
.LBB1_3:
	ld	a, e
	ld	de, (ix + 14)
	ld.sis	bc, 30001
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	call	pe, __setflag
	ld	l, e
	ld	h, d
	ld	(ix - 5), l
	ld	(ix - 4), h
	jp	p, .LBB1_5
; %bb.4:
	ld.sis	hl, 30000
	ld	(ix - 5), l
	ld	(ix - 4), h
	.local	.LBB1_5
.LBB1_5:
	ld	(ix - 3), de
	lea	hl, ix + 10
	ld	(ix - 8), hl
	ld	d, 0
	ld	hl, -6777217
	ld	bc, (ix + 10)
	.local	.LBB1_6
.LBB1_6:                                ; =>This Inner Loop Header: Depth=1
	ld	e, d
	push	bc
	pop	iy
	ld	d, a
	call	__lcmpu
	jr	nc, .LBB1_9
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=1
	ld	l, (ix - 5)
	ld	h, (ix - 4)
	ld	bc, (ix - 3)
	or	a, a
	sbc.sis	hl, bc
	jp	z, .LBB1_14
; %bb.8:                                ;   in Loop: Header=BB1_6 Depth=1
	lea	hl, iy + 0
	ld	e, d
	push	bc
	pop	iy
	ld	bc, 5
	xor	a, a
	call	__ladd
	ld	bc, 10
	call	__ldivu
	push	hl
	pop	bc
	ld	d, a
	ld	a, e
	inc.sis	iy
	ld	(ix - 3), iy
	ld	hl, -6777217
	jr	.LBB1_6
	.local	.LBB1_9
.LBB1_9:
	lea	hl, iy + 0
	.local	.LBB1_10
.LBB1_10:                               ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ld	e, d
	push	hl
	pop	iy
	ld	bc, 1000000
	xor	a, a
	call	__lcmpu
	jr	nc, .LBB1_13
; %bb.11:                               ;   in Loop: Header=BB1_10 Depth=1
	ld	a, d
	ld	bc, (ix - 3)
	ld	l, c
	ld	h, b
	ld.sis	de, -29999
	or	a, a
	sbc.sis	hl, de
	call	pe, __setflag
	jp	m, .LBB1_17
; %bb.12:                               ;   in Loop: Header=BB1_10 Depth=1
	lea	hl, iy + 0
	ld	e, a
	push	bc
	pop	iy
	ld	bc, 10
	xor	a, a
	call	__lmulu
	ld	d, e
	dec.sis	iy
	ld	(ix - 3), iy
	jr	.LBB1_10
	.local	.LBB1_13
.LBB1_13:
	ld	hl, (ix - 3)
	ld	(ix + 14), l
	ld	(ix + 15), h
	ld	(ix + 10), iy
	ld	(ix + 13), d
	ld	iy, (ix + 6)
	lea	de, iy + 0
	ld	hl, (ix - 8)
	ld	bc, 6
	ldir
	jr	.LBB1_16
	.local	.LBB1_14
.LBB1_14:
	ld	iy, (ix + 6)
	ld	hl, -6777217
	ld	(iy), hl
	ld	(iy + 3), 0
	ld.sis	hl, 30000
	.local	.LBB1_15
.LBB1_15:
	ld	(iy + 4), l
	ld	(iy + 5), h
	.local	.LBB1_16
.LBB1_16:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB1_17
.LBB1_17:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	jp	.LBB1_2
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	__Z12bn_normalize6BigNum, .Lfunc_end1-__Z12bn_normalize6BigNum
                                        ; -- End function
	.section	.text.__Z11bn_from_u32m,"ax",@progbits
	.globl	__Z11bn_from_u32m               ; -- Begin function _Z11bn_from_u32m
	.type	__Z11bn_from_u32m,@function
__Z11bn_from_u32m:                      ; @_Z11bn_from_u32m
; %bb.0:
	ld	hl, -7
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	call	__lcmpzero
	jr	nz, .LBB2_2
; %bb.1:
	or	a, a
	sbc	hl, hl
	ld.sis	de, 0
	ld	(iy), hl
	ld	(iy + 3), d
	ld	(iy + 4), e
	ld	(iy + 5), d
	jr	.LBB2_3
	.local	.LBB2_2
.LBB2_2:
	ld.sis	bc, 6
	lea	iy, ix - 7
	ld	(ix - 7), hl
	ld	(ix - 4), e
	ld	(ix - 3), c
	ld	(ix - 2), b
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	lea	hl, iy + 0
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z12bn_normalize6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB2_3
.LBB2_3:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	__Z11bn_from_u32m, .Lfunc_end2-__Z11bn_from_u32m
                                        ; -- End function
	.section	.text.__Z7bn_makems,"ax",@progbits
	.globl	__Z7bn_makems                   ; -- Begin function _Z7bn_makems
	.type	__Z7bn_makems,@function
__Z7bn_makems:                          ; @_Z7bn_makems
; %bb.0:
	ld	hl, -7
	call	__frameset
	ld	de, (ix + 6)
	ld	bc, (ix + 9)
	ld	a, (ix + 12)
	ld	iy, (ix + 15)
	lea	hl, ix - 7
	ld	(ix - 7), bc
	ld	(ix - 4), a
	push	iy
	ex	(sp), hl
	ld	(ix - 3), l
	ld	(ix - 2), h
	pop	hl
	ld	(ix + 6), de
	lea	de, ix + 10
	ld	bc, 6
	ldir
	ld	sp, ix
	pop	ix
	jp	__Z12bn_normalize6BigNum
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	__Z7bn_makems, .Lfunc_end3-__Z7bn_makems
                                        ; -- End function
	.section	.text.__Z10bn_is_zero6BigNum,"ax",@progbits
	.globl	__Z10bn_is_zero6BigNum          ; -- Begin function _Z10bn_is_zero6BigNum
	.type	__Z10bn_is_zero6BigNum,@function
__Z10bn_is_zero6BigNum:                 ; @_Z10bn_is_zero6BigNum
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	e, (ix + 9)
	call	__lcmpzero
	jr	z, .LBB4_2
; %bb.1:
	ld	a, 0
	jr	.LBB4_3
	.local	.LBB4_2
.LBB4_2:
	ld	a, -1
	.local	.LBB4_3
.LBB4_3:
	pop	ix
	ret
	.local	.Lfunc_end4
.Lfunc_end4:
	.size	__Z10bn_is_zero6BigNum, .Lfunc_end4-__Z10bn_is_zero6BigNum
                                        ; -- End function
	.section	.text.__Z10bn_compare6BigNumS_,"ax",@progbits
	.globl	__Z10bn_compare6BigNumS_        ; -- Begin function _Z10bn_compare6BigNumS_
	.type	__Z10bn_compare6BigNumS_,@function
__Z10bn_compare6BigNumS_:               ; @_Z10bn_compare6BigNumS_
; %bb.0:
	ld	hl, -25
	call	__frameset
	lea	iy, ix + 6
	ld	(ix - 25), iy
	lea	hl, ix + 12
	ld	(ix - 16), hl
	lea	hl, ix - 7
	ld	(ix - 22), hl
	lea	hl, ix - 13
	ld	(ix - 19), hl
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	lea	hl, iy + 0
	ldir
	ld	hl, (ix - 22)
	push	hl
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 25)
	ld	hl, (ix - 22)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	hl, (ix - 16)
	ld	bc, 6
	ldir
	ld	hl, (ix - 19)
	push	hl
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 16)
	ld	hl, (ix - 19)
	ld	bc, 6
	ldir
	ld	hl, (ix + 6)
	ld	d, (ix + 9)
	ld	bc, (ix + 12)
	ld	a, (ix + 15)
	ld	e, d
	call	__lcmpzero
	jr	nz, .LBB5_3
; %bb.1:
	push	bc
	pop	hl
	ld	e, a
	call	__lcmpzero
	jp	nz, .LBB5_7
	.local	.LBB5_2
.LBB5_2:
	ld	iy, 0
	jp	.LBB5_12
	.local	.LBB5_3
.LBB5_3:
	ld	iy, 1
	push	bc
	pop	hl
	ld	e, a
	call	__lcmpzero
	jp	z, .LBB5_12
; %bb.4:
	ld	hl, (ix + 10)
	ld	bc, (ix + 16)
	ld	(ix - 16), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB5_8
; %bb.5:
	ld	hl, (ix + 6)
	ld	e, d
	ld	bc, (ix + 12)
	call	__lcmpu
	jp	z, .LBB5_2
; %bb.6:
	ld	e, d
	call	__lcmpu
	sbc	hl, hl
	jp	.LBB5_11
	.local	.LBB5_7
.LBB5_7:
	ld	iy, -1
	jp	.LBB5_12
	.local	.LBB5_8
.LBB5_8:
	ld	hl, (ix - 16)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	call	pe, __setflag
	jp	m, .LBB5_10
; %bb.9:
	ld	hl, 0
	jr	.LBB5_11
	.local	.LBB5_10
.LBB5_10:
	ld	hl, -1
	.local	.LBB5_11
.LBB5_11:
	lea	bc, iy + 0
	call	__ior
	push	hl
	pop	iy
	.local	.LBB5_12
.LBB5_12:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end5
.Lfunc_end5:
	.size	__Z10bn_compare6BigNumS_, .Lfunc_end5-__Z10bn_compare6BigNumS_
                                        ; -- End function
	.section	.text.__Z6bn_add6BigNumS_,"ax",@progbits
	.globl	__Z6bn_add6BigNumS_             ; -- Begin function _Z6bn_add6BigNumS_
	.type	__Z6bn_add6BigNumS_,@function
__Z6bn_add6BigNumS_:                    ; @_Z6bn_add6BigNumS_
; %bb.0:
	ld	hl, -22
	call	__frameset
	lea	iy, ix + 10
	ld	(ix - 22), iy
	lea	hl, ix + 16
	ld	(ix - 19), hl
	lea	hl, ix - 7
	ld	(ix - 16), hl
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	lea	hl, iy + 0
	ldir
	ld	hl, (ix - 16)
	push	hl
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 22)
	ld	iy, (ix - 16)
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	hl, (ix - 19)
	ld	bc, 6
	ldir
	push	iy
	call	__Z12bn_normalize6BigNum
	ld	hl, 6
	push	hl
	pop	bc
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 19)
	push	de
	pop	iy
	ld	hl, (ix - 16)
	ldir
	ld	hl, (ix + 10)
	ld	e, (ix + 13)
	call	__lcmpzero
	jr	nz, .LBB6_2
; %bb.1:
	ld	hl, (ix + 6)
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	iy, (ix + 6)
	jp	.LBB6_12
	.local	.LBB6_2
.LBB6_2:
	ld	bc, 6
	ld	hl, (ix + 16)
	ld	e, (ix + 19)
	call	__lcmpzero
	jr	nz, .LBB6_4
; %bb.3:
	ld	iy, (ix + 6)
	lea	de, iy + 0
	ld	hl, (ix - 22)
	jp	.LBB6_8
	.local	.LBB6_4
.LBB6_4:
	ld	iy, (ix + 14)
	ld	bc, (ix + 20)
	ld	a, b
	rlc	a
	sbc	hl, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	call	pe, __setflag
	jp	p, .LBB6_6
; %bb.5:
	lea	de, ix - 7
	ld	(ix - 16), de
	ld	iy, (ix - 22)
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	lea	de, iy + 0
	ld	iy, (ix - 19)
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	lea	de, iy + 0
	ld	hl, (ix - 16)
	ld	bc, 6
	ldir
	ld	iy, (ix + 14)
	ld	bc, (ix + 20)
	ld	a, b
	rlc	a
	sbc	hl, hl
	ex	de, hl
	.local	.LBB6_6
.LBB6_6:
	ld	e, c
	ld	d, b
	ld	a, iyh
	rlc	a
	sbc	hl, hl
	ld	(ix - 16), iy
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc	hl, de
	push	hl
	pop	iy
	ld	de, 8
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB6_9
; %bb.7:
	ld	iy, (ix + 6)
	lea	de, iy + 0
	ld	hl, (ix - 22)
	ld	bc, 6
	.local	.LBB6_8
.LBB6_8:
	ldir
	jr	.LBB6_12
	.local	.LBB6_9
.LBB6_9:
	lea	hl, ix - 13
	ld	(ix - 19), hl
	ld	hl, (ix + 16)
	ld	e, (ix + 19)
	ld	a, iyl
	cp	a, 7
	jr	c, .LBB6_11
; %bb.10:
	ld	iyl, 7
	.local	.LBB6_11
.LBB6_11:
	ld	b, 2
	ld	a, iyl
	call	__bshl
	ld	bc, 0
	ld	c, a
	ld	iy, __ZZL9pow10_u32hE6values
	add	iy, bc
	ld	bc, (iy)
	ld	a, (iy + 3)
	call	__ldivu
	push	hl
	pop	bc
	ld	a, e
	ld	hl, (ix + 10)
	ld	e, (ix + 13)
	call	__ladd
	ld	(ix - 13), hl
	ld	(ix - 10), e
	ld	hl, (ix - 16)
	ld	(ix - 9), l
	ld	(ix - 8), h
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ld	hl, (ix - 19)
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z12bn_normalize6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB6_12
.LBB6_12:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end6
.Lfunc_end6:
	.size	__Z6bn_add6BigNumS_, .Lfunc_end6-__Z6bn_add6BigNumS_
                                        ; -- End function
	.section	.text.__Z6bn_sub6BigNumS_,"ax",@progbits
	.globl	__Z6bn_sub6BigNumS_             ; -- Begin function _Z6bn_sub6BigNumS_
	.type	__Z6bn_sub6BigNumS_,@function
__Z6bn_sub6BigNumS_:                    ; @_Z6bn_sub6BigNumS_
; %bb.0:
	ld	hl, -22
	call	__frameset
	lea	iy, ix + 10
	ld	(ix - 22), iy
	lea	hl, ix + 16
	ld	(ix - 16), hl
	lea	hl, ix - 7
	ld	(ix - 19), hl
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	lea	hl, iy + 0
	ldir
	ld	hl, (ix - 19)
	push	hl
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 22)
	ld	iy, (ix - 19)
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	hl, (ix - 16)
	ld	bc, 6
	ldir
	push	iy
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 16)
	ld	hl, (ix - 19)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 22)
	ld	bc, 6
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 16)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 1
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	p, .LBB7_2
; %bb.1:
	ld.sis	hl, 0
	ld	iy, (ix + 6)
	ld	de, 0
	ld	(iy), de
	ld	(iy + 3), d
	ld	(iy + 4), l
	ld	(iy + 5), h
	jp	.LBB7_7
	.local	.LBB7_2
.LBB7_2:
	ld	bc, (ix + 14)
	ld	a, b
	rlc	a
	sbc	hl, hl
	ex	de, hl
	ld	(ix - 16), bc
	ld	e, c
	ld	d, b
	ld	iy, (ix + 20)
	ld	a, iyh
	rlc	a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, iyl
	ld	b, iyh
	ex	de, hl
	or	a, a
	sbc	hl, bc
	push	hl
	pop	iy
	ld	de, 8
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB7_4
; %bb.3:
	ld	iy, (ix + 6)
	lea	de, iy + 0
	ld	hl, (ix - 22)
	ld	bc, 6
	ldir
	jr	.LBB7_7
	.local	.LBB7_4
.LBB7_4:
	lea	hl, ix - 13
	ld	(ix - 19), hl
	ld	hl, (ix + 16)
	ld	e, (ix + 19)
	ld	a, iyl
	cp	a, 7
	jr	c, .LBB7_6
; %bb.5:
	ld	iyl, 7
	.local	.LBB7_6
.LBB7_6:
	ld	b, 2
	ld	a, iyl
	call	__bshl
	ld	bc, 0
	ld	c, a
	ld	iy, __ZZL9pow10_u32hE6values
	add	iy, bc
	ld	bc, (iy)
	ld	a, (iy + 3)
	call	__ldivu
	push	hl
	pop	bc
	ld	a, e
	ld	hl, (ix + 10)
	ld	e, (ix + 13)
	call	__lsub
	ld	(ix - 13), hl
	ld	(ix - 10), e
	ld	hl, (ix - 16)
	ld	(ix - 9), l
	ld	(ix - 8), h
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ld	hl, (ix - 19)
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z12bn_normalize6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB7_7
.LBB7_7:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end7
.Lfunc_end7:
	.size	__Z6bn_sub6BigNumS_, .Lfunc_end7-__Z6bn_sub6BigNumS_
                                        ; -- End function
	.section	.text.__Z6bn_mul6BigNumS_,"ax",@progbits
	.globl	__Z6bn_mul6BigNumS_             ; -- Begin function _Z6bn_mul6BigNumS_
	.type	__Z6bn_mul6BigNumS_,@function
__Z6bn_mul6BigNumS_:                    ; @_Z6bn_mul6BigNumS_
; %bb.0:
	ld	hl, -17
	call	__frameset
	ld	iy, (ix + 6)
	ld	bc, 0
	ld	hl, (ix + 10)
	ld	a, (ix + 13)
	ld	e, a
	call	__lcmpzero
	jr	z, .LBB8_2
; %bb.1:
	ld	hl, (ix + 16)
	ld	e, (ix + 19)
	call	__lcmpzero
	jr	nz, .LBB8_5
	.local	.LBB8_2
.LBB8_2:
	ld	(iy), bc
	.local	.LBB8_3
.LBB8_3:
	ld	(iy + 3), 0
	ld.sis	hl, 0
	ld	(iy + 4), l
	ld	(iy + 5), h
	.local	.LBB8_4
.LBB8_4:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB8_5
.LBB8_5:
	ld	(ix - 13), e                    ; 1-byte Folded Spill
	ld	(ix - 14), a                    ; 1-byte Folded Spill
	ld	iyh, 0
	ld	de, (ix + 14)
	ld	a, d
	ld	l, a
	rlc	l
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, e
	ld	b, d
	rlc	a
	sbc	a, a
	ld	iyl, a
	ld	de, (ix + 20)
	ld	a, d
	ld	l, a
	rlc	l
	sbc	hl, hl
	ld	l, e
	ld	h, d
	rlc	a
	sbc	a, a
	ld	e, a
	ld	a, iyl
	call	__ladd
	push	hl
	pop	bc
	ld	iyl, e
	ld	hl, 30000
	ld	d, iyh
	ld	e, iyh
	ld	(ix - 12), bc
	ld	a, iyl
	call	__lcmps
	call	pe, __setflag
	jp	p, .LBB8_7
; %bb.6:
	ld	hl, -6777217
	ld.sis	de, 30000
	ld	iy, (ix + 6)
	ld	(iy), hl
	ld	(iy + 3), 0
	ld	(iy + 4), e
	ld	(iy + 5), d
	jr	.LBB8_4
	.local	.LBB8_7
.LBB8_7:
	ld	bc, -30000
	ld	a, -1
	ld	hl, (ix - 12)
	ld	e, iyl
	call	__lcmps
	call	pe, __setflag
	jp	p, .LBB8_9
; %bb.8:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	jp	.LBB8_3
	.local	.LBB8_9
.LBB8_9:
	lea	hl, ix - 7
	ld	(ix - 17), hl
	ld	a, d
	ld	(ix - 9), a
	ld	hl, (ix - 11)
	ld	h, a
	ld	l, (ix - 14)                    ; 1-byte Folded Reload
	ld	de, 0
	ld	c, e
	ld	b, d
	ld	(ix - 8), a
	ld	de, (ix - 10)
	ld	d, a
	ld	e, (ix - 13)                    ; 1-byte Folded Reload
	push	bc
	push	hl
	ld	hl, (ix + 10)
	push	hl
	ld	hl, (ix + 16)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 500000
	push	iy
	call	__lladd
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000000
	push	iy
	call	__lldivu
	pop	bc
	pop	bc
	pop	bc
	ld	a, e
	ld	(ix - 7), hl
	ld	(ix - 4), a
	ld	hl, (ix - 12)
	ld	(ix - 3), l
	ld	(ix - 2), h
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ld	hl, (ix - 17)
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z12bn_normalize6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	jp	.LBB8_4
	.local	.Lfunc_end8
.Lfunc_end8:
	.size	__Z6bn_mul6BigNumS_, .Lfunc_end8-__Z6bn_mul6BigNumS_
                                        ; -- End function
	.section	.text.__Z6bn_div6BigNumS_,"ax",@progbits
	.globl	__Z6bn_div6BigNumS_             ; -- Begin function _Z6bn_div6BigNumS_
	.type	__Z6bn_div6BigNumS_,@function
__Z6bn_div6BigNumS_:                    ; @_Z6bn_div6BigNumS_
; %bb.0:
	ld	hl, -28
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 16)
	ld	a, (ix + 19)
	ld	bc, (ix + 10)
	ld	d, (ix + 13)
	ld	e, a
	call	__lcmpzero
	push	bc
	pop	hl
	jr	nz, .LBB9_2
; %bb.1:
	ld	e, d
	call	__lcmpzero
	jr	z, .LBB9_3
	jr	.LBB9_6
	.local	.LBB9_2
.LBB9_2:
	ld	e, d
	call	__lcmpzero
	jr	nz, .LBB9_4
	.local	.LBB9_3
.LBB9_3:
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	ld	(iy + 3), h
	jr	.LBB9_7
	.local	.LBB9_4
.LBB9_4:
	ld	(ix - 17), d                    ; 1-byte Folded Spill
	ld	(ix - 14), a                    ; 1-byte Folded Spill
	ld	bc, (ix + 14)
	ld	a, b
	ld	l, a
	rlc	l
	sbc	hl, hl
	ex	de, hl
	ld	e, c
	ld	d, b
	rlc	a
	sbc	a, a
	ld	(ix - 13), a                    ; 1-byte Folded Spill
	ld	iy, (ix + 20)
	ld	a, iyh
	ld	l, a
	rlc	l
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, iyl
	ld	b, iyh
	rlc	a
	sbc	a, a
	ex	de, hl
	ld	e, (ix - 13)                    ; 1-byte Folded Reload
	call	__lsub
	push	hl
	pop	bc
	ld	d, e
	ld	hl, 30000
	ld	e, 0
	ld	iyl, e
	ld	(ix - 13), bc
	ld	a, d
	call	__lcmps
	call	pe, __setflag
	jp	p, .LBB9_9
; %bb.5:
	ld	iy, (ix + 6)
	.local	.LBB9_6
.LBB9_6:
	ld	hl, -6777217
	ld	(iy), hl
	ld	(iy + 3), 0
	ld.sis	hl, 30000
	.local	.LBB9_7
.LBB9_7:
	ld	(iy + 4), l
	ld	(iy + 5), h
	.local	.LBB9_8
.LBB9_8:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB9_9
.LBB9_9:
	ld	bc, -30000
	ld	a, -1
	ld	hl, (ix - 13)
	ld	e, d
	call	__lcmps
	call	pe, __setflag
	jp	p, .LBB9_11
; %bb.10:
	ld	iy, (ix + 6)
	jp	.LBB9_3
	.local	.LBB9_11
.LBB9_11:
	ld	hl, 1000000
	lea	de, ix - 7
	ld	(ix - 20), de
	push	af
	ld	a, iyl
	ld	(ix - 10), a
	pop	af
	ld	de, (ix - 12)
	ld	d, iyl
	ld	e, (ix - 17)                    ; 1-byte Folded Reload
	ld	bc, 0
	push	bc
	pop	iy
	ld	c, iyl
	ld	b, iyh
	push	iy
	push	iy
	push	hl
	ld	hl, (ix + 10)
	push	bc
	pop	iy
	ld	(ix - 28), iy
	call	__llmulu
	ld	(ix - 17), hl
	ld	(ix - 23), de
	ld	(ix - 25), c
	ld	(ix - 24), b
	pop	hl
	pop	hl
	pop	hl
	ld	l, 1
	ld	bc, (ix + 16)
	ld	a, (ix - 14)                    ; 1-byte Folded Reload
	call	__lshru
	ld	e, a
	xor	a, a
	ld	(ix - 9), a
	ld	hl, (ix - 11)
	ld	h, a
	ld	l, e
	push	iy
	push	hl
	push	bc
	ld	hl, (ix - 17)
	ld	de, (ix - 23)
	ld	c, (ix - 25)
	ld	b, (ix - 24)
	call	__lladd
	ld	(ix - 17), hl
	pop	iy
	pop	iy
	pop	iy
	ld	(ix - 8), a
	ld	hl, (ix - 10)
	ld	h, a
	ld	l, (ix - 14)                    ; 1-byte Folded Reload
	ld	iy, (ix - 28)
	push	iy
	push	hl
	ld	iy, (ix + 16)
	push	iy
	ld	hl, (ix - 17)
	call	__lldivu
	pop	bc
	pop	bc
	pop	bc
	ld	a, e
	ld	(ix - 7), hl
	ld	(ix - 4), a
	ld	hl, (ix - 13)
	ld	(ix - 3), l
	ld	(ix - 2), h
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ld	hl, (ix - 20)
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z12bn_normalize6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	jp	.LBB9_8
	.local	.Lfunc_end9
.Lfunc_end9:
	.size	__Z6bn_div6BigNumS_, .Lfunc_end9-__Z6bn_div6BigNumS_
                                        ; -- End function
	.section	.text.__Z10bn_mul_u326BigNumm,"ax",@progbits
	.globl	__Z10bn_mul_u326BigNumm         ; -- Begin function _Z10bn_mul_u326BigNumm
	.type	__Z10bn_mul_u326BigNumm,@function
__Z10bn_mul_u326BigNumm:                ; @_Z10bn_mul_u326BigNumm
; %bb.0:
	ld	hl, -16
	call	__frameset
	lea	hl, ix + 10
	ld	(ix - 10), hl
	ld	hl, (ix + 16)
	ld	a, (ix + 19)
	lea	bc, ix - 7
	ld	(ix - 13), bc
	ld	e, a
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 16), hl
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 10)
	push	bc
	pop	iy
	ldir
	ld	de, (ix - 16)
	ld	hl, (ix - 13)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z6bn_mul6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end10
.Lfunc_end10:
	.size	__Z10bn_mul_u326BigNumm, .Lfunc_end10-__Z10bn_mul_u326BigNumm
                                        ; -- End function
	.section	.text.__Z10bn_div_u326BigNumm,"ax",@progbits
	.globl	__Z10bn_div_u326BigNumm         ; -- Begin function _Z10bn_div_u326BigNumm
	.type	__Z10bn_div_u326BigNumm,@function
__Z10bn_div_u326BigNumm:                ; @_Z10bn_div_u326BigNumm
; %bb.0:
	ld	hl, -16
	call	__frameset
	lea	hl, ix + 10
	ld	(ix - 10), hl
	ld	hl, (ix + 16)
	ld	a, (ix + 19)
	lea	bc, ix - 7
	ld	(ix - 13), bc
	ld	e, a
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 16), hl
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 10)
	push	bc
	pop	iy
	ldir
	ld	de, (ix - 16)
	ld	hl, (ix - 13)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z6bn_div6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end11
.Lfunc_end11:
	.size	__Z10bn_div_u326BigNumm, .Lfunc_end11-__Z10bn_div_u326BigNumm
                                        ; -- End function
	.section	.text.__Z17bn_scale_permille6BigNumm,"ax",@progbits
	.globl	__Z17bn_scale_permille6BigNumm  ; -- Begin function _Z17bn_scale_permille6BigNumm
	.type	__Z17bn_scale_permille6BigNumm,@function
__Z17bn_scale_permille6BigNumm:         ; @_Z17bn_scale_permille6BigNumm
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 16)
	ld	a, (ix + 19)
	ld	bc, (ix + 10)
	ld	d, (ix + 13)
	ld	e, a
	call	__lcmpzero
	jr	z, .LBB12_2
; %bb.1:
	push	bc
	pop	hl
	ld	e, d
	call	__lcmpzero
	jr	nz, .LBB12_3
	.local	.LBB12_2
.LBB12_2:
	or	a, a
	sbc	hl, hl
	ld.sis	de, 0
	ld	(iy), hl
	ld	(iy + 3), d
	ld	(iy + 4), e
	ld	(iy + 5), d
	jr	.LBB12_4
	.local	.LBB12_3
.LBB12_3:
	lea	hl, ix + 10
	lea	de, ix - 7
	ld	(ix - 10), de
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 13), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, 6
	ldir
	ld	hl, (ix + 16)
	ld	iy, (ix - 13)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 10)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 13), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 10)
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	iy, (ix - 13)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix + 6)
	push	hl
	call	__Z10bn_div_u326BigNumm
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB12_4
.LBB12_4:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end12
.Lfunc_end12:
	.size	__Z17bn_scale_permille6BigNumm, .Lfunc_end12-__Z17bn_scale_permille6BigNumm
                                        ; -- End function
	.section	.text.__Z15bn_pow_permillemt,"ax",@progbits
	.globl	__Z15bn_pow_permillemt          ; -- Begin function _Z15bn_pow_permillemt
	.type	__Z15bn_pow_permillemt,@function
__Z15bn_pow_permillemt:                 ; @_Z15bn_pow_permillemt
; %bb.0:
	ld	hl, -31
	call	__frameset
	ld	bc, (ix + 6)
	ld	hl, 1
	lea	de, ix - 7
	ld	(ix - 22), de
	lea	de, ix - 13
	ld	(ix - 28), de
	lea	de, ix - 19
	ld	(ix - 25), de
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix + 12)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 28)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 31), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 28)
	ldir
	ld	hl, 1000
	ld	iy, (ix - 31)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 22)
	push	hl
	call	__Z10bn_div_u326BigNumm
	ld	de, (ix + 15)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB13_1
.LBB13_1:                               ; =>This Inner Loop Header: Depth=1
	sbc.sis	hl, hl
	adc.sis	hl, de
	jp	z, .LBB13_6
; %bb.2:                                ;   in Loop: Header=BB13_1 Depth=1
	ld	l, e
	ld	h, d
	ld.sis	bc, 1
	call	__sand
	bit	0, l
	jr	z, .LBB13_4
; %bb.3:                                ;   in Loop: Header=BB13_1 Depth=1
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 31), hl
	inc	iy
	ld	(ix - 28), de
	lea	de, iy + 0
	ld	hl, (ix + 6)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 31)
	ld	hl, (ix - 22)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 25)
	push	hl
	call	__Z6bn_mul6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix + 6)
	ld	hl, (ix - 25)
	ld	bc, 6
	ldir
	ld	de, (ix - 28)
	.local	.LBB13_4
.LBB13_4:                               ;   in Loop: Header=BB13_1 Depth=1
	ld	a, d
	srl	a
	ld	l, e
	rr	l
	ld	c, l
	ld	b, a
	ld	l, e
	ld	h, d
	ld.sis	de, 1
	or	a, a
	sbc.sis	hl, de
	ld	e, c
	ld	d, b
	jr	z, .LBB13_1
; %bb.5:                                ;   in Loop: Header=BB13_1 Depth=1
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 31), hl
	inc	iy
	lea	de, iy + 0
	ld	iy, (ix - 22)
	lea	hl, iy + 0
	ld	(ix - 28), c
	ld	(ix - 27), b
	ld	bc, 6
	ldir
	ld	de, (ix - 31)
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, (ix - 25)
	push	hl
	call	__Z6bn_mul6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 22)
	ld	hl, (ix - 25)
	ld	bc, 6
	ldir
	ld	l, (ix - 28)
	ld	h, (ix - 27)
	ld	e, l
	ld	d, h
	jp	.LBB13_1
	.local	.LBB13_6
.LBB13_6:
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end13
.Lfunc_end13:
	.size	__Z15bn_pow_permillemt, .Lfunc_end13-__Z15bn_pow_permillemt
                                        ; -- End function
	.section	.text.__Z17bn_geometric_cost6BigNummt,"ax",@progbits
	.globl	__Z17bn_geometric_cost6BigNummt ; -- Begin function _Z17bn_geometric_cost6BigNummt
	.type	__Z17bn_geometric_cost6BigNummt,@function
__Z17bn_geometric_cost6BigNummt:        ; @_Z17bn_geometric_cost6BigNummt
; %bb.0:
	ld	hl, -16
	call	__frameset
	lea	hl, ix + 10
	ld	(ix - 10), hl
	ld	hl, (ix + 16)
	ld	a, (ix + 19)
	ld	de, (ix + 22)
	lea	bc, ix - 7
	ld	(ix - 13), bc
	push	de
	ld	e, a
	push	de
	push	hl
	push	bc
	call	__Z15bn_pow_permillemt
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 16), hl
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 10)
	push	bc
	pop	iy
	ldir
	ld	de, (ix - 16)
	ld	hl, (ix - 13)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z6bn_mul6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end14
.Lfunc_end14:
	.size	__Z17bn_geometric_cost6BigNummt, .Lfunc_end14-__Z17bn_geometric_cost6BigNummt
                                        ; -- End function
	.section	.text.__Z14bn_log10_floor6BigNum,"ax",@progbits
	.globl	__Z14bn_log10_floor6BigNum      ; -- Begin function _Z14bn_log10_floor6BigNum
	.type	__Z14bn_log10_floor6BigNum,@function
__Z14bn_log10_floor6BigNum:             ; @_Z14bn_log10_floor6BigNum
; %bb.0:
	ld	hl, -14
	call	__frameset
	lea	hl, ix + 6
	ld	(ix - 11), hl
	lea	iy, ix - 7
	ld	(ix - 14), iy
	push	de
	push	de
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ldir
	push	iy
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 11)
	ld	hl, (ix - 14)
	ld	bc, 6
	ldir
	ld	hl, (ix + 6)
	ld	e, (ix + 9)
	call	__lcmpzero
	jr	z, .LBB15_2
; %bb.1:
	ld	a, 0
	jr	.LBB15_3
	.local	.LBB15_2
.LBB15_2:
	ld	a, 1
	.local	.LBB15_3
.LBB15_3:
	ld	e, 0
	ld	iy, (ix + 10)
	ld.sis	bc, 1
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	call	pe, __setflag
	jp	p, .LBB15_5
; %bb.4:
	ld.sis	iy, 0
	.local	.LBB15_5
.LBB15_5:
	ld	(ix - 8), e
	ld	bc, (ix - 10)
	ld	b, iyh
	ld	c, iyl
	or	a, a
	sbc	hl, hl
	ld	d, l
	bit	0, a
	jr	nz, .LBB15_7
; %bb.6:
	push	bc
	pop	hl
	.local	.LBB15_7
.LBB15_7:
	bit	0, a
	jr	nz, .LBB15_9
; %bb.8:
	ld	e, d
	.local	.LBB15_9
.LBB15_9:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end15
.Lfunc_end15:
	.size	__Z14bn_log10_floor6BigNum, .Lfunc_end15-__Z14bn_log10_floor6BigNum
                                        ; -- End function
	.section	.text.__Z17bn_to_u32_clamped6BigNumm,"ax",@progbits
	.globl	__Z17bn_to_u32_clamped6BigNumm  ; -- Begin function _Z17bn_to_u32_clamped6BigNumm
	.type	__Z17bn_to_u32_clamped6BigNumm,@function
__Z17bn_to_u32_clamped6BigNumm:         ; @_Z17bn_to_u32_clamped6BigNumm
; %bb.0:
	ld	hl, -20
	call	__frameset
	lea	hl, ix + 6
	ld	(ix - 14), hl
	lea	iy, ix - 7
	ld	(ix - 17), iy
	push	de
	push	de
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ldir
	push	iy
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 14)
	ld	hl, (ix - 17)
	ld	bc, 6
	ldir
	ld	hl, (ix + 6)
	ld	e, (ix + 9)
	call	__lcmpzero
	jr	nz, .LBB16_2
; %bb.1:
	or	a, a
	sbc	hl, hl
	xor	a, a
	jp	.LBB16_14
	.local	.LBB16_2
.LBB16_2:
	ld	hl, (ix + 12)
	ld	(ix - 14), hl
	ld	a, (ix + 15)
	ld	iy, (ix + 10)
	ld.sis	bc, 10
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	call	pe, __setflag
	jp	m, .LBB16_4
; %bb.3:
	ld	hl, (ix + 12)
	jp	.LBB16_14
	.local	.LBB16_4
.LBB16_4:
	ld.sis	bc, 6
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	call	pe, __setflag
	jp	m, .LBB16_6
; %bb.5:
	ld.sis	bc, 250
	xor	a, a
	ld	(ix - 10), a
	ld	hl, (ix - 12)
	ld	h, a
	ld	l, e
	ld	(ix - 17), hl
	ld	de, 0
	ld	l, e
	ld	h, d
	ld	(ix - 20), hl
	add.sis	iy, bc
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, 255
	call	__sand
                                        ; kill: def $hl killed $hl def $uhl
	add	hl, hl
	add	hl, hl
	ld	e, l
	ld	d, h
	ld	hl, __ZZL9pow10_u32hE6values
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	c, (iy + 3)
	ld	(ix - 9), a
	ld	de, (ix - 11)
	ld	d, a
	ld	e, c
	ld	iy, (ix - 20)
	push	iy
	ld	bc, (ix - 17)
	push	bc
	ld	bc, (ix + 6)
	push	bc
	ld	c, iyl
	ld	b, iyh
	call	__llmulu
	ld	(ix - 17), hl
	push	de
	pop	iy
	ld	l, c
	ld	h, b
	pop	de
	pop	de
	pop	de
	jr	.LBB16_9
	.local	.LBB16_6
.LBB16_6:
	ld	a, 6
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	sub	a, l
	ld	l, a
	cp	a, 7
	jr	c, .LBB16_8
; %bb.7:
	ld	l, 7
	.local	.LBB16_8
.LBB16_8:
	ld	b, 2
	ld	a, l
	call	__bshl
	ld	bc, 0
	ld	c, a
	ld	iy, __ZZL9pow10_u32hE6values
	add	iy, bc
	ld	bc, (iy)
	ld	hl, (ix + 6)
	ld	a, (iy + 3)
	call	__ldivu
	ld	(ix - 17), hl
	xor	a, a
	ld	(ix - 11), a
	ld	iy, (ix - 13)
	ld	iyh, a
	ld	iyl, e
	sbc	hl, hl
	.local	.LBB16_9
.LBB16_9:
	xor	a, a
	ld	(ix - 8), a
	ld	de, (ix - 10)
	ld	d, a
	ld	e, (ix + 15)
	ld	bc, 0
	push	hl
	push	iy
	ld	hl, (ix - 17)
	push	hl
	ld	hl, (ix + 12)
	call	__llcmpu
	pop	hl
	pop	hl
	pop	hl
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	bit	0, a
	jr	nz, .LBB16_11
; %bb.10:
	ld	de, (ix - 17)
	ld	(ix - 14), de
	.local	.LBB16_11
.LBB16_11:
	bit	0, a
	ld	a, (ix + 15)
	jr	nz, .LBB16_13
; %bb.12:
	ld	a, l
	.local	.LBB16_13
.LBB16_13:
	ld	hl, (ix - 14)
	.local	.LBB16_14
.LBB16_14:
	ld	e, a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end16
.Lfunc_end16:
	.size	__Z17bn_to_u32_clamped6BigNumm, .Lfunc_end16-__Z17bn_to_u32_clamped6BigNumm
                                        ; -- End function
	.section	.text.__Z9bn_format6BigNumPcj,"ax",@progbits
	.globl	__Z9bn_format6BigNumPcj         ; -- Begin function _Z9bn_format6BigNumPcj
	.type	__Z9bn_format6BigNumPcj,@function
__Z9bn_format6BigNumPcj:                ; @_Z9bn_format6BigNumPcj
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 15)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB17_7
; %bb.1:
	lea	hl, ix + 6
	ld	(ix - 10), hl
	lea	iy, ix - 7
	ld	(ix - 13), iy
	push	de
	push	de
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ldir
	push	iy
	call	__Z12bn_normalize6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 10)
	ld	hl, (ix - 13)
	ld	bc, 6
	ldir
	ld	hl, (ix + 6)
	ld	d, (ix + 9)
	ld	e, d
	call	__lcmpzero
	jr	nz, .LBB17_3
; %bb.2:
	ld	hl, _.str
	push	hl
	ld	hl, (ix + 15)
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	_snprintf
	jp	.LBB17_5
	.local	.LBB17_3
.LBB17_3:
	ld	iy, (ix + 10)
	ld.sis	bc, 6
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB17_6
; %bb.4:
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 10)
	ldir
	ld	hl, -6632961
	ld	(iy + 6), hl
	ld	(iy + 9), 59
	call	__Z17bn_to_u32_clamped6BigNumm
                                        ; kill: def $e killed $e def $ude
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	push	de
	push	hl
	ld	hl, _.str.1
	push	hl
	ld	hl, (ix + 15)
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	.local	.LBB17_5
.LBB17_5:
	pop	hl
	pop	hl
	pop	hl
	jp	.LBB17_7
	.local	.LBB17_6
.LBB17_6:
	xor	a, a
	ex	de, hl
	ld	e, iyh
	ex	de, hl
	rlc	l
	sbc	hl, hl
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld	(ix - 10), hl
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	ld	e, d
	ld	bc, 1000000
	call	__ldivu
	ld	(ix - 13), hl
	ld	c, d
                                        ; kill: def $e killed $e def $ude
	ld	(ix - 16), de
	lea	hl, iy + 0
	ld	e, c
	ld	bc, 10000
	call	__ldivu
	ld	bc, 100
	call	__lremu
                                        ; kill: def $e killed $e def $ude
	ld	bc, (ix - 10)
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 16)
	push	hl
	ld	hl, (ix - 13)
	push	hl
	ld	hl, _.str.2
	push	hl
	ld	hl, (ix + 15)
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	_snprintf
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	.local	.LBB17_7
.LBB17_7:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end17
.Lfunc_end17:
	.size	__Z9bn_format6BigNumPcj, .Lfunc_end17-__Z9bn_format6BigNumPcj
                                        ; -- End function
	.section	.text.__Z8bn_valid6BigNum,"ax",@progbits
	.globl	__Z8bn_valid6BigNum             ; -- Begin function _Z8bn_valid6BigNum
	.type	__Z8bn_valid6BigNum,@function
__Z8bn_valid6BigNum:                    ; @_Z8bn_valid6BigNum
; %bb.0:
	call	__frameset0
	ld	d, -1
	ld	hl, (ix + 6)
	ld	e, (ix + 9)
	call	__lcmpzero
	jr	nz, .LBB18_3
; %bb.1:
	ld	hl, (ix + 10)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	z, .LBB18_4
; %bb.2:
	ld	d, 0
	jp	.LBB18_4
	.local	.LBB18_3
.LBB18_3:
	ld	bc, -1000000
	ld	iy, -7777216
	ld	a, d
	call	__ladd
	lea	bc, iy + 0
	xor	a, a
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	e, a
	inc	e
	ld	hl, (ix + 10)
	ld.sis	bc, 30000
	add.sis	hl, bc
	ld.sis	bc, -5535
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	l, a
	ld	a, e
	and	a, l
	ld	d, a
	.local	.LBB18_4
.LBB18_4:
	ld	a, d
	pop	ix
	ret
	.local	.Lfunc_end18
.Lfunc_end18:
	.size	__Z8bn_valid6BigNum, .Lfunc_end18-__Z8bn_valid6BigNum
                                        ; -- End function
	.section	.text.__Z12content_cost6BigNumtt,"ax",@progbits
	.globl	__Z12content_cost6BigNumtt      ; -- Begin function _Z12content_cost6BigNumtt
	.type	__Z12content_cost6BigNumtt,@function
__Z12content_cost6BigNumtt:             ; @_Z12content_cost6BigNumtt
; %bb.0:
	ld	hl, -3
	call	__frameset
	lea	hl, ix + 10
	push	de
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 3), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ldir
	or	a, a
	sbc	hl, hl
	ld	de, (ix + 16)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 3)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix + 19)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end19
.Lfunc_end19:
	.size	__Z12content_cost6BigNumtt, .Lfunc_end19-__Z12content_cost6BigNumtt
                                        ; -- End function
	.section	.text.__Z12crc32_updatemPKvj,"ax",@progbits
	.globl	__Z12crc32_updatemPKvj          ; -- Begin function _Z12crc32_updatemPKvj
	.type	__Z12crc32_updatemPKvj,@function
__Z12crc32_updatemPKvj:                 ; @_Z12crc32_updatemPKvj
; %bb.0:
	ld	hl, -11
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, (ix + 12)
	ld	(ix - 4), de
	ld	bc, (ix + 15)
	ld	e, (ix + 9)
	call	__lnot
	push	hl
	pop	iy
	ld	d, e
	.local	.LBB20_1
.LBB20_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB20_3 Depth 2
	sbc	hl, hl
	adc	hl, bc
	jr	z, .LBB20_10
; %bb.2:                                ;   in Loop: Header=BB20_1 Depth=1
	dec	bc
	ld	(ix - 7), bc
	ld	hl, (ix - 4)
	ld	a, (hl)
	ld	l, 0
	ld	(ix - 1), l
	ld	bc, (ix - 3)
	ld	b, l
	ld	c, a
	or	a, a
	sbc	hl, hl
	ld	a, l
	lea	hl, iy + 0
	ld	e, d
	call	__lxor
	push	hl
	pop	iy
	ld	d, e
	ld	l, 8
	.local	.LBB20_3
.LBB20_3:                               ;   Parent Loop BB20_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	a, l
	or	a, a
	jr	z, .LBB20_9
; %bb.4:                                ;   in Loop: Header=BB20_3 Depth=2
	ld	(ix - 8), l                     ; 1-byte Folded Spill
	lea	hl, iy + 0
	ld	e, d
	ld	bc, 1
	xor	a, a
	call	__land
	ld	(ix - 11), hl
	lea	bc, iy + 0
	ld	a, d
	ld	l, 1
	call	__lshru
	ld	iyl, a
	ld	de, (ix - 11)
	ld	a, e
	xor	a, l
	ld	e, a
	bit	0, e
	ld	hl, 0
	jr	nz, .LBB20_6
; %bb.5:                                ;   in Loop: Header=BB20_3 Depth=2
	ld	hl, -4685024
	.local	.LBB20_6
.LBB20_6:                               ;   in Loop: Header=BB20_3 Depth=2
	bit	0, e
	ld	e, 0
	jr	nz, .LBB20_8
; %bb.7:                                ;   in Loop: Header=BB20_3 Depth=2
	ld	e, -19
	.local	.LBB20_8
.LBB20_8:                               ;   in Loop: Header=BB20_3 Depth=2
	ld	a, iyl
	call	__lxor
	push	hl
	pop	iy
	ld	d, e
	ld	l, (ix - 8)                     ; 1-byte Folded Reload
	dec	l
	jr	.LBB20_3
	.local	.LBB20_9
.LBB20_9:                               ;   in Loop: Header=BB20_1 Depth=1
	ld	hl, (ix - 4)
	inc	hl
	ld	(ix - 4), hl
	ld	bc, (ix - 7)
	jp	.LBB20_1
	.local	.LBB20_10
.LBB20_10:
	lea	hl, iy + 0
	ld	e, d
	call	__lnot
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end20
.Lfunc_end20:
	.size	__Z12crc32_updatemPKvj, .Lfunc_end20-__Z12crc32_updatemPKvj
                                        ; -- End function
	.section	.text.__Z13crc32_computePKvj,"ax",@progbits
	.globl	__Z13crc32_computePKvj          ; -- Begin function _Z13crc32_computePKvj
	.type	__Z13crc32_computePKvj,@function
__Z13crc32_computePKvj:                 ; @_Z13crc32_computePKvj
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, (ix + 9)
	ld	bc, 0
	push	de
	push	hl
	push	bc
	push	bc
	call	__Z12crc32_updatemPKvj
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end21
.Lfunc_end21:
	.size	__Z13crc32_computePKvj, .Lfunc_end21-__Z13crc32_computePKvj
                                        ; -- End function
	.section	.text.__Z9game_randR9GameState,"ax",@progbits
	.globl	__Z9game_randR9GameState        ; -- Begin function _Z9game_randR9GameState
	.type	__Z9game_randR9GameState,@function
__Z9game_randR9GameState:               ; @_Z9game_randR9GameState
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 6)
	ld	de, 2378
	add	iy, de
	ld	bc, (iy)
	ld	(ix - 3), iy
	lea	hl, iy + 3
	ld	(ix - 6), hl
	ld	d, (hl)
	push	bc
	pop	hl
	ld	e, d
	call	__lcmpzero
	jr	z, .LBB22_2
; %bb.1:
	ld	a, 0
	jr	.LBB22_3
	.local	.LBB22_2
.LBB22_2:
	ld	a, 1
	.local	.LBB22_3
.LBB22_3:
	bit	0, a
	jr	z, .LBB22_5
; %bb.4:
	ld	bc, 2849269
	.local	.LBB22_5
.LBB22_5:
	bit	0, a
	jr	z, .LBB22_7
; %bb.6:
	ld	d, 109
	.local	.LBB22_7
.LBB22_7:
	ld	l, 13
	push	bc
	pop	iy
	ld	a, d
	call	__lshl
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__lxor
	push	hl
	pop	iy
	ld	d, e
	ld	l, 17
	lea	bc, iy + 0
	ld	a, d
	call	__lshru
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__lxor
	push	hl
	pop	iy
	ld	d, e
	ld	l, 5
	lea	bc, iy + 0
	ld	a, d
	call	__lshl
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__lxor
	ld	iy, (ix - 3)
	ld	(iy), hl
	ld	iy, (ix - 6)
	ld	(iy), e
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end22
.Lfunc_end22:
	.size	__Z9game_randR9GameState, .Lfunc_end22-__Z9game_randR9GameState
                                        ; -- End function
	.section	.text.__Z8game_newR9GameStatem,"ax",@progbits
	.globl	__Z8game_newR9GameStatem        ; -- Begin function _Z8game_newR9GameStatem
	.type	__Z8game_newR9GameStatem,@function
__Z8game_newR9GameStatem:               ; @_Z8game_newR9GameStatem
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	a, (ix + 12)
	lea	hl, iy + 2
	ld	(iy + 2), 0
	push	hl
	pop	de
	inc	de
	ld	bc, 2405
	ldir
	ld.sis	hl, 3
	ld	(iy), l
	ld	(iy + 1), h
	lea	hl, iy + 0
	ld	de, 1050
	add	iy, de
	ld	(iy), -1
	ld	de, 2370
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (ix + 9)
	ld	(iy), hl
	lea	iy, iy + 3
	ld	(iy), a
	ld	e, a
	ld	bc, 4346435
	ld	a, 76
	call	__lxor
	ld	bc, 2378
	ld	iy, (ix + 6)
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), e
	ld	de, 2406
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), 1
	ld	de, 2398
	push	bc
	pop	iy
	add	iy, de
	ld.sis	hl, 1023
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1018
	push	bc
	pop	iy
	add	iy, de
	ld	hl, 131073
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, 0
	ld	(hl), de
	lea	hl, iy + 6
	ld.sis	de, 3
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 1026
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), 1
	ld	de, 1036
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	ix
	ret
	.local	.Lfunc_end23
.Lfunc_end23:
	.size	__Z8game_newR9GameStatem, .Lfunc_end23-__Z8game_newR9GameStatem
                                        ; -- End function
	.section	.text.__Z18game_unlock_systemR9GameState8SystemId,"ax",@progbits
	.globl	__Z18game_unlock_systemR9GameState8SystemId ; -- Begin function _Z18game_unlock_systemR9GameState8SystemId
	.type	__Z18game_unlock_systemR9GameState8SystemId,@function
__Z18game_unlock_systemR9GameState8SystemId: ; @_Z18game_unlock_systemR9GameState8SystemId
; %bb.0:
	ld	hl, -22
	call	__frameset
	ld	a, (ix + 9)
	cp	a, 64
	jp	nc, .LBB24_2
; %bb.1:
	ld	iy, (ix + 6)
	ld	de, 0
	ld	bc, 1018
	add	iy, bc
	ld	(ix - 10), iy
	ld	l, d
	ld	(ix - 1), l
	ld	bc, (ix - 3)
	ld	b, l
	ld	c, a
	push	bc
	ld	hl, 1
	ld.sis	bc, 0
	call	__llshl
	ld	(ix - 13), hl
	ld	(ix - 16), de
                                        ; kill: def $bc killed $bc def $ubc
	ld	(ix - 22), bc
	pop	de
	ld	hl, (iy)
	ld	(ix - 19), hl
	lea	hl, iy + 3
	ld	(ix - 4), hl
	ld	de, (hl)
	lea	hl, iy + 6
	ld	(ix - 7), hl
	ld	bc, (hl)
	ld	hl, (ix - 22)
	push	hl
	ld	hl, (ix - 16)
	push	hl
	ld	hl, (ix - 13)
	push	hl
	ld	hl, (ix - 19)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 10)
	ld	(iy), hl
	ld	hl, (ix - 4)
	ld	(hl), de
	ld	hl, (ix - 7)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB24_2
.LBB24_2:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end24
.Lfunc_end24:
	.size	__Z18game_unlock_systemR9GameState8SystemId, .Lfunc_end24-__Z18game_unlock_systemR9GameState8SystemId
                                        ; -- End function
	.section	.text.__Z16game_unlock_areaR9GameStateh,"ax",@progbits
	.globl	__Z16game_unlock_areaR9GameStateh ; -- Begin function _Z16game_unlock_areaR9GameStateh
	.type	__Z16game_unlock_areaR9GameStateh,@function
__Z16game_unlock_areaR9GameStateh:      ; @_Z16game_unlock_areaR9GameStateh
; %bb.0:
	call	__frameset0
	ld	c, (ix + 9)
	ld	a, c
	cp	a, 80
	jr	nc, .LBB25_2
; %bb.1:
	ld	iy, (ix + 6)
	ld	l, 7
	ld	e, 1
	ld	a, c
	and	a, l
	ld	b, a
	ld	a, e
	call	__bshl
	ld	e, a
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	c, 3
	call	__ishru
	push	hl
	pop	bc
	add	iy, bc
	ld	bc, 1026
	add	iy, bc
	ld	a, (iy)
	or	a, e
	ld	l, a
	ld	(iy), l
	.local	.LBB25_2
.LBB25_2:
	pop	ix
	ret
	.local	.Lfunc_end25
.Lfunc_end25:
	.size	__Z16game_unlock_areaR9GameStateh, .Lfunc_end25-__Z16game_unlock_areaR9GameStateh
                                        ; -- End function
	.section	.text.__Z16game_unlock_toolR9GameStateh,"ax",@progbits
	.globl	__Z16game_unlock_toolR9GameStateh ; -- Begin function _Z16game_unlock_toolR9GameStateh
	.type	__Z16game_unlock_toolR9GameStateh,@function
__Z16game_unlock_toolR9GameStateh:      ; @_Z16game_unlock_toolR9GameStateh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 16
	jp	nc, .LBB26_2
; %bb.1:
	ld	iy, (ix + 6)
	ld	hl, 1
	ld	c, a
	call	__ishl
	push	hl
	pop	bc
	ld	de, 1036
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
                                        ; kill: def $bc killed $bc killed $ubc
	call	__sor
	ld	(iy), l
	ld	(iy + 1), h
	.local	.LBB26_2
.LBB26_2:
	pop	ix
	ret
	.local	.Lfunc_end26
.Lfunc_end26:
	.size	__Z16game_unlock_toolR9GameStateh, .Lfunc_end26-__Z16game_unlock_toolR9GameStateh
                                        ; -- End function
	.section	.text.__Z13game_validateR9GameState,"ax",@progbits
	.globl	__Z13game_validateR9GameState   ; -- Begin function _Z13game_validateR9GameState
	.type	__Z13game_validateR9GameState,@function
__Z13game_validateR9GameState:          ; @_Z13game_validateR9GameState
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	iy, (ix + 6)
	ld.sis	de, 3
	ld	hl, (iy)
	ld	(iy), e
	ld	(iy + 1), d
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	z, .LBB27_2
; %bb.1:
	ld	a, 0
	jr	.LBB27_3
	.local	.LBB27_2
.LBB27_2:
	ld	a, -1
	.local	.LBB27_3
.LBB27_3:
	ld	(ix - 4), a
	or	a, a
	sbc	hl, hl
	ld	de, _UPGRADE_DEFS+16
	ld	(ix - 7), de
	ld	de, 890
	ld	bc, 444
	ld	(ix - 3), hl
	.local	.LBB27_4
.LBB27_4:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 3)
	or	a, a
	sbc	hl, bc
	jp	z, .LBB27_10
; %bb.5:                                ;   in Loop: Header=BB27_4 Depth=1
	ld	iy, (ix + 6)
	ld	de, (ix - 3)
	add	iy, de
	ld	(ix - 10), iy
	lea	hl, iy + 2
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	(ix - 13), hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB27_7
; %bb.6:                                ;   in Loop: Header=BB27_4 Depth=1
	or	a, a
	sbc	hl, hl
	ld	iy, (ix - 10)
	ld	(iy + 2), hl
	ld	(iy + 5), h
	ld	iy, (ix + 6)
	ld	de, (ix - 3)
	add	iy, de
	ld	(iy + 6), l
	ld	(iy + 7), h
	xor	a, a
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_7
.LBB27_7:                               ;   in Loop: Header=BB27_4 Depth=1
	ld	de, 446
	ld	hl, (ix - 10)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	(ix - 10), hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB27_9
; %bb.8:                                ;   in Loop: Header=BB27_4 Depth=1
	ld	de, (ix - 10)
	ld	hl, (ix - 13)
	ld	bc, 6
	ldir
	xor	a, a
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_9
.LBB27_9:                               ;   in Loop: Header=BB27_4 Depth=1
	ld	hl, (ix - 3)
	ld	de, 6
	add	hl, de
	ld	(ix - 3), hl
	ld	de, 890
	ld	bc, 444
	jp	.LBB27_4
	.local	.LBB27_10
.LBB27_10:
	ld	bc, 954
	xor	a, a
	.local	.LBB27_11
.LBB27_11:                              ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB27_15
; %bb.12:                               ;   in Loop: Header=BB27_11 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 3), de
	ld	bc, (hl)
	ld	hl, (ix - 7)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix - 3)
	jr	nc, .LBB27_14
; %bb.13:                               ;   in Loop: Header=BB27_11 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_14
.LBB27_14:                              ;   in Loop: Header=BB27_11 Depth=1
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	ld	iy, (ix - 7)
	lea	iy, iy + 20
	ld	(ix - 7), iy
	ex	de, hl
	ld	bc, 954
	jr	.LBB27_11
	.local	.LBB27_15
.LBB27_15:
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 78
	jr	nc, .LBB27_17
; %bb.16:
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z18game_area_unlockedRK9GameStateh
	ld	de, 1040
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB27_18
	.local	.LBB27_17
.LBB27_17:
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), 0
	xor	a, a
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_18
.LBB27_18:
	ld	de, 1041
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 16
	jr	nc, .LBB27_20
; %bb.19:
	ld	hl, (ix + 6)
	ld	de, 1036
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	hl, 1
	ld	c, a
	call	__ishl
	push	de
	pop	bc
	ld	de, 1041
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB27_21
	.local	.LBB27_20
.LBB27_20:
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), 0
	xor	a, a
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_21
.LBB27_21:
	ld	de, 1042
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 16
	jr	c, .LBB27_23
; %bb.22:
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), 0
	.local	.LBB27_23
.LBB27_23:
	ld	de, 2394
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	bc, (hl)
	ld	de, 2396
	add	iy, de
	ld	de, (iy)
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB27_25
; %bb.24:
	ld	hl, (ix + 6)
	ld	bc, 2394
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	xor	a, a
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_25
.LBB27_25:
	ld	bc, 2398
	ld	hl, (ix + 6)
	add	hl, bc
	ld	hl, (hl)
	ld.sis	de, 1024
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	nc, .LBB27_27
; %bb.26:
	ld	hl, (ix + 6)
	push	hl
	call	__Z24game_ulc_sacrifice_countRK9GameState
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z23game_ulc_min_sacrificesRK9GameState
	ld	bc, 2398
	ld	l, a
	pop	de
	ld	a, (ix - 3)                     ; 1-byte Folded Reload
	cp	a, l
	jr	nc, .LBB27_28
	.local	.LBB27_27
.LBB27_27:
	ld	hl, (ix + 6)
	add	hl, bc
	ld.sis	de, 1023
	ld	(hl), e
	inc	hl
	ld	(hl), d
	xor	a, a
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	.local	.LBB27_28
.LBB27_28:
	ld	de, 1050
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 6
	jr	c, .LBB27_30
; %bb.29:
	ld	(hl), -1
	ld	de, 1051
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), 0
	.local	.LBB27_30
.LBB27_30:
	ld	bc, 1018
	ld	iy, (ix + 6)
	add	iy, bc
	ld	(ix - 10), iy
	ld	de, (iy)
	lea	hl, iy + 3
	ld	(ix - 3), hl
	ld	hl, (hl)
	ld	(ix - 13), hl
	lea	hl, iy + 6
	ld	(ix - 7), hl
	ld	bc, (hl)
	ld	iy, 3
	push	iy
	ld	iy, 0
	push	iy
	ld	iy, 131073
	push	iy
	ex	de, hl
	ld	de, (ix - 13)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 10)
	ld	(iy), hl
	ld	hl, (ix - 3)
	ld	(hl), de
	ld	hl, (ix - 7)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	de, 1026
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	set	0, (hl)
	ld	de, 1036
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 1
	call	__sor
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end27
.Lfunc_end27:
	.size	__Z13game_validateR9GameState, .Lfunc_end27-__Z13game_validateR9GameState
                                        ; -- End function
	.section	.text.__Z18game_area_unlockedRK9GameStateh,"ax",@progbits
	.globl	__Z18game_area_unlockedRK9GameStateh ; -- Begin function _Z18game_area_unlockedRK9GameStateh
	.type	__Z18game_area_unlockedRK9GameStateh,@function
__Z18game_area_unlockedRK9GameStateh:   ; @_Z18game_area_unlockedRK9GameStateh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 80
	jr	nc, .LBB28_3
; %bb.1:
	ld	iy, (ix + 6)
	ld	de, 1
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	c, 3
	call	__ishru
	push	hl
	pop	bc
	add	iy, bc
	ld	bc, 1026
	add	iy, bc
	ld	b, (iy)
	ld	l, 7
	and	a, l
	ld	c, a
	ex	de, hl
	call	__ishl
	ld	a, l
	and	a, b
	ld	l, a
	or	a, a
	jr	nz, .LBB28_4
; %bb.2:
	ld	a, 0
	jr	.LBB28_5
	.local	.LBB28_3
.LBB28_3:
	xor	a, a
	jr	.LBB28_5
	.local	.LBB28_4
.LBB28_4:
	ld	a, -1
	.local	.LBB28_5
.LBB28_5:
	pop	ix
	ret
	.local	.Lfunc_end28
.Lfunc_end28:
	.size	__Z18game_area_unlockedRK9GameStateh, .Lfunc_end28-__Z18game_area_unlockedRK9GameStateh
                                        ; -- End function
	.section	.text.__Z24game_ulc_sacrifice_countRK9GameState,"ax",@progbits
	.globl	__Z24game_ulc_sacrifice_countRK9GameState ; -- Begin function _Z24game_ulc_sacrifice_countRK9GameState
	.type	__Z24game_ulc_sacrifice_countRK9GameState,@function
__Z24game_ulc_sacrifice_countRK9GameState: ; @_Z24game_ulc_sacrifice_countRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld.sis	bc, 1023
	ld	iyl, 1
	xor	a, a
	ld	de, 2398
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	c, a
	ex.sis	de, hl
	.local	.LBB29_1
.LBB29_1:                               ; =>This Inner Loop Header: Depth=1
	sbc.sis	hl, hl
	adc.sis	hl, de
	jr	z, .LBB29_3
; %bb.2:                                ;   in Loop: Header=BB29_1 Depth=1
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	ld	a, e
	and	a, l
	ld	l, a
	ld	a, l
	add	a, c
	ld	c, a
	srl	d
	rr	e
	jr	.LBB29_1
	.local	.LBB29_3
.LBB29_3:
	ld	a, c
	pop	ix
	ret
	.local	.Lfunc_end29
.Lfunc_end29:
	.size	__Z24game_ulc_sacrifice_countRK9GameState, .Lfunc_end29-__Z24game_ulc_sacrifice_countRK9GameState
                                        ; -- End function
	.section	.text.__Z23game_ulc_min_sacrificesRK9GameState,"ax",@progbits
	.globl	__Z23game_ulc_min_sacrificesRK9GameState ; -- Begin function _Z23game_ulc_min_sacrificesRK9GameState
	.type	__Z23game_ulc_min_sacrificesRK9GameState,@function
__Z23game_ulc_min_sacrificesRK9GameState: ; @_Z23game_ulc_min_sacrificesRK9GameState
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	c, 10
	ld	de, 650
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jr	z, .LBB30_4
; %bb.1:
	ld	hl, 30
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ex.sis	de, hl
	pop	hl
	pop	hl
	ld.sis	bc, 3
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB30_3
; %bb.2:
	ld.sis	de, 3
	.local	.LBB30_3
.LBB30_3:
	ld	l, e
	ld	c, 10
	ld	a, c
	sub	a, l
	ld	c, a
	.local	.LBB30_4
.LBB30_4:
	ld	a, c
	pop	ix
	ret
	.local	.Lfunc_end30
.Lfunc_end30:
	.size	__Z23game_ulc_min_sacrificesRK9GameState, .Lfunc_end30-__Z23game_ulc_min_sacrificesRK9GameState
                                        ; -- End function
	.section	.text.__Z17game_effect_levelRK9GameState13UpgradeEffect,"ax",@progbits
	.globl	__Z17game_effect_levelRK9GameState13UpgradeEffect ; -- Begin function _Z17game_effect_levelRK9GameState13UpgradeEffect
	.type	__Z17game_effect_levelRK9GameState13UpgradeEffect,@function
__Z17game_effect_levelRK9GameState13UpgradeEffect: ; @_Z17game_effect_levelRK9GameState13UpgradeEffect
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	hl, (ix + 6)
	ld	a, (ix + 9)
	ld	de, 1051
	push	hl
	pop	iy
	add	iy, de
	dec	de
	add	hl, de
	ex	de, hl
	ld	l, -13
	add	a, l
	ld	l, a
	cp	a, 2
	jr	nc, .LBB31_4
; %bb.1:
	bit	0, (iy)
	jr	z, .LBB31_4
; %bb.2:
	ex	de, hl
	ld	a, (hl)
	or	a, a
	jr	nz, .LBB31_4
; %bb.3:
	ld.sis	hl, 0
	ld	(ix - 4), hl
	jp	.LBB31_12
	.local	.LBB31_4
.LBB31_4:
	xor	a, a
	ld	de, 0
	ld	hl, _UPGRADE_DEFS+18
	ld	(ix - 7), hl
	ld	bc, 64
	or	a, a
	sbc	hl, hl
	ld	(ix - 9), l
	ld	(ix - 4), de
	ld	(ix - 8), a                     ; 1-byte Folded Spill
	.local	.LBB31_5
.LBB31_5:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	ex	de, hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB31_10
; %bb.6:                                ;   in Loop: Header=BB31_5 Depth=1
	ld	hl, (ix - 7)
	ld	a, (hl)
	ld	l, (ix + 9)
	cp	a, l
	jr	nz, .LBB31_8
; %bb.7:                                ;   in Loop: Header=BB31_5 Depth=1
	ld	hl, (ix + 6)
	lea	de, iy + 0
	add	hl, de
	ld	bc, 890
	add	hl, bc
	ld	hl, (hl)
	xor	a, a
	ld	(ix - 1), a
	ld	bc, (ix - 3)
	ld	b, h
	ld	c, l
	ld	hl, (ix - 4)
	ld	e, (ix - 8)                     ; 1-byte Folded Reload
	ld	a, (ix - 9)                     ; 1-byte Folded Reload
	call	__ladd
	lea	bc, iy + 0
	ld	(ix - 4), hl
	ld	(ix - 8), e                     ; 1-byte Folded Spill
	jr	.LBB31_9
	.local	.LBB31_8
.LBB31_8:                               ;   in Loop: Header=BB31_5 Depth=1
	lea	bc, iy + 0
	.local	.LBB31_9
.LBB31_9:                               ;   in Loop: Header=BB31_5 Depth=1
	ld	iy, (ix - 7)
	lea	iy, iy + 20
	ld	(ix - 7), iy
	push	bc
	pop	hl
	ld	bc, 2
	add	hl, bc
	ex	de, hl
	xor	a, a
	ld	bc, 64
	jr	.LBB31_5
	.local	.LBB31_10
.LBB31_10:
	ld	hl, (ix - 4)
	ld	e, (ix - 8)                     ; 1-byte Folded Reload
	ld	bc, 65535
	call	__lcmpu
	jr	c, .LBB31_12
; %bb.11:
	ld	(ix - 4), bc
	.local	.LBB31_12
.LBB31_12:
	ld	hl, (ix - 4)
                                        ; kill: def $hl killed $hl killed $uhl
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end31
.Lfunc_end31:
	.size	__Z17game_effect_levelRK9GameState13UpgradeEffect, .Lfunc_end31-__Z17game_effect_levelRK9GameState13UpgradeEffect
                                        ; -- End function
	.section	.text.__Z18game_tool_unlockedRK9GameStateh,"ax",@progbits
	.globl	__Z18game_tool_unlockedRK9GameStateh ; -- Begin function _Z18game_tool_unlockedRK9GameStateh
	.type	__Z18game_tool_unlockedRK9GameStateh,@function
__Z18game_tool_unlockedRK9GameStateh:   ; @_Z18game_tool_unlockedRK9GameStateh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 16
	jr	nc, .LBB32_3
; %bb.1:
	ld	iy, (ix + 6)
	ld	hl, 1
	ld	de, 1036
	add	iy, de
	ld	bc, (iy)
	ld	de, 0
	ld	e, c
	ld	d, b
	ld	c, a
	call	__ishl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB32_4
; %bb.2:
	ld	a, 0
	jr	.LBB32_5
	.local	.LBB32_3
.LBB32_3:
	xor	a, a
	jr	.LBB32_5
	.local	.LBB32_4
.LBB32_4:
	ld	a, -1
	.local	.LBB32_5
.LBB32_5:
	pop	ix
	ret
	.local	.Lfunc_end32
.Lfunc_end32:
	.size	__Z18game_tool_unlockedRK9GameStateh, .Lfunc_end32-__Z18game_tool_unlockedRK9GameStateh
                                        ; -- End function
	.section	.text.__Z20game_system_unlockedRK9GameState8SystemId,"ax",@progbits
	.globl	__Z20game_system_unlockedRK9GameState8SystemId ; -- Begin function _Z20game_system_unlockedRK9GameState8SystemId
	.type	__Z20game_system_unlockedRK9GameState8SystemId,@function
__Z20game_system_unlockedRK9GameState8SystemId: ; @_Z20game_system_unlockedRK9GameState8SystemId
; %bb.0:
	ld	hl, -10
	call	__frameset
	ld	hl, (ix + 6)
	ld	e, (ix + 9)
	ld	bc, 1018
	add	hl, bc
	ld	bc, (hl)
	ld	(ix - 4), bc
	push	hl
	pop	iy
	lea	iy, iy + 3
	ld	bc, (iy)
	ld	(ix - 7), bc
	push	hl
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	(ix - 10), bc
	xor	a, a
	ld	(ix - 1), a
	ld	bc, (ix - 3)
	ld	b, a
	ld	a, e
	ld	c, a
	push	bc
	ld	hl, 1
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
                                        ; kill: def $bc killed $bc def $ubc
	pop	iy
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 4)
	ld	de, (ix - 7)
	ld	bc, (ix - 10)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	jr	nz, .LBB33_2
; %bb.1:
	ld	l, 0
	jr	.LBB33_3
	.local	.LBB33_2
.LBB33_2:
	ld	l, -1
	.local	.LBB33_3
.LBB33_3:
	cp	a, 64
                                        ; kill: def $a killed $a
	sbc	a, a
	and	a, l
	ld	l, a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end33
.Lfunc_end33:
	.size	__Z20game_system_unlockedRK9GameState8SystemId, .Lfunc_end33-__Z20game_system_unlockedRK9GameState8SystemId
                                        ; -- End function
	.section	.text.__Z17game_pet_unlockedRK9GameStateh,"ax",@progbits
	.globl	__Z17game_pet_unlockedRK9GameStateh ; -- Begin function _Z17game_pet_unlockedRK9GameStateh
	.type	__Z17game_pet_unlockedRK9GameStateh,@function
__Z17game_pet_unlockedRK9GameStateh:    ; @_Z17game_pet_unlockedRK9GameStateh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 16
	jr	nc, .LBB34_3
; %bb.1:
	ld	iy, (ix + 6)
	ld	hl, 1
	ld	de, 1038
	add	iy, de
	ld	bc, (iy)
	ld	de, 0
	ld	e, c
	ld	d, b
	ld	c, a
	call	__ishl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB34_4
; %bb.2:
	ld	a, 0
	jr	.LBB34_5
	.local	.LBB34_3
.LBB34_3:
	xor	a, a
	jr	.LBB34_5
	.local	.LBB34_4
.LBB34_4:
	ld	a, -1
	.local	.LBB34_5
.LBB34_5:
	pop	ix
	ret
	.local	.Lfunc_end34
.Lfunc_end34:
	.size	__Z17game_pet_unlockedRK9GameStateh, .Lfunc_end34-__Z17game_pet_unlockedRK9GameStateh
                                        ; -- End function
	.section	.text.__Z15game_unlock_petR9GameStateh,"ax",@progbits
	.globl	__Z15game_unlock_petR9GameStateh ; -- Begin function _Z15game_unlock_petR9GameStateh
	.type	__Z15game_unlock_petR9GameStateh,@function
__Z15game_unlock_petR9GameStateh:       ; @_Z15game_unlock_petR9GameStateh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 16
	jp	nc, .LBB35_2
; %bb.1:
	ld	iy, (ix + 6)
	ld	hl, 1
	ld	c, a
	call	__ishl
	push	hl
	pop	bc
	ld	de, 1038
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
                                        ; kill: def $bc killed $bc killed $ubc
	call	__sor
	ld	(iy), l
	ld	(iy + 1), h
	.local	.LBB35_2
.LBB35_2:
	pop	ix
	ret
	.local	.Lfunc_end35
.Lfunc_end35:
	.size	__Z15game_unlock_petR9GameStateh, .Lfunc_end35-__Z15game_unlock_petR9GameStateh
                                        ; -- End function
	.section	.text.__Z8game_addR9GameState10ResourceId6BigNum,"ax",@progbits
	.globl	__Z8game_addR9GameState10ResourceId6BigNum ; -- Begin function _Z8game_addR9GameState10ResourceId6BigNum
	.type	__Z8game_addR9GameState10ResourceId6BigNum,@function
__Z8game_addR9GameState10ResourceId6BigNum: ; @_Z8game_addR9GameState10ResourceId6BigNum
; %bb.0:
	ld	hl, -31
	call	__frameset
	ld	a, (ix + 9)
	cp	a, 74
	jp	nc, .LBB36_3
; %bb.1:
	lea	hl, ix + 12
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 19), hl
	ldir
	call	__Z8bn_valid6BigNum
	ld	c, (ix + 9)
	ld	de, 0
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB36_3
; %bb.2:
	ld	iy, (ix + 6)
	lea	hl, ix - 7
	ld	(ix - 25), hl
	lea	hl, ix - 13
	ld	(ix - 22), hl
	ld	e, c
	ld	bc, 6
	ex	de, hl
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	(ix - 16), iy
	lea	hl, iy + 2
	ld	(ix - 28), hl
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 7
	ld	(ix - 31), de
	inc	iy
	lea	de, iy + 0
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 31)
	ld	hl, (ix - 19)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 25)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 28)
	ld	hl, (ix - 25)
	ld	bc, 6
	ldir
	ld	de, 446
	ld	hl, (ix - 16)
	add	hl, de
	ld	(ix - 16), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 25), hl
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 16)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 25)
	ld	hl, (ix - 19)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 22)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 16)
	ld	hl, (ix - 22)
	ld	bc, 6
	ldir
	.local	.LBB36_3
.LBB36_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end36
.Lfunc_end36:
	.size	__Z8game_addR9GameState10ResourceId6BigNum, .Lfunc_end36-__Z8game_addR9GameState10ResourceId6BigNum
                                        ; -- End function
	.section	.text.__Z10game_spendR9GameState10ResourceId6BigNum,"ax",@progbits
	.globl	__Z10game_spendR9GameState10ResourceId6BigNum ; -- Begin function _Z10game_spendR9GameState10ResourceId6BigNum
	.type	__Z10game_spendR9GameState10ResourceId6BigNum,@function
__Z10game_spendR9GameState10ResourceId6BigNum: ; @_Z10game_spendR9GameState10ResourceId6BigNum
; %bb.0:
	ld	hl, -19
	call	__frameset
	ld	a, (ix + 9)
	ld	l, 0
	cp	a, 74
	jp	nc, .LBB37_3
; %bb.1:
	ld	iy, (ix + 6)
	lea	hl, ix + 12
	ld	(ix - 10), hl
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 6
	call	__imulu
	ex	de, hl
	add	iy, de
	lea	hl, iy + 2
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	(ix - 13), hl
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 10)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	ld	l, d
	call	pe, __setflag
	jp	m, .LBB37_3
; %bb.2:
	lea	hl, ix - 7
	ld	(ix - 16), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 19), hl
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 13)
	push	bc
	pop	iy
	ldir
	ld	de, (ix - 19)
	ld	hl, (ix - 10)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 16)
	push	hl
	call	__Z6bn_sub6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 13)
	ld	hl, (ix - 16)
	ld	bc, 6
	ldir
	ld	l, 1
	.local	.LBB37_3
.LBB37_3:
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end37
.Lfunc_end37:
	.size	__Z10game_spendR9GameState10ResourceId6BigNum, .Lfunc_end37-__Z10game_spendR9GameState10ResourceId6BigNum
                                        ; -- End function
	.section	.text.__Z20game_effect_permilleRK9GameState13UpgradeEffect,"ax",@progbits
	.globl	__Z20game_effect_permilleRK9GameState13UpgradeEffect ; -- Begin function _Z20game_effect_permilleRK9GameState13UpgradeEffect
	.type	__Z20game_effect_permilleRK9GameState13UpgradeEffect,@function
__Z20game_effect_permilleRK9GameState13UpgradeEffect: ; @_Z20game_effect_permilleRK9GameState13UpgradeEffect
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	de, (ix + 6)
	ld	l, (ix + 9)
	push	hl
	push	de
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	xor	a, a
	ld	(ix - 3), a
	ld	bc, (ix - 5)
	ld	b, h
	ld	c, l
	sbc	hl, hl
	ld	e, l
	push	bc
	pop	hl
	ld	bc, 100
	call	__lmulu
	ld	bc, 1000
	call	__ladd
	ld	(ix - 9), hl
	ld	(ix - 10), e                    ; 1-byte Folded Spill
	ld	de, 1051
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	dec	de
	add	iy, de
	bit	0, (hl)
	jr	z, .LBB38_2
; %bb.1:
	ld	a, (iy)
	cp	a, 2
	jp	z, .LBB38_6
	.local	.LBB38_2
.LBB38_2:
	ld	bc, 1042
	ld	de, (ix + 6)
	push	de
	pop	hl
	add	hl, bc
	ld	a, (hl)
	cp	a, 16
	jp	nc, .LBB38_7
; %bb.3:
	ld	iy, 0
	ld	bc, 1038
	push	de
	pop	hl
	add	hl, bc
	ld	hl, (hl)
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld	hl, 1
	ld	c, a
	call	__ishl
	lea	bc, iy + 0
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB38_7
; %bb.4:
	ld	iy, _PET_DEFS
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 18
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	a, (iy + 6)
	ld	l, (ix + 9)
	cp	a, l
	jp	nz, .LBB38_6
; %bb.5:
	xor	a, a
	ld	(ix - 2), a
	ld	de, (ix - 4)
	ld	d, a
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	sbc	hl, hl
	ld	c, l
	ld	b, h
	ld	iy, (iy + 8)
	ld	(ix - 1), a
	ld	hl, (ix - 3)
	ex	de, hl
	ld	d, iyh
	ld	e, iyl
	ex	de, hl
	push	bc
	push	de
	ld	de, (ix - 9)
	push	de
	ld	de, 0
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	ld	(ix - 9), hl
	pop	hl
	pop	hl
	pop	hl
	ld	a, e
	ld	(ix - 10), a
	.local	.LBB38_6
.LBB38_6:
	ld	de, (ix + 6)
	.local	.LBB38_7
.LBB38_7:
	ld	bc, 1048
	ex	de, hl
	add	hl, bc
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	(ix - 13), de
	ld	de, 6
	ld	iyl, d
	push	af
	ld	a, iyl
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	pop	af
	ld	bc, 0
	.local	.LBB38_8
.LBB38_8:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jp	z, .LBB38_12
; %bb.9:                                ;   in Loop: Header=BB38_8 Depth=1
	ld	hl, 1
	push	bc
	pop	de
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	ld	bc, (ix - 13)
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	ld	l, 1
	jr	nz, .LBB38_11
; %bb.10:                               ;   in Loop: Header=BB38_8 Depth=1
	ld	l, 0
	.local	.LBB38_11
.LBB38_11:                              ;   in Loop: Header=BB38_8 Depth=1
	ld	c, (ix - 6)
	ld	a, c
	add	a, l
	ld	c, a
	ld	(ix - 6), c
	push	de
	pop	bc
	inc	bc
	lea	de, iy + 0
	jp	.LBB38_8
	.local	.LBB38_12
.LBB38_12:
	ld	de, 1044
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 13), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	iyh, a
	ld	d, 0
	ld	iyl, d
	.local	.LBB38_13
.LBB38_13:                              ; =>This Inner Loop Header: Depth=1
	ld	a, d
	cp	a, 32
	jr	z, .LBB38_17
; %bb.14:                               ;   in Loop: Header=BB38_13 Depth=1
	ld	bc, 1
	xor	a, a
	ld	l, d
	call	__lshl
	push	bc
	pop	hl
	ld	e, a
	ld	bc, (ix - 13)
	ld	a, iyh
	call	__land
	call	__lcmpzero
	ld	l, 1
	jr	nz, .LBB38_16
; %bb.15:                               ;   in Loop: Header=BB38_13 Depth=1
	ld	l, 0
	.local	.LBB38_16
.LBB38_16:                              ;   in Loop: Header=BB38_13 Depth=1
	ld	a, iyl
	add	a, l
	ld	iyl, a
	inc	d
	jr	.LBB38_13
	.local	.LBB38_17
.LBB38_17:
	ld	d, iyl
	ld	iy, 0
	lea	hl, iy + 0
	ld	l, (ix - 6)                     ; 1-byte Folded Reload
	ld	bc, 50
	call	__imulu
	push	hl
	pop	bc
	ld	a, iyl
	ld	hl, (ix - 9)
	ld	e, (ix - 10)                    ; 1-byte Folded Reload
	call	__ladd
	ld	(ix - 6), hl
	ld	iyl, d
	lea	hl, iy + 0
	ld	bc, 10
	call	__imulu
	push	hl
	pop	bc
	ld	hl, (ix - 6)
	call	__ladd
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end38
.Lfunc_end38:
	.size	__Z20game_effect_permilleRK9GameState13UpgradeEffect, .Lfunc_end38-__Z20game_effect_permilleRK9GameState13UpgradeEffect
                                        ; -- End function
	.section	.text.__Z30game_challenge_output_permilleRK9GameState,"ax",@progbits
	.globl	__Z30game_challenge_output_permilleRK9GameState ; -- Begin function _Z30game_challenge_output_permilleRK9GameState
	.type	__Z30game_challenge_output_permilleRK9GameState,@function
__Z30game_challenge_output_permilleRK9GameState: ; @_Z30game_challenge_output_permilleRK9GameState
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	de, 1051
	lea	hl, iy + 0
	add	hl, de
	ld	e, (hl)
	ld	bc, 1050
	add	iy, bc
	ld	a, (iy)
	ld	l, -5
	and	a, l
	ld	l, a
	cp	a, 1
	jr	z, .LBB39_2
; %bb.1:
	ld	l, 0
	jr	.LBB39_3
	.local	.LBB39_2
.LBB39_2:
	ld	l, -1
	.local	.LBB39_3
.LBB39_3:
	ld	a, e
	and	a, l
	ld	l, a
	bit	0, l
	jr	nz, .LBB39_5
; %bb.4:
	ld.sis	hl, 1000
	jr	.LBB39_6
	.local	.LBB39_5
.LBB39_5:
	ld.sis	hl, 500
	.local	.LBB39_6
.LBB39_6:
	pop	ix
	ret
	.local	.Lfunc_end39
.Lfunc_end39:
	.size	__Z30game_challenge_output_permilleRK9GameState, .Lfunc_end39-__Z30game_challenge_output_permilleRK9GameState
                                        ; -- End function
	.section	.text.__Z17game_upgrade_costRK9GameStateh,"ax",@progbits
	.globl	__Z17game_upgrade_costRK9GameStateh ; -- Begin function _Z17game_upgrade_costRK9GameStateh
	.type	__Z17game_upgrade_costRK9GameStateh,@function
__Z17game_upgrade_costRK9GameStateh:    ; @_Z17game_upgrade_costRK9GameStateh
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	iy, (ix + 6)
	ld	a, (ix + 12)
	or	a, a
	sbc	hl, hl
	cp	a, 32
	jp	nc, .LBB40_2
; %bb.1:
	ld	l, a
	ld	(ix - 6), hl
	ld	bc, 20
	call	__imulu
	ex	de, hl
	ld	hl, _UPGRADE_DEFS
	add	hl, de
	ex	de, hl
	push	de
	pop	iy
	lea	hl, iy + 8
	ld	de, (iy + 14)
	ld	(ix - 3), de
	ld	iy, (ix - 6)
	add	iy, iy
	lea	de, iy + 0
	ld	iy, (ix + 9)
	add	iy, de
	ld	de, 890
	add	iy, de
	ld	de, (iy)
	ld	(ix - 6), de
	push	de
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 9), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ldir
	or	a, a
	sbc	hl, hl
	ld	de, (ix - 3)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 9)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 6)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	iy, (ix + 6)
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	jr	.LBB40_3
	.local	.LBB40_2
.LBB40_2:
	ld.sis	de, 0
	ld	(iy), hl
	ld	(iy + 3), d
	ld	(iy + 4), e
	ld	(iy + 5), d
	.local	.LBB40_3
.LBB40_3:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end40
.Lfunc_end40:
	.size	__Z17game_upgrade_costRK9GameStateh, .Lfunc_end40-__Z17game_upgrade_costRK9GameStateh
                                        ; -- End function
	.section	.text.__Z16game_buy_upgradeR9GameStateh,"ax",@progbits
	.globl	__Z16game_buy_upgradeR9GameStateh ; -- Begin function _Z16game_buy_upgradeR9GameStateh
	.type	__Z16game_buy_upgradeR9GameStateh,@function
__Z16game_buy_upgradeR9GameStateh:      ; @_Z16game_buy_upgradeR9GameStateh
; %bb.0:
	ld	hl, -23
	call	__frameset
	ld	a, (ix + 9)
	ld	e, 0
	or	a, a
	sbc	hl, hl
	cp	a, 32
	jp	nc, .LBB41_10
; %bb.1:
	ld	iy, _UPGRADE_DEFS
	ld	l, a
	ld	bc, 20
	ld	(ix - 23), hl
	call	__imulu
	push	hl
	pop	bc
	add	iy, bc
	ld	(ix - 11), iy
	ld	bc, 1051
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, bc
	dec	bc
	add	hl, bc
	bit	0, (iy)
	ld	iy, (ix - 11)
	jr	z, .LBB41_4
; %bb.2:
	ld	a, (hl)
	or	a, a
	jr	nz, .LBB41_4
; %bb.3:
	ld	l, -13
	ld	a, (iy + 18)
	add	a, l
	ld	l, a
	cp	a, 2
	jp	c, .LBB41_10
	.local	.LBB41_4
.LBB41_4:
	ld	hl, 1
	ld	a, (iy + 19)
	ld	bc, 1018
	ld	de, (ix + 6)
	push	de
	pop	iy
	add	iy, bc
	ld	de, (iy)
	lea	bc, iy + 0
	ld	(ix - 14), de
	lea	iy, iy + 3
	ld	de, (iy)
	ld	(ix - 17), de
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	de, (iy)
	ld	(ix - 20), de
	ld	c, h
	ld	(ix - 8), c
	ld	de, (ix - 10)
	ld	d, c
	ld	e, a
	push	de
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 20)
	push	iy
	ld	iy, (ix - 17)
	push	iy
	ld	iy, (ix - 14)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	cp	a, 64
	jp	nc, .LBB41_9
; %bb.5:
	call	__llcmpzero
	jp	z, .LBB41_9
; %bb.6:
	ld	hl, (ix - 23)
	add	hl, hl
	ex	de, hl
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	de, 890
	add	hl, de
	ld	(ix - 14), hl
	ld	hl, (hl)
	ld	iy, (ix - 11)
	ld	de, (iy + 16)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	e, 0
	jr	nc, .LBB41_10
; %bb.7:
	lea	de, ix - 7
	ld	(ix - 17), de
	ld	l, (ix + 9)
	push	hl
	push	bc
	push	de
	call	__Z17game_upgrade_costRK9GameStateh
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 11)
	ld	a, (iy + 7)
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 17)
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	ld	e, a
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, e
	jr	z, .LBB41_10
; %bb.8:
	ld	iy, (ix - 14)
	ld	hl, (iy)
	inc.sis	hl
	ld	(iy), l
	ld	(iy + 1), h
	jr	.LBB41_10
	.local	.LBB41_9
.LBB41_9:
	ld	e, 0
	.local	.LBB41_10
.LBB41_10:
	ld	a, e
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end41
.Lfunc_end41:
	.size	__Z16game_buy_upgradeR9GameStateh, .Lfunc_end41-__Z16game_buy_upgradeR9GameStateh
                                        ; -- End function
	.section	.text.__Z13game_buy_toolR9GameStateh,"ax",@progbits
	.globl	__Z13game_buy_toolR9GameStateh  ; -- Begin function _Z13game_buy_toolR9GameStateh
	.type	__Z13game_buy_toolR9GameStateh,@function
__Z13game_buy_toolR9GameStateh:         ; @_Z13game_buy_toolR9GameStateh
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	a, (ix + 9)
	ld	de, 0
	ld	l, d
	cp	a, 16
	jp	nc, .LBB42_8
; %bb.1:
	ld	bc, (ix + 6)
	ld	iy, _TOOL_DEFS
	ex	de, hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	add	iy, de
	ld	(ix - 13), iy
	ld	a, (iy + 15)
	ld	de, 1018
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 4), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 7), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 10), hl
	ld	l, 0
	ld	(ix - 1), l
	ld	de, (ix - 3)
	ld	d, l
	ld	e, a
	push	de
	ld	hl, 1
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 10)
	push	iy
	ld	iy, (ix - 7)
	push	iy
	ld	iy, (ix - 4)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	cp	a, 64
	jp	nc, .LBB42_7
; %bb.2:
	call	__llcmpzero
	jp	z, .LBB42_7
; %bb.3:
	ld	de, 1036
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	hl, 1
	ld	a, (ix + 9)
	ld	c, a
	call	__ishl
	ld	(ix - 4), hl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB42_6
; %bb.4:
	ld	hl, (ix - 13)
	push	hl
	pop	iy
	ld	a, (iy + 3)
	lea	hl, iy + 4
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	l, 0
	jp	z, .LBB42_8
; %bb.5:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	de, 1036
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld	bc, (ix - 4)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__sor
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (ix + 9)
	ld	iy, (ix + 6)
	.local	.LBB42_6
.LBB42_6:
	ld	l, 1
	ld	de, 1041
	add	iy, de
	ld	(iy), a
	jr	.LBB42_8
	.local	.LBB42_7
.LBB42_7:
	ld	l, 0
	.local	.LBB42_8
.LBB42_8:
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end42
.Lfunc_end42:
	.size	__Z13game_buy_toolR9GameStateh, .Lfunc_end42-__Z13game_buy_toolR9GameStateh
                                        ; -- End function
	.section	.text.__Z13game_buy_areaR9GameStateh,"ax",@progbits
	.globl	__Z13game_buy_areaR9GameStateh  ; -- Begin function _Z13game_buy_areaR9GameStateh
	.type	__Z13game_buy_areaR9GameStateh,@function
__Z13game_buy_areaR9GameStateh:         ; @_Z13game_buy_areaR9GameStateh
; %bb.0:
	ld	hl, -24
	call	__frameset
	ld	a, (ix + 9)
	ld	c, 0
	cp	a, 78
	jp	nc, .LBB43_6
; %bb.1:
	ld	(ix - 21), c                    ; 1-byte Folded Spill
	ld	de, (ix + 6)
	ld	iy, _AREA_DEFS
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	push	hl
	pop	bc
	add	iy, bc
	ld	(ix - 20), iy
	ld	a, (iy + 12)
	ld	bc, 1018
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 11), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 14), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 17), hl
	ld	l, 0
	ld	(ix - 8), l
	ld	bc, (ix - 10)
	ld	b, l
	ld	c, a
	push	bc
	ld	hl, 1
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 17)
	push	iy
	ld	iy, (ix - 14)
	push	iy
	ld	iy, (ix - 11)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	cp	a, 64
	jr	nc, .LBB43_5
; %bb.2:
	call	__llcmpzero
	jr	z, .LBB43_5
; %bb.3:
	ld	l, (ix + 9)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z18game_area_unlockedRK9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB43_7
; %bb.4:
	ld	c, 1
	jp	.LBB43_15
	.local	.LBB43_5
.LBB43_5:
	ld	c, 0
	.local	.LBB43_6
.LBB43_6:
	ld	a, c
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB43_7
.LBB43_7:
	ld	bc, 6
	lea	de, ix - 7
	ld	iy, (ix - 20)
	lea	hl, iy + 6
	ld	(ix - 11), de
	ld	(ix - 14), hl
	ldir
	ld	hl, 9
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ex.sis	de, hl
	pop	hl
	pop	hl
	sbc.sis	hl, hl
	adc.sis	hl, de
	jp	z, .LBB43_13
; %bb.8:
	ld	iy, 0
	ld	iyl, e
	ld	iyh, d
	ld.sis	bc, 21
	ex.sis	de, hl
	or	a, a
	sbc.sis	hl, bc
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	lea	hl, iy + 0
	ld	bc, -25
	call	__imulu
	ld	de, 1000
	add	hl, de
	ld	de, 0
	bit	0, a
	jr	z, .LBB43_10
; %bb.9:
	ld	hl, 500
	.local	.LBB43_10
.LBB43_10:
	ld	(ix - 17), hl
	bit	0, a
	jr	nz, .LBB43_12
; %bb.11:
	ld	(ix - 21), e                    ; 1-byte Folded Spill
	.local	.LBB43_12
.LBB43_12:
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 24), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 14)
	ldir
	ld	hl, (ix - 17)
	ld	iy, (ix - 24)
	ld	(iy + 7), hl
	ld	a, (ix - 21)
	ld	(iy + 10), a
	ld	hl, (ix - 11)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB43_13
.LBB43_13:
	ld	iy, (ix - 20)
	ld	a, (iy + 4)
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 11)
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	ld	c, a
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, c
	jp	z, .LBB43_6
; %bb.14:
	ld	l, (ix + 9)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	ld	(ix - 21), c                    ; 1-byte Folded Spill
	call	__Z16game_unlock_areaR9GameStateh
	ld	c, (ix - 21)                    ; 1-byte Folded Reload
	pop	hl
	pop	hl
	.local	.LBB43_15
.LBB43_15:
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (ix + 9)
	ld	(hl), a
	jp	.LBB43_6
	.local	.Lfunc_end43
.Lfunc_end43:
	.size	__Z13game_buy_areaR9GameStateh, .Lfunc_end43-__Z13game_buy_areaR9GameStateh
                                        ; -- End function
	.section	.text.__Z12game_buy_petR9GameStateh,"ax",@progbits
	.globl	__Z12game_buy_petR9GameStateh   ; -- Begin function _Z12game_buy_petR9GameStateh
	.type	__Z12game_buy_petR9GameStateh,@function
__Z12game_buy_petR9GameStateh:          ; @_Z12game_buy_petR9GameStateh
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1051
	push	hl
	pop	iy
	add	iy, de
	dec	de
	push	hl
	pop	bc
	add	hl, de
	bit	0, (iy)
	jr	z, .LBB44_2
; %bb.1:
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB44_4
	.local	.LBB44_2
.LBB44_2:
	ld	a, (ix + 9)
	cp	a, 16
	jp	nc, .LBB44_4
; %bb.3:
	ld	de, 1018
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 512
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jr	nz, .LBB44_6
	.local	.LBB44_4
.LBB44_4:
	xor	a, a
	.local	.LBB44_5
.LBB44_5:
	pop	hl
	pop	ix
	ret
	.local	.LBB44_6
.LBB44_6:
	ld	hl, 1
	ld	de, 1038
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	ld	iy, 0
	lea	de, iy + 0
	ld	e, c
	ld	d, b
	ld	a, (ix + 9)
	ld	c, a
	call	__ishl
	ld	(ix - 3), hl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB44_9
; %bb.7:
	lea	hl, iy + 0
	ld	iy, _PET_DEFS
	ld	l, a
	ld	bc, 18
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	a, (iy + 10)
	lea	hl, iy + 12
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jr	z, .LBB44_5
; %bb.8:
	ld	iy, (ix + 6)
	ld	de, 1038
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld	bc, (ix - 3)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__sor
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (ix + 9)
	.local	.LBB44_9
.LBB44_9:
	ld	c, a
	ld	a, 1
	ld	de, 1042
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), c
	jp	.LBB44_5
	.local	.Lfunc_end44
.Lfunc_end44:
	.size	__Z12game_buy_petR9GameStateh, .Lfunc_end44-__Z12game_buy_petR9GameStateh
                                        ; -- End function
	.section	.text.__Z20game_refresh_unlocksR9GameState,"ax",@progbits
	.globl	__Z20game_refresh_unlocksR9GameState ; -- Begin function _Z20game_refresh_unlocksR9GameState
	.type	__Z20game_refresh_unlocksR9GameState,@function
__Z20game_refresh_unlocksR9GameState:   ; @_Z20game_refresh_unlocksR9GameState
; %bb.0:
	ld	hl, -84
	call	__frameset
	ld	hl, (ix + 6)
	ld	iy, 1000000
	lea	bc, ix - 7
	ld	(ix - 64), bc
	lea	de, ix - 13
	ld	(ix - 58), de
	ld	de, 446
	add	hl, de
	ld	(ix - 61), hl
	ld	de, 3
	push	de
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	push	bc
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 61)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 64)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_2
; %bb.1:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	(ix - 70), iy
	ld	hl, (iy)
	ld	(ix - 73), hl
	lea	hl, iy + 3
	ld	(ix - 64), hl
	ld	de, (hl)
	lea	hl, iy + 6
	ld	(ix - 67), hl
	ld	bc, (hl)
	ld	iy, 0
	push	iy
	ld	hl, 256
	push	hl
	push	iy
	ld	hl, (ix - 73)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 70)
	ld	(iy), hl
	ld	hl, (ix - 64)
	ld	(hl), de
	ld	hl, (ix - 67)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_2
.LBB45_2:
	ld	hl, 3
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 61)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 58)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_4
; %bb.3:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	(ix - 64), iy
	ld	hl, (iy)
	ld	(ix - 67), hl
	lea	hl, iy + 3
	ld	(ix - 58), hl
	ld	de, (hl)
	lea	hl, iy + 6
	ld	(ix - 61), hl
	ld	bc, (hl)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 4
	push	iy
	ld	hl, (ix - 67)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 64)
	ld	(iy), hl
	ld	hl, (ix - 58)
	ld	(hl), de
	ld	hl, (ix - 61)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_4
.LBB45_4:
	ld	de, 584
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 70), iy
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jr	z, .LBB45_6
; %bb.5:
	ld	a, 0
	jr	.LBB45_7
	.local	.LBB45_6
.LBB45_6:
	ld	a, 1
	.local	.LBB45_7
.LBB45_7:
	ld	de, 1018
	lea	hl, ix - 19
	ld	(ix - 67), hl
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	de, iy + 0
	lea	iy, iy + 3
	ld	bc, (iy)
	ld	(ix - 58), bc
	push	de
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	bit	0, a
	jr	z, .LBB45_9
; %bb.8:
	ld	(ix - 64), bc
	ld	(ix - 61), hl
	ld	de, 0
	jp	.LBB45_10
	.local	.LBB45_9
.LBB45_9:
	ld	iy, 10
	ld	de, 0
	push	de
	push	de
	push	iy
	ld	de, (ix - 58)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
                                        ; kill: def $bc killed $bc def $ubc
	ld	(ix - 64), bc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	bc, 1018
	add	iy, bc
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 58), de
	ld	(hl), de
	lea	hl, iy + 6
	ld	de, 0
	ld	bc, (ix - 64)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_10
.LBB45_10:                              ; %._crit_edge
	ld	hl, 2
	push	hl
	push	de
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 67)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 70)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 67)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	(ix - 73), hl
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	p, .LBB45_12
; %bb.11:                               ; %._crit_edge
	ld	a, 0
	jr	.LBB45_13
	.local	.LBB45_12
.LBB45_12:
	ld	a, -1
	.local	.LBB45_13
.LBB45_13:                              ; %._crit_edge
	ld	hl, (ix - 61)
	ld	bc, (ix - 64)
	ld	iy, 0
	push	iy
	push	iy
	ld	de, 16
	push	de
	ld	de, (ix - 58)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 67), hl
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB45_15
; %bb.14:                               ; %._crit_edge
	ld	hl, (ix - 61)
	ld	(ix - 67), hl
	.local	.LBB45_15
.LBB45_15:                              ; %._crit_edge
	bit	0, a
	ld	hl, (ix - 58)
	jr	nz, .LBB45_17
; %bb.16:                               ; %._crit_edge
	ex	de, hl
	.local	.LBB45_17
.LBB45_17:                              ; %._crit_edge
	bit	0, a
	jr	nz, .LBB45_19
; %bb.18:                               ; %._crit_edge
	ld	hl, (ix - 64)
	ld	c, l
	ld	b, h
	.local	.LBB45_19
.LBB45_19:                              ; %._crit_edge
	lea	hl, ix - 25
	ld	(ix - 70), hl
	push	iy
	push	iy
	ld	hl, 16
	push	hl
	ld	hl, (ix - 67)
	ld	(ix - 76), de
	ld	(ix - 79), bc
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	push	hl
	pop	iy
	ld	(ix - 82), c
	ld	(ix - 81), b
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 73)
	ld	bc, 0
	or	a, a
	sbc	hl, bc
	call	pe, __setflag
	jp	p, .LBB45_21
; %bb.20:                               ; %._crit_edge
	ld	a, iyl
	or	a, a
	jp	z, .LBB45_22
	.local	.LBB45_21
.LBB45_21:
	ld	hl, 1
	push	hl
	lea	hl, iy + 0
	ld	c, (ix - 82)
	ld	b, (ix - 81)
	call	__llshl
	pop	iy
	ld	iy, (ix - 79)
	push	iy
	ld	iy, (ix - 76)
	push	iy
	ld	iy, (ix - 67)
	push	iy
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(ix - 64), bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_22
.LBB45_22:
	ld	de, 632
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 67), hl
	ld	hl, 2
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 70)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 67)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 70)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_24
; %bb.23:
	ld	hl, 64
	ld	de, 0
	push	de
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	.LBB45_25
	.local	.LBB45_24
.LBB45_24:
	ld	bc, (ix - 64)
	.local	.LBB45_25
.LBB45_25:
	lea	hl, ix - 31
	ld	(ix - 70), hl
	ld	de, 638
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 67), iy
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jr	nz, .LBB45_27
; %bb.26:
	ld	(ix - 64), bc
	ld	de, 0
	jp	.LBB45_28
	.local	.LBB45_27
.LBB45_27:
	ld	hl, 384
	ld	de, 0
	push	de
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	de, 0
	ld	(ix - 64), bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_28
.LBB45_28:
	ld	hl, 2
	push	hl
	push	de
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 70)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 67)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 70)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	(ix - 76), hl
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	p, .LBB45_30
; %bb.29:
	ld	a, 0
	jr	.LBB45_31
	.local	.LBB45_30
.LBB45_30:
	ld	a, -1
	.local	.LBB45_31
.LBB45_31:
	ld	hl, (ix - 61)
	ld	bc, (ix - 64)
	ld	iy, 0
	push	iy
	push	iy
	ld	de, 512
	push	de
	ld	de, (ix - 58)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 70), hl
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB45_33
; %bb.32:
	ld	hl, (ix - 61)
	ld	(ix - 70), hl
	.local	.LBB45_33
.LBB45_33:
	bit	0, a
	ld	hl, (ix - 58)
	jr	nz, .LBB45_35
; %bb.34:
	ex	de, hl
	.local	.LBB45_35
.LBB45_35:
	bit	0, a
	jr	nz, .LBB45_37
; %bb.36:
	ld	hl, (ix - 64)
	ld	c, l
	ld	b, h
	.local	.LBB45_37
.LBB45_37:
	lea	hl, ix - 37
	ld	(ix - 73), hl
	push	iy
	push	iy
	ld	hl, 512
	push	hl
	ld	hl, (ix - 70)
	ld	(ix - 79), de
	ld	(ix - 82), bc
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	push	hl
	pop	iy
	ld	(ix - 84), c
	ld	(ix - 83), b
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 76)
	ld	bc, 0
	or	a, a
	sbc	hl, bc
	call	pe, __setflag
	jp	p, .LBB45_39
; %bb.38:
	ld	a, iyh
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB45_40
	.local	.LBB45_39
.LBB45_39:
	ld	hl, 24
	push	hl
	lea	hl, iy + 0
	ld	c, (ix - 84)
	ld	b, (ix - 83)
	call	__llshl
	pop	iy
	ld	iy, (ix - 82)
	push	iy
	ld	iy, (ix - 79)
	push	iy
	ld	iy, (ix - 70)
	push	iy
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(ix - 64), bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_40
.LBB45_40:
	lea	hl, ix - 43
	ld	(ix - 76), hl
	ld	hl, 3
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 73)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 67)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 73)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_42
; %bb.41:
	ld	hl, 1024
	ld	de, 0
	push	de
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(ix - 64), bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_42
.LBB45_42:
	lea	hl, ix - 49
	ld	(ix - 70), hl
	ld	hl, 4
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 76)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 67)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 76)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_44
; %bb.43:
	ld	hl, 14336
	ld	de, 3072
	ld	bc, 0
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(ix - 64), bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB45_44
.LBB45_44:
	ld	hl, 5
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 70)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 67)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 70)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_46
; %bb.45:
	ld	hl, 114688
	ld	de, 0
	push	de
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	ld	(ix - 64), bc
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	de, (ix - 64)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	.LBB45_47
	.local	.LBB45_46
.LBB45_46:
	ld	bc, (ix + 6)
	.local	.LBB45_47
.LBB45_47:
	ld	de, 2382
	push	bc
	pop	hl
	add	hl, de
	ld	hl, (hl)
	ld.sis	de, 100
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	c, .LBB45_49
; %bb.48:
	ld	hl, 262144
	ld	de, 0
	push	de
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	ld	(ix - 64), bc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	bc, (ix + 6)
	ld	de, (ix - 64)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB45_49
.LBB45_49:
	ld	de, 644
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB45_51
; %bb.50:
	ld	hl, 3670016
	ld	de, 1585152
	ld	bc, 0
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 61), hl
	ld	(ix - 58), de
                                        ; kill: def $bc killed $bc def $ubc
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 61)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 58)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(ix - 64), bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	bc, (ix + 6)
	.local	.LBB45_51
.LBB45_51:
	ld	de, 2384
	push	bc
	pop	hl
	add	hl, de
	ld	iy, (hl)
	ld.sis	de, 10
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, de
	jp	c, .LBB45_54
; %bb.52:
	ld	bc, -4194304
	ld	hl, 114691
	ld	de, 0
	push	de
	push	hl
	push	bc
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 67), hl
	ld	(ix - 70), de
	pop	hl
	pop	hl
	pop	hl
	ld	(ix - 73), iy
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 67)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 70)
	ld	(hl), de
	lea	hl, iy + 6
	ld	e, c
	ld	d, b
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld.sis	bc, 50
	ld	hl, (ix - 73)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	lea	bc, iy + 0
	jp	c, .LBB45_55
; %bb.53:
	ld	hl, 114695
	ld	de, 0
	push	de
	push	hl
	ld	hl, -4194304
	push	hl
	ld	hl, (ix - 61)
	ld	de, (ix - 58)
	ld	bc, (ix - 64)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	ld	(ix - 67), hl
	ld	(ix - 70), de
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 67)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 70)
	ld	(hl), de
	lea	hl, iy + 6
	ld	e, c
	ld	d, b
	ld	bc, (ix + 6)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	.LBB45_55
	.local	.LBB45_54
.LBB45_54:
	ld	hl, (ix - 61)
	ld	(ix - 67), hl
	ld	hl, (ix - 58)
	ld	(ix - 70), hl
	ld	hl, (ix - 64)
	ld	e, l
	ld	d, h
	.local	.LBB45_55
.LBB45_55:
	ld	(ix - 61), e
	ld	(ix - 60), d
	ld	de, 650
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jr	nz, .LBB45_57
; %bb.56:
	push	hl
	ld	l, (ix - 61)
	ld	h, (ix - 60)
	ex	(sp), hl
	pop	iy
	jr	.LBB45_58
	.local	.LBB45_57
.LBB45_57:
	ld	hl, 131224
	ld	de, 4
	push	de
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix - 67)
	ld	de, (ix - 70)
	ld	c, (ix - 61)
	ld	b, (ix - 60)
	call	__llor
	ld	(ix - 67), hl
	ld	(ix - 70), de
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 67)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 70)
	ld	(hl), de
	lea	hl, iy + 6
	ld	iyl, c
	ld	iyh, b
	ld	bc, (ix + 6)
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	.local	.LBB45_58
.LBB45_58:
	lea	hl, ix - 55
	ld	(ix - 58), hl
	ld	de, 2392
	push	bc
	pop	hl
	add	hl, de
	ld	de, (hl)
	sbc.sis	hl, hl
	adc.sis	hl, de
	jr	nz, .LBB45_60
; %bb.59:
	ld	hl, (ix - 67)
	ld	(ix - 64), hl
	ld	hl, (ix - 70)
	ld	(ix - 73), hl
	push	iy
	ex	(sp), hl
	ld	(ix - 76), l
	ld	(ix - 75), h
	pop	hl
	ld	iy, 0
	jp	.LBB45_62
	.local	.LBB45_60
.LBB45_60:
	ld	hl, 262176
	ld	(ix - 79), de
	ld	de, 0
	push	de
	push	hl
	push	de
	ld	hl, (ix - 67)
	ld	de, (ix - 70)
	ld	c, iyl
	ld	b, iyh
	call	__llor
	ld	(ix - 64), hl
	ld	(ix - 73), de
	ld	(ix - 76), c
	ld	(ix - 75), b
	pop	hl
	pop	hl
	pop	hl
	push	iy
	ex	(sp), hl
	ld	(ix - 61), l
	ld	(ix - 60), h
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 64)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 73)
	ld	(hl), de
	lea	hl, iy + 6
	ld	iy, 0
	ld	bc, (ix + 6)
	ld	e, (ix - 76)
	ld	d, (ix - 75)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld.sis	de, 1
	ld	hl, (ix - 79)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	z, .LBB45_62
; %bb.61:
	ld	hl, 262240
	ld	de, 8
	push	de
	push	hl
	push	iy
	ld	hl, (ix - 67)
	ld	de, (ix - 70)
	ld	c, (ix - 61)
	ld	b, (ix - 60)
	call	__llor
	ld	(ix - 64), hl
	ld	(ix - 73), de
	ld	(ix - 76), c
	ld	(ix - 75), b
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	hl, (ix - 64)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 73)
	ld	(hl), de
	lea	hl, iy + 6
	ld	iy, 0
	ld	bc, (ix + 6)
	ld	e, (ix - 76)
	ld	d, (ix - 75)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB45_62
.LBB45_62:
	ld	de, 572
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 61), hl
	push	iy
	ld	hl, 1000
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 61)
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 58)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB45_64
; %bb.63:
	ld	hl, -2097152
	ld	de, 0
	push	de
	push	hl
	push	de
	ld	hl, (ix - 64)
	ld	de, (ix - 73)
	ld	c, (ix - 76)
	ld	b, (ix - 75)
	call	__llor
	ld	(ix - 58), c
	ld	(ix - 57), b
	pop	iy
	pop	iy
	pop	iy
	ld	bc, 1018
	ld	iy, (ix + 6)
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), de
	lea	hl, iy + 6
	ld	e, (ix - 58)
	ld	d, (ix - 57)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB45_64
.LBB45_64:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end45
.Lfunc_end45:
	.size	__Z20game_refresh_unlocksR9GameState, .Lfunc_end45-__Z20game_refresh_unlocksR9GameState
                                        ; -- End function
	.section	.text.__Z25game_toggle_ulc_sacrificeR9GameStateh,"ax",@progbits
	.globl	__Z25game_toggle_ulc_sacrificeR9GameStateh ; -- Begin function _Z25game_toggle_ulc_sacrificeR9GameStateh
	.type	__Z25game_toggle_ulc_sacrificeR9GameStateh,@function
__Z25game_toggle_ulc_sacrificeR9GameStateh: ; @_Z25game_toggle_ulc_sacrificeR9GameStateh
; %bb.0:
	ld	hl, -7
	call	__frameset
	ld	iy, (ix + 6)
	ld	a, (ix + 9)
	ld	c, 0
	ld	de, 650
	add	iy, de
	cp	a, 10
	jp	nc, .LBB46_7
; %bb.1:
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB46_7
; %bb.2:
	ld	hl, 1
	ld	c, a
	call	__ishl
	ex	de, hl
	ld	bc, 2398
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, bc
	ld	hl, (hl)
	ld	bc, 0
	ld	(ix - 6), hl
	ld	c, l
	ld	b, h
	ld	(ix - 3), de
	ex	de, hl
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB46_4
; %bb.3:
	ld	hl, (ix - 6)
                                        ; kill: def $hl killed $hl killed $uhl
	ld	bc, (ix - 3)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__sor
	jp	.LBB46_6
	.local	.LBB46_4
.LBB46_4:
	push	iy
	call	__Z24game_ulc_sacrifice_countRK9GameState
	ld	(ix - 7), a                     ; 1-byte Folded Spill
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z23game_ulc_min_sacrificesRK9GameState
	pop	hl
	ld	l, (ix - 7)
	cp	a, l
	ld	c, 0
	jp	nc, .LBB46_7
; %bb.5:
	ld	hl, (ix - 3)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__snot
	ld	c, l
	ld	b, h
	ld	hl, (ix - 6)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	iy, (ix + 6)
	.local	.LBB46_6
.LBB46_6:
	ld	c, 1
	ld	de, 2398
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	.local	.LBB46_7
.LBB46_7:
	ld	a, c
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end46
.Lfunc_end46:
	.size	__Z25game_toggle_ulc_sacrificeR9GameStateh, .Lfunc_end46-__Z25game_toggle_ulc_sacrificeR9GameStateh
                                        ; -- End function
	.section	.text.__Z17game_reset_rewardRK9GameState9ResetTier,"ax",@progbits
	.globl	__Z17game_reset_rewardRK9GameState9ResetTier ; -- Begin function _Z17game_reset_rewardRK9GameState9ResetTier
	.type	__Z17game_reset_rewardRK9GameState9ResetTier,@function
__Z17game_reset_rewardRK9GameState9ResetTier: ; @_Z17game_reset_rewardRK9GameState9ResetTier
; %bb.0:
	ld	hl, -55
	call	__frameset
	ld	iy, (ix + 6)
	ld	a, (ix + 12)
	ld	bc, 0
	ld.sis	hl, 0
	cp	a, 5
	jr	c, .LBB47_2
; %bb.1:
	ld	(iy), bc
	ld	(iy + 3), 0
	jp	.LBB47_15
	.local	.LBB47_2
.LBB47_2:
	lea	iy, ix - 13
	push	bc
	pop	de
	ld	e, a
	ld	hl, JTI47_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB47_3
.LBB47_3:
	ld	iy, (ix + 9)
	lea	hl, iy + 2
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z14bn_log10_floor6BigNum
	pop	bc
	pop	bc
	ld	bc, 3
	xor	a, a
	call	__lcmpu
	jp	c, .LBB47_14
; %bb.4:
	dec.sis	hl
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z7bn_makems
	ld	iy, (ix + 6)
	pop	hl
	jp	.LBB47_7
	.local	.LBB47_5
.LBB47_5:
	lea	de, ix - 25
	ld	(ix - 49), de
	lea	hl, ix - 31
	ld	(ix - 43), hl
	lea	hl, ix - 37
	ld	(ix - 46), hl
	push	bc
	ld	hl, 1000000
	push	hl
	push	de
	ld	(ix - 40), iy
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 250000
	push	hl
	ld	hl, (ix - 46)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2394
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 52), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 55), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 46)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	de, (ix - 52)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 55)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 43)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 46), hl
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 49)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 46)
	ld	hl, (ix - 43)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 40)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, 266
	ld	hl, (ix + 9)
	add	hl, de
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	bc, 6
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB47_14
; %bb.6:
	ld	hl, 1
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z11bn_from_u32m
	ld	iy, (ix + 6)
	.local	.LBB47_7
.LBB47_7:
	pop	hl
	pop	hl
	pop	hl
	jp	.LBB47_16
	.local	.LBB47_8
.LBB47_8:
	ld	(ix - 40), iy
	ld	de, 2382
	ld	iy, (ix + 9)
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 100
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jp	c, .LBB47_14
; %bb.9:
	ld	bc, 20
	ld	iy, 0
	lea	hl, iy + 0
	ld	l, e
	ld	h, d
	call	__imulu
	ld	de, -1900
	add	hl, de
	push	iy
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 19
	jp	.LBB47_18
	.local	.LBB47_10
.LBB47_10:
	ld	(ix - 40), iy
	ld	hl, (ix + 9)
	push	hl
	call	__Z24game_ulc_sacrifice_countRK9GameState
	pop	hl
	ld	de, 2384
	ld	iy, (ix + 9)
	add	iy, de
	ld	bc, (iy)
	ld.sis	de, 50
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jp	c, .LBB47_14
; %bb.11:
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 43), a                    ; 1-byte Folded Spill
	ld	(ix - 46), bc
	call	__Z23game_ulc_min_sacrificesRK9GameState
	ld	iy, (ix - 46)
	ld	c, (ix - 43)                    ; 1-byte Folded Reload
	ld	l, a
	pop	de
	ld	a, c
	cp	a, l
	jp	c, .LBB47_14
; %bb.12:
	ld	de, -90
	lea	hl, ix - 19
	ld	(ix - 49), hl
	or	a, a
	sbc	hl, hl
	ld	a, c
	push	hl
	pop	bc
	ld	l, a
	ld	(ix - 43), hl
	push	bc
	pop	hl
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	add	hl, hl
	add	hl, de
	push	bc
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 21
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 46), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 52), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	hl, (ix - 46)
	ld	iy, (ix - 52)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 49)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 40)
	ld	hl, (ix - 49)
	ld	bc, 6
	ldir
	ld	hl, (ix - 43)
	dec	hl
	ld	de, 0
	ld	bc, 50
	xor	a, a
	call	__lmulu
	ld	bc, 1000
	call	__ladd
	ld	(ix - 43), hl
	ld	a, e
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 46), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	jp	.LBB47_19
	.local	.LBB47_13
.LBB47_13:
	ld	de, 188
	ld	iy, (ix + 9)
	add	iy, de
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	hl, iy + 0
	ldir
	call	__Z14bn_log10_floor6BigNum
	pop	bc
	pop	bc
	ld	bc, 2
	xor	a, a
	call	__lcmpu
	jr	nc, .LBB47_17
	.local	.LBB47_14
.LBB47_14:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	ld	(iy + 3), h
	.local	.LBB47_15
.LBB47_15:
	ld	(iy + 4), l
	ld	(iy + 5), h
	.local	.LBB47_16
.LBB47_16:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB47_17
.LBB47_17:
	lea	de, ix - 7
	ld	(ix - 40), de
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	push	de
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 11
	.local	.LBB47_18
.LBB47_18:
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 43), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 46), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 40)
	.local	.LBB47_19
.LBB47_19:
	ldir
	ld	hl, (ix - 43)
	ld	iy, (ix - 46)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	jr	.LBB47_16
	.local	.Lfunc_end47
.Lfunc_end47:
	.size	__Z17game_reset_rewardRK9GameState9ResetTier, .Lfunc_end47-__Z17game_reset_rewardRK9GameState9ResetTier
	.section	.rodata.__Z17game_reset_rewardRK9GameState9ResetTier,"a",@progbits
JTI47_0:
	d24	.LBB47_3
	d24	.LBB47_13
	d24	.LBB47_8
	d24	.LBB47_10
	d24	.LBB47_5
                                        ; -- End function
	.section	.text.__Z14game_can_resetRK9GameState9ResetTier,"ax",@progbits
	.globl	__Z14game_can_resetRK9GameState9ResetTier ; -- Begin function _Z14game_can_resetRK9GameState9ResetTier
	.type	__Z14game_can_resetRK9GameState9ResetTier,@function
__Z14game_can_resetRK9GameState9ResetTier: ; @_Z14game_can_resetRK9GameState9ResetTier
; %bb.0:
	ld	hl, -7
	call	__frameset
	ld	hl, (ix + 6)
	ld	a, (ix + 9)
	ld	e, a
	push	de
	push	hl
	pea	ix - 7
	call	__Z17game_reset_rewardRK9GameState9ResetTier
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 7)
	ld	e, (ix - 4)
	call	__lcmpzero
	jr	nz, .LBB48_2
; %bb.1:
	ld	a, 0
	jr	.LBB48_3
	.local	.LBB48_2
.LBB48_2:
	ld	a, -1
	.local	.LBB48_3
.LBB48_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end48
.Lfunc_end48:
	.size	__Z14game_can_resetRK9GameState9ResetTier, .Lfunc_end48-__Z14game_can_resetRK9GameState9ResetTier
                                        ; -- End function
	.section	.text.__Z16game_apply_resetR9GameState9ResetTier,"ax",@progbits
	.globl	__Z16game_apply_resetR9GameState9ResetTier ; -- Begin function _Z16game_apply_resetR9GameState9ResetTier
	.type	__Z16game_apply_resetR9GameState9ResetTier,@function
__Z16game_apply_resetR9GameState9ResetTier: ; @_Z16game_apply_resetR9GameState9ResetTier
; %bb.0:
	ld	hl, -48
	call	__frameset
	ld	iy, (ix + 6)
	ld	b, (ix + 9)
	ld	c, 0
	ld	de, 1051
	lea	hl, iy + 0
	add	hl, de
	dec	de
	add	iy, de
	ld	a, b
	or	a, a
	jr	nz, .LBB49_4
; %bb.1:
	bit	0, (hl)
	jr	z, .LBB49_4
; %bb.2:
	ld	a, (iy)
	cp	a, 3
	jr	nz, .LBB49_4
; %bb.3:
	ld	a, c
	jp	.LBB49_28
	.local	.LBB49_4
.LBB49_4:
	lea	de, ix - 7
	ld	l, b
	push	hl
	ld	hl, (ix + 6)
	push	hl
	ld	(ix - 29), de
	push	de
	call	__Z17game_reset_rewardRK9GameState9ResetTier
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 7)
	ld	e, (ix - 4)
	call	__lcmpzero
	jr	nz, .LBB49_6
; %bb.5:
	ld	a, 0
	jr	.LBB49_7
	.local	.LBB49_6
.LBB49_6:
	ld	a, -1
	.local	.LBB49_7
.LBB49_7:
	call	__lcmpzero
	ld	de, (ix + 6)
	ld	l, (ix + 9)
	jp	z, .LBB49_28
; %bb.8:
	ld	(ix - 30), a                    ; 1-byte Folded Spill
	ld	a, l
	or	a, a
	jr	nz, .LBB49_11
; %bb.9:
	push	de
	call	__ZL15clear_early_runR9GameState
	pop	hl
	ld	hl, 1
	push	hl
	dec	hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 29)
	ldir
	ld	hl, 23
	.local	.LBB49_10
.LBB49_10:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB49_26
	.local	.LBB49_11
.LBB49_11:
	ld	a, l
	cp	a, 1
	jp	nz, .LBB49_18
; %bb.12:
	ld	hl, _UPGRADE_DEFS+18
	ld	(ix - 36), hl
	lea	hl, ix - 13
	ld	(ix - 39), hl
	ld	hl, 10
	push	hl
	push	de
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ld	iy, (ix + 6)
	ld	(ix - 33), l
	ld	(ix - 32), h
	pop	hl
	pop	hl
	lea	hl, iy + 0
	ld	de, 140
	add	hl, de
	ld	de, (ix - 39)
	ld	(ix - 45), hl
	ld	bc, 6
	ldir
	ld	l, (ix - 33)
	ld	h, (ix - 32)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ld.sis	hl, 0
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 42), hl
	jp	z, .LBB49_23
; %bb.13:
	ld	de, 0
	ld	iy, _UPGRADE_DEFS+18
	ld.sis	hl, 0
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 42), hl
	.local	.LBB49_14
.LBB49_14:                              ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	ld	bc, 64
	or	a, a
	sbc	hl, bc
	jp	z, .LBB49_22
; %bb.15:                               ;   in Loop: Header=BB49_14 Depth=1
	ld	a, (iy)
	cp	a, 7
	jr	nz, .LBB49_17
; %bb.16:                               ;   in Loop: Header=BB49_14 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	bc, 890
	add	hl, bc
	ld	hl, (hl)
	ld	(ix - 42), hl
	.local	.LBB49_17
.LBB49_17:                              ;   in Loop: Header=BB49_14 Depth=1
	lea	iy, iy + 20
	ex	de, hl
	ld	de, 2
	add	hl, de
	ex	de, hl
	jr	.LBB49_14
	.local	.LBB49_18
.LBB49_18:
	cp	a, 2
	jp	nz, .LBB49_29
; %bb.19:
	ld	hl, 20
	push	hl
	push	de
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ld	(ix - 33), l
	ld	(ix - 32), h
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL15clear_early_runR9GameState
	pop	hl
	ld	hl, 3
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_
	ld	bc, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 33)
	ld	h, (ix - 32)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB49_21
; %bb.20:
	ld	iy, (ix + 6)
	ld	de, 194
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	ld	de, 198
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB49_21
.LBB49_21:
	ld	de, 1026
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ld	bc, 9
	ex	de, hl
	lea	hl, iy + 0
	ldir
	ld	(iy), 1
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	ld	de, 2382
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	pop	hl
	ld	de, 2288
	add	hl, de
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 59
	lea	de, iy + 0
	ldir
	ld	de, 2354
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), 0
	push	bc
	pop	hl
	push	bc
	pop	iy
	ld	de, 954
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 29)
	ldir
	ld	hl, 33
	jr	.LBB49_25
	.local	.LBB49_22
.LBB49_22:
	ld	iy, (ix + 6)
	.local	.LBB49_23
.LBB49_23:                              ; %.loopexit57
	push	iy
	call	__ZL15clear_early_runR9GameState
	pop	hl
	ld	hl, 2
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 33)
	ld	h, (ix - 32)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB49_36
	.local	.LBB49_24
.LBB49_24:                              ; %.loopexit
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 29)
	ldir
	ld	hl, 32
	.local	.LBB49_25
.LBB49_25:
	push	hl
	push	iy
	.local	.LBB49_26
.LBB49_26:
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 1040
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	(hl), 0
	ld	de, 2400
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB49_27
.LBB49_27:
	push	bc
	call	__Z20game_refresh_unlocksR9GameState
	pop	hl
	ld	a, (ix - 30)                    ; 1-byte Folded Reload
	.local	.LBB49_28
.LBB49_28:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB49_29
.LBB49_29:
	cp	a, 3
	jp	nz, .LBB49_41
; %bb.30:
	ld	hl, 22
	push	hl
	push	de
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ld	(ix - 39), l
	ld	(ix - 38), h
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL15clear_early_runR9GameState
	pop	hl
	ld	hl, 22
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL15clear_resourcesR9GameStatehh
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 73
	push	hl
	ld	hl, 62
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL15clear_resourcesR9GameStatehh
	pop	hl
	pop	hl
	pop	hl
	ld	de, 320
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), 0
	ld	de, 324
	push	bc
	pop	hl
	push	bc
	pop	iy
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	bc, 368
	add	iy, bc
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	ld	iy, 372
	ld	de, (ix + 6)
	push	de
	pop	hl
	lea	bc, iy + 0
	add	hl, bc
	ld.sis	bc, 0
	ld	(hl), c
	inc	hl
	ld	(hl), b
	push	de
	pop	bc
	push	bc
	pop	iy
	ld	de, 140
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	ld	de, 144
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	pop	hl
	ld	de, 194
	add	hl, de
	ld	(ix - 42), hl
	ld	de, 218
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	ld	de, 222
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 236
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 48), hl
	ld	de, 260
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 45), hl
	ld	de, 284
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 36), hl
	ld	de, 302
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 33), hl
	ld	hl, (ix - 42)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	lea	de, iy + 0
	ld	bc, 11
	ldir
	ld	iy, (ix - 48)
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 11
	ldir
	ld	hl, (ix - 45)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 17
	lea	de, iy + 0
	ldir
	ld	iy, (ix - 36)
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 11
	ldir
	ld	iy, (ix - 33)
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 11
	ldir
	ld	hl, 4
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 6
	push	hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	ld	de, 2288
	add	hl, de
	ld	(ix - 33), hl
	push	bc
	pop	hl
	ld	de, 954
	add	hl, de
	ld.sis	iy, 0
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 972
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 980
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 2362
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), 0
	ld	de, 958
	push	bc
	pop	hl
	add	hl, de
	ld.sis	iy, 0
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 982
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 986
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 988
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 974
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 994
	push	bc
	pop	iy
	add	iy, de
	ld	de, 2390
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	pop	hl
	ld	de, 2382
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	pop	hl
	ld	bc, 2384
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 2398
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 36), hl
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ld	bc, 5
	ex	de, hl
	lea	hl, iy + 0
	ldir
	ld	hl, (ix - 33)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 69
	lea	de, iy + 0
	ldir
	ld	hl, (ix - 36)
	ld	de, (hl)
	ld.sis	bc, 1
	ld	l, e
	ld	h, d
	call	__sand
	bit	0, l
	jr	z, .LBB49_32
; %bb.31:
	ld	(ix - 33), de
	ld	de, 2358
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), 0
	ld	de, 960
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, (ix - 33)
	.local	.LBB49_32
.LBB49_32:
	ld	a, e
	bit	1, a
	jp	z, .LBB49_46
; %bb.33:
	ld	de, 248
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	ld	de, 252
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 8
	ld	bc, 0
	.local	.LBB49_34
.LBB49_34:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB49_45
; %bb.35:                               ;   in Loop: Header=BB49_34 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	push	de
	pop	iy
	ld	de, 962
	add	hl, de
	lea	de, iy + 0
	ld.sis	iy, 0
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	push	bc
	pop	hl
	ld	bc, 2
	add	hl, bc
	push	hl
	pop	bc
	jr	.LBB49_34
	.local	.LBB49_36
.LBB49_36:
	ld	de, (ix - 45)
	ld	hl, (ix - 39)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	.local	.LBB49_37
.LBB49_37:                              ; =>This Inner Loop Header: Depth=1
	push	hl
	pop	de
	ld	bc, 64
	or	a, a
	sbc	hl, bc
	jp	z, .LBB49_24
; %bb.38:                               ;   in Loop: Header=BB49_37 Depth=1
	ld	hl, (ix - 36)
	ld	a, (hl)
	cp	a, 7
	jr	nz, .LBB49_40
; %bb.39:                               ;   in Loop: Header=BB49_37 Depth=1
	lea	hl, iy + 0
	add	hl, de
	ld	bc, 890
	add	hl, bc
	ld	bc, (ix - 42)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB49_40
.LBB49_40:                              ;   in Loop: Header=BB49_37 Depth=1
	lea	hl, iy + 0
	ld	iy, (ix - 36)
	lea	iy, iy + 20
	ld	(ix - 36), iy
	push	hl
	pop	iy
	ex	de, hl
	ld	de, 2
	add	hl, de
	jr	.LBB49_37
	.local	.LBB49_41
.LBB49_41:
	lea	hl, ix - 19
	ld	(ix - 33), hl
	lea	hl, ix - 25
	ld	(ix - 36), hl
	ld	de, 266
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, 0
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), b
	ld	de, 270
	ld	hl, (ix + 6)
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 440
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), b
	ld	de, 444
	ld	hl, (ix + 6)
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 2394
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 39), hl
	ld	de, (hl)
	xor	a, a
	ld	(ix - 26), a
	ld	hl, (ix - 28)
	ld	h, d
	ld	l, e
	ld	(ix - 45), hl
	ld	a, c
	ld	(ix - 42), a
	push	bc
	ld	hl, 250000
	push	hl
	ld	hl, (ix - 36)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 45)
	ld	e, (ix - 42)                    ; 1-byte Folded Reload
	ld	bc, 1
	xor	a, a
	call	__ladd
	ld	(ix - 42), hl
	ld	a, e
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 45), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 36)
	ld	bc, 6
	ldir
	ld	hl, (ix - 42)
	ld	iy, (ix - 45)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 33)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 33)
	ld	bc, 6
	ldir
	ld	hl, 73
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 29)
	ld	bc, 6
	ldir
	ld	hl, 45
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	bc, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 39)
	ld	iy, (hl)
	ld.sis	de, -1
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, de
	jr	z, .LBB49_43
; %bb.42:
	inc.sis	iy
	push	bc
	pop	hl
	ld	de, 2394
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	.local	.LBB49_43
.LBB49_43:
	ld	de, 2396
	push	bc
	pop	hl
	add	hl, de
	ld	iy, (hl)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	de, -1
	or	a, a
	sbc.sis	hl, de
	jp	z, .LBB49_27
; %bb.44:
	inc.sis	iy
	push	bc
	pop	hl
	ld	de, 2396
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	jp	.LBB49_27
	.local	.LBB49_45
.LBB49_45:
	ld	hl, (ix - 36)
	ld	de, (hl)
	.local	.LBB49_46
.LBB49_46:
	ld	iy, 0
	ld	iyl, e
	ld	iyh, d
	ld	(ix - 33), de
	ld	a, iyl
	bit	2, a
	jr	nz, .LBB49_51
; %bb.47:
	ld	a, iyl
	bit	4, a
	jr	z, .LBB49_52
; %bb.48:                               ; %.preheader.preheader
	ld	de, 0
	.local	.LBB49_49
.LBB49_49:                              ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	ld	bc, 40
	or	a, a
	sbc	hl, bc
	jr	z, .LBB49_52
; %bb.50:                               ;   in Loop: Header=BB49_49 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 36), hl
	ld	bc, 2251
	add	hl, bc
	ld	(hl), 0
	inc	bc
	ld	hl, (ix - 36)
	add	hl, bc
	ld	(hl), 0
	ex	de, hl
	ld	de, 5
	add	hl, de
	ex	de, hl
	jr	.LBB49_49
	.local	.LBB49_51
.LBB49_51:
	ld	de, 2248
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), 0
	ld	(ix - 36), hl
	ld	de, (ix - 36)
	inc	de
	ld	(ix - 36), de
	ld	bc, 39
	ld	de, (ix - 36)
	ldir
	.local	.LBB49_52
.LBB49_52:                              ; %.loopexit58
	ld	a, iyl
	bit	3, a
	jr	z, .LBB49_54
; %bb.53:
	ld	de, 254
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	ld	de, 258
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	iyl, e
	ld	iyh, d
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 970
	push	bc
	pop	hl
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	iy, 0
	ld	hl, (ix - 33)
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	.local	.LBB49_54
.LBB49_54:
	ld	a, iyl
	bit	5, a
	jr	z, .LBB49_56
; %bb.55:
	ld	de, 990
	ld	hl, (ix + 6)
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB49_56
.LBB49_56:
	ld	a, iyl
	bit	6, a
	jr	z, .LBB49_58
; %bb.57:
	ld	de, 224
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	de, 314
	push	bc
	pop	iy
	add	iy, de
	ld	de, 0
	ld	(iy), de
	lea	iy, iy + 3
	ld	(iy), d
	ld	de, 318
	push	bc
	pop	iy
	add	iy, de
	ld.sis	de, 0
	ld	(iy), e
	ld	(iy + 1), d
	ld	(hl), d
	push	hl
	pop	iy
	inc	iy
	ld	bc, 11
	lea	de, iy + 0
	ldir
	.local	.LBB49_58
.LBB49_58:
	ld	e, -128
	ld	hl, (ix - 33)
	ld	a, l
	and	a, e
	ld	e, a
	or	a, a
	ld	iy, (ix + 6)
	jr	z, .LBB49_60
; %bb.59:
	ld	de, 326
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	iy, (ix + 6)
	ld	(hl), 0
	ld	de, 330
	lea	hl, iy + 0
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, (ix - 33)
	.local	.LBB49_60
.LBB49_60:
	ld.sis	bc, 256
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	a, d
	or	a, a
	sbc	hl, hl
	ld	e, h
	cp	a, e
	jr	z, .LBB49_62
; %bb.61:
	ld	bc, 2394
	lea	hl, iy + 0
	add	hl, bc
	ld.sis	bc, 0
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	bc, 2396
	lea	hl, iy + 0
	add	hl, bc
	ld.sis	bc, 0
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB49_62
.LBB49_62:
	ld.sis	bc, 512
	ld	hl, (ix - 33)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	ld	bc, 0
	ld	c, l
	ld	b, h
	ld	a, b
	cp	a, e
	jr	z, .LBB49_64
; %bb.63:
	ld	de, 338
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	iy, (ix + 6)
	ld	(hl), 0
	ld	de, 342
	lea	hl, iy + 0
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB49_64
.LBB49_64:
	ld	l, 84
	ld	de, (ix - 33)
	ld	a, e
	and	a, l
	ld	l, a
	or	a, a
	ld	hl, 7
	push	hl
	push	hl
	push	iy
	call	nz, __ZL19clear_shop_upgradesR9GameState6ShopIdS1_
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 39)
	ld	h, (ix - 38)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB49_66
; %bb.65:
	ld	de, 1026
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ld	bc, 9
	ex	de, hl
	lea	hl, iy + 0
	ldir
	ld	(iy), 1
	.local	.LBB49_66
.LBB49_66:
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 29)
	ldir
	ld	hl, 34
	jp	.LBB49_10
	.local	.Lfunc_end49
.Lfunc_end49:
	.size	__Z16game_apply_resetR9GameState9ResetTier, .Lfunc_end49-__Z16game_apply_resetR9GameState9ResetTier
                                        ; -- End function
	.section	.text.__ZL15clear_early_runR9GameState,"ax",@progbits
	.type	__ZL15clear_early_runR9GameState,@function ; -- Begin function _ZL15clear_early_runR9GameState
__ZL15clear_early_runR9GameState:       ; @_ZL15clear_early_runR9GameState
; %bb.0:
	call	__frameset0
	ld	de, (ix + 6)
	ld	hl, 15
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	de
	call	__ZL15clear_resourcesR9GameStatehh
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 31
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL15clear_resourcesR9GameStatehh
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end50
.Lfunc_end50:
	.size	__ZL15clear_early_runR9GameState, .Lfunc_end50-__ZL15clear_early_runR9GameState
                                        ; -- End function
	.section	.text.__ZL19clear_shop_upgradesR9GameState6ShopIdS1_,"ax",@progbits
	.type	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_,@function ; -- Begin function _ZL19clear_shop_upgradesR9GameState6ShopIdS1_
__ZL19clear_shop_upgradesR9GameState6ShopIdS1_: ; @_ZL19clear_shop_upgradesR9GameState6ShopIdS1_
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	de, 0
	ld	hl, _UPGRADE_DEFS+6
	ld	(ix - 3), hl
	.local	.LBB51_1
.LBB51_1:                               ; =>This Inner Loop Header: Depth=1
	ld	bc, 64
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB51_6
; %bb.2:                                ;   in Loop: Header=BB51_1 Depth=1
	ld	hl, (ix - 3)
	ld	l, (hl)
	ld	a, l
	ld	h, (ix + 9)
	cp	a, h
	jr	c, .LBB51_5
; %bb.3:                                ;   in Loop: Header=BB51_1 Depth=1
	ld	a, (ix + 12)
	cp	a, l
	jr	c, .LBB51_5
; %bb.4:                                ;   in Loop: Header=BB51_1 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	bc, 890
	add	hl, bc
	ld.sis	bc, 0
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB51_5
.LBB51_5:                               ;   in Loop: Header=BB51_1 Depth=1
	ld	iy, (ix - 3)
	lea	iy, iy + 20
	ld	(ix - 3), iy
	ex	de, hl
	ld	de, 2
	add	hl, de
	ex	de, hl
	jr	.LBB51_1
	.local	.LBB51_6
.LBB51_6:
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end51
.Lfunc_end51:
	.size	__ZL19clear_shop_upgradesR9GameState6ShopIdS1_, .Lfunc_end51-__ZL19clear_shop_upgradesR9GameState6ShopIdS1_
                                        ; -- End function
	.section	.text.__ZL15clear_resourcesR9GameStatehh,"ax",@progbits
	.type	__ZL15clear_resourcesR9GameStatehh,@function ; -- Begin function _ZL15clear_resourcesR9GameStatehh
__ZL15clear_resourcesR9GameStatehh:     ; @_ZL15clear_resourcesR9GameStatehh
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	a, (ix + 9)
	ld	c, (ix + 12)
	ld	iy, 6
	ld	de, 0
	push	de
	pop	hl
	ld	l, a
	ld	e, c
	ld	(ix - 3), hl
	lea	bc, iy + 0
	call	__imulu
	push	hl
	pop	bc
	ld	iy, (ix + 6)
	add	iy, bc
	lea	hl, iy + 6
	ld	(ix - 6), hl
	ld	(ix - 9), de
	ld	bc, 74
	.local	.LBB52_1
.LBB52_1:                               ; =>This Inner Loop Header: Depth=1
	ex	de, hl
	ld	de, (ix - 3)
	or	a, a
	sbc	hl, de
	jr	c, .LBB52_4
; %bb.2:                                ;   in Loop: Header=BB52_1 Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	nc, .LBB52_4
; %bb.3:                                ;   in Loop: Header=BB52_1 Depth=1
	or	a, a
	sbc	hl, hl
	ld	iy, (ix - 6)
	ld	(iy - 4), hl
	ld	(iy - 1), h
	ld	(iy), l
	ld	(iy + 1), h
	inc	de
	ld	(ix - 3), de
	lea	iy, iy + 6
	ld	(ix - 6), iy
	ld	de, (ix - 9)
	jr	.LBB52_1
	.local	.LBB52_4
.LBB52_4:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end52
.Lfunc_end52:
	.size	__ZL15clear_resourcesR9GameStatehh, .Lfunc_end52-__ZL15clear_resourcesR9GameStatehh
                                        ; -- End function
	.section	.text.__Z16game_tick_secondR9GameStatem,"ax",@progbits
	.globl	__Z16game_tick_secondR9GameStatem ; -- Begin function _Z16game_tick_secondR9GameStatem
	.type	__Z16game_tick_secondR9GameStatem,@function
__Z16game_tick_secondR9GameStatem:      ; @_Z16game_tick_secondR9GameStatem
; %bb.0:
	ld	hl, -65
	call	__frameset
	ld	iy, (ix + 6)
	ld	(ix - 40), iy
	ld	hl, (ix + 9)
	ld	(ix - 44), hl
	ld	a, (ix + 12)
	ld	(ix - 41), a
	ld	bc, 1
	ld	de, 2366
	add	iy, de
	ld	(ix - 53), iy
	ld	hl, (iy)
	lea	de, iy + 3
	ld	(ix - 47), de
	ld	iy, (ix - 47)
	ld	e, (iy)
	ld	iyl, b
	ld	(ix - 50), iy
	ld	a, iyl
	call	__ladd
	ld	iy, (ix - 53)
	ld	(iy), hl
	ld	hl, (ix - 47)
	ld	(hl), e
	ld	de, 1018
	ld	iy, (ix - 40)
	add	iy, de
	ld	de, (iy)
	ld	(ix - 47), de
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 53), hl
	lea	hl, iy + 6
	ld	bc, (hl)
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	ld	hl, 264
	push	hl
	ex	de, hl
	ld	de, (ix - 53)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	ld	bc, (ix - 47)
	jr	z, .LBB53_2
; %bb.1:
	ld	iy, _AREA_DEFS
	lea	hl, ix - 7
	ld	(ix - 47), hl
	ld	de, 1040
	ld	hl, (ix - 40)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	a, (iy + 3)
	ld	(ix - 53), a
	ld	hl, (ix - 40)
	push	hl
	ld	hl, (ix - 47)
	push	hl
	call	__ZL12passive_rateRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 47)
	ldir
	ld	l, (ix - 53)                    ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 40)
	ld	de, 1018
	add	hl, de
	ld	bc, (hl)
	.local	.LBB53_2
.LBB53_2:
	ld	a, c
	bit	4, a
	jp	z, .LBB53_10
; %bb.3:
	ld	iy, (ix - 40)
	ld	hl, (iy + 2)
	ld	e, (iy + 5)
	call	__lcmpzero
	jp	z, .LBB53_10
; %bb.4:
	lea	hl, ix - 13
	ld	(ix - 47), hl
	lea	de, ix - 19
	ld	(ix - 53), de
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 8
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 56), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 59), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 53)
	ld	bc, 6
	ldir
	ld	hl, (ix - 56)
	ld	iy, (ix - 59)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 47)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 47)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	ld	iyl, 24
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB53_5
.LBB53_5:                               ; =>This Inner Loop Header: Depth=1
	bit	0, a
	jr	z, .LBB53_7
; %bb.6:                                ;   in Loop: Header=BB53_5 Depth=1
	ld	(ix - 53), iy
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 47)
	ldir
	push	iy
	ld	hl, (ix - 40)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix - 53)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB53_7
.LBB53_7:                               ;   in Loop: Header=BB53_5 Depth=1
	ld	a, iyl
	cp	a, 31
	jr	z, .LBB53_9
; %bb.8:                                ;   in Loop: Header=BB53_5 Depth=1
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 47)
	ld	bc, 6
	ldir
	push	iy
	ld	hl, (ix - 40)
	push	hl
	ld	(ix - 53), iy
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	ld	iy, (ix - 53)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	iyl
	jr	.LBB53_5
	.local	.LBB53_9
.LBB53_9:
	ld	hl, (ix - 40)
	ld	de, 1018
	add	hl, de
	ld	bc, (hl)
	.local	.LBB53_10
.LBB53_10:
	ld	l, -128
	ld	a, c
	and	a, l
	ld	l, a
	or	a, a
	jp	nz, .LBB53_21
	.local	.LBB53_11
.LBB53_11:                              ; %.loopexit
	ld	de, 2358
	ld	iy, (ix - 40)
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	ld	bc, -1
	ld	a, b
	call	__ladd
	ld	bc, (ix - 44)
	ld	a, (ix - 41)                    ; 1-byte Folded Reload
	call	__lcmpu
	ld	de, 0
	jr	nc, .LBB53_13
; %bb.12:
	ld	hl, 250
	lea	bc, ix - 31
	ld	(ix - 47), bc
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 47)
	ldir
	ld	hl, 40
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	de, 0
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 40)
	ld	bc, 2358
	add	iy, bc
	ld	(iy), de
	lea	hl, iy + 3
	ld	(hl), d
	.local	.LBB53_13
.LBB53_13:
	ld	iy, 20
	lea	hl, ix - 37
	ld	(ix - 50), hl
	.local	.LBB53_14
.LBB53_14:                              ; =>This Inner Loop Header: Depth=1
	ld	bc, 60
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB53_19
; %bb.15:                               ;   in Loop: Header=BB53_14 Depth=1
	ld	hl, (ix - 40)
	add	hl, de
	ld	(ix - 47), hl
	ld	bc, 2306
	add	hl, bc
	bit	0, (hl)
	jp	z, .LBB53_18
; %bb.16:                               ;   in Loop: Header=BB53_14 Depth=1
	ld	iy, (ix - 47)
	ld	bc, 2302
	add	iy, bc
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	hl, (ix - 44)
	ld	(ix - 53), de
	ld	e, (ix - 41)                    ; 1-byte Folded Reload
	ld	a, (iy)
	call	__lcmpu
	ld	bc, 20
	push	bc
	pop	iy
	ld	de, (ix - 53)
	jr	c, .LBB53_18
; %bb.17:                               ;   in Loop: Header=BB53_14 Depth=1
	ld	bc, (ix - 47)
	push	bc
	pop	hl
	ld	de, 2289
	add	hl, de
	ld	a, (hl)
	push	bc
	pop	hl
	ld	de, 2296
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	hl, (ix - 50)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 50)
	ld	bc, 6
	ldir
	ld	hl, 36
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	bc, 20
	push	bc
	pop	iy
	ld	de, (ix - 53)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, 2306
	ld	hl, (ix - 47)
	add	hl, bc
	ld	(hl), 0
	.local	.LBB53_18
.LBB53_18:                              ;   in Loop: Header=BB53_14 Depth=1
	ex	de, hl
	lea	de, iy + 0
	add	hl, de
	ex	de, hl
	jp	.LBB53_14
	.local	.LBB53_19
.LBB53_19:
	ld	de, 2370
	ld	bc, (ix - 40)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 44)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	a, (ix - 41)
	ld	(hl), a
	ld	de, 2402
	push	bc
	pop	hl
	add	hl, de
	ld	de, (hl)
	sbc.sis	hl, hl
	adc.sis	hl, de
	jp	nz, .LBB53_26
; %bb.20:
	ld	de, 2400
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	.LBB53_27
	.local	.LBB53_21
.LBB53_21:
	lea	hl, ix - 25
	ld	(ix - 47), hl
	ld	hl, 12
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	bc, 2
	ld	de, 0
	ld	e, l
	ld	d, h
	inc	de
	ld	(ix - 56), de
	.local	.LBB53_22
.LBB53_22:                              ; =>This Inner Loop Header: Depth=1
	ld	de, 140
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB53_11
; %bb.23:                               ;   in Loop: Header=BB53_22 Depth=1
	ld	iy, (ix - 40)
	ld	(ix - 53), bc
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 59), iy
	ld	e, (iy + 3)
	call	__lcmpzero
	jr	z, .LBB53_25
; %bb.24:                               ;   in Loop: Header=BB53_22 Depth=1
	ld	hl, 100000
	ld	bc, (ix - 56)
	call	__idivu
	ld	(ix - 62), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 65), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 59)
	ld	bc, 6
	ldir
	ld	hl, (ix - 62)
	ld	iy, (ix - 65)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 47)
	push	hl
	call	__Z10bn_div_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 47)
	ld	bc, 6
	ldir
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB53_25
.LBB53_25:                              ;   in Loop: Header=BB53_22 Depth=1
	ld	hl, (ix - 53)
	ld	de, 6
	add	hl, de
	ld	de, (ix - 50)
	inc	e
	ld	(ix - 50), de
	push	hl
	pop	bc
	jp	.LBB53_22
	.local	.LBB53_26
.LBB53_26:
	dec.sis	de
	push	bc
	pop	hl
	push	de
	pop	iy
	ld	de, 2402
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	.local	.LBB53_27
.LBB53_27:
	push	bc
	call	__Z20game_refresh_unlocksR9GameState
	pop	hl
	ld	hl, (ix - 40)
	ld	(ix + 6), hl
	ld	sp, ix
	pop	ix
	jp	__Z23game_check_achievementsR9GameState
	.local	.Lfunc_end53
.Lfunc_end53:
	.size	__Z16game_tick_secondR9GameStatem, .Lfunc_end53-__Z16game_tick_secondR9GameStatem
                                        ; -- End function
	.section	.text.__ZL12passive_rateRK9GameState,"ax",@progbits
	.type	__ZL12passive_rateRK9GameState,@function ; -- Begin function _ZL12passive_rateRK9GameState
__ZL12passive_rateRK9GameState:         ; @_ZL12passive_rateRK9GameState
; %bb.0:
	ld	hl, -30
	call	__frameset
	ld	de, (ix + 9)
	lea	hl, ix - 7
	ld	(ix - 17), hl
	lea	hl, ix - 13
	ld	(ix - 20), hl
	ld	hl, 7
	push	hl
	push	de
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 23), hl
	ld	(ix - 26), e                    ; 1-byte Folded Spill
	pop	hl
	pop	hl
	ld	hl, 13
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	xor	a, a
	ld	(ix - 14), a
	ld	de, (ix - 16)
	ld	d, h
	ld	e, l
	ld	(ix - 29), de
	sbc	hl, hl
	ld	a, l
	ld	(ix - 30), a
	ld	hl, 14
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	pop	bc
	pop	bc
	ld	bc, (ix - 29)
	ld	a, (ix - 30)                    ; 1-byte Folded Reload
	call	__lmulu
	ld	(ix - 29), hl
	ld	d, e
	ld	hl, (ix - 23)
	ld	e, (ix - 26)                    ; 1-byte Folded Reload
	ld	bc, 1000
	ld	(ix - 23), bc
	xor	a, a
	call	__ldivu
	push	hl
	pop	iy
	ld	(ix - 26), e                    ; 1-byte Folded Spill
	ld	hl, (ix - 29)
	ld	e, d
	ld	bc, 250
	call	__ldivu
	push	hl
	pop	bc
	ld	a, e
	lea	hl, iy + 0
	ld	e, (ix - 26)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, 1
	xor	a, a
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 20)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 26), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 29), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 20)
	ldir
	ld	hl, (ix - 26)
	ld	iy, (ix - 29)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 17)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, 1051
	ld	iy, (ix + 9)
	lea	hl, iy + 0
	add	hl, de
	ld	e, (hl)
	ld	bc, 1050
	add	iy, bc
	ld	a, (iy)
	ld	l, -5
	and	a, l
	ld	l, a
	cp	a, 1
	jr	z, .LBB54_2
; %bb.1:
	ld	l, 0
	jr	.LBB54_3
	.local	.LBB54_2
.LBB54_2:
	ld	l, -1
	.local	.LBB54_3
.LBB54_3:
	ld	a, e
	and	a, l
	ld	l, a
	bit	0, l
	jr	z, .LBB54_5
; %bb.4:
	ld	de, 500
	ld	(ix - 23), de
	.local	.LBB54_5
.LBB54_5:
	bit	0, l
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 20), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 17)
	ld	bc, 6
	ldir
	ld	hl, (ix - 23)
	ld	iy, (ix - 20)
	ld	(iy + 7), hl
	xor	a, a
	ld	(iy + 10), a
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end54
.Lfunc_end54:
	.size	__ZL12passive_rateRK9GameState, .Lfunc_end54-__ZL12passive_rateRK9GameState
                                        ; -- End function
	.section	.text.__Z23game_check_achievementsR9GameState,"ax",@progbits
	.globl	__Z23game_check_achievementsR9GameState ; -- Begin function _Z23game_check_achievementsR9GameState
	.type	__Z23game_check_achievementsR9GameState,@function
__Z23game_check_achievementsR9GameState: ; @_Z23game_check_achievementsR9GameState
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	iy, _ACHIEVEMENT_DEFS+4
	ld	bc, 0
	.local	.LBB55_1
.LBB55_1:                               ; =>This Inner Loop Header: Depth=1
	ld	de, 32
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB55_5
; %bb.2:                                ;   in Loop: Header=BB55_1 Depth=1
	ld	(ix - 6), bc
	ld	a, (iy - 1)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	de, 6
	push	de
	pop	bc
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 446
	add	hl, de
	push	de
	push	de
	push	de
	push	de
	ld	(ix - 3), iy
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	bc, 6
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 3)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB55_4
; %bb.3:                                ;   in Loop: Header=BB55_1 Depth=1
	ld	bc, 1
	xor	a, a
	ld	hl, (ix - 6)
                                        ; kill: def $l killed $l killed $uhl
	call	__lshl
	ld	iy, (ix + 6)
	ld	de, 1044
	add	iy, de
	ld	(ix - 12), iy
	ld	hl, (iy)
	lea	de, iy + 3
	ld	(ix - 9), de
	ld	iy, (ix - 9)
	ld	e, (iy)
	call	__lor
	ld	iy, (ix - 12)
	ld	(iy), hl
	ld	hl, (ix - 9)
	ld	(hl), e
	.local	.LBB55_4
.LBB55_4:                               ;   in Loop: Header=BB55_1 Depth=1
	ld	bc, (ix - 6)
	inc	bc
	ld	iy, (ix - 3)
	lea	iy, iy + 10
	jp	.LBB55_1
	.local	.LBB55_5
.LBB55_5:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end55
.Lfunc_end55:
	.size	__Z23game_check_achievementsR9GameState, .Lfunc_end55-__Z23game_check_achievementsR9GameState
                                        ; -- End function
	.section	.text.__Z18game_apply_offlineR9GameStatem,"ax",@progbits
	.globl	__Z18game_apply_offlineR9GameStatem ; -- Begin function _Z18game_apply_offlineR9GameStatem
	.type	__Z18game_apply_offlineR9GameStatem,@function
__Z18game_apply_offlineR9GameStatem:    ; @_Z18game_apply_offlineR9GameStatem
; %bb.0:
	ld	hl, -113
	call	__frameset
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	call	__lcmpzero
	jp	z, .LBB56_42
; %bb.1:
	ld	bc, 604800
	xor	a, a
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	ld	(ix - 94), hl
	jr	nz, .LBB56_3
; %bb.2:
	ld	(ix - 94), bc
	.local	.LBB56_3
.LBB56_3:
	lea	hl, ix - 7
	ld	(ix - 97), hl
	lea	hl, ix - 13
	ld	(ix - 101), hl
	bit	0, a
	ld	a, e
	jr	nz, .LBB56_5
; %bb.4:
	xor	a, a
	.local	.LBB56_5
.LBB56_5:
	ld	(ix - 98), a
	ld	hl, 6
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 88), hl
	ld	(ix - 91), e                    ; 1-byte Folded Spill
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	ld	hl, (ix - 101)
	push	hl
	call	__ZL12passive_rateRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 104), iy
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	ld	hl, (ix - 101)
	ldir
	ld	hl, (ix - 94)
	ld	iy, (ix - 104)
	ld	(iy + 7), hl
	ld	a, (ix - 98)
	ld	(iy + 10), a
	ld	hl, (ix - 97)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, 1000
	ld	e, 0
	ld	bc, (ix - 88)
	ld	a, (ix - 91)                    ; 1-byte Folded Reload
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	d, a
	inc	d
	ld	hl, (ix - 88)
	ld	e, (ix - 91)                    ; 1-byte Folded Reload
	ld	bc, -1000
	ld	a, -1
	call	__ladd
	ld	a, e
	bit	0, d
	jr	nz, .LBB56_7
; %bb.6:
	ld	hl, 250
	.local	.LBB56_7
.LBB56_7:
	ld	(ix - 88), hl
	lea	hl, ix - 19
	ld	(ix - 101), hl
	bit	0, d
	jr	nz, .LBB56_9
; %bb.8:
	xor	a, a
	.local	.LBB56_9
.LBB56_9:
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 91), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 97)
	ld	bc, 6
	ldir
	ld	hl, (ix - 88)
	ld	iy, (ix - 91)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 101)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 97)
	ld	hl, (ix - 101)
	ld	bc, 6
	ldir
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	hl, _AREA_DEFS
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy + 3)
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 97)
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 1018
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	ld	(ix - 88), bc
	lea	hl, iy + 3
	ld	de, (hl)
	ld	(ix - 91), de
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 104), hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	iy, 0
	push	iy
	ld	hl, 4096
	push	hl
	push	bc
	pop	hl
	ld	iy, (ix - 104)
	ld	c, iyl
	ld	b, iyh
	call	__lland
	ld	de, (ix - 91)
	pop	bc
	pop	bc
	pop	bc
	ld	bc, (ix - 88)
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jr	z, .LBB56_11
; %bb.10:
	lea	hl, ix - 25
	ld	(ix - 88), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 91), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 97)
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	iy, (ix - 91)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 88)
	push	hl
	call	__Z10bn_div_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 88)
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	.local	.LBB56_11
.LBB56_11:
	ld	a, c
	bit	4, a
	jp	z, .LBB56_16
; %bb.12:
	ld	hl, 1
	lea	de, ix - 31
	ld	(ix - 88), de
	lea	bc, ix - 37
	ld	(ix - 91), bc
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 8
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 97), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 104), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 91)
	ld	bc, 6
	ldir
	ld	hl, (ix - 97)
	ld	iy, (ix - 104)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 88)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 91), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 88)
	ld	bc, 6
	ldir
	ld	hl, (ix - 94)
	ld	iy, (ix - 91)
	ld	(iy + 7), hl
	ld	a, (ix - 98)
	ld	(iy + 10), a
	ld	hl, (ix - 101)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	ld	iyl, 24
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	.local	.LBB56_13
.LBB56_13:                              ; =>This Inner Loop Header: Depth=1
	ld	a, iyl
	cp	a, 32
	jr	z, .LBB56_15
; %bb.14:                               ;   in Loop: Header=BB56_13 Depth=1
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 101)
	ld	bc, 6
	ldir
	push	iy
	ld	hl, (ix + 6)
	push	hl
	ld	(ix - 88), iy
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix - 88)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	iyl
	jr	.LBB56_13
	.local	.LBB56_15
.LBB56_15:
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	.local	.LBB56_16
.LBB56_16:
	ld	l, -128
	ld	a, c
	and	a, l
	ld	l, a
	or	a, a
	jp	z, .LBB56_27
; %bb.17:
	ld	bc, 86400
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	xor	a, a
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB56_19
; %bb.18:
	push	bc
	pop	hl
	.local	.LBB56_19
.LBB56_19:
	ld	(ix - 91), hl
	bit	0, a
	jr	nz, .LBB56_21
; %bb.20:
	xor	a, a
	ld	e, a
	.local	.LBB56_21
.LBB56_21:
	ld	(ix - 97), e
	lea	hl, ix - 43
	ld	(ix - 88), hl
	ld	hl, 12
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	de, 0
	push	de
	pop	bc
	ld	c, l
	ld	b, h
	inc	bc
	ld	a, e
	ld	hl, (ix - 91)
	ld	e, (ix - 97)                    ; 1-byte Folded Reload
	call	__lmulu
	ld	(ix - 97), hl
	ld	(ix - 104), e                   ; 1-byte Folded Spill
	ld	de, 140
	xor	a, a
	ld	iyl, a
	ld	bc, 2
	.local	.LBB56_22
.LBB56_22:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB56_26
; %bb.23:                               ;   in Loop: Header=BB56_22 Depth=1
	ld	(ix - 91), iy
	ld	hl, (ix + 6)
	ld	(ix - 107), bc
	add	hl, bc
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 110), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, 6
	ldir
	ld	hl, (ix - 97)
	ld	iy, (ix - 110)
	ld	(iy + 7), hl
	ld	a, (ix - 104)
	ld	(iy + 10), a
	ld	hl, (ix - 88)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 110), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 88)
	ld	bc, 6
	ldir
	ld	hl, 100000
	ld	iy, (ix - 110)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 101)
	push	hl
	call	__Z10bn_div_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix - 19)
	ld	e, (ix - 16)
	call	__lcmpzero
	jr	z, .LBB56_25
; %bb.24:                               ;   in Loop: Header=BB56_22 Depth=1
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 101)
	ld	bc, 6
	ldir
	ld	hl, (ix - 91)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB56_25
.LBB56_25:                              ;   in Loop: Header=BB56_22 Depth=1
	ld	hl, (ix - 107)
	ld	de, 6
	add	hl, de
	ld	iy, (ix - 91)
	inc	iyl
	push	hl
	pop	bc
	ld	de, 140
	jp	.LBB56_22
	.local	.LBB56_26
.LBB56_26:
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	.local	.LBB56_27
.LBB56_27:
	ld	(ix - 91), de
	ld	(ix - 88), bc
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 2
	push	hl
	sbc	hl, hl
	push	hl
	push	bc
	pop	hl
	ld	c, iyl
	ld	b, iyh
	call	__lland
	ld	(ix - 97), hl
	lea	hl, iy + 0
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	push	hl
	pop	iy
	ld	hl, (ix - 97)
	call	__llshru
	ld	de, (ix - 91)
	pop	bc
	ld	bc, (ix - 88)
	ld	a, l
	or	a, a
	jp	z, .LBB56_29
; %bb.28:
	ld	bc, 600
	lea	hl, ix - 49
	ld	(ix - 88), hl
	ld	hl, (ix - 94)
	ld	e, (ix - 98)                    ; 1-byte Folded Reload
	xor	a, a
	call	__ldivu
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 88)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 88)
	ldir
	ld	hl, 55
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	.local	.LBB56_29
.LBB56_29:
	ld	(ix - 91), de
	ld	(ix - 88), bc
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 2097152
	push	hl
	sbc	hl, hl
	push	hl
	push	bc
	pop	hl
	ld	c, iyl
	ld	b, iyh
	call	__lland
	ld	(ix - 97), hl
	lea	hl, iy + 0
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	push	hl
	pop	iy
	ld	hl, (ix - 97)
	call	__llshru
	ld	de, (ix - 91)
	pop	bc
	ld	bc, (ix - 88)
	ld	a, l
	or	a, a
	jp	z, .LBB56_31
; %bb.30:
	ld	bc, 300
	lea	hl, ix - 55
	ld	(ix - 91), hl
	lea	hl, ix - 61
	ld	(ix - 88), hl
	ld	hl, (ix - 94)
	ld	e, (ix - 98)                    ; 1-byte Folded Reload
	xor	a, a
	call	__ldivu
	ld	(ix - 104), hl
                                        ; kill: def $e killed $e def $ude
	ld	(ix - 97), de
	push	de
	push	hl
	ld	hl, (ix - 91)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 91)
	ldir
	ld	hl, 58
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	l, 1
	ld	bc, (ix - 104)
	ld	de, (ix - 97)
	ld	a, e
	call	__lshl
	ld	l, a
	push	hl
	push	bc
	ld	hl, (ix - 88)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 88)
	ld	bc, 6
	ldir
	ld	hl, 59
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	.local	.LBB56_31
.LBB56_31:
	ld	(ix - 91), de
	ld	(ix - 88), bc
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	ld	hl, -8388608
	push	hl
	push	bc
	pop	hl
	ld	c, iyl
	ld	b, iyh
	call	__lland
	ld	(ix - 97), hl
	lea	hl, iy + 0
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	push	hl
	pop	iy
	ld	hl, (ix - 97)
	call	__llshru
	ld	de, (ix - 91)
	pop	bc
	ld	bc, (ix - 88)
	ld	a, l
	or	a, a
	jp	z, .LBB56_33
; %bb.32:
	ld	bc, 3600
	lea	hl, ix - 67
	ld	(ix - 88), hl
	ld	hl, (ix - 94)
	ld	e, (ix - 98)                    ; 1-byte Folded Reload
	xor	a, a
	call	__ldivu
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 88)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 88)
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, 1018
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	.local	.LBB56_33
.LBB56_33:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 8
	push	hl
	sbc	hl, hl
	push	hl
	ld	(ix - 88), bc
	push	bc
	pop	hl
	ld	(ix - 91), de
	ld	(ix - 104), iy
	ld	c, iyl
	ld	b, iyh
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB56_40
; %bb.34:
	ld	de, 2348
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 97), iy
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB56_40
; %bb.35:
	ld	hl, (ix - 94)
	ld	e, (ix - 98)                    ; 1-byte Folded Reload
	ld	bc, 60
	xor	a, a
	call	__ldivu
	ld	(ix - 107), hl
	ld	(ix - 110), e                   ; 1-byte Folded Spill
	ld	hl, 23
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ld	iy, 50000
	pop	de
	pop	de
	ld	de, 0
	push	de
	pop	bc
	ld	c, l
	ld	b, h
	inc	bc
	ld	a, e
	ld	hl, (ix - 107)
	ld	e, (ix - 110)                   ; 1-byte Folded Reload
	call	__lmulu
	ld	(ix - 110), hl
	ld	d, e
	lea	bc, iy + 0
	xor	a, a
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB56_37
; %bb.36:
	ld	(ix - 110), iy
	.local	.LBB56_37
.LBB56_37:
	lea	hl, ix - 73
	ld	(ix - 107), hl
	bit	0, a
	ld	a, d
	jr	nz, .LBB56_39
; %bb.38:
	xor	a, a
	.local	.LBB56_39
.LBB56_39:
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 113), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 97)
	ld	bc, 6
	ldir
	ld	hl, (ix - 110)
	ld	iy, (ix - 113)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 107)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 110), hl
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 97)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 110)
	ld	hl, (ix - 107)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 101)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 97)
	ld	hl, (ix - 101)
	ld	bc, 6
	ldir
	.local	.LBB56_40
.LBB56_40:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 32
	push	hl
	sbc	hl, hl
	push	hl
	ld	hl, (ix - 88)
	ld	de, (ix - 91)
	ld	bc, (ix - 104)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB56_42
; %bb.41:
	lea	hl, ix - 79
	ld	(ix - 91), hl
	lea	hl, ix - 85
	ld	(ix - 88), hl
	ld	hl, (ix - 94)
	ld	e, (ix - 98)                    ; 1-byte Folded Reload
	ld	bc, 60
	xor	a, a
	call	__ldivu
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 91)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 91)
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 94)
	ld	e, (ix - 98)                    ; 1-byte Folded Reload
	ld	bc, 10
	xor	a, a
	call	__ldivu
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 88)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 88)
	ld	bc, 6
	ldir
	ld	hl, 44
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB56_42
.LBB56_42:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end56
.Lfunc_end56:
	.size	__Z18game_apply_offlineR9GameStatem, .Lfunc_end56-__Z18game_apply_offlineR9GameStatem
                                        ; -- End function
	.section	.text.__Z20game_start_challengeR9GameStateh,"ax",@progbits
	.globl	__Z20game_start_challengeR9GameStateh ; -- Begin function _Z20game_start_challengeR9GameStateh
	.type	__Z20game_start_challengeR9GameStateh,@function
__Z20game_start_challengeR9GameStateh:  ; @_Z20game_start_challengeR9GameStateh
; %bb.0:
	ld	hl, -41
	call	__frameset
	ld	iy, (ix + 6)
	ld	e, 1
	ld	bc, 1051
	add	iy, bc
	ld	l, (iy)
	ld	a, (ix + 9)
	cp	a, 6
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	or	a, l
	ld	l, a
	ld	(ix - 2), l                     ; 1-byte Folded Spill
	bit	0, l
	jp	nz, .LBB57_2
; %bb.1:
	ld	de, 1052
	ld	iy, (ix + 6)
	add	iy, de
	lea	de, iy + 0
	ld	iy, (ix + 6)
	lea	hl, iy + 2
	ld	(ix - 20), hl
	ld	bc, 444
	ldir
	ld	de, 1496
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 446
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 444
	ldir
	ld	de, 1940
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 890
	ld	iy, (ix + 6)
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 128
	ldir
	ld	de, 2068
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ex	de, hl
	ld	bc, 1026
	lea	hl, iy + 0
	add	hl, bc
	ld	(ix - 5), hl
	ld	bc, 10
	ldir
	ld	de, 1018
	add	iy, de
	ld	(ix - 14), iy
	ld	hl, (iy)
	ld	(ix - 17), hl
	lea	hl, iy + 3
	ld	(ix - 8), hl
	ld	hl, (hl)
	ld	(ix - 23), hl
	lea	hl, iy + 6
	ld	(ix - 11), hl
	ld	bc, (hl)
	ld	de, 2078
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (ix - 17)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	de, (ix - 23)
	ld	(hl), de
	lea	hl, iy + 6
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	de, 1036
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 17), hl
	ld	bc, (hl)
	ld	de, 2086
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), c
	ld	(iy + 1), b
	ld	de, 1038
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2088
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1044
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2090
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 1048
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2094
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1040
	ld	iy, (ix + 6)
	add	iy, de
	ld	a, (iy)
	ld	de, 2096
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), a
	ld	de, 1041
	ld	iy, (ix + 6)
	add	iy, de
	ld	a, (iy)
	ld	de, 2097
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), a
	ld	de, 1042
	ld	iy, (ix + 6)
	add	iy, de
	ld	a, (iy)
	ld	de, 2098
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), a
	ld	de, 1043
	ld	iy, (ix + 6)
	add	iy, de
	ld	a, (iy)
	ld	de, 2099
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), a
	inc	de
	ld	iy, (ix + 6)
	add	iy, de
	ld	de, 2248
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 23), hl
	lea	de, iy + 0
	ld	bc, 40
	ldir
	ld	de, 2140
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 2288
	ld	iy, (ix + 6)
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 60
	ldir
	ld	de, 2348
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 2200
	ld	iy, (ix + 6)
	add	iy, de
	lea	de, iy + 0
	ld	bc, 6
	ldir
	ld	de, 2354
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2206
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2358
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2210
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2362
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2214
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2366
	ld	iy, (ix + 6)
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2218
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2378
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	(ix - 26), iy
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	(ix - 29), hl
	ld	a, (hl)
	ld	de, 2222
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2382
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 32), hl
	ld	bc, (hl)
	ld	de, 2226
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), c
	ld	(iy + 1), b
	ld	de, 2384
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2228
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2386
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2230
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2388
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2232
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2390
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2234
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2392
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2236
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2400
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 35), hl
	ld	bc, (hl)
	ld	de, 2238
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), c
	ld	(iy + 1), b
	ld	de, 2402
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 38), hl
	ld	bc, (hl)
	ld	de, 2240
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), c
	ld	(iy + 1), b
	ld	de, 2394
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2242
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2396
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	de, 2244
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2398
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 41), hl
	ld	bc, (hl)
	ld	de, 2246
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), c
	ld	(iy + 1), b
	ld	iy, (ix + 6)
	ld	(iy + 2), 0
	ld	hl, (ix - 20)
	push	hl
	pop	de
	inc	de
	ld	bc, 1047
	ldir
	xor	a, a
	ld	(ix - 1), a
	ld	hl, (ix - 3)
	ld	h, a
	ld	l, (ix + 9)
	ld	de, 0
	ld	bc, 3635641
	ld	a, -98
	call	__lmulu
	ld	bc, 4738119
	ld	a, 67
	call	__lxor
	ld	(ix - 20), hl
	ld	a, e
	ld	hl, (ix - 23)
	ld	(hl), d
	push	hl
	pop	iy
	inc	iy
	ld	bc, 121
	lea	de, iy + 0
	ldir
	ld	hl, (ix - 26)
	ld	de, (ix - 20)
	ld	(hl), de
	ld	hl, (ix - 29)
	ld	(hl), a
	ld	hl, (ix - 32)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 15
	lea	de, iy + 0
	ldir
	ld.sis	de, 1023
	ld	hl, (ix - 41)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld.sis	de, 0
	ld	hl, (ix - 35)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, (ix - 38)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 1050
	ld	iy, (ix + 6)
	add	iy, de
	ld	e, 1
	ld	a, (ix + 9)
	ld	(iy), a
	ld	bc, 1051
	ld	hl, (ix + 6)
	add	hl, bc
	ld	(hl), e
	ld	bc, 131073
	ld	hl, (ix - 14)
	ld	(hl), bc
	ld	bc, 0
	ld	hl, (ix - 8)
	ld	(hl), bc
	ld.sis	bc, 3
	ld	hl, (ix - 11)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, (ix - 5)
	ld	(hl), e
	ld.sis	bc, 1
	ld	hl, (ix - 17)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB57_2
.LBB57_2:
	ld	a, (ix - 2)
	xor	a, e
	ld	l, a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end57
.Lfunc_end57:
	.size	__Z20game_start_challengeR9GameStateh, .Lfunc_end57-__Z20game_start_challengeR9GameStateh
                                        ; -- End function
	.section	.text.__Z21game_finish_challengeR9GameState,"ax",@progbits
	.globl	__Z21game_finish_challengeR9GameState ; -- Begin function _Z21game_finish_challengeR9GameState
	.type	__Z21game_finish_challengeR9GameState,@function
__Z21game_finish_challengeR9GameState:  ; @_Z21game_finish_challengeR9GameState
; %bb.0:
	ld	hl, -14
	call	__frameset
	ld	bc, (ix + 6)
	xor	a, a
	ld	de, 1051
	push	bc
	pop	hl
	add	hl, de
	bit	0, (hl)
	jp	z, .LBB58_17
; %bb.1:
	ld	de, 1050
	push	bc
	pop	hl
	add	hl, de
	ld	a, (hl)
	ld	iy, 0
	cp	a, 6
	jp	nc, .LBB58_12
; %bb.2:
	lea	de, iy + 0
	ld	(ix - 11), a                    ; 1-byte Folded Spill
	ld	e, a
	ld	hl, JTI58_0
	add	hl, de
	add	hl, de
	ld	(ix - 10), de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB58_3
.LBB58_3:
	push	iy
	push	bc
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB58_12
; %bb.4:
	ld	hl, _UPGRADE_DEFS+18
	ld	(ix - 14), hl
	ld	de, 64
	or	a, a
	sbc	hl, hl
	.local	.LBB58_5
.LBB58_5:                               ; =>This Inner Loop Header: Depth=1
	push	hl
	pop	bc
	or	a, a
	sbc	hl, de
	jp	z, .LBB58_16
; %bb.6:                                ;   in Loop: Header=BB58_5 Depth=1
	ld	hl, (ix - 14)
	ld	a, (hl)
	ld	l, -13
	add	a, l
	ld	l, a
	cp	a, 2
	jr	nc, .LBB58_8
; %bb.7:                                ;   in Loop: Header=BB58_5 Depth=1
	ld	hl, (ix + 6)
	push	bc
	pop	de
	add	hl, de
	ld	de, 890
	add	hl, de
	ld	hl, (hl)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB58_12
	.local	.LBB58_8
.LBB58_8:                               ;   in Loop: Header=BB58_5 Depth=1
	ld	iy, (ix - 14)
	lea	iy, iy + 20
	ld	(ix - 14), iy
	push	bc
	pop	hl
	ld	bc, 2
	add	hl, bc
	ld	de, 64
	jr	.LBB58_5
	.local	.LBB58_9
.LBB58_9:
	ld	hl, 3
	jp	.LBB58_15
	.local	.LBB58_10
.LBB58_10:
	ld	de, 1018
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 32768
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	de, 1038
	ld	iy, (ix + 6)
	add	iy, de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jr	z, .LBB58_12
; %bb.11:
	ld	hl, (iy)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ld	a, 0
	jp	z, .LBB58_16
	jp	.LBB58_17
	.local	.LBB58_12
.LBB58_12:
	xor	a, a
	jp	.LBB58_17
	.local	.LBB58_13
.LBB58_13:
	ld	de, 954
	push	bc
	pop	hl
	add	hl, de
	ld	hl, (hl)
	ld.sis	de, 10
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	a, d
	jr	nc, .LBB58_16
	jp	.LBB58_17
	.local	.LBB58_14
.LBB58_14:
	ld	hl, 1
	.local	.LBB58_15
.LBB58_15:
	push	hl
	push	bc
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jp	z, .LBB58_17
	.local	.LBB58_16
.LBB58_16:                              ; %.loopexit
	lea	hl, ix - 7
	ld	(ix - 14), hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZL17restore_challengeR9GameState
	pop	hl
	ld	hl, 1
	ld	c, (ix - 11)                    ; 1-byte Folded Reload
	call	__ishl
	push	hl
	pop	bc
	ld	de, 1048
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
                                        ; kill: def $bc killed $bc killed $ubc
	call	__sor
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (ix - 10)
	ld	bc, 5
	call	__imulu
	ld	de, 5
	add	hl, de
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix - 14)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 14)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	a, 1
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB58_17
.LBB58_17:                              ; %.loopexit2
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end58
.Lfunc_end58:
	.size	__Z21game_finish_challengeR9GameState, .Lfunc_end58-__Z21game_finish_challengeR9GameState
	.section	.rodata.__Z21game_finish_challengeR9GameState,"a",@progbits
JTI58_0:
	d24	.LBB58_3
	d24	.LBB58_14
	d24	.LBB58_10
	d24	.LBB58_14
	d24	.LBB58_13
	d24	.LBB58_9
                                        ; -- End function
	.section	.text.__ZL17restore_challengeR9GameState,"ax",@progbits
	.type	__ZL17restore_challengeR9GameState,@function ; -- Begin function _ZL17restore_challengeR9GameState
__ZL17restore_challengeR9GameState:     ; @_ZL17restore_challengeR9GameState
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	iy, (ix + 6)
	lea	de, iy + 2
	ld	bc, 1052
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, 444
	ldir
	ld	de, 446
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, 1496
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 444
	ldir
	ld	de, 890
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, 1940
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 128
	ldir
	ld	de, 1026
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, 2068
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 10
	ldir
	ld	bc, 2078
	ld	de, (ix + 6)
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 9), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	bc, 1018
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	bc, (ix - 9)
	ld	(hl), bc
	lea	hl, iy + 6
	ld	bc, (ix - 6)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	bc, 2086
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (iy)
	ld	bc, 1036
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	bc, 2088
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (iy)
	ld	bc, 1038
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	bc, 2090
	push	de
	pop	iy
	add	iy, bc
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	hl, 1044
	push	de
	pop	iy
	ex	de, hl
	add	iy, de
	ld	(iy), bc
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2094
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 1048
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2096
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	de, 1040
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	de, 2097
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	de, 1041
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	de, 2098
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	de, 1042
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	de, 2099
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	de, 1043
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	de, 2248
	push	bc
	pop	hl
	add	hl, de
	ld	de, 2100
	push	bc
	pop	iy
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 40
	ldir
	ld	de, 2288
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, 2140
	add	iy, de
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 60
	ldir
	ld	de, 2200
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, 2348
	add	iy, de
	lea	de, iy + 0
	ld	bc, 6
	ldir
	ld	de, 2206
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2354
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2210
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2358
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2214
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2362
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2218
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2366
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2222
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2378
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2226
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2382
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2228
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2384
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2230
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2386
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2232
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2388
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2234
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2390
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2236
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2392
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2238
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2400
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2240
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2402
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2242
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2394
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2244
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2396
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2246
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	de, 2398
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1050
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), -1
	inc	de
	push	bc
	pop	hl
	add	hl, de
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 1196
	lea	de, iy + 0
	ldir
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end59
.Lfunc_end59:
	.size	__ZL17restore_challengeR9GameState, .Lfunc_end59-__ZL17restore_challengeR9GameState
                                        ; -- End function
	.section	.text.__Z22game_abandon_challengeR9GameState,"ax",@progbits
	.globl	__Z22game_abandon_challengeR9GameState ; -- Begin function _Z22game_abandon_challengeR9GameState
	.type	__Z22game_abandon_challengeR9GameState,@function
__Z22game_abandon_challengeR9GameState: ; @_Z22game_abandon_challengeR9GameState
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	de, 1051
	lea	hl, iy + 0
	add	hl, de
	bit	0, (hl)
	push	iy
	call	nz, __ZL17restore_challengeR9GameState
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end60
.Lfunc_end60:
	.size	__Z22game_abandon_challengeR9GameState, .Lfunc_end60-__Z22game_abandon_challengeR9GameState
                                        ; -- End function
	.section	.text.__Z10input_initR10InputState,"ax",@progbits
	.globl	__Z10input_initR10InputState    ; -- Begin function _Z10input_initR10InputState
	.type	__Z10input_initR10InputState,@function
__Z10input_initR10InputState:           ; @_Z10input_initR10InputState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	(hl), 0
	ld	iy, (ix + 6)
	inc	iy
	ld	bc, 15
	lea	de, iy + 0
	ldir
	call	_kb_Scan
	ld	iy, (ix + 6)
	lea	iy, iy + 9
	ld	de, 16
	ld	bc, 2
	.local	.LBB61_1
.LBB61_1:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	z, .LBB61_3
; %bb.2:                                ;   in Loop: Header=BB61_1 Depth=1
	ld	hl, -720880
	add	hl, bc
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	a, l
	ld	(iy - 8), a
	ld	(iy), a
	push	bc
	pop	hl
	ld	bc, 2
	add	hl, bc
	inc	iy
	push	hl
	pop	bc
	jr	.LBB61_1
	.local	.LBB61_3
.LBB61_3:
	pop	ix
	ret
	.local	.Lfunc_end61
.Lfunc_end61:
	.size	__Z10input_initR10InputState, .Lfunc_end61-__Z10input_initR10InputState
                                        ; -- End function
	.section	.text.__Z10input_scanR10InputState,"ax",@progbits
	.globl	__Z10input_scanR10InputState    ; -- Begin function _Z10input_scanR10InputState
	.type	__Z10input_scanR10InputState,@function
__Z10input_scanR10InputState:           ; @_Z10input_scanR10InputState
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, -720878
	ld	(ix - 3), hl
	ld	hl, (iy)
	ld	de, (iy + 3)
	ld	bc, (iy + 6)
	ld	(iy + 8), hl
	ld	(iy + 11), de
	ld	(iy + 14), c
	ld	(iy + 15), b
	call	_kb_Scan
	ld	bc, 1
	ld	de, 8
	.local	.LBB62_1
.LBB62_1:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	z, .LBB62_3
; %bb.2:                                ;   in Loop: Header=BB62_1 Depth=1
	ld	iy, (ix - 3)
	ld	l, (iy)
	ld	h, (iy + 1)
	lea	de, iy + 0
	ld	a, l
	ld	iy, (ix + 6)
	add	iy, bc
	ld	(iy), a
	inc	bc
	push	de
	pop	iy
	ld	de, 8
	lea	iy, iy + 2
	ld	(ix - 3), iy
	jr	.LBB62_1
	.local	.LBB62_3
.LBB62_3:
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end62
.Lfunc_end62:
	.size	__Z10input_scanR10InputState, .Lfunc_end62-__Z10input_scanR10InputState
                                        ; -- End function
	.section	.text.__Z10input_downRK10InputStatehh,"ax",@progbits
	.globl	__Z10input_downRK10InputStatehh ; -- Begin function _Z10input_downRK10InputStatehh
	.type	__Z10input_downRK10InputStatehh,@function
__Z10input_downRK10InputStatehh:        ; @_Z10input_downRK10InputStatehh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 8
	jr	nc, .LBB63_3
; %bb.1:
	ld	hl, (ix + 6)
	ld	c, (ix + 12)
	ld	de, 0
	ld	e, a
	add	hl, de
	ld	a, (hl)
	and	a, c
	ld	l, a
	or	a, a
	jr	nz, .LBB63_4
; %bb.2:
	ld	a, 0
	jr	.LBB63_5
	.local	.LBB63_3
.LBB63_3:
	xor	a, a
	jr	.LBB63_5
	.local	.LBB63_4
.LBB63_4:
	ld	a, -1
	.local	.LBB63_5
.LBB63_5:
	pop	ix
	ret
	.local	.Lfunc_end63
.Lfunc_end63:
	.size	__Z10input_downRK10InputStatehh, .Lfunc_end63-__Z10input_downRK10InputStatehh
                                        ; -- End function
	.section	.text.__Z13input_pressedRK10InputStatehh,"ax",@progbits
	.globl	__Z13input_pressedRK10InputStatehh ; -- Begin function _Z13input_pressedRK10InputStatehh
	.type	__Z13input_pressedRK10InputStatehh,@function
__Z13input_pressedRK10InputStatehh:     ; @_Z13input_pressedRK10InputStatehh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	ld	l, 0
	ld	de, 0
	cp	a, 8
	jr	nc, .LBB64_5
; %bb.1:
	ld	iy, (ix + 6)
	ld	c, (ix + 12)
	ld	e, a
	add	iy, de
	ld	a, (iy)
	and	a, c
	ld	e, a
	or	a, a
	jr	z, .LBB64_5
; %bb.2:
	ld	a, (iy + 8)
	and	a, c
	ld	l, a
	or	a, a
	jr	z, .LBB64_4
; %bb.3:
	ld	l, 0
	jr	.LBB64_5
	.local	.LBB64_4
.LBB64_4:
	ld	l, -1
	.local	.LBB64_5
.LBB64_5:
	ld	a, l
	pop	ix
	ret
	.local	.Lfunc_end64
.Lfunc_end64:
	.size	__Z13input_pressedRK10InputStatehh, .Lfunc_end64-__Z13input_pressedRK10InputStatehh
                                        ; -- End function
	.section	.text.__Z14input_releasedRK10InputStatehh,"ax",@progbits
	.globl	__Z14input_releasedRK10InputStatehh ; -- Begin function _Z14input_releasedRK10InputStatehh
	.type	__Z14input_releasedRK10InputStatehh,@function
__Z14input_releasedRK10InputStatehh:    ; @_Z14input_releasedRK10InputStatehh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	ld	l, 0
	ld	de, 0
	cp	a, 8
	jr	nc, .LBB65_5
; %bb.1:
	ld	iy, (ix + 6)
	ld	c, (ix + 12)
	ld	e, a
	add	iy, de
	ld	a, (iy)
	and	a, c
	ld	e, a
	or	a, a
	jr	nz, .LBB65_5
; %bb.2:
	ld	a, (iy + 8)
	and	a, c
	ld	l, a
	or	a, a
	jr	nz, .LBB65_4
; %bb.3:
	ld	l, 0
	jr	.LBB65_5
	.local	.LBB65_4
.LBB65_4:
	ld	l, -1
	.local	.LBB65_5
.LBB65_5:
	ld	a, l
	pop	ix
	ret
	.local	.Lfunc_end65
.Lfunc_end65:
	.size	__Z14input_releasedRK10InputStatehh, .Lfunc_end65-__Z14input_releasedRK10InputStatehh
                                        ; -- End function
	.section	.text.__Z15leaf_field_initR9LeafFieldR9GameState,"ax",@progbits
	.globl	__Z15leaf_field_initR9LeafFieldR9GameState ; -- Begin function _Z15leaf_field_initR9LeafFieldR9GameState
	.type	__Z15leaf_field_initR9LeafFieldR9GameState,@function
__Z15leaf_field_initR9LeafFieldR9GameState: ; @_Z15leaf_field_initR9LeafFieldR9GameState
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 6)
	ld	de, 11
	ld	bc, 864
	lea	hl, iy + 0
	add	hl, bc
	ld.sis	bc, 2560
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	bc, 866
	lea	hl, iy + 0
	add	hl, bc
	ld.sis	bc, 2080
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	bc, 868
	lea	hl, iy + 0
	add	hl, bc
	ld	(hl), 1
	inc	bc
	lea	hl, iy + 0
	add	hl, bc
	ld	(hl), d
	inc	bc
	lea	hl, iy + 0
	add	hl, bc
	ld	(hl), d
	ld	bc, 872
	add	iy, bc
	ld.sis	bc, 0
	ld	(iy), c
	ld	(iy + 1), b
	ld	bc, 875
	.local	.LBB66_1
.LBB66_1:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB66_3
; %bb.2:                                ;   in Loop: Header=BB66_1 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), 0
	ex	de, hl
	ld	de, 12
	add	hl, de
	ex	de, hl
	jr	.LBB66_1
	.local	.LBB66_3
.LBB66_3:
	ld	hl, 4
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	a, h
                                        ; kill: def $l killed $l killed $hl
	srl	a
	rr	l
                                        ; kill: def $l killed $l def $hl
	ld	h, a
	ld	e, 24
	ld	a, l
	add	a, e
	ld	e, a
	cp	a, 72
	jr	c, .LBB66_5
; %bb.4:
	ld	e, 72
	.local	.LBB66_5
.LBB66_5:
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	bc, 12
	call	__imulu
	ex	de, hl
	ld	bc, 0
	.local	.LBB66_6
.LBB66_6:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB66_8
; %bb.7:                                ;   in Loop: Header=BB66_6 Depth=1
	ld	(ix - 3), de
	ld	de, (ix + 6)
	push	de
	pop	hl
	add	hl, bc
	push	hl
	ld	hl, (ix + 9)
	push	hl
	push	de
	ld	(ix - 6), bc
	call	__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 6)
	ld	de, 12
	add	hl, de
	ld	de, (ix - 3)
	push	hl
	pop	bc
	jr	.LBB66_6
	.local	.LBB66_8
.LBB66_8:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end66
.Lfunc_end66:
	.size	__Z15leaf_field_initR9LeafFieldR9GameState, .Lfunc_end66-__Z15leaf_field_initR9LeafFieldR9GameState
                                        ; -- End function
	.section	.text.__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle,"ax",@progbits
	.type	__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle,@function ; -- Begin function _ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle: ; @_ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 9)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 304
	xor	a, a
	call	__lremu
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld.sis	de, 128
	add.sis	hl, de
	ld	iy, (ix + 12)
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (ix + 9)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 198
	xor	a, a
	call	__lremu
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld.sis	de, 480
	add.sis	hl, de
	ld	iy, (ix + 12)
	ld	(iy + 2), l
	ld	(iy + 3), h
	ld	hl, (ix + 9)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 17
	xor	a, a
	call	__lremu
	ld.sis	de, -8
	add.sis	hl, de
	ld	iy, (ix + 12)
	ld	(iy + 4), l
	ld	(iy + 5), h
	ld	hl, (ix + 9)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 17
	xor	a, a
	call	__lremu
	ld.sis	de, -8
	add.sis	hl, de
	ld	iy, (ix + 12)
	ld	(iy + 6), l
	ld	(iy + 7), h
	ld	hl, (ix + 9)
	push	hl
	call	__ZL20choose_leaf_resourceR9GameState
	pop	hl
	ld	hl, (ix + 12)
	push	hl
	pop	iy
	ld	(iy + 8), a
	lea	bc, iy + 0
	or	a, a
	sbc	hl, hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	iy, _RESOURCE_DEFS
	add	iy, de
	ld	a, (iy + 6)
	push	bc
	pop	iy
	ld	(iy + 9), a
	ld	hl, (ix + 9)
	push	hl
	call	__Z9game_randR9GameState
	pop	de
	ld	de, 872
	ld	iy, (ix + 6)
	add	iy, de
	ld	e, (iy)
	ld	a, l
	add	a, e
	ld	l, a
	ld	iy, (ix + 12)
	ld	(iy + 10), l
	ld	(iy + 11), 1
	pop	ix
	ret
	.local	.Lfunc_end67
.Lfunc_end67:
	.size	__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle, .Lfunc_end67-__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
                                        ; -- End function
	.section	.text.__ZL20choose_leaf_resourceR9GameState,"ax",@progbits
	.type	__ZL20choose_leaf_resourceR9GameState,@function ; -- Begin function _ZL20choose_leaf_resourceR9GameState
__ZL20choose_leaf_resourceR9GameState:  ; @_ZL20choose_leaf_resourceR9GameState
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	hl, (ix + 6)
	ld	iy, _AREA_DEFS
	ld	de, 1040
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	l, (iy + 3)
	cp	a, 2
	jr	nz, .LBB68_4
; %bb.1:
	ld	(ix - 1), l                     ; 1-byte Folded Spill
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	de
	ld	e, 3
	ld	a, l
	and	a, e
	ld	l, a
	or	a, a
	jr	z, .LBB68_3
; %bb.2:
	ld	l, (ix - 1)                     ; 1-byte Folded Reload
	jr	.LBB68_4
	.local	.LBB68_3
.LBB68_3:
	ld	l, 3
	.local	.LBB68_4
.LBB68_4:
	ld	a, l
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end68
.Lfunc_end68:
	.size	__ZL20choose_leaf_resourceR9GameState, .Lfunc_end68-__ZL20choose_leaf_resourceR9GameState
                                        ; -- End function
	.section	.text.__Z22leaf_field_change_areaR9LeafFieldR9GameState,"ax",@progbits
	.globl	__Z22leaf_field_change_areaR9LeafFieldR9GameState ; -- Begin function _Z22leaf_field_change_areaR9LeafFieldR9GameState
	.type	__Z22leaf_field_change_areaR9LeafFieldR9GameState,@function
__Z22leaf_field_change_areaR9LeafFieldR9GameState: ; @_Z22leaf_field_change_areaR9LeafFieldR9GameState
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	de, 0
	.local	.LBB69_1
.LBB69_1:                               ; =>This Inner Loop Header: Depth=1
	ld	bc, 864
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB69_5
; %bb.2:                                ;   in Loop: Header=BB69_1 Depth=1
	ld	iy, (ix + 6)
	add	iy, de
	ld	(ix - 3), iy
	bit	0, (iy + 11)
	push	de
	pop	bc
	jr	z, .LBB69_4
; %bb.3:                                ;   in Loop: Header=BB69_1 Depth=1
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 6), bc
	call	__ZL20choose_leaf_resourceR9GameState
	ld	bc, (ix - 6)
	pop	hl
	ld	iy, (ix - 3)
	ld	(iy + 8), a
	or	a, a
	sbc	hl, hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	iy, _RESOURCE_DEFS
	add	iy, de
	ld	a, (iy + 6)
	ld	iy, (ix - 3)
	ld	(iy + 9), a
	.local	.LBB69_4
.LBB69_4:                               ;   in Loop: Header=BB69_1 Depth=1
	push	bc
	pop	hl
	ld	bc, 12
	add	hl, bc
	ex	de, hl
	jr	.LBB69_1
	.local	.LBB69_5
.LBB69_5:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end69
.Lfunc_end69:
	.size	__Z22leaf_field_change_areaR9LeafFieldR9GameState, .Lfunc_end69-__Z22leaf_field_change_areaR9LeafFieldR9GameState
                                        ; -- End function
	.section	.text.__Z17leaf_field_updateR9LeafFieldR9GameStateaab,"ax",@progbits
	.globl	__Z17leaf_field_updateR9LeafFieldR9GameStateaab ; -- Begin function _Z17leaf_field_updateR9LeafFieldR9GameStateaab
	.type	__Z17leaf_field_updateR9LeafFieldR9GameStateaab,@function
__Z17leaf_field_updateR9LeafFieldR9GameStateaab: ; @_Z17leaf_field_updateR9LeafFieldR9GameStateaab
; %bb.0:
	ld	hl, -52
	call	__frameset
	ld	iy, (ix + 6)
	ld	bc, (ix + 9)
	ld	de, 872
	add	iy, de
	ld	hl, (iy)
	inc.sis	hl
	ld	(ix - 35), iy
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, 2
	push	hl
	push	bc
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld.sis	bc, 3
	call	__smulu
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld.sis	de, 24
	add.sis	iy, de
	push	iy
	ex	(sp), hl
	ld	(ix - 12), l
	ld	(ix - 11), h
	pop	hl
	ld	a, (ix + 12)
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	c, l
	ld	b, h
	ld	c, a
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	call	__smulu
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld	de, 864
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	add.sis	iy, de
	push	iy
	ex	(sp), hl
	ld	(ix - 9), l
	ld	(ix - 8), h
	pop	hl
	ld	(ix - 24), hl
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	l, (ix + 15)
	ld	a, l
	rlc	a
	ld	a, l
	sbc.sis	hl, hl
	ld	c, l
	ld	b, h
	ld	c, a
	ld	l, (ix - 12)
	ld	h, (ix - 11)
	call	__smulu
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld	de, 866
	ld	hl, (ix + 6)
	add	hl, de
	ld	bc, (hl)
	add.sis	iy, bc
	ld	(ix - 27), hl
	ld	c, iyl
	ld	b, iyh
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld.sis	de, 128
	ld	l, (ix - 9)
	ld	h, (ix - 8)
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	or	a, a
	sbc.sis	hl, de
	call	pe, __setflag
	jp	p, .LBB70_2
; %bb.1:
	ld.sis	iy, 128
	jr	.LBB70_4
	.local	.LBB70_2
.LBB70_2:
	ld.sis	de, 4977
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB70_5
; %bb.3:
	ld.sis	iy, 4976
	.local	.LBB70_4
.LBB70_4:
	ld	hl, (ix + 6)
	ld	de, 864
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	.local	.LBB70_5
.LBB70_5:
	ld.sis	de, 480
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	call	pe, __setflag
	jp	p, .LBB70_7
; %bb.6:
	ld.sis	iy, 480
	ld	e, (ix + 12)
	jr	.LBB70_9
	.local	.LBB70_7
.LBB70_7:
	ld.sis	de, 3697
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	e, (ix + 12)
	jr	c, .LBB70_10
; %bb.8:
	ld.sis	iy, 3696
	.local	.LBB70_9
.LBB70_9:
	ld	hl, (ix + 6)
	ld	bc, 866
	add	hl, bc
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	.local	.LBB70_10
.LBB70_10:
	ld	h, a
	ld	a, h
	or	a, e
	ld	l, a
	or	a, a
	ld	bc, 868
	jr	z, .LBB70_12
; %bb.11:
	ld	iy, (ix + 6)
	ld	a, h
	lea	hl, iy + 0
	add	hl, bc
	ld	(hl), e
	lea	hl, iy + 0
	ld	de, 869
	add	hl, de
	ld	(hl), a
	.local	.LBB70_12
.LBB70_12:
	ld	hl, 4
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	a, h
                                        ; kill: def $l killed $l killed $hl
	srl	a
	rr	l
                                        ; kill: def $l killed $l def $hl
	ld	h, a
	ld	e, 24
	ld	a, l
	add	a, e
	ld	e, a
	cp	a, 72
	jr	c, .LBB70_14
; %bb.13:
	ld	e, 72
	.local	.LBB70_14
.LBB70_14:
	ld	bc, 870
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, bc
	inc	(hl)
	ld	a, (hl)
	cp	a, 15
	jr	c, .LBB70_23
; %bb.15:
	ld	(ix - 12), e                    ; 1-byte Folded Spill
	lea	hl, iy + 0
	add	hl, bc
	ld	(hl), 0
	ld	iy, 875
	ld	bc, 11
	ld	d, b
	ld	(ix - 9), d                     ; 1-byte Folded Spill
	.local	.LBB70_16
.LBB70_16:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	lea	de, iy + 0
	or	a, a
	sbc	hl, de
	jr	z, .LBB70_18
; %bb.17:                               ;   in Loop: Header=BB70_16 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	ld	a, (hl)
	ld	l, (ix - 9)
	add	a, l
	ld	l, a
	ld	(ix - 9), l
	push	bc
	pop	hl
	ld	bc, 12
	add	hl, bc
	push	hl
	pop	bc
	jr	.LBB70_16
	.local	.LBB70_18
.LBB70_18:
	ld	a, (ix - 9)                     ; 1-byte Folded Reload
	ld	l, (ix - 12)
	cp	a, l
	jr	nc, .LBB70_23
; %bb.19:
	ld	bc, 0
	.local	.LBB70_20
.LBB70_20:                              ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	de
	push	de
	pop	hl
	ld	bc, 864
	or	a, a
	sbc	hl, bc
	jr	z, .LBB70_23
; %bb.21:                               ;   in Loop: Header=BB70_20 Depth=1
	ld	iy, (ix + 6)
	add	iy, de
	push	de
	pop	hl
	ld	bc, 12
	add	hl, bc
	bit	0, (iy + 11)
	ld	iy, (ix + 6)
	push	hl
	pop	bc
	jr	nz, .LBB70_20
; %bb.22:
	lea	hl, iy + 0
	add	hl, de
	push	hl
	ld	hl, (ix + 9)
	push	hl
	push	iy
	call	__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB70_23
.LBB70_23:                              ; %.loopexit
	ld	de, 1041
	ld	hl, (ix + 9)
	push	hl
	pop	bc
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl, _TOOL_DEFS
	push	hl
	pop	iy
	add	iy, de
	ld	(ix - 9), iy
	ld	a, (iy + 14)
	or	a, a
	sbc	hl, hl
	ex	de, hl
	ld	e, a
	ld	(ix - 12), de
	ld	hl, 1
	push	hl
	push	bc
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	bc, 0
	push	bc
	pop	de
	ld	e, l
	ld	d, h
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	pop	iy
	ld	hl, (ix - 12)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	add	iy, de
	ld	a, c
	ld	(ix - 12), a
	lea	hl, iy + 0
	ld	e, a
	lea	bc, iy + 0
	call	__lmulu
	ld	(ix - 38), hl
	ld	(ix - 39), e                    ; 1-byte Folded Spill
	ld	iy, (ix - 9)
	ld	hl, (iy + 10)
	ld	e, (iy + 13)
	ld	bc, 120
	xor	a, a
	call	__ldivu
	ld	(ix - 9), hl
	ld	(ix - 15), e                    ; 1-byte Folded Spill
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	iy, 0
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	add	iy, iy
	ld	hl, (ix - 9)
	ld	e, (ix - 15)                    ; 1-byte Folded Reload
	lea	bc, iy + 0
	ld	a, (ix - 12)                    ; 1-byte Folded Reload
	call	__ladd
	ld	(ix - 42), hl
	ld	hl, 13
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ld	(ix - 32), l
	ld	(ix - 31), h
	pop	hl
	pop	hl
	ld	bc, 792
	ld	hl, (ix + 6)
	ld	(ix - 9), hl
	ld	iy, 0
	lea	hl, iy + 0
	.local	.LBB70_24
.LBB70_24:                              ; =>This Inner Loop Header: Depth=1
	push	hl
	pop	de
	or	a, a
	sbc	hl, bc
	jp	z, .LBB70_56
; %bb.25:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	iy, (ix - 9)
	bit	0, (iy + 11)
	ex	de, hl
	jp	z, .LBB70_47
; %bb.26:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	(ix - 30), hl
	ld	iy, (ix - 9)
	inc	(iy + 10)
	ld	a, (iy + 10)
	ld	(ix - 12), a
	ld	b, 4
	call	__bshru
	ld	h, 3
	and	a, h
	ld	e, a
	dec	e
	ld	a, e
	rlc	a
	sbc	a, a
	ld	iyl, 7
	ld	b, iyl
	call	__bshru
	ld	c, a
	ld	a, e
	add	a, c
	ld	e, a
	sra	e
	ld	iy, (ix - 9)
	ld	hl, (iy + 4)
	ld	d, 0
	add.sis	hl, de
	ld	(ix - 21), hl
	ld	iy, (ix - 9)
	ld	(iy + 4), l
	ld	(iy + 5), h
	ld	a, (ix - 12)                    ; 1-byte Folded Reload
	ld	b, 5
	call	__bshru
	ld	l, 3
	and	a, l
	ld	l, a
	dec	l
	ld	a, l
	rlc	a
	sbc	a, a
	ld	b, 7
	call	__bshru
	ld	c, a
	ld	a, l
	add	a, c
	ld	e, a
	sra	e
	ld	iy, (ix - 9)
	ld	hl, (iy + 6)
	add.sis	hl, de
	ld	(ix - 18), hl
	ld	(iy + 6), l
	ld	(iy + 7), h
	ld	bc, (iy)
	ld	a, b
	rlc	a
	sbc	hl, hl
	ex	de, hl
	ld	(ix - 12), bc
	ld	e, c
	ld	d, b
	ld	hl, (ix - 24)
	ld	iy, (hl)
	ld	a, iyh
	rlc	a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, iyl
	ld	b, iyh
	ex	de, hl
	or	a, a
	sbc	hl, bc
	ld	(ix - 45), hl
	ld	iy, (ix - 9)
	ld	bc, (iy + 2)
	ld	a, b
	rlc	a
	sbc	hl, hl
	ex	de, hl
	ld	(ix - 15), bc
	ld	e, c
	ld	d, b
	ld	hl, (ix - 27)
	ld	iy, (hl)
	ld	a, iyh
	rlc	a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, iyl
	ld	b, iyh
	ex	de, hl
	or	a, a
	sbc	hl, bc
	bit	0, (ix + 18)
	jr	z, .LBB70_28
; %bb.27:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	(ix - 6), hl
	ld	a, (ix - 4)
	rlc	a
	sbc	a, a
	push	hl
	pop	iy
	ld	d, a
	ld	bc, (ix - 45)
	ld	(ix - 3), bc
	ld	a, (ix - 1)
	rlc	a
	sbc	a, a
	push	bc
	pop	hl
	ld	e, a
	call	__lmulu
	ld	(ix - 48), hl
	ld	(ix - 49), e                    ; 1-byte Folded Spill
	lea	hl, iy + 0
	ld	e, d
	ld	(ix - 52), iy
	lea	bc, iy + 0
	ld	a, d
	call	__lmulu
	ld	bc, (ix - 48)
	ld	a, (ix - 49)                    ; 1-byte Folded Reload
	call	__ladd
	push	hl
	pop	bc
	ld	a, e
	ld	hl, (ix - 38)
	ld	e, (ix - 39)                    ; 1-byte Folded Reload
	call	__lcmpu
	jp	nc, .LBB70_48
	.local	.LBB70_28
.LBB70_28:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	iy, (ix - 30)
	.local	.LBB70_29
.LBB70_29:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	l, (ix - 32)
	ld	h, (ix - 31)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	z, .LBB70_40
; %bb.30:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 35)
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	lea	hl, iy + 0
	add	hl, de
	ld	bc, 90
	call	__idivu
	call	__imulu
	push	hl
	pop	bc
	ex	de, hl
	or	a, a
	sbc	hl, bc
	ex	de, hl
	add	iy, de
	ld	(ix - 45), iy
	ld	hl, 13
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	hl, (ix - 45)
	or	a, a
	sbc	hl, de
	jp	nc, .LBB70_40
; %bb.31:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 12)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 2560
	or	a, a
	sbc.sis	hl, de
	call	pe, __setflag
	ld	a, -1
	jp	m, .LBB70_33
; %bb.32:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	a, 0
	.local	.LBB70_33
.LBB70_33:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	(ix - 45), a
	ld	hl, 14
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	d, (ix - 45)                    ; 1-byte Folded Reload
	push	hl
	pop	bc
	ld	a, e
	pop	hl
	pop	hl
	push	bc
	pop	hl
	call	__lneg
	bit	0, d
	jr	nz, .LBB70_35
; %bb.34:                               ;   in Loop: Header=BB70_24 Depth=1
	push	bc
	pop	hl
	.local	.LBB70_35
.LBB70_35:                              ;   in Loop: Header=BB70_24 Depth=1
	bit	0, d
	ld	iy, (ix - 15)
	jr	nz, .LBB70_37
; %bb.36:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	e, a
	.local	.LBB70_37
.LBB70_37:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	bc, 100
	xor	a, a
	call	__ldivu
	ex	de, hl
	ld	hl, (ix - 21)
	add.sis	hl, de
	ld	(ix - 21), hl
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	de, 2080
	or	a, a
	sbc.sis	hl, de
	call	pe, __setflag
	ld.sis	de, -2
	jp	m, .LBB70_39
; %bb.38:                               ;   in Loop: Header=BB70_24 Depth=1
	ld.sis	de, 2
	.local	.LBB70_39
.LBB70_39:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 18)
	add.sis	hl, de
	ld	(ix - 18), hl
	.local	.LBB70_40
.LBB70_40:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	de, (ix - 21)
	ld	a, d
	rlc	a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	ld	de, 15
	push	de
	pop	bc
	call	__imulu
	push	hl
	pop	iy
	add	hl, hl
	sbc	hl, hl
	ld	a, 20
	ld	c, a
	call	__ishru
	ex	de, hl
	add	iy, de
	lea	hl, iy + 0
	ld	e, 4
	ld	c, e
	call	__ishrs
	ld	(ix - 21), hl
	ld	iy, (ix - 9)
	ld	(iy + 4), l
	ld	(iy + 5), h
	ld	bc, (ix - 18)
	ld	a, b
	rlc	a
	sbc	hl, hl
	ld	l, c
	ld	h, b
	ld	bc, 15
	call	__imulu
	push	hl
	pop	iy
	add	hl, hl
	sbc	hl, hl
	ld	c, 20
	call	__ishru
	push	hl
	pop	bc
	add	iy, bc
	lea	hl, iy + 0
	ld	c, e
	call	__ishrs
	push	hl
	pop	bc
	ld	iy, (ix - 9)
	ld	(iy + 6), c
	ld	(iy + 7), b
	ld	iy, (ix - 12)
	ld	de, (ix - 21)
	add.sis	iy, de
	ld	hl, (ix - 9)
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	lea	de, iy + 0
	ld	hl, (ix - 15)
	add.sis	hl, bc
	ld	iy, (ix - 9)
	ld	(iy + 2), l
	ld	(iy + 3), h
	ld	(ix - 12), de
	ld	iyl, e
	ld	iyh, d
	ld.sis	de, -5185
	add.sis	iy, de
	ld	(ix - 15), hl
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, -3905
	add.sis	hl, de
	ld.sis	de, -3585
	or	a, a
	sbc.sis	hl, de
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	e, a
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, -5249
	or	a, a
	sbc.sis	hl, bc
                                        ; kill: def $a killed $a
	sbc	a, a
	or	a, e
	ld	e, a
	ld	hl, (ix + 9)
	ld	bc, 1040
	add	hl, bc
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	push	hl
	pop	bc
	ld	iy, _AREA_DEFS
	add	iy, bc
	ld	a, (iy + 3)
	cp	a, 57
	jp	nz, .LBB70_44
; %bb.41:                               ;   in Loop: Header=BB70_24 Depth=1
	ld.sis	bc, -4448
	ld	hl, (ix - 12)
	add.sis	hl, bc
	ld.sis	bc, -1040
	ld	iy, (ix - 15)
	add.sis	iy, bc
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 609
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix + 6)
	jr	nc, .LBB70_45
; %bb.42:                               ;   in Loop: Header=BB70_24 Depth=1
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	push	bc
	pop	iy
	ld.sis	bc, 2129
	or	a, a
	sbc.sis	hl, bc
	lea	bc, iy + 0
	jr	nc, .LBB70_45
; %bb.43:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 9)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	push	bc
	call	__ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle
	jr	.LBB70_46
	.local	.LBB70_44
.LBB70_44:                              ;   in Loop: Header=BB70_24 Depth=1
	bit	0, e
	ld	hl, (ix + 6)
	ld	de, (ix - 9)
	push	de
	ld	de, (ix + 9)
	push	de
	push	hl
	call	nz, __ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle
	jr	.LBB70_46
	.local	.LBB70_45
.LBB70_45:                              ;   in Loop: Header=BB70_24 Depth=1
	bit	0, e
	ld	hl, (ix - 9)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	push	bc
	call	nz, __ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
	.local	.LBB70_46
.LBB70_46:                              ;   in Loop: Header=BB70_24 Depth=1
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 30)
	ld	bc, 792
	.local	.LBB70_47
.LBB70_47:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	de, 11
	add	hl, de
	ld	iy, (ix - 9)
	lea	iy, iy + 12
	ld	(ix - 9), iy
	jp	.LBB70_24
	.local	.LBB70_48
.LBB70_48:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	ld	de, 868
	add	hl, de
	ld	a, (hl)
	ld	l, a
	rlc	l
	sbc.sis	hl, hl
	ld	c, l
	ld	b, h
	ld	c, a
	ld	hl, (ix - 42)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__smulu
	ex.sis	de, hl
	ld	hl, (ix - 21)
	add.sis	hl, de
	ld	iy, (ix - 9)
	ld	(ix - 21), hl
	ld	(iy + 4), l
	ld	(iy + 5), h
	ld	hl, (ix + 6)
	ld	de, 869
	add	hl, de
	ld	e, (hl)
	ld	l, e
	rlc	l
	sbc.sis	hl, hl
	ld	c, l
	ld	b, h
	ld	c, e
	ld	hl, (ix - 42)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__smulu
	ld	c, l
	ld	b, h
	ld	hl, (ix - 18)
	add.sis	hl, bc
	ld	(ix - 18), hl
	ld	(iy + 6), l
	ld	(iy + 7), h
	or	a, a
	jr	nz, .LBB70_52
; %bb.49:                               ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 45)
	ld	bc, 1
	or	a, a
	sbc	hl, bc
	call	pe, __setflag
	inc.sis	bc
	jp	p, .LBB70_51
; %bb.50:                               ;   in Loop: Header=BB70_24 Depth=1
	ld.sis	bc, -2
	.local	.LBB70_51
.LBB70_51:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 21)
	add.sis	hl, bc
	ld	(ix - 21), hl
	ld	(iy + 4), l
	ld	(iy + 5), h
	.local	.LBB70_52
.LBB70_52:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	iy, (ix - 30)
	ld	a, e
	or	a, a
	jp	nz, .LBB70_29
; %bb.53:                               ;   in Loop: Header=BB70_24 Depth=1
	lea	bc, iy + 0
	ld	hl, (ix - 52)
	ld	de, 1
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	inc.sis	de
	jp	p, .LBB70_55
; %bb.54:                               ;   in Loop: Header=BB70_24 Depth=1
	ld.sis	de, -2
	.local	.LBB70_55
.LBB70_55:                              ;   in Loop: Header=BB70_24 Depth=1
	ld	hl, (ix - 18)
	add.sis	hl, de
	ld	iy, (ix - 9)
	ld	(ix - 18), hl
	ld	(iy + 6), l
	ld	(iy + 7), h
	push	bc
	pop	iy
	jp	.LBB70_29
	.local	.LBB70_56
.LBB70_56:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end70
.Lfunc_end70:
	.size	__Z17leaf_field_updateR9LeafFieldR9GameStateaab, .Lfunc_end70-__Z17leaf_field_updateR9LeafFieldR9GameStateaab
                                        ; -- End function
	.section	.text.__ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle,"ax",@progbits
	.type	__ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle,@function ; -- Begin function _ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle
__ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle: ; @_ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle
; %bb.0:
	ld	hl, -47
	call	__frameset
	ld	hl, (ix + 6)
	ld	(ix - 40), hl
	ld	de, (ix + 9)
	ld	(ix - 25), de
	ld	iy, (ix + 12)
	ld	(ix - 43), iy
	ld	a, (iy + 8)
	ld	(ix - 44), a
	ld	hl, 3
	push	hl
	push	de
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 31), hl
	pop	hl
	pop	hl
	xor	a, a
	ld	(ix - 22), a
	ld	hl, (ix - 24)
	ld	h, a
	ld	l, e
	ld	(ix - 34), hl
	sbc	hl, hl
	ld	(ix - 28), hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 25)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	a, e
	pop	de
	pop	de
	ld	c, 0
	ld	(ix - 21), c
	ld	de, (ix - 23)
	ld	d, c
	ld	e, a
	ld	iy, (ix - 28)
	push	iy
	ld	bc, (ix - 34)
	push	bc
	ld	bc, (ix - 31)
	push	bc
	ld	c, iyl
	ld	b, iyh
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	ld	iy, (ix - 25)
	ld	(ix - 31), hl
	pop	hl
	pop	hl
	pop	hl
	ld	a, e
	ld	de, 2400
	lea	hl, iy + 0
	add	hl, de
	ld	bc, (hl)
	ld	l, c
	ld	h, b
	ld.sis	de, 2
	or	a, a
	sbc.sis	hl, de
	ld	(ix - 34), a
	jr	c, .LBB71_2
; %bb.1:
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	h, b
	ld	(ix - 37), hl
	ld	hl, 5
	push	hl
	push	iy
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ex.sis	de, hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	add	hl, hl
	ld	de, 10
	add	hl, de
	ld	bc, (ix - 37)
	call	__imulu
	ld	de, 0
	ld	bc, (ix - 31)
	ld	a, (ix - 34)                    ; 1-byte Folded Reload
	call	__ladd
	ld	iy, (ix - 25)
	ld	(ix - 31), hl
	ld	(ix - 34), e                    ; 1-byte Folded Spill
	.local	.LBB71_2
.LBB71_2:
	xor	a, a
	ld	(ix - 20), a
	ld	bc, (ix - 22)
	ld	b, a
	ld	de, 1051
	lea	hl, iy + 0
	add	hl, de
	ld	a, (hl)
	ld	(ix - 37), a
	dec	de
	lea	hl, iy + 0
	add	hl, de
	ld	a, (hl)
	ld	l, -5
	and	a, l
	ld	l, a
	cp	a, 1
	jr	z, .LBB71_4
; %bb.3:
	ld	l, 0
	jr	.LBB71_5
	.local	.LBB71_4
.LBB71_4:
	ld	l, -1
	.local	.LBB71_5
.LBB71_5:
	ld	a, (ix - 34)                    ; 1-byte Folded Reload
	ld	c, a
	ld	a, (ix - 37)
	and	a, l
	ld	l, a
	bit	0, a
	jr	nz, .LBB71_7
; %bb.6:
	ld	hl, 1000
	jr	.LBB71_8
	.local	.LBB71_7
.LBB71_7:
	ld	hl, 500
	.local	.LBB71_8
.LBB71_8:
	bit	0, a
	lea	de, ix - 7
	ld	(ix - 37), de
	lea	iy, ix - 13
	ld	(ix - 34), iy
	bit	0, a
	ld	de, (ix - 28)
	push	de
	push	bc
	ld	de, (ix - 31)
	push	de
	ld	de, 0
	ld.sis	bc, 0
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	ld	(ix - 28), hl
	pop	hl
	pop	hl
	pop	hl
	ld	a, e
	ld	(ix - 31), a
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	hl, (ix - 37)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 47), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 37)
	ld	bc, 6
	ldir
	ld	hl, (ix - 28)
	ld	iy, (ix - 47)
	ld	(iy + 7), hl
	ld	a, (ix - 31)
	ld	(iy + 10), a
	ld	hl, (ix - 34)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	ld	l, (ix - 44)                    ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix - 25)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 1018
	ld	iy, (ix - 25)
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 4096
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jr	z, .LBB71_11
; %bb.9:
	ld	hl, (ix - 25)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 80
	xor	a, a
	call	__lremu
	call	__lcmpzero
	jr	nz, .LBB71_11
; %bb.10:
	lea	de, ix - 19
	ld	(ix - 28), de
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 28)
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix - 25)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB71_11
.LBB71_11:
	ld	hl, (ix - 25)
	ld	de, 2400
	add	hl, de
	push	hl
	pop	iy
	ld	de, (hl)
	inc.sis	de
	ld.sis	bc, 999
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB71_13
; %bb.12:
	ld.sis	de, 999
	.local	.LBB71_13
.LBB71_13:
	lea	hl, iy + 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 2402
	ld	bc, (ix - 25)
	push	bc
	pop	hl
	add	hl, de
	ld.sis	de, 2
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, (ix - 40)
	ld	(ix + 6), hl
	ld	(ix + 9), bc
	ld	hl, (ix - 43)
	ld	(ix + 12), hl
	ld	sp, ix
	pop	ix
	jp	__ZL10spawn_leafR9LeafFieldR9GameStateR12LeafParticle
	.local	.Lfunc_end71
.Lfunc_end71:
	.size	__ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle, .Lfunc_end71-__ZL12collect_leafR9LeafFieldR9GameStateR12LeafParticle
                                        ; -- End function
	.section	.text._main,"ax",@progbits
	.globl	_main                           ; -- Begin function main
	.type	_main,@function
_main:                                  ; @main
; %bb.0:
	ld	hl, -66
	call	__frameset
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z17runtime_self_testR9GameState
	pop	de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB72_4
; %bb.1:
	lea	hl, ix - 4
	ld	(ix - 55), hl
	call	__Z16save_rtc_secondsv
                                        ; kill: def $e killed $e def $ude
	ld	bc, 0
	ld	(ix - 4), bc
	ld	iy, (ix - 55)
	lea	iy, iy + 3
	ld	(iy), b
	ld	bc, (ix - 55)
	push	bc
	ld	(ix - 64), de
	push	de
	ld	(ix - 61), hl
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z9save_loadR9GameStatemRm
	ld	(ix - 55), a                    ; 1-byte Folded Spill
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z13game_validateR9GameState
	pop	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	ld	hl, __ZZ4mainE5field
	push	hl
	call	__Z15leaf_field_initR9LeafFieldR9GameState
	pop	hl
	pop	hl
	ld	hl, __ZZ4mainE5input
	push	hl
	call	__Z10input_initR10InputState
	pop	hl
	xor	a, a
	ld	(__ZZ4mainE2ui), a
	ld	hl, __ZZ4mainE2ui
	push	hl
	pop	de
	inc	de
	ld	bc, 54
	ldir
	call	_gfx_Begin
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	call	__Z16ui_init_graphicsv
	ld	a, 1
	ld	(__ZN12_GLOBAL__N_115graphics_activeE), a
	ld	hl, __ZN12_GLOBAL__N_116after_archive_gcEv
	push	hl
	ld	hl, __ZN12_GLOBAL__N_117before_archive_gcEv
	push	hl
	call	_ti_SetGCBehavior
	pop	hl
	pop	hl
	ld	hl, (ix - 4)
	ld	e, (ix - 1)
	call	__lcmpzero
	jr	nz, .LBB72_5
; %bb.2:
	ld	a, (ix - 55)                    ; 1-byte Folded Reload
	cp	a, 2
	jp	c, .LBB72_7
; %bb.3:
	ld	hl, _.str.2.425
	jp	.LBB72_6
	.local	.LBB72_4
.LBB72_4:
	ld	iy, -3145600
	call	_os_ClrLCD
	call	_os_HomeUp
	call	_os_DrawStatusBar
	ld	hl, _.str.423
	push	hl
	call	_os_PutStrFull
	pop	hl
	ld	hl, 1800
	push	hl
	call	_delay
	pop	hl
	ld	hl, 1
	jp	.LBB72_40
	.local	.LBB72_5
.LBB72_5:
	ld	iy, _.str.1.424
	lea	bc, ix - 52
	ld	(ix - 55), bc
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	push	iy
	ld	hl, 48
	push	hl
	push	bc
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 55)
	.local	.LBB72_6
.LBB72_6:
	push	hl
	ld	hl, __ZZ4mainE2ui
	push	hl
	call	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	.local	.LBB72_7
.LBB72_7:
	xor	a, a
	ld	(ix - 65), a                    ; 1-byte Folded Spill
	inc	a
	.local	.LBB72_8
.LBB72_8:                               ; =>This Inner Loop Header: Depth=1
	bit	0, a
	jp	z, .LBB72_37
; %bb.9:                                ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, __ZZ4mainE5input
	push	hl
	call	__Z10input_scanR10InputState
	pop	hl
	call	__Z16save_rtc_secondsv
	push	hl
	pop	bc
	ld	iyl, e
	ld	hl, (ix - 61)
	ld	de, (ix - 64)
                                        ; kill: def $e killed $e killed $ude
	ld	(ix - 55), bc
	ld	(ix - 58), iy
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB72_14
; %bb.10:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, (ix - 55)
	ld	de, (ix - 58)
                                        ; kill: def $e killed $e killed $ude
	ld	bc, (ix - 61)
	ld	iy, (ix - 64)
	ld	a, iyl
	call	__lsub
	push	hl
	pop	bc
	ld	iyl, e
	ld	hl, 1
	ld	e, h
	ld	(ix - 61), bc
	ld	(ix - 64), iy
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB72_12
; %bb.11:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, (ix - 61)
	ld	de, (ix - 64)
                                        ; kill: def $e killed $e killed $ude
	ld	bc, -1
	ld	a, b
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z18game_apply_offlineR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB72_12
.LBB72_12:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, (ix - 58)
	push	hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z12systems_tickR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 58)
	push	hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z16game_tick_secondR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	a, (__ZZ4mainE5state+2406)
	ld	l, 1
	and	a, l
	ld	l, a
	bit	0, l
	jr	z, .LBB72_14
; %bb.13:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, (ix - 64)
	push	hl
	ld	hl, (ix - 61)
	push	hl
	ld	hl, (ix - 58)
	push	hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z9save_autoR9GameStatemm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	cp	a, 2
	ld	hl, _.str.3.426
	push	hl
	ld	hl, __ZZ4mainE2ui
	push	hl
	call	z, __ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	.local	.LBB72_14
.LBB72_14:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	a, (__ZZ4mainE2ui)
	or	a, a
	jr	nz, .LBB72_32
; %bb.15:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	a, (__ZZ4mainE5state+2406)
	bit	1, a
	jr	z, .LBB72_17
; %bb.16:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	l, 1
	ld	a, (ix - 65)
	and	a, l
	ld	l, a
	bit	0, l
	jr	nz, .LBB72_32
	.local	.LBB72_17
.LBB72_17:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	a, (__ZZ4mainE5input+7)
	ld	l, a
	ld	e, 2
	ld	a, l
	and	a, e
	ld	e, a
	or	a, a
	ld	a, -1
	ld	iyl, a
	jr	nz, .LBB72_19
; %bb.18:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	a, 0
	ld	iyl, a
	.local	.LBB72_19
.LBB72_19:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	a, e
	or	a, a
	ld	a, 1
	jr	z, .LBB72_21
; %bb.20:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	a, 0
	.local	.LBB72_21
.LBB72_21:                              ;   in Loop: Header=BB72_8 Depth=1
	bit	2, l
	jr	z, .LBB72_23
; %bb.22:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	iyl, a
	.local	.LBB72_23
.LBB72_23:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	e, 8
	ld	a, l
	and	a, e
	ld	e, a
	or	a, a
	ld	a, -1
	ld	c, a
	jr	nz, .LBB72_25
; %bb.24:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	a, 0
	ld	c, a
	.local	.LBB72_25
.LBB72_25:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	a, e
	or	a, a
	ld	e, 1
	jr	z, .LBB72_27
; %bb.26:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	e, 0
	.local	.LBB72_27
.LBB72_27:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	h, 1
	ld	a, l
	and	a, h
	ld	l, a
	bit	0, l
	jr	z, .LBB72_29
; %bb.28:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	c, e
	.local	.LBB72_29
.LBB72_29:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	a, (__ZZ4mainE5input+1)
	bit	5, a
	ld	hl, -1
	jr	nz, .LBB72_31
; %bb.30:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, 0
	.local	.LBB72_31
.LBB72_31:                              ;   in Loop: Header=BB72_8 Depth=1
	push	hl
	push	bc
	push	iy
	ld	hl, __ZZ4mainE5state
	push	hl
	ld	hl, __ZZ4mainE5field
	push	hl
	call	__Z17leaf_field_updateR9LeafFieldR9GameStateaab
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB72_32
.LBB72_32:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, (ix - 58)
	push	hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, __ZZ4mainE5input
	push	hl
	ld	hl, __ZZ4mainE5field
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	ld	hl, __ZZ4mainE2ui
	push	hl
	pea	ix - 52
	call	__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem
	ld	hl, 21
	add	hl, sp
	ld	sp, hl
	ld	a, (ix - 52)
	bit	0, a
	jr	z, .LBB72_34
; %bb.33:                               ;   in Loop: Header=BB72_8 Depth=1
	ld	hl, (ix - 58)
	push	hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z10save_writeR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	hl, _.str.4.427
	push	hl
	ld	hl, __ZZ4mainE2ui
	push	hl
	call	z, __ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	.local	.LBB72_34
.LBB72_34:                              ;   in Loop: Header=BB72_8 Depth=1
	ld	e, (ix - 51)
	ld	a, (__ZZ4mainE2ui+4)
	ld	l, a
	or	a, a
	jr	z, .LBB72_36
; %bb.35:                               ;   in Loop: Header=BB72_8 Depth=1
	dec	l
	ld	a, l
	ld	(__ZZ4mainE2ui+4), a
	.local	.LBB72_36
.LBB72_36:                              ; %_Z7ui_tickR7UiState.exit
                                        ;   in Loop: Header=BB72_8 Depth=1
	ld	l, 1
	ld	a, e
	xor	a, l
	ld	l, a
	ld	(ix - 66), l
	ld	hl, (ix - 58)
	push	hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, __ZZ4mainE5field
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	ld	hl, __ZZ4mainE2ui
	push	hl
	call	__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	(ix - 65)
	ld	hl, 32
	push	hl
	call	_delay
	ld	a, (ix - 66)                    ; 1-byte Folded Reload
	pop	hl
	ld	hl, (ix - 55)
	ld	(ix - 61), hl
	ld	hl, (ix - 58)
                                        ; kill: def $l killed $l killed $uhl def $uhl
	ld	(ix - 64), hl
	jp	.LBB72_8
	.local	.LBB72_37
.LBB72_37:
	call	__Z16save_rtc_secondsv
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, __ZZ4mainE5state
	push	hl
	call	__Z10save_writeR9GameStatem
	ld	(ix - 55), a                    ; 1-byte Folded Spill
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	call	_ti_SetGCBehavior
	pop	hl
	pop	hl
	call	_gfx_End
	xor	a, a
	ld	(__ZN12_GLOBAL__N_115graphics_activeE), a
	call	_kb_Reset
	bit	0, (ix - 55)                    ; 1-byte Folded Reload
	jr	nz, .LBB72_39
; %bb.38:
	ld	iy, -3145600
	call	_os_ClrLCD
	call	_os_HomeUp
	call	_os_DrawStatusBar
	ld	hl, _.str.5.428
	push	hl
	call	_os_PutStrFull
	pop	hl
	ld	hl, 1400
	push	hl
	call	_delay
	pop	hl
	.local	.LBB72_39
.LBB72_39:
	or	a, a
	sbc	hl, hl
	.local	.LBB72_40
.LBB72_40:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end72
.Lfunc_end72:
	.size	_main, .Lfunc_end72-_main
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_117before_archive_gcEv,"ax",@progbits
	.type	__ZN12_GLOBAL__N_117before_archive_gcEv,@function ; -- Begin function _ZN12_GLOBAL__N_117before_archive_gcEv
__ZN12_GLOBAL__N_117before_archive_gcEv: ; @_ZN12_GLOBAL__N_117before_archive_gcEv
; %bb.0:
	ld	a, (__ZN12_GLOBAL__N_115graphics_activeE)
	bit	0, a
	jr	z, .LBB73_2
; %bb.1:
	call	_gfx_End
	xor	a, a
	ld	(__ZN12_GLOBAL__N_115graphics_activeE), a
	.local	.LBB73_2
.LBB73_2:
	ret
	.local	.Lfunc_end73
.Lfunc_end73:
	.size	__ZN12_GLOBAL__N_117before_archive_gcEv, .Lfunc_end73-__ZN12_GLOBAL__N_117before_archive_gcEv
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_116after_archive_gcEv,"ax",@progbits
	.type	__ZN12_GLOBAL__N_116after_archive_gcEv,@function ; -- Begin function _ZN12_GLOBAL__N_116after_archive_gcEv
__ZN12_GLOBAL__N_116after_archive_gcEv: ; @_ZN12_GLOBAL__N_116after_archive_gcEv
; %bb.0:
	call	_gfx_Begin
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	call	__Z16ui_init_graphicsv
	ld	a, 1
	ld	(__ZN12_GLOBAL__N_115graphics_activeE), a
	ret
	.local	.Lfunc_end74
.Lfunc_end74:
	.size	__ZN12_GLOBAL__N_116after_archive_gcEv, .Lfunc_end74-__ZN12_GLOBAL__N_116after_archive_gcEv
                                        ; -- End function
	.section	.text.__Z16save_rtc_secondsv,"ax",@progbits
	.globl	__Z16save_rtc_secondsv          ; -- Begin function _Z16save_rtc_secondsv
	.type	__Z16save_rtc_secondsv,@function
__Z16save_rtc_secondsv:                 ; @_Z16save_rtc_secondsv
; %bb.0:
	ld	hl, -43
	call	__frameset
	ld	e, 0
	ld	a, 1
	ld	(ix - 26), a
	ld	c, 3
	ld	(ix - 25), a
	.local	.LBB75_1
.LBB75_1:                               ; =>This Inner Loop Header: Depth=1
	or	a, a
	sbc	hl, hl
	ld	a, c
	or	a, a
	jp	z, .LBB75_23
; %bb.2:                                ;   in Loop: Header=BB75_1 Depth=1
	ld	(ix - 22), c                    ; 1-byte Folded Spill
	ld	(ix - 29), hl
	pea	ix - 5
	pea	ix - 2
	pea	ix - 1
	call	_boot_GetDate
	pop	hl
	pop	hl
	pop	hl
	pea	ix - 8
	pea	ix - 7
	pea	ix - 6
	call	_boot_GetTime
	pop	hl
	pop	hl
	pop	hl
	pea	ix - 13
	pea	ix - 10
	pea	ix - 9
	call	_boot_GetDate
	pop	hl
	pop	hl
	pop	hl
	ld	d, (ix - 1)
	ld	l, (ix - 9)
	ld	a, d
	cp	a, l
	jp	nz, .LBB75_5
; %bb.3:                                ;   in Loop: Header=BB75_1 Depth=1
	ld	e, (ix - 2)
	ld	l, (ix - 10)
	ld	a, e
	cp	a, l
	jp	nz, .LBB75_5
; %bb.4:                                ;   in Loop: Header=BB75_1 Depth=1
	ld	hl, (ix - 5)
	ld	bc, (ix - 13)
	ld	(ix - 32), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB75_6
	.local	.LBB75_5
.LBB75_5:                               ;   in Loop: Header=BB75_1 Depth=1
	ld	c, (ix - 22)                    ; 1-byte Folded Reload
	dec	c
	ld	e, 0
	jp	.LBB75_1
	.local	.LBB75_6
.LBB75_6:
	ld	hl, (ix - 32)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, -2100
	add.sis	hl, bc
	ld	a, d
	or	a, a
	ld	a, 1
	jp	z, .LBB75_18
; %bb.7:
	ld	(ix - 33), e                    ; 1-byte Folded Spill
	ld	a, (ix - 33)
	ld	e, -13
	add	a, e
	ld	e, a
	ld	e, (ix - 33)                    ; 1-byte Folded Reload
	cp	a, -12
	ld	a, 1
	jp	c, .LBB75_18
; %bb.8:
	ld.sis	bc, -103
	or	a, a
	sbc.sis	hl, bc
	jp	c, .LBB75_18
; %bb.9:
	ld	bc, 0
	ld	c, e
	ld	iy, __ZZN12_GLOBAL__N_110date_validEhhtE14DAYS_PER_MONTH
	add	iy, bc
	ld	a, (iy - 1)
	ld	(ix - 22), a
	ld	hl, (ix - 32)
	ld	e, 3
	ld	a, l
	and	a, e
	ld	e, a
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 100
	call	__sremu
	or	a, a
	jr	nz, .LBB75_11
; %bb.10:
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB75_15
	.local	.LBB75_11
.LBB75_11:
	ld	hl, (ix - 32)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 400
	call	__sremu
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB75_13
; %bb.12:
	ld	a, 0
	jr	.LBB75_14
	.local	.LBB75_13
.LBB75_13:
	ld	a, 1
	.local	.LBB75_14
.LBB75_14:
	ld	(ix - 25), a
	.local	.LBB75_15
.LBB75_15:
	ld	e, (ix - 33)                    ; 1-byte Folded Reload
	ld	a, e
	cp	a, 2
	ld	a, (ix - 25)                    ; 1-byte Folded Reload
	jr	z, .LBB75_17
; %bb.16:
	xor	a, a
	.local	.LBB75_17
.LBB75_17:
	ld	l, (ix - 22)
	add	a, l
	ld	l, a
	cp	a, d
                                        ; kill: def $a killed $a
	sbc	a, a
	.local	.LBB75_18
.LBB75_18:
	bit	0, a
	jr	nz, .LBB75_22
; %bb.19:
	ld	l, (ix - 6)
	ld	a, l
	cp	a, 60
	jr	nc, .LBB75_22
; %bb.20:
	ld	c, (ix - 7)
	ld	a, c
	cp	a, 60
	jr	nc, .LBB75_22
; %bb.21:
	ld	a, (ix - 8)
	cp	a, 24
	jr	c, .LBB75_24
	.local	.LBB75_22
.LBB75_22:
	ld	e, 0
	or	a, a
	sbc	hl, hl
	.local	.LBB75_23
.LBB75_23:                              ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB75_24
.LBB75_24:
	ld	(ix - 43), a                    ; 1-byte Folded Spill
	ld	(ix - 42), c                    ; 1-byte Folded Spill
	ld	(ix - 41), l                    ; 1-byte Folded Spill
	ld.sis	bc, 1998
	ld	iy, (ix - 32)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	jr	nc, .LBB75_26
; %bb.25:
	ld.sis	hl, 1997
	.local	.LBB75_26
.LBB75_26:
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld.sis	hl, -1997
	ld	c, l
	ld	b, h
	add.sis	iy, bc
	push	iy
	ex	(sp), hl
	ld	(ix - 36), l
	ld	(ix - 35), h
	pop	hl
	xor	a, a
	ld	(ix - 34), a                    ; 1-byte Folded Spill
	ld.sis	hl, 0
	ld	(ix - 22), l
	ld	(ix - 21), h
	ld.sis	hl, 1997
	ld	(ix - 33), e
	.local	.LBB75_27
.LBB75_27:                              ; =>This Inner Loop Header: Depth=1
	ld	(ix - 25), l
	ld	(ix - 24), h
	ld.sis	bc, 100
	call	__sdivu
	call	__smulu
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld.sis	hl, -1997
	ld	c, l
	ld	b, h
	add.sis	iy, bc
	push	iy
	ex	(sp), hl
	ld	(ix - 38), l
	ld	(ix - 37), h
	pop	hl
	ld	l, (ix - 25)
	ld	h, (ix - 24)
	ld.sis	bc, 400
	call	__sdivu
	call	__smulu
	ld.sis	bc, -1997
	add.sis	hl, bc
	ld	(ix - 40), l
	ld	(ix - 39), h
	ld	l, (ix - 36)
	ld	h, (ix - 35)
	ld	c, (ix - 22)
	ld	b, (ix - 21)
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB75_35
; %bb.28:                               ;   in Loop: Header=BB75_27 Depth=1
	ld	l, -51
	ld	a, c
	add	a, l
	ld	l, a
	ld	h, 3
	ld	a, l
	and	a, h
	ld	l, a
	or	a, a
	ld	a, -1
	jr	z, .LBB75_30
; %bb.29:                               ;   in Loop: Header=BB75_27 Depth=1
	ld	a, 0
	.local	.LBB75_30
.LBB75_30:                              ;   in Loop: Header=BB75_27 Depth=1
	ld	l, (ix - 38)
	ld	h, (ix - 37)
	or	a, a
	sbc.sis	hl, bc
	ld	l, -1
	jr	nz, .LBB75_32
; %bb.31:                               ;   in Loop: Header=BB75_27 Depth=1
	ld	l, 0
	.local	.LBB75_32
.LBB75_32:                              ;   in Loop: Header=BB75_27 Depth=1
	and	a, l
	ld	e, a
	ld	l, (ix - 40)
	ld	h, (ix - 39)
	or	a, a
	sbc.sis	hl, bc
	ld	a, -1
	jr	z, .LBB75_34
; %bb.33:                               ;   in Loop: Header=BB75_27 Depth=1
	ld	a, 0
	.local	.LBB75_34
.LBB75_34:                              ;   in Loop: Header=BB75_27 Depth=1
	or	a, e
	ld	e, a
	ld	(ix - 19), a
	ld	hl, (ix - 21)
	ld	l, e
	ld	bc, 1
	xor	a, a
	call	__land
	ld	bc, (ix - 29)
	ld	a, (ix - 34)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, 365
	xor	a, a
	call	__ladd
	ld	(ix - 29), hl
	ld	(ix - 34), e                    ; 1-byte Folded Spill
	ld	l, (ix - 25)
	ld	h, (ix - 24)
	inc.sis	hl
	ld	c, (ix - 22)
	ld	b, (ix - 21)
	inc.sis	bc
	ld	(ix - 22), c
	ld	(ix - 21), b
	ld	e, (ix - 33)                    ; 1-byte Folded Reload
	jp	.LBB75_27
	.local	.LBB75_35
.LBB75_35:
	or	a, a
	sbc	hl, hl
	ld	l, e
	dec	hl
	add	hl, hl
	push	hl
	pop	bc
	ld	hl, __ZZN12_GLOBAL__N_120date_time_to_secondsEhhthhhE17DAYS_BEFORE_MONTH
	add	hl, bc
	ld	hl, (hl)
	ld	(ix - 22), hl
	ld	l, 3
	ld	bc, (ix - 32)
	ld	a, c
	and	a, l
	ld	e, a
	ld	l, c
	ld	h, b
	ld.sis	bc, 100
	call	__sremu
	or	a, a
	jr	nz, .LBB75_37
; %bb.36:
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB75_41
	.local	.LBB75_37
.LBB75_37:
	ld	hl, (ix - 32)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 400
	call	__sremu
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB75_39
; %bb.38:
	ld	a, 0
	jr	.LBB75_40
	.local	.LBB75_39
.LBB75_39:
	ld	a, -1
	.local	.LBB75_40
.LBB75_40:
	ld	(ix - 26), a
	.local	.LBB75_41
.LBB75_41:
	xor	a, a
	ld	(ix - 18), a
	ld	bc, (ix - 20)
	ld	hl, (ix - 22)
	ld	b, h
	ld	c, l
	ld	(ix - 22), bc
	sbc	hl, hl
	ld	a, l
	ld	(ix - 32), a
	ld	iy, 0
	ld	iyl, d
	dec	iy
	ld	a, (ix - 33)                    ; 1-byte Folded Reload
	cp	a, 3
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	l, (ix - 26)
	and	a, l
	ld	e, a
	ld	(ix - 17), a
	ld	hl, (ix - 19)
	ld	l, e
	ld	bc, 1
	ld	d, b
	ld	a, d
	call	__land
	ld	(ix - 25), hl
	ld	(ix - 26), e                    ; 1-byte Folded Spill
	ld	hl, (ix - 29)
	ld	e, (ix - 34)                    ; 1-byte Folded Reload
	lea	bc, iy + 0
	ld	a, (ix - 32)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, (ix - 22)
	ld	iyl, a
	call	__ladd
	ld	bc, (ix - 25)
	ld	a, (ix - 26)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, 86400
	xor	a, a
	call	__lmulu
	ld	(ix - 22), hl
	ld	iyh, e
	ld	(ix - 16), d
	ld	hl, (ix - 18)
	ld	h, d
	ld	l, (ix - 43)                    ; 1-byte Folded Reload
	ld	e, iyl
	ld	bc, 3600
	call	__lmulu
	ld	(ix - 25), hl
	ld	(ix - 26), e                    ; 1-byte Folded Spill
	ld	(ix - 15), d
	ld	hl, (ix - 17)
	ld	h, d
	ld	l, (ix - 42)                    ; 1-byte Folded Reload
	ld	e, iyl
	ld	bc, 60
	call	__lmulu
	ld	(ix - 14), d
	ld	bc, (ix - 16)
	ld	b, d
	ld	c, (ix - 41)                    ; 1-byte Folded Reload
	ld	a, iyl
	call	__ladd
	ld	bc, (ix - 25)
	ld	a, (ix - 26)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, (ix - 22)
	ld	a, iyh
	call	__ladd
	jp	.LBB75_23
	.local	.Lfunc_end75
.Lfunc_end75:
	.size	__Z16save_rtc_secondsv, .Lfunc_end75-__Z16save_rtc_secondsv
                                        ; -- End function
	.section	.text.__Z20save_offline_secondsmm,"ax",@progbits
	.globl	__Z20save_offline_secondsmm     ; -- Begin function _Z20save_offline_secondsmm
	.type	__Z20save_offline_secondsmm,@function
__Z20save_offline_secondsmm:            ; @_Z20save_offline_secondsmm
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	hl, (ix + 6)
	ld	e, (ix + 9)
	ld	bc, (ix + 12)
	ld	d, (ix + 15)
	call	__lcmpzero
	jr	nz, .LBB76_2
; %bb.1:
	ld	a, 0
	jr	.LBB76_3
	.local	.LBB76_2
.LBB76_2:
	ld	a, 1
	.local	.LBB76_3
.LBB76_3:
	ld	(ix - 1), a
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	push	hl
	pop	iy
	ld	e, d
	ld	d, a
	inc	d
	push	bc
	pop	hl
	lea	bc, iy + 0
	ld	a, (ix + 9)
	call	__lsub
	ld	bc, 604800
	ld	iyl, 0
	ld	a, iyl
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	c, a
	inc	c
	bit	0, c
	jr	nz, .LBB76_5
; %bb.4:
	ld	hl, 604800
	.local	.LBB76_5
.LBB76_5:
	ld	a, (ix - 1)
	and	a, d
	ld	d, a
	bit	0, c
	jr	nz, .LBB76_7
; %bb.6:
	ld	e, iyl
	.local	.LBB76_7
.LBB76_7:
	bit	0, d
	jr	nz, .LBB76_9
; %bb.8:
	or	a, a
	sbc	hl, hl
	.local	.LBB76_9
.LBB76_9:
	bit	0, d
	jr	nz, .LBB76_11
; %bb.10:
	ld	e, iyl
	.local	.LBB76_11
.LBB76_11:
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end76
.Lfunc_end76:
	.size	__Z20save_offline_secondsmm, .Lfunc_end76-__Z20save_offline_secondsmm
                                        ; -- End function
	.section	.text.__Z9save_loadR9GameStatemRm,"ax",@progbits
	.globl	__Z9save_loadR9GameStatemRm     ; -- Begin function _Z9save_loadR9GameStatemRm
	.type	__Z9save_loadR9GameStatemRm,@function
__Z9save_loadR9GameStatemRm:            ; @_Z9save_loadR9GameStatemRm
; %bb.0:
	ld	hl, -14
	call	__frameset
	ld	iy, (ix + 15)
	or	a, a
	sbc	hl, hl
	xor	a, a
	ld	bc, __ZN12_GLOBAL__N_117candidate_scratchE
	ld	(iy), hl
	ld	(iy + 3), a
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE), hl
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE+3), a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE), a
	push	bc
	pop	de
	push	bc
	pop	iy
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	ld	(ix - 1), a                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+2418), a
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+2418
	push	hl
	pop	de
	inc	de
	push	hl
	pop	iy
	ld	bc, 2417
	ldir
	push	iy
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+4836), a
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+4836
	push	hl
	pop	de
	inc	de
	push	hl
	pop	iy
	ld	bc, 2417
	ldir
	push	iy
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	ld	d, a
	pop	hl
	pop	hl
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	cp	a, 2
	jr	nz, .LBB77_6
; %bb.1:
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	cp	a, 2
	jr	nz, .LBB77_4
; %bb.2:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+4826)
	ld	(ix - 7), hl
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+4829)
	ld	iyl, a
	ld	bc, (__ZN12_GLOBAL__N_117candidate_scratchE+2408)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+2411)
	ld	e, iyl
	call	__lsub
	ld	(ix - 10), hl
	ld	iyh, e
	ld	hl, (ix - 7)
	ld	e, iyl
	call	__lcmpu
	jr	z, .LBB77_10
; %bb.3:
	scf
	sbc	hl, hl
	ld	e, h
	ld	bc, (ix - 10)
	ld	a, iyh
	call	__lcmps
	call	pe, __setflag
	jp	p, .LBB77_10
	.local	.LBB77_4
.LBB77_4:
	ld	a, d
	cp	a, 2
	jp	nz, .LBB77_19
; %bb.5:
	ld	a, 1
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE+2418
	jr	.LBB77_11
	.local	.LBB77_6
.LBB77_6:
	ld	a, d
	cp	a, 2
	jr	nz, .LBB77_8
; %bb.7:
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	cp	a, 2
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE
	ld	a, 0
	jr	z, .LBB77_11
	jp	.LBB77_13
	.local	.LBB77_8
.LBB77_8:
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	cp	a, 2
	jp	z, .LBB77_25
; %bb.9:
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	ld	l, (ix + 12)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE), hl
	ld	a, (ix + 12)
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE+3), a
	xor	a, a
	jp	.LBB77_40
	.local	.LBB77_10
.LBB77_10:
	ld	a, d
	cp	a, 2
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE
	ld	a, 0
	jp	nz, .LBB77_25
	.local	.LBB77_11
.LBB77_11:
	ld	(ix - 7), a
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+7244)
	ld	(ix - 10), hl
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+7247)
	ld	d, a
	ld	bc, 2408
	add	iy, bc
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	iy, (ix - 10)
	lea	hl, iy + 0
	ld	e, d
	call	__lsub
	ld	(ix - 13), hl
	ld	(ix - 14), e                    ; 1-byte Folded Spill
	lea	hl, iy + 0
	ld	e, d
	ld	d, (ix - 7)                     ; 1-byte Folded Reload
	call	__lcmpu
	jr	z, .LBB77_18
; %bb.12:
	scf
	sbc	hl, hl
	ld	e, h
	ld	bc, (ix - 13)
	ld	a, (ix - 14)                    ; 1-byte Folded Reload
	call	__lcmps
	call	pe, __setflag
	jp	p, .LBB77_18
	.local	.LBB77_13
.LBB77_13:
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+4836
	push	hl
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB77_38
; %bb.14:
	ld	l, (ix - 1)                     ; 1-byte Folded Reload
	ld	a, l
	cp	a, 2
	jr	nz, .LBB77_16
; %bb.15:
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	cp	a, 2
	jp	z, .LBB77_26
	.local	.LBB77_16
.LBB77_16:
	ld	a, l
	cp	a, 2
	jp	z, .LBB77_28
; %bb.17:
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	cp	a, 2
	jp	z, .LBB77_32
	jp	.LBB77_34
	.local	.LBB77_18
.LBB77_18:
	bit	0, d
	jp	z, .LBB77_25
	.local	.LBB77_19
.LBB77_19:
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+2418
	push	hl
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+2418
	push	hl
	call	__ZN12_GLOBAL__N_119write_verified_tempERK9GameState
	pop	hl
	bit	0, a
	jr	z, .LBB77_24
; %bb.20:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB77_24
; %bb.21:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	_ti_Rename
	pop	hl
	pop	hl
	or	a, a
	jr	nz, .LBB77_24
; %bb.22:
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+7254), a
	lea	de, iy + 0
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	ld	e, a
	pop	hl
	pop	hl
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9670)
	ld	l, a
	ld	a, e
	cp	a, 2
	jr	nz, .LBB77_24
; %bb.23:
	bit	0, l
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+2418
	push	hl
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	nz, __ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
	pop	hl
	pop	hl
	.local	.LBB77_24
.LBB77_24:
	ld	hl, (ix + 15)
	push	hl
	ld	l, (ix + 12)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+2418
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm
	ld	a, 2
	jp	.LBB77_39
	.local	.LBB77_25
.LBB77_25:
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE
	push	hl
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE
	push	hl
	call	__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState
	pop	hl
	ld	hl, (ix + 15)
	push	hl
	ld	l, (ix + 12)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm
	ld	a, 1
	jp	.LBB77_39
	.local	.LBB77_26
.LBB77_26:
	ld	iy, (__ZN12_GLOBAL__N_117candidate_scratchE+4826)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+4829)
	ld	d, a
	ld	bc, (__ZN12_GLOBAL__N_117candidate_scratchE+2408)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+2411)
	lea	hl, iy + 0
	ld	e, d
	call	__lsub
	ld	(ix - 4), hl
	ld	(ix - 7), e                     ; 1-byte Folded Spill
	lea	hl, iy + 0
	ld	e, d
	call	__lcmpu
	jr	z, .LBB77_28
; %bb.27:
	ld	hl, (ix - 4)
	ld	e, (ix - 7)                     ; 1-byte Folded Reload
	call	__lcmpzero
	jp	p, .LBB77_32
	.local	.LBB77_28
.LBB77_28:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+2416)
	bit	0, a
	jr	nz, .LBB77_30
; %bb.29:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_115ensure_archivedEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB77_38
	.local	.LBB77_30
.LBB77_30:
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB77_38
; %bb.31:
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	_ti_Rename
	pop	hl
	pop	hl
	or	a, a
	jr	z, .LBB77_36
	jr	.LBB77_38
	.local	.LBB77_32
.LBB77_32:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+4834)
	bit	0, a
	jr	nz, .LBB77_34
; %bb.33:
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_115ensure_archivedEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB77_38
	.local	.LBB77_34
.LBB77_34:
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	or	a, a
	jr	z, .LBB77_36
; %bb.35:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB77_38
	.local	.LBB77_36
.LBB77_36:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	_ti_Rename
	pop	hl
	pop	hl
	or	a, a
	jr	nz, .LBB77_38
; %bb.37:
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+4836
	push	hl
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
	pop	hl
	pop	hl
	bit	0, a
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+4836
	push	hl
	call	nz, __ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState
	pop	hl
	.local	.LBB77_38
.LBB77_38:
	ld	hl, (ix + 15)
	push	hl
	ld	l, (ix + 12)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+4836
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm
	ld	a, 3
	.local	.LBB77_39
.LBB77_39:
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB77_40
.LBB77_40:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end77
.Lfunc_end77:
	.size	__Z9save_loadR9GameStatemRm, .Lfunc_end77-__Z9save_loadR9GameStatemRm
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE,"ax",@progbits
	.type	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE,@function ; -- Begin function _ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE: ; @_ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
; %bb.0:
	ld	hl, -68
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, _.str.436
	push	de
	push	hl
	call	_ti_Open
	ld	e, a
	pop	hl
	pop	hl
	or	a, a
	jr	nz, .LBB78_2
; %bb.1:
	xor	a, a
	jp	.LBB78_107
	.local	.LBB78_2
.LBB78_2:
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	xor	a, a
	ld	(__ZN12_GLOBAL__N_114record_scratchE), a
	push	hl
	pop	iy
	inc	iy
	ld	bc, 2432
	ld	(ix - 3), de
	lea	de, iy + 0
	ldir
	ld	hl, (ix - 3)
	push	hl
	call	_ti_GetSize
	ld	c, l
	ld	b, h
	pop	hl
	ld.sis	de, 2283
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld.sis	de, 2433
	ld	(ix - 9), c
	ld	(ix - 8), b
	jr	z, .LBB78_4
; %bb.3:
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	nz, .LBB78_7
	.local	.LBB78_4
.LBB78_4:
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	h, b
	ld	de, (ix - 3)
	push	de
	ld	de, 1
	push	de
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	call	_ti_Read
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 1
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_6
; %bb.5:
	ld	a, 0
	jr	.LBB78_8
	.local	.LBB78_6
.LBB78_6:
	ld	a, -1
	jr	.LBB78_8
	.local	.LBB78_7
.LBB78_7:
	xor	a, a
	.local	.LBB78_8
.LBB78_8:
	ld	(ix - 6), a
	ld	hl, (ix - 3)
	push	hl
	call	_ti_IsArchived
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB78_10
; %bb.9:
	ld	a, 0
	jr	.LBB78_11
	.local	.LBB78_10
.LBB78_10:
	ld	a, 1
	.local	.LBB78_11
.LBB78_11:
	ld	(ix - 10), a
	ld	hl, (ix - 3)
	push	hl
	call	_ti_Close
	pop	de
	bit	0, (ix - 6)                     ; 1-byte Folded Reload
	jp	z, .LBB78_106
; %bb.12:
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB78_106
; %bb.13:
	or	a, a
	sbc	hl, hl
	ld	(ix - 28), hl
	ld	hl, __ZN12_GLOBAL__N_110SAVE_MAGICE
	ld	de, 4
	push	de
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	call	_memcmp
	ex	de, hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+4
	ld	iy, (hl)
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+6
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+8
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+10
	ld	hl, (hl)
	ld	(ix - 13), hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+32
	ld	hl, (hl)
	ld	(ix - 16), hl
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+12)
	ld	(ix - 19), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+15)
	ld	(ix - 22), a                    ; 1-byte Folded Spill
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+24)
	ld	(ix - 25), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+27)
	ld	l, (ix - 9)
	ld	h, (ix - 8)
	ld.sis	bc, 2433
	or	a, a
	sbc.sis	hl, bc
	ld.sis	bc, 32
	jp	nz, .LBB78_29
; %bb.14:
	sbc	hl, hl
	adc	hl, de
	jp	nz, .LBB78_106
; %bb.15:
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	de, 2
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB78_106
; %bb.16:
	ld	hl, (ix - 3)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB78_106
; %bb.17:
	ld	hl, (ix - 6)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 3
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB78_106
; %bb.18:
	ld.sis	de, 2401
	ld	hl, (ix - 13)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB78_106
; %bb.19:
	ld	hl, (ix - 16)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB78_106
; %bb.20:
	ld	hl, (ix - 19)
	ld	e, (ix - 22)                    ; 1-byte Folded Reload
	call	__lcmpzero
	jp	z, .LBB78_106
; %bb.21:
	ld	hl, (ix - 25)
	ld	e, a
	call	__lcmpzero
	jp	nz, .LBB78_106
; %bb.22:
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+28)
	ld	(ix - 3), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+31)
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	ld	hl, 28
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	call	__Z13crc32_computePKvj
	push	hl
	pop	bc
	ld	a, e
	pop	hl
	pop	hl
	ld	hl, (ix - 3)
	ld	e, (ix - 6)                     ; 1-byte Folded Reload
	call	__lcmpu
	jp	nz, .LBB78_106
; %bb.23:
	ld	hl, 2401
	ld	de, (__ZN12_GLOBAL__N_114record_scratchE+20)
	ld	(ix - 3), de
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+23)
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+32
	push	hl
	call	__Z13crc32_computePKvj
	push	hl
	pop	bc
	ld	d, e
	pop	hl
	pop	hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1083)
	ld	iyl, a
	ld	hl, (ix - 3)
	ld	e, (ix - 6)                     ; 1-byte Folded Reload
	ld	a, d
	call	__lcmpu
	jp	nz, .LBB78_106
; %bb.24:
	ld	a, iyl
	cp	a, 2
	jp	nc, .LBB78_106
; %bb.25:                               ; %.preheader15.preheader
	ld	bc, 0
	.local	.LBB78_26
.LBB78_26:                              ; %.preheader15
                                        ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	iy
	ld	de, 5
	add	iy, de
	lea	hl, iy + 0
	ld	de, 45
	or	a, a
	sbc	hl, de
	jp	z, .LBB78_46
; %bb.27:                               ;   in Loop: Header=BB78_26 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	add	hl, bc
	push	hl
	pop	bc
	ld	de, 2281
	add	hl, de
	ld	a, (hl)
	cp	a, 2
	jp	nc, .LBB78_106
; %bb.28:                               ;   in Loop: Header=BB78_26 Depth=1
	ld	de, 2136
	push	bc
	pop	hl
	add	hl, de
	ld	a, (hl)
	cp	a, 2
	lea	bc, iy + 0
	jp	nc, .LBB78_106
	jr	.LBB78_26
	.local	.LBB78_29
.LBB78_29:
	sbc	hl, hl
	adc	hl, de
	jp	nz, .LBB78_106
; %bb.30:
	ld.sis	de, 1
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB78_106
; %bb.31:
	ld	hl, (ix - 3)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB78_106
; %bb.32:
	ld	hl, (ix - 6)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 2
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB78_106
; %bb.33:
	ld.sis	de, 2251
	ld	hl, (ix - 13)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB78_106
; %bb.34:
	ld	hl, (ix - 16)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB78_106
; %bb.35:
	ld	hl, (ix - 19)
	ld	e, (ix - 22)                    ; 1-byte Folded Reload
	call	__lcmpzero
	jp	z, .LBB78_106
; %bb.36:
	ld	hl, (ix - 25)
	ld	e, a
	call	__lcmpzero
	jp	nz, .LBB78_106
; %bb.37:
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+28)
	ld	(ix - 3), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+31)
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	ld	hl, 28
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	call	__Z13crc32_computePKvj
	push	hl
	pop	bc
	ld	a, e
	pop	hl
	pop	hl
	ld	hl, (ix - 3)
	ld	e, (ix - 6)                     ; 1-byte Folded Reload
	call	__lcmpu
	jp	nz, .LBB78_106
; %bb.38:
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+20)
	ld	(ix - 3), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+23)
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	ld	hl, 2251
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+32
	push	hl
	call	__Z13crc32_computePKvj
	push	hl
	pop	bc
	ld	d, e
	pop	hl
	pop	hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1083)
	ld	iyl, a
	ld	hl, (ix - 3)
	ld	e, (ix - 6)                     ; 1-byte Folded Reload
	ld	a, d
	call	__lcmpu
	jp	nz, .LBB78_106
; %bb.39:
	ld	a, iyl
	cp	a, 2
	jp	nc, .LBB78_106
; %bb.40:                               ; %.preheader19.preheader
	ld	de, 0
	.local	.LBB78_41
.LBB78_41:                              ; %.preheader19
                                        ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	ld	bc, 5
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, 45
	or	a, a
	sbc	hl, bc
	jr	z, .LBB78_43
; %bb.42:                               ;   in Loop: Header=BB78_41 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2137
	add	hl, de
	ld	a, (hl)
	cp	a, 2
	lea	de, iy + 0
	jp	nc, .LBB78_106
	jr	.LBB78_41
	.local	.LBB78_43
.LBB78_43:
	ld	bc, 0
	.local	.LBB78_44
.LBB78_44:                              ; %.preheader17
                                        ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	iy
	ld	de, 19
	add	iy, de
	lea	hl, iy + 0
	ld	de, 76
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_50
; %bb.45:                               ;   in Loop: Header=BB78_44 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2191
	add	hl, bc
	ld	a, (hl)
	cp	a, 2
	lea	bc, iy + 0
	jp	nc, .LBB78_106
	jr	.LBB78_44
	.local	.LBB78_46
.LBB78_46:
	ld	bc, 0
	.local	.LBB78_47
.LBB78_47:                              ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	iy
	ld	de, 19
	add	iy, de
	lea	hl, iy + 0
	ld	de, 76
	or	a, a
	sbc	hl, de
	jp	z, .LBB78_55
; %bb.48:                               ;   in Loop: Header=BB78_47 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	add	hl, bc
	push	hl
	pop	bc
	ld	de, 2335
	add	hl, de
	ld	a, (hl)
	cp	a, 2
	jp	nc, .LBB78_106
; %bb.49:                               ;   in Loop: Header=BB78_47 Depth=1
	ld	de, 2190
	push	bc
	pop	hl
	add	hl, de
	ld	a, (hl)
	cp	a, 2
	lea	bc, iy + 0
	jp	nc, .LBB78_106
	jr	.LBB78_47
	.local	.LBB78_50
.LBB78_50:
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	lea	hl, iy + 2
	ld	(iy + 2), 0
	push	hl
	pop	de
	ld	(ix - 3), hl
	inc	de
	ld	bc, 2405
	ldir
	ld	de, 2398
	ld	iy, (ix + 9)
	add	iy, de
	ld.sis	hl, 1023
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2246
	ld	iy, (ix + 9)
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 3
	ld	iy, (ix + 9)
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+34
	push	hl
	ld	hl, (ix - 3)
	push	hl
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	de, 446
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+478
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	bc, 0
	.local	.LBB78_51
.LBB78_51:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 128
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_53
; %bb.52:                               ;   in Loop: Header=BB78_51 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+922
	add	hl, bc
	ld	iy, (hl)
	ld	hl, (ix + 9)
	add	hl, bc
	ld	de, 890
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	push	hl
	pop	bc
	jr	.LBB78_51
	.local	.LBB78_53
.LBB78_53:
	ld	de, 1052
	ld	hl, (ix + 9)
	add	hl, de
	ld	(ix - 16), hl
	ld	de, (__ZN12_GLOBAL__N_114record_scratchE+1050)
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+1053)
	ld	(ix - 3), hl
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+1050
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	bc, 1018
	ld	iy, (ix + 9)
	add	iy, bc
	ld	(iy), de
	lea	hl, iy + 3
	ld	de, (ix - 3)
	ld	(hl), de
	lea	hl, iy + 6
	ld	de, (ix - 6)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 1026
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, de
	lea	de, iy + 0
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1058
	ld	bc, 10
	ldir
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1068
	ld	hl, (hl)
	ld	de, 1036
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1070
	ld	hl, (hl)
	ld	de, 1038
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1072)
	ld	de, 1040
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1073)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1074)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1075)
	inc	de
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 25), hl
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+1076)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1079)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1080
	ld	bc, (hl)
	ld	de, 1048
	ld	iy, (ix + 9)
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 31), hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1082)
	ld	de, 1050
	lea	hl, iy + 0
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1083)
	inc	de
	add	hl, de
	ld	(ix - 13), hl
	or	a, a
	jp	nz, .LBB78_60
; %bb.54:
	ld	a, 0
	jp	.LBB78_61
	.local	.LBB78_55
.LBB78_55:
	ld	hl, (ix + 9)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 2407
	lea	de, iy + 0
	push	hl
	pop	iy
	ldir
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+32
	ld	hl, (hl)
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+34
	push	hl
	pea	iy + 2
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	de, 446
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+478
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	bc, 0
	.local	.LBB78_56
.LBB78_56:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 128
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_58
; %bb.57:                               ;   in Loop: Header=BB78_56 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+922
	add	hl, bc
	ld	iy, (hl)
	ld	hl, (ix + 9)
	add	hl, bc
	ld	de, 890
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	push	hl
	pop	bc
	jr	.LBB78_56
	.local	.LBB78_58
.LBB78_58:
	ld	de, (__ZN12_GLOBAL__N_114record_scratchE+1050)
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+1053)
	ld	(ix - 3), hl
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+1050
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	bc, 1018
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, bc
	ld	(iy), de
	lea	hl, iy + 3
	ld	de, (ix - 3)
	ld	(hl), de
	lea	hl, iy + 6
	ld	de, (ix - 6)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 1026
	ld	iy, (ix + 9)
	add	iy, de
	lea	de, iy + 0
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1058
	ld	bc, 10
	ldir
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1068
	ld	hl, (hl)
	ld	de, 1036
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1070
	ld	hl, (hl)
	ld	de, 1038
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1072)
	ld	de, 1040
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1073)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1074)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1075)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+1076)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1079)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1080
	ld	hl, (hl)
	ld	de, 1048
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1082)
	ld	de, 1050
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+1083)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	or	a, a
	jp	nz, .LBB78_77
; %bb.59:
	ld	a, 0
	jp	.LBB78_78
	.local	.LBB78_60
.LBB78_60:
	ld	a, 1
	.local	.LBB78_61
.LBB78_61:
	ld	hl, (ix - 13)
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1084
	push	hl
	ld	hl, (ix - 16)
	push	hl
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	de, 1496
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1528
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	bc, 0
	.local	.LBB78_62
.LBB78_62:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 128
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_64
; %bb.63:                               ;   in Loop: Header=BB78_62 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1972
	add	hl, bc
	ld	iy, (hl)
	ld	hl, (ix + 9)
	add	hl, bc
	ld	de, 1940
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	push	hl
	pop	bc
	jr	.LBB78_62
	.local	.LBB78_64
.LBB78_64:
	ld	de, 2068
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, de
	lea	de, iy + 0
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2100
	ld	bc, 10
	ldir
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2110)
	ld	(ix - 9), hl
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2113)
	ld	(ix - 3), hl
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2110
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	bc, 2078
	ld	de, (ix + 9)
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (ix - 9)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	bc, (ix - 3)
	ld	(hl), bc
	lea	hl, iy + 6
	ld	bc, (ix - 6)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2118
	ld	hl, (hl)
	ld	bc, 2086
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2120
	ld	hl, (hl)
	ld	bc, 2088
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2122)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2125)
	ld	bc, 2090
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2126)
	ld	de, 2096
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2127)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2128)
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2129
	ld	hl, (hl)
	ld	de, 2226
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2131
	ld	hl, (hl)
	ld	de, 2228
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2248
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 34), hl
	ld	bc, 0
	ld	(ix - 3), bc
	.local	.LBB78_65
.LBB78_65:                              ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 3)
	ld	de, 40
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_69
; %bb.66:                               ;   in Loop: Header=BB78_65 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2133
	ld	de, (ix - 3)
	add	hl, de
	ld	a, (hl)
	push	hl
	pop	bc
	ld	hl, (ix + 9)
	add	hl, de
	push	hl
	pop	iy
	ld	de, 2248
	add	iy, de
	ld	(iy), a
	push	bc
	pop	iy
	ld	a, (iy + 1)
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	(iy), a
	push	bc
	pop	iy
	ld	a, (iy + 2)
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	(iy), a
	push	bc
	pop	iy
	ld	a, (iy + 3)
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	(iy), a
	inc	de
	add	hl, de
	push	bc
	pop	iy
	ld	a, (iy + 4)
	or	a, a
	ld	a, 1
	jr	nz, .LBB78_68
; %bb.67:                               ;   in Loop: Header=BB78_65 Depth=1
	ld	a, 0
	.local	.LBB78_68
.LBB78_68:                              ;   in Loop: Header=BB78_65 Depth=1
	ld	(hl), a
	ld	hl, (ix - 3)
	ld	de, 5
	add	hl, de
	ld	(ix - 3), hl
	jr	.LBB78_65
	.local	.LBB78_69
.LBB78_69:
	ld	de, 2288
	ld	hl, (ix + 9)
	add	hl, de
	ld	(ix - 37), hl
	or	a, a
	sbc	hl, hl
	ld	(ix - 3), hl
	.local	.LBB78_70
.LBB78_70:                              ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 3)
	ld	de, 57
	or	a, a
	sbc	hl, de
	jp	z, .LBB78_74
; %bb.71:                               ;   in Loop: Header=BB78_70 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	pop	iy
	ld	de, (ix - 3)
	add	iy, de
	lea	hl, iy + 0
	lea	bc, iy + 0
	ld	de, 2173
	add	hl, de
	ld	a, (hl)
	ld	hl, (ix + 9)
	ld	de, (ix - 28)
	add	hl, de
	ld	(ix - 9), hl
	push	hl
	pop	iy
	ld	de, 2288
	add	iy, de
	ld	(iy), a
	push	bc
	pop	iy
	ld	de, 2174
	add	iy, de
	ld	a, (iy)
	push	hl
	pop	iy
	ld	de, 2289
	add	iy, de
	ld	(iy), a
	push	bc
	pop	iy
	ld	(ix - 6), bc
	ld	de, 2175
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 22), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	bc
	pop	hl
	ld	de, 2179
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 19), hl
	ld	bc, (ix - 9)
	push	bc
	pop	iy
	ld	de, 2290
	add	iy, de
	ld	hl, (ix - 22)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	push	bc
	pop	iy
	ld	de, 2294
	add	iy, de
	ld	hl, (ix - 19)
	ld	(iy), l
	ld	(iy + 1), h
	ld	bc, (ix - 6)
	push	bc
	pop	iy
	ld	de, 2181
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 19), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	bc
	pop	hl
	ld	de, 2185
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 22), hl
	ld	bc, (ix - 9)
	push	bc
	pop	iy
	ld	de, 2296
	add	iy, de
	ld	hl, (ix - 19)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	push	bc
	pop	iy
	ld	de, 2300
	add	iy, de
	ld	hl, (ix - 22)
	ld	(iy), l
	ld	(iy + 1), h
	ld	iy, (ix - 6)
	ld	de, 2187
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	push	bc
	pop	iy
	ld	bc, 2302
	add	iy, bc
	ld	(iy), de
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2191
	ld	iy, (ix - 6)
	add	iy, de
	ld	de, 2306
	ld	hl, (ix - 9)
	add	hl, de
	ld	a, (iy)
	or	a, a
	ld	a, 1
	jr	nz, .LBB78_73
; %bb.72:                               ;   in Loop: Header=BB78_70 Depth=1
	ld	a, 0
	.local	.LBB78_73
.LBB78_73:                              ;   in Loop: Header=BB78_70 Depth=1
	ld	(hl), a
	ld	iy, (ix - 3)
	ld	de, 19
	add	iy, de
	ld	hl, (ix - 28)
	inc	de
	add	hl, de
	ld	(ix - 28), hl
	ld	(ix - 3), iy
	jp	.LBB78_70
	.local	.LBB78_74
.LBB78_74:
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2230)
	ld	(ix - 6), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2233)
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2234
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	de, 2348
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 6)
	ld	(iy), hl
	ld	(ix - 9), iy
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2352
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2236)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2239)
	ld	de, 2354
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 19), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 22), a                    ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2240)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2243)
	ld	de, 2358
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 28), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 38), a                    ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2244)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2247)
	ld	de, 2362
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 41), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 42), a                    ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2248)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2251)
	ld	de, 2366
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 45), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 46), a                    ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2252)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2255)
	push	bc
	pop	iy
	ld	de, 2370
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2256)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2259)
	ld	de, 2374
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 3), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2260)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2263)
	ld	de, 2378
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 49), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 50), a                    ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2264
	ld	hl, (hl)
	ld	de, 2382
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2266
	ld	hl, (hl)
	ld	de, 2384
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2268
	ld	hl, (hl)
	ld	de, 2386
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 53), hl
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2270
	ld	hl, (hl)
	ld	de, 2388
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 56), hl
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2272
	ld	hl, (hl)
	ld	de, 2390
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 59), hl
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2274
	ld	hl, (hl)
	ld	de, 2392
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 62), hl
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2276
	ld	hl, (hl)
	ld	de, 2400
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 65), hl
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2278
	ld	hl, (hl)
	ld	de, 2402
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 68), hl
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2280
	ld	hl, (hl)
	ld	de, 2404
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2282)
	ld	de, 2406
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	hl, (ix - 13)
	bit	0, (hl)
	jp	z, .LBB78_76
; %bb.75:
	ld	hl, (ix - 31)
	ld	hl, (hl)
	ld	de, 2094
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (ix - 25)
	ld	a, (hl)
	ld	de, 2099
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	lea	de, iy + 0
	ld	hl, (ix - 34)
	ld	bc, 40
	ldir
	ld	de, 2140
	ld	iy, (ix + 9)
	add	iy, de
	lea	de, iy + 0
	ld	hl, (ix - 37)
	ld	bc, 60
	ldir
	ld	de, 2200
	ld	iy, (ix + 9)
	add	iy, de
	lea	de, iy + 0
	ld	hl, (ix - 9)
	ld	bc, 6
	ldir
	ld	de, 2206
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 19)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	a, (ix - 22)
	ld	(hl), a
	ld	de, 2210
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 28)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	a, (ix - 38)
	ld	(hl), a
	ld	de, 2214
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 41)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	a, (ix - 42)
	ld	(hl), a
	ld	de, 2218
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 45)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	a, (ix - 46)
	ld	(hl), a
	ld	de, 2222
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 49)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	a, (ix - 50)
	ld	(hl), a
	ld	de, 2230
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 53)
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2232
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 56)
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2234
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 59)
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2236
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 62)
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2238
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 65)
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2240
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 68)
	ld	(iy), l
	ld	(iy + 1), h
	push	bc
	call	__Z22game_abandon_challengeR9GameState
	pop	hl
	ld	iy, (ix + 9)
	ld	de, 2374
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(ix - 6), a
	jp	.LBB78_102
	.local	.LBB78_76
.LBB78_76:
	ld	iy, (ix + 9)
	ld	de, 1050
	add	iy, de
	ld	(iy), -1
	ld	hl, (ix - 16)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 1195
	lea	de, iy + 0
	ldir
	jp	.LBB78_102
	.local	.LBB78_77
.LBB78_77:
	ld	a, 1
	.local	.LBB78_78
.LBB78_78:
	ld	(iy), a
	ld	de, 1052
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1084
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	de, 1496
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1528
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
	pop	hl
	pop	hl
	ld	bc, 0
	.local	.LBB78_79
.LBB78_79:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 128
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_81
; %bb.80:                               ;   in Loop: Header=BB78_79 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1972
	add	hl, bc
	ld	iy, (hl)
	ld	hl, (ix + 9)
	add	hl, bc
	ld	de, 1940
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	push	hl
	pop	bc
	jr	.LBB78_79
	.local	.LBB78_81
.LBB78_81:
	ld	de, 2068
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, de
	lea	de, iy + 0
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2100
	ld	bc, 10
	ldir
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2110)
	ld	(ix - 9), hl
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2113)
	ld	(ix - 3), hl
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2110
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	bc, 2078
	ld	de, (ix + 9)
	push	de
	pop	iy
	add	iy, bc
	ld	hl, (ix - 9)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	bc, (ix - 3)
	ld	(hl), bc
	lea	hl, iy + 6
	ld	bc, (ix - 6)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2118
	ld	hl, (hl)
	ld	bc, 2086
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2120
	ld	hl, (hl)
	ld	bc, 2088
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2122)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2125)
	ld	bc, 2090
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2126
	ld	hl, (hl)
	ld	bc, 2094
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2128)
	ld	bc, 2096
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2129)
	inc	bc
	push	de
	pop	iy
	add	iy, bc
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2130)
	inc	bc
	push	de
	pop	iy
	ex	de, hl
	add	iy, bc
	ld	(iy), a
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2131)
	ld	de, 2099
	push	hl
	pop	iy
	add	iy, de
	ld	(iy), a
	ld	bc, 0
	.local	.LBB78_82
.LBB78_82:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 40
	or	a, a
	sbc	hl, de
	jr	z, .LBB78_86
; %bb.83:                               ;   in Loop: Header=BB78_82 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2132
	add	hl, bc
	ld	(ix - 3), hl
	ld	a, (hl)
	ld	hl, (ix + 9)
	add	hl, bc
	push	hl
	pop	iy
	ld	de, 2104
	add	iy, de
	ld	(ix - 6), iy
	push	hl
	pop	iy
	ld	de, 2100
	add	iy, de
	ld	(iy), a
	ld	iy, (ix - 3)
	ld	a, (iy + 1)
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	(iy), a
	ld	iy, (ix - 3)
	ld	a, (iy + 2)
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	(iy), a
	ld	iy, (ix - 3)
	ld	a, (iy + 3)
	inc	de
	add	hl, de
	ld	(hl), a
	ld	a, (iy + 4)
	or	a, a
	ld	a, 1
	jr	nz, .LBB78_85
; %bb.84:                               ;   in Loop: Header=BB78_82 Depth=1
	ld	a, 0
	.local	.LBB78_85
.LBB78_85:                              ;   in Loop: Header=BB78_82 Depth=1
	ld	hl, (ix - 6)
	ld	(hl), a
	push	bc
	pop	hl
	ld	de, 5
	add	hl, de
	push	hl
	pop	bc
	jr	.LBB78_82
	.local	.LBB78_86
.LBB78_86:
	ld	de, 2158
	ld	hl, (ix + 9)
	add	hl, de
	ld	(ix - 9), hl
	ld	de, 0
	ld	(ix - 6), de
	.local	.LBB78_87
.LBB78_87:                              ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 6)
	ld	bc, 57
	or	a, a
	sbc	hl, bc
	jp	z, .LBB78_91
; %bb.88:                               ;   in Loop: Header=BB78_87 Depth=1
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE
	lea	hl, iy + 0
	ld	de, (ix - 6)
	add	hl, de
	ld	(ix - 3), hl
	ld	bc, 2172
	add	hl, bc
	ld	a, (hl)
	ld	de, (ix - 9)
	push	de
	pop	iy
	ld	(iy - 18), a
	ld	hl, (ix - 3)
	inc	bc
	add	hl, bc
	ld	a, (hl)
	ld	(iy - 17), a
	ld	iy, (ix - 3)
	inc	bc
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 13), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	hl, (ix - 3)
	ld	bc, 2178
	add	hl, bc
	ld	hl, (hl)
	push	de
	pop	iy
	ld	bc, (ix - 13)
	ld	(iy - 16), bc
	ld	(iy - 13), a
	ld	(iy - 12), l
	ld	(iy - 11), h
	ld	iy, (ix - 3)
	ld	bc, 2180
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 13), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	hl, (ix - 3)
	ld	bc, 2184
	add	hl, bc
	ld	hl, (hl)
	push	de
	pop	iy
	ld	bc, (ix - 13)
	ld	(iy - 10), bc
	ld	(iy - 7), a
	ld	(iy - 6), l
	ld	(iy - 5), h
	ld	iy, (ix - 3)
	ld	bc, 2186
	add	iy, bc
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	push	de
	pop	iy
	ld	(iy - 4), bc
	ld	(iy - 1), a
	ld	bc, 2190
	ld	hl, (ix - 3)
	add	hl, bc
	ld	a, (hl)
	or	a, a
	ld	a, 1
	jr	nz, .LBB78_90
; %bb.89:                               ;   in Loop: Header=BB78_87 Depth=1
	ld	a, 0
	.local	.LBB78_90
.LBB78_90:                              ;   in Loop: Header=BB78_87 Depth=1
	ld	iy, (ix - 9)
	ld	(iy), a
	ld	hl, (ix - 6)
	ld	de, 19
	add	hl, de
	lea	iy, iy + 20
	ld	(ix - 9), iy
	ld	(ix - 6), hl
	jp	.LBB78_87
	.local	.LBB78_91
.LBB78_91:
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2229)
	ld	(ix - 6), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2232)
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2233
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	de, 2200
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 6)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2204
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2235)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2238)
	ld	de, 2206
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2239)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2242)
	ld	de, 2210
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2243)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2246)
	ld	de, 2214
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2247)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2250)
	ld	de, 2218
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2251)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2254)
	ld	de, 2222
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2255
	ld	hl, (hl)
	ld	de, 2226
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2257
	ld	hl, (hl)
	ld	de, 2228
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2259
	ld	hl, (hl)
	ld	de, 2230
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2261
	ld	hl, (hl)
	ld	de, 2232
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2263
	ld	hl, (hl)
	ld	de, 2234
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2265
	ld	hl, (hl)
	ld	de, 2236
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2267
	ld	hl, (hl)
	ld	de, 2238
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2269
	ld	hl, (hl)
	ld	de, 2240
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2271
	ld	hl, (hl)
	ld	de, 2242
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2273
	ld	hl, (hl)
	ld	de, 2244
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2275
	ld	hl, (hl)
	ld	de, 2246
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 0
	.local	.LBB78_92
.LBB78_92:                              ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	ld	bc, 40
	or	a, a
	sbc	hl, bc
	jr	z, .LBB78_96
; %bb.93:                               ;   in Loop: Header=BB78_92 Depth=1
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2277
	add	hl, de
	ld	(ix - 3), hl
	ld	a, (hl)
	ld	hl, (ix + 9)
	add	hl, de
	push	hl
	pop	iy
	ld	bc, 2252
	add	iy, bc
	ld	(ix - 6), iy
	push	hl
	pop	iy
	ld	bc, 2248
	add	iy, bc
	ld	(iy), a
	ld	iy, (ix - 3)
	ld	a, (iy + 1)
	push	hl
	pop	iy
	inc	bc
	add	iy, bc
	ld	(iy), a
	ld	iy, (ix - 3)
	ld	a, (iy + 2)
	push	hl
	pop	iy
	inc	bc
	add	iy, bc
	ld	(iy), a
	ld	iy, (ix - 3)
	ld	a, (iy + 3)
	inc	bc
	add	hl, bc
	ld	(hl), a
	ld	a, (iy + 4)
	or	a, a
	ld	a, 1
	jr	nz, .LBB78_95
; %bb.94:                               ;   in Loop: Header=BB78_92 Depth=1
	ld	a, 0
	.local	.LBB78_95
.LBB78_95:                              ;   in Loop: Header=BB78_92 Depth=1
	ld	hl, (ix - 6)
	ld	(hl), a
	ex	de, hl
	ld	de, 5
	add	hl, de
	ex	de, hl
	jr	.LBB78_92
	.local	.LBB78_96
.LBB78_96:
	ld	de, 2306
	ld	hl, (ix + 9)
	add	hl, de
	ld	(ix - 3), hl
	.local	.LBB78_97
.LBB78_97:                              ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 28)
	ld	bc, 57
	or	a, a
	sbc	hl, bc
	jp	z, .LBB78_101
; %bb.98:                               ;   in Loop: Header=BB78_97 Depth=1
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE
	ld	bc, (ix - 28)
	add	iy, bc
	lea	hl, iy + 0
	lea	de, iy + 0
	ld	(ix - 6), de
	ld	bc, 2317
	add	hl, bc
	ld	a, (hl)
	ld	iy, (ix - 3)
	ld	(iy - 18), a
	push	de
	pop	hl
	inc	bc
	add	hl, bc
	ld	a, (hl)
	ld	iy, (ix - 3)
	ld	(iy - 17), a
	push	de
	pop	iy
	inc	bc
	add	iy, bc
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ex	de, hl
	ld	de, 2323
	add	hl, de
	ld	hl, (hl)
	ld	iy, (ix - 3)
	ld	(iy - 16), bc
	ld	iy, (ix - 3)
	ld	(iy - 13), a
	ld	iy, (ix - 3)
	ld	(iy - 12), l
	ld	(iy - 11), h
	ld	bc, (ix - 6)
	push	bc
	pop	iy
	ld	de, 2325
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 9), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	bc
	pop	hl
	ld	de, 2329
	add	hl, de
	ld	hl, (hl)
	ld	iy, (ix - 3)
	ld	de, (ix - 9)
	ld	(iy - 10), de
	ld	iy, (ix - 3)
	ld	(iy - 7), a
	ld	iy, (ix - 3)
	ld	(iy - 6), l
	ld	(iy - 5), h
	push	bc
	pop	iy
	ld	de, 2331
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	iy, (ix - 3)
	ld	(iy - 4), bc
	ld	iy, (ix - 3)
	ld	(iy - 1), a
	ld	bc, 2335
	ld	hl, (ix - 6)
	add	hl, bc
	ld	a, (hl)
	or	a, a
	ld	a, 1
	jr	nz, .LBB78_100
; %bb.99:                               ;   in Loop: Header=BB78_97 Depth=1
	ld	a, 0
	.local	.LBB78_100
.LBB78_100:                             ;   in Loop: Header=BB78_97 Depth=1
	ld	iy, (ix - 3)
	ld	(iy), a
	ld	hl, (ix - 28)
	ld	bc, 19
	add	hl, bc
	lea	iy, iy + 20
	ld	(ix - 3), iy
	ld	(ix - 28), hl
	jp	.LBB78_97
	.local	.LBB78_101
.LBB78_101:
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2374)
	ld	(ix - 6), hl
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2377)
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2378
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	de, 2348
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 6)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	de, 2352
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2380)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2383)
	ld	de, 2354
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2384)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2387)
	ld	de, 2358
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2388)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2391)
	ld	de, 2362
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2392)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2395)
	ld	de, 2366
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2396)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2399)
	push	bc
	pop	iy
	ld	de, 2370
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2400)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2403)
	ld	de, 2374
	push	bc
	pop	iy
	add	iy, de
	ld	(ix - 3), hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	ld	(hl), a
	ld	hl, (__ZN12_GLOBAL__N_114record_scratchE+2404)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2407)
	ld	de, 2378
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2408
	ld	hl, (hl)
	ld	de, 2382
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2410
	ld	hl, (hl)
	ld	de, 2384
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2412
	ld	hl, (hl)
	ld	de, 2386
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2414
	ld	hl, (hl)
	ld	de, 2388
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2416
	ld	hl, (hl)
	ld	de, 2390
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2418
	ld	hl, (hl)
	ld	de, 2392
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2420
	ld	hl, (hl)
	ld	de, 2394
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2422
	ld	hl, (hl)
	ld	de, 2396
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2424
	ld	hl, (hl)
	ld	de, 2398
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2426
	ld	hl, (hl)
	ld	de, 2400
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2428
	ld	hl, (hl)
	ld	de, 2402
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2430
	ld	hl, (hl)
	ld	de, 2404
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), l
	ld	(iy + 1), h
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+2432)
	ld	de, 2406
	push	bc
	pop	iy
	add	iy, de
	ld	(iy), a
	.local	.LBB78_102
.LBB78_102:
	ld	bc, (__ZN12_GLOBAL__N_114record_scratchE+12)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+15)
	ld	hl, (ix - 3)
	ld	e, (ix - 6)                     ; 1-byte Folded Reload
	call	__lcmpu
	jr	nz, .LBB78_106
; %bb.103:
	ld	iy, (ix + 9)
	ld	de, 2370
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	ld	bc, (__ZN12_GLOBAL__N_114record_scratchE+16)
	ld	a, (__ZN12_GLOBAL__N_114record_scratchE+19)
	ld	(ix - 9), hl
	ld	(ix - 13), e                    ; 1-byte Folded Spill
	call	__lcmpu
	jr	nz, .LBB78_106
; %bb.104:
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_120state_semantic_validERK9GameState
	pop	hl
	bit	0, a
	ld	a, 1
	jr	z, .LBB78_107
; %bb.105:
	ld	a, 2
	ld	de, 2408
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	push	hl
	pop	bc
	add	iy, de
	ld	hl, (ix - 3)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	e, (ix - 6)
	ld	(hl), e
	ld	de, 2412
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (ix - 9)
	ld	(iy), hl
	lea	hl, iy + 3
	ld	e, (ix - 13)
	ld	(hl), e
	ld	de, 2416
	push	bc
	pop	iy
	add	iy, de
	ld	l, (ix - 10)
	ld	(iy), l
	jr	.LBB78_107
	.local	.LBB78_106
.LBB78_106:
	ld	a, 1
	.local	.LBB78_107
.LBB78_107:                             ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end78
.Lfunc_end78:
	.size	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE, .Lfunc_end78-__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_117delete_if_presentEPKc,"ax",@progbits
	.type	__ZN12_GLOBAL__N_117delete_if_presentEPKc,@function ; -- Begin function _ZN12_GLOBAL__N_117delete_if_presentEPKc
__ZN12_GLOBAL__N_117delete_if_presentEPKc: ; @_ZN12_GLOBAL__N_117delete_if_presentEPKc
; %bb.0:
	call	__frameset0
	ld	de, (ix + 6)
	ld	hl, _.str.436
	push	hl
	push	de
	call	_ti_Open
	ld	l, a
	pop	de
	pop	de
	or	a, a
	jr	nz, .LBB79_2
; %bb.1:
	ld	a, 1
	jr	.LBB79_7
	.local	.LBB79_2
.LBB79_2:
	push	hl
	call	_ti_Close
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB79_4
; %bb.3:
	xor	a, a
	jr	.LBB79_7
	.local	.LBB79_4
.LBB79_4:
	ld	hl, (ix + 6)
	push	hl
	call	_ti_Delete
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB79_6
; %bb.5:
	ld	a, 0
	jr	.LBB79_7
	.local	.LBB79_6
.LBB79_6:
	ld	a, -1
	.local	.LBB79_7
.LBB79_7:
	pop	ix
	ret
	.local	.Lfunc_end79
.Lfunc_end79:
	.size	__ZN12_GLOBAL__N_117delete_if_presentEPKc, .Lfunc_end79-__ZN12_GLOBAL__N_117delete_if_presentEPKc
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE,"ax",@progbits
	.type	__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE,@function ; -- Begin function _ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE
__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE: ; @_ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 9)
	ld	a, 1
	ld	de, 2416
	add	hl, de
	bit	0, (hl)
	jp	nz, .LBB80_8
; %bb.1:
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115ensure_archivedEPKc
	pop	hl
	bit	0, a
	jp	z, .LBB80_7
; %bb.2:
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+7254), a
	lea	de, iy + 0
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	cp	a, 2
	jr	nz, .LBB80_7
; %bb.3:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9670)
	bit	0, a
	jr	z, .LBB80_7
; %bb.4:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9662)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9665)
	ld	de, 2408
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	jr	nz, .LBB80_7
; %bb.5:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9666)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9669)
	ld	de, 2412
	ld	iy, (ix + 9)
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	ld	a, 0
	jr	nz, .LBB80_8
; %bb.6:
	ld	bc, 2418
	ld	de, (ix + 9)
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	ldir
	ld	a, 1
	jr	.LBB80_8
	.local	.LBB80_7
.LBB80_7:
	xor	a, a
	.local	.LBB80_8
.LBB80_8:
	pop	ix
	ret
	.local	.Lfunc_end80
.Lfunc_end80:
	.size	__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE, .Lfunc_end80-__ZN12_GLOBAL__N_126refresh_archived_candidateEPKcRNS_13SaveCandidateE
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_115ensure_archivedEPKc,"ax",@progbits
	.type	__ZN12_GLOBAL__N_115ensure_archivedEPKc,@function ; -- Begin function _ZN12_GLOBAL__N_115ensure_archivedEPKc
__ZN12_GLOBAL__N_115ensure_archivedEPKc: ; @_ZN12_GLOBAL__N_115ensure_archivedEPKc
; %bb.0:
	ld	hl, -4
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, _.str.436
	push	de
	push	hl
	call	_ti_Open
	ld	e, a
	pop	hl
	pop	hl
	or	a, a
	jr	nz, .LBB81_2
; %bb.1:
	ld	l, 0
	jr	.LBB81_10
	.local	.LBB81_2
.LBB81_2:
	push	de
	ld	(ix - 3), de
	call	_ti_IsArchived
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB81_5
; %bb.3:
	ld	hl, (ix - 3)
	push	hl
	ld	hl, 1
	push	hl
	call	_ti_SetArchiveStatus
	pop	de
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB81_11
; %bb.4:
	xor	a, a
	jr	.LBB81_6
	.local	.LBB81_5
.LBB81_5:
	ld	a, 1
	.local	.LBB81_6
.LBB81_6:
	ld	(ix - 4), a
	ld	hl, (ix - 3)
	push	hl
	call	_ti_Close
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB81_8
; %bb.7:
	ld	l, 0
	jr	.LBB81_9
	.local	.LBB81_8
.LBB81_8:
	ld	l, -1
	.local	.LBB81_9
.LBB81_9:
	ld	a, (ix - 4)
	and	a, l
	ld	l, a
	.local	.LBB81_10
.LBB81_10:
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB81_11
.LBB81_11:
	ld	hl, (ix - 3)
	push	hl
	call	_ti_IsArchived
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB81_13
; %bb.12:
	ld	a, 0
	jr	.LBB81_6
	.local	.LBB81_13
.LBB81_13:
	ld	a, -1
	jr	.LBB81_6
	.local	.Lfunc_end81
.Lfunc_end81:
	.size	__ZN12_GLOBAL__N_115ensure_archivedEPKc, .Lfunc_end81-__ZN12_GLOBAL__N_115ensure_archivedEPKc
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState: ; @_ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
; %bb.0:
	call	__frameset0
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+7254), a
	lea	de, iy + 0
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	cp	a, 2
	jr	nz, .LBB82_5
; %bb.1:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9670)
	bit	0, a
	jr	z, .LBB82_5
; %bb.2:
	ld	iy, (ix + 9)
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9662)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9665)
	ld	de, 2374
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	ld	a, 0
	jr	nz, .LBB82_6
; %bb.3:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9666)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9669)
	ld	de, 2370
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	jr	z, .LBB82_7
; %bb.4:
	ld	a, 0
	jr	.LBB82_6
	.local	.LBB82_5
.LBB82_5:
	xor	a, a
	.local	.LBB82_6
.LBB82_6:
	pop	ix
	ret
	.local	.LBB82_7
.LBB82_7:
	ld	a, -1
	jr	.LBB82_6
	.local	.Lfunc_end82
.Lfunc_end82:
	.size	__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState, .Lfunc_end82-__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState
__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState: ; @_ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState
; %bb.0:
	call	__frameset0
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+7254), a
	lea	de, iy + 0
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	ld	hl, __ZL16SAVE_BACKUP_NAME
	cp	a, 2
	jr	nz, .LBB83_3
; %bb.1:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9670)
	bit	0, a
	push	hl
	call	z, __ZN12_GLOBAL__N_115ensure_archivedEPKc
	.local	.LBB83_2
.LBB83_2:
	pop	hl
	jr	.LBB83_6
	.local	.LBB83_3
.LBB83_3:
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB83_6
; %bb.4:
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_119write_verified_tempERK9GameState
	pop	hl
	bit	0, a
	jr	z, .LBB83_6
; %bb.5:
	ld	hl, __ZL14SAVE_TEMP_NAME
	ld	de, __ZL16SAVE_BACKUP_NAME
	push	de
	push	hl
	call	_ti_Rename
	pop	hl
	pop	hl
	or	a, a
	ld	hl, (ix + 6)
	push	hl
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	z, __ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
	pop	hl
	jr	.LBB83_2
	.local	.LBB83_6
.LBB83_6:
	pop	ix
	ret
	.local	.Lfunc_end83
.Lfunc_end83:
	.size	__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState, .Lfunc_end83-__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm,"ax",@progbits
	.type	__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm,@function ; -- Begin function _ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm
__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm: ; @_ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	de, (ix + 6)
	ld	iy, (ix + 9)
	ld	bc, 2408
	lea	hl, iy + 0
	ldir
	ld	de, 2412
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	d, (iy)
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE), hl
	ld	a, d
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE+3), a
	ld	e, d
	call	__lcmpzero
	jr	nz, .LBB84_2
; %bb.1:
	ld	a, 0
	jr	.LBB84_3
	.local	.LBB84_2
.LBB84_2:
	ld	a, 1
	.local	.LBB84_3
.LBB84_3:
	ld	(ix - 2), a
	ld	e, d
	push	hl
	pop	iy
	ld	bc, (ix + 12)
	ld	a, (ix + 15)
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	ld	(ix - 3), a
	push	bc
	pop	hl
	ld	e, (ix + 15)
	lea	bc, iy + 0
	ld	a, d
	call	__lsub
	push	hl
	pop	iy
	ld	(ix - 1), e                     ; 1-byte Folded Spill
	ld	bc, 604800
	ld	d, 0
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	l, a
	inc	l
	bit	0, l
	jr	nz, .LBB84_5
; %bb.4:
	push	bc
	pop	iy
	.local	.LBB84_5
.LBB84_5:
	ld	a, (ix - 2)
	ld	e, (ix - 3)
	and	a, e
	ld	e, a
	bit	0, l
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	jr	nz, .LBB84_7
; %bb.6:
	ld	a, d
	.local	.LBB84_7
.LBB84_7:
	or	a, a
	sbc	hl, hl
	bit	0, e
	jr	nz, .LBB84_9
; %bb.8:
	push	hl
	pop	iy
	.local	.LBB84_9
.LBB84_9:
	bit	0, e
	jr	nz, .LBB84_11
; %bb.10:
	ld	a, d
	.local	.LBB84_11
.LBB84_11:
	ld.sis	bc, 0
	ld	hl, (ix + 18)
	ld	(hl), iy
	lea	de, iy + 0
	push	hl
	pop	iy
	ld	(iy + 3), a
	push	de
	pop	iy
	lea	hl, iy + 0
	ld	e, a
	call	__lcmpzero
	jr	nz, .LBB84_13
; %bb.12:
	ld	de, 2404
	ld	hl, (ix + 6)
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	.LBB84_18
	.local	.LBB84_13
.LBB84_13:
	ld	de, __ZN12_GLOBAL__N_116baseline_scratchE
	ld	hl, (ix + 6)
	ld	bc, 2408
	ldir
	ld	l, a
	push	hl
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	__Z18game_apply_offlineR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	ld	de, 2412
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	hl, (ix + 12)
	ld	e, (ix + 15)
	call	__lcmpzero
	jr	z, .LBB84_16
; %bb.14:
	call	__lcmpu
	jr	c, .LBB84_16
; %bb.15:
	ld	de, 2370
	ld	iy, (ix + 6)
	add	iy, de
	ld	e, (ix + 15)
	ld	(iy), hl
	lea	iy, iy + 3
	ld	(iy), e
	.local	.LBB84_16
.LBB84_16:
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	ld	bc, 2404
	add	iy, bc
	ld.sis	bc, 0
	ld	(iy), c
	ld	(iy + 1), b
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10save_writeR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB84_18
; %bb.17:
	ld	iy, (ix + 6)
	lea	de, iy + 0
	ld	hl, __ZN12_GLOBAL__N_116baseline_scratchE
	ld	bc, 2408
	ldir
	ld	de, 2404
	add	iy, de
	ld.sis	hl, 0
	ld	(iy), l
	ld	(iy + 1), h
	or	a, a
	sbc	hl, hl
	ld	de, (ix + 18)
	push	de
	pop	iy
	ld	(iy), hl
	ld	(iy + 3), h
	.local	.LBB84_18
.LBB84_18:
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end84
.Lfunc_end84:
	.size	__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm, .Lfunc_end84-__ZN12_GLOBAL__N_111finish_loadER9GameStateRKNS_13SaveCandidateEmRm
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_119write_verified_tempERK9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_119write_verified_tempERK9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_119write_verified_tempERK9GameState
__ZN12_GLOBAL__N_119write_verified_tempERK9GameState: ; @_ZN12_GLOBAL__N_119write_verified_tempERK9GameState
; %bb.0:
	ld	hl, -15
	call	__frameset
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jp	z, .LBB85_32
; %bb.1:
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+12
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+4
	ld	de, __ZN12_GLOBAL__N_114record_scratchE+2190
	ld	(ix - 6), de
	ld	de, __ZN12_GLOBAL__N_114record_scratchE+2335
	ld	(ix - 3), de
	xor	a, a
	ld	(__ZN12_GLOBAL__N_114record_scratchE+12), a
	push	hl
	pop	de
	inc	de
	ld	bc, 2420
	ldir
	ld	hl, 4413260
	ld	(__ZN12_GLOBAL__N_114record_scratchE), hl
	ld	a, 69
	ld	(__ZN12_GLOBAL__N_114record_scratchE+3), a
	ld.sis	hl, 2
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 32
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+6
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 3
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+8
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 2401
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+10
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2374
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+12), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+15), a
	ld	de, 2370
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+16), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+19), a
	xor	a, a
	ld	(__ZN12_GLOBAL__N_114record_scratchE+32), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+32
	push	hl
	pop	iy
	inc	iy
	ld	bc, 2400
	lea	de, iy + 0
	ldir
	ld	iy, (ix + 6)
	ld	hl, (iy)
	lea	de, iy + 0
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+32
	ld	(iy), l
	ld	(iy + 1), h
	push	de
	pop	iy
	pea	iy + 2
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+34
	push	hl
	call	__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
	pop	hl
	pop	hl
	ld	de, 446
	ld	iy, (ix + 6)
	add	iy, de
	push	iy
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+478
	push	hl
	call	__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
	pop	hl
	pop	hl
	ld	de, 128
	ld	iy, 890
	ld	bc, 0
	.local	.LBB85_2
.LBB85_2:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	z, .LBB85_4
; %bb.3:                                ;   in Loop: Header=BB85_2 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	lea	de, iy + 0
	add	hl, de
	ld	de, (hl)
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+922
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	push	hl
	pop	bc
	ld	de, 128
	jr	.LBB85_2
	.local	.LBB85_4
.LBB85_4:
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 9), hl
	lea	hl, iy + 3
	ld	bc, (hl)
	lea	hl, iy + 6
	ld	de, (hl)
	ld	hl, (ix - 9)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1050), hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1053), bc
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+1050
	lea	hl, iy + 6
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 1026
	ld	iy, (ix + 6)
	add	iy, de
	ld	de, __ZN12_GLOBAL__N_114record_scratchE+1058
	lea	hl, iy + 0
	ld	bc, 10
	ldir
	ld	de, 1036
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+1068
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1038
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+1070
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1040
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1072), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1073), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1074), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1075), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1076), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1079), a
	ld	de, 1048
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+1080
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 1050
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1082), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+1083), a
	inc	de
	push	bc
	pop	iy
	add	iy, de
	push	iy
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1084
	push	hl
	call	__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
	pop	hl
	pop	hl
	ld	de, 1496
	ld	iy, (ix + 6)
	add	iy, de
	push	iy
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1528
	push	hl
	call	__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
	pop	hl
	pop	hl
	ld	iy, 1940
	ld	bc, 0
	.local	.LBB85_5
.LBB85_5:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 128
	or	a, a
	sbc	hl, de
	jr	z, .LBB85_7
; %bb.6:                                ;   in Loop: Header=BB85_5 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	lea	de, iy + 0
	add	hl, de
	ld	de, (hl)
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+1972
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	push	hl
	pop	bc
	jr	.LBB85_5
	.local	.LBB85_7
.LBB85_7:
	ld	de, 2068
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	de, __ZN12_GLOBAL__N_114record_scratchE+2100
	lea	hl, iy + 0
	ld	bc, 10
	ldir
	ld	de, 2078
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 9), hl
	lea	hl, iy + 3
	ld	bc, (hl)
	lea	hl, iy + 6
	ld	de, (hl)
	ld	hl, (ix - 9)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2110), hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2113), bc
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2110
	lea	hl, iy + 6
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 2086
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2118
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2088
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2120
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2090
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2122), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2125), a
	ld	de, 2094
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2126
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2096
	push	bc
	pop	hl
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2128), a
	inc	de
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2129), a
	inc	de
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2130), a
	inc	de
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2131), a
	ld	de, 40
	ld	bc, 0
	.local	.LBB85_8
.LBB85_8:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	z, .LBB85_10
; %bb.9:                                ;   in Loop: Header=BB85_8 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	push	hl
	pop	iy
	ld	de, 2100
	add	iy, de
	ld	a, (iy)
	ld	de, __ZN12_GLOBAL__N_114record_scratchE+2136
	push	de
	pop	iy
	add	iy, bc
	ld	(ix - 9), iy
	ld	(iy - 4), a
	push	hl
	pop	iy
	ld	de, 2101
	add	iy, de
	ld	a, (iy)
	ld	iy, (ix - 9)
	ld	(iy - 3), a
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	a, (iy)
	ld	iy, (ix - 9)
	ld	(iy - 2), a
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	a, (iy)
	ld	iy, (ix - 9)
	ld	(iy - 1), a
	inc	de
	add	hl, de
	ld	a, (hl)
	ld	(iy), a
	push	bc
	pop	hl
	ld	bc, 5
	add	hl, bc
	push	hl
	pop	bc
	ld	de, 40
	jr	.LBB85_8
	.local	.LBB85_10
.LBB85_10:
	ld	bc, 60
	ld	de, 0
	.local	.LBB85_11
.LBB85_11:                              ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB85_13
; %bb.12:                               ;   in Loop: Header=BB85_11 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	push	hl
	pop	iy
	ld	bc, 2140
	add	iy, bc
	ld	a, (iy)
	ld	iy, (ix - 6)
	ld	(iy - 18), a
	push	hl
	pop	iy
	inc	bc
	add	iy, bc
	ld	a, (iy)
	ld	iy, (ix - 6)
	ld	(iy - 17), a
	push	hl
	pop	iy
	ld	(ix - 9), de
	ex	de, hl
	ld	(ix - 15), de
	inc	bc
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 12), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	de
	pop	iy
	ld	bc, 2146
	add	iy, bc
	ld	hl, (iy)
	ld	iy, (ix - 6)
	ld	bc, (ix - 12)
	ld	(iy - 16), bc
	ld	(iy - 13), a
	ld	(iy - 12), l
	ld	(iy - 11), h
	push	de
	pop	iy
	ld	bc, 2148
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 12), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	de
	pop	iy
	ld	bc, 2152
	add	iy, bc
	ld	hl, (iy)
	ld	iy, (ix - 6)
	ld	bc, (ix - 12)
	ld	(iy - 10), bc
	ld	(iy - 7), a
	ld	(iy - 6), l
	ld	(iy - 5), h
	push	de
	pop	iy
	ld	bc, 2154
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, (hl)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	iy, (ix - 6)
	ld	(iy - 4), bc
	ld	(iy - 1), a
	ld	bc, 2158
	ld	hl, (ix - 15)
	add	hl, bc
	ld	a, (hl)
	ld	(iy), a
	ld	hl, (ix - 9)
	ld	de, 20
	add	hl, de
	lea	iy, iy + 19
	ld	(ix - 6), iy
	ex	de, hl
	ld	bc, 60
	jp	.LBB85_11
	.local	.LBB85_13
.LBB85_13:
	ld	de, 2200
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 6), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2204
	push	bc
	pop	iy
	add	iy, de
	ld	iy, (iy)
	ld	hl, (ix - 6)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2229), hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2232), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2233
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 2206
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2235), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2238), a
	ld	de, 2210
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2239), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2242), a
	ld	de, 2214
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2243), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2246), a
	ld	de, 2218
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2247), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2250), a
	ld	de, 2222
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2251), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2254), a
	ld	de, 2226
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2255
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2228
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2257
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2230
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2259
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2232
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2261
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2234
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2263
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2236
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2265
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2238
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2267
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2240
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2269
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2242
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2271
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2244
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2273
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2246
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2275
	ld	(iy), l
	ld	(iy + 1), h
	ld	bc, 0
	.local	.LBB85_14
.LBB85_14:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 40
	or	a, a
	sbc	hl, de
	jr	z, .LBB85_16
; %bb.15:                               ;   in Loop: Header=BB85_14 Depth=1
	ld	hl, (ix + 6)
	add	hl, bc
	push	hl
	pop	iy
	ld	de, 2248
	add	iy, de
	ld	a, (iy)
	ld	de, __ZN12_GLOBAL__N_114record_scratchE+2281
	push	de
	pop	iy
	add	iy, bc
	ld	(ix - 6), iy
	ld	(iy - 4), a
	push	hl
	pop	iy
	ld	de, 2249
	add	iy, de
	ld	a, (iy)
	ld	iy, (ix - 6)
	ld	(iy - 3), a
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	a, (iy)
	ld	iy, (ix - 6)
	ld	(iy - 2), a
	push	hl
	pop	iy
	inc	de
	add	iy, de
	ld	a, (iy)
	ld	iy, (ix - 6)
	ld	(iy - 1), a
	inc	de
	add	hl, de
	ld	a, (hl)
	ld	(iy), a
	push	bc
	pop	hl
	ld	bc, 5
	add	hl, bc
	push	hl
	pop	bc
	jr	.LBB85_14
	.local	.LBB85_16
.LBB85_16:
	ld	de, 0
	.local	.LBB85_17
.LBB85_17:                              ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	ld	bc, 60
	or	a, a
	sbc	hl, bc
	jp	z, .LBB85_19
; %bb.18:                               ;   in Loop: Header=BB85_17 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	push	hl
	pop	iy
	ld	bc, 2288
	add	iy, bc
	ld	a, (iy)
	ld	iy, (ix - 3)
	ld	(iy - 18), a
	push	hl
	pop	iy
	inc	bc
	add	iy, bc
	ld	a, (iy)
	ld	iy, (ix - 3)
	ld	(iy - 17), a
	push	hl
	pop	iy
	ld	(ix - 6), de
	ex	de, hl
	ld	(ix - 12), de
	inc	bc
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 9), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	de
	pop	iy
	ld	bc, 2294
	add	iy, bc
	ld	hl, (iy)
	ld	iy, (ix - 3)
	ld	bc, (ix - 9)
	ld	(iy - 16), bc
	ld	(iy - 13), a
	ld	(iy - 12), l
	ld	(iy - 11), h
	push	de
	pop	iy
	ld	bc, 2296
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 9), hl
	lea	hl, iy + 3
	ld	a, (hl)
	push	de
	pop	iy
	ld	bc, 2300
	add	iy, bc
	ld	hl, (iy)
	ld	iy, (ix - 3)
	ld	bc, (ix - 9)
	ld	(iy - 10), bc
	ld	(iy - 7), a
	ld	(iy - 6), l
	ld	(iy - 5), h
	push	de
	pop	iy
	ld	bc, 2302
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, (hl)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	iy, (ix - 3)
	ld	(iy - 4), bc
	ld	(iy - 1), a
	ld	bc, 2306
	ld	hl, (ix - 12)
	add	hl, bc
	ld	a, (hl)
	ld	(iy), a
	ld	hl, (ix - 6)
	ld	de, 20
	add	hl, de
	lea	iy, iy + 19
	ld	(ix - 3), iy
	ex	de, hl
	jp	.LBB85_17
	.local	.LBB85_19
.LBB85_19:
	ld	de, 2348
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 2352
	push	bc
	pop	iy
	add	iy, de
	ld	iy, (iy)
	ld	hl, (ix - 3)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2374), hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2377), a
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+2378
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	de, 2354
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2380), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2383), a
	ld	de, 2358
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2384), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2387), a
	ld	de, 2362
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2388), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2391), a
	ld	de, 2366
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2392), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2395), a
	push	bc
	pop	iy
	ld	de, 2370
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2396), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2399), a
	push	bc
	pop	iy
	ld	de, 2374
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2400), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2403), a
	ld	de, 2378
	push	bc
	pop	iy
	add	iy, de
	ld	de, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2404), de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2407), a
	ld	de, 2382
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2408
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2384
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2410
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2386
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2412
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2388
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2414
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2390
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2416
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2392
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2418
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2394
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2420
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2396
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2422
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2398
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2424
	ld	(iy), l
	ld	(iy + 1), h
	push	bc
	pop	iy
	ld	de, 2400
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2426
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2402
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2428
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2404
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld	iy, __ZN12_GLOBAL__N_114record_scratchE+2430
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2406
	push	bc
	pop	iy
	add	iy, de
	ld	a, (iy)
	ld	(__ZN12_GLOBAL__N_114record_scratchE+2432), a
	ld	hl, 2401
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE+32
	push	hl
	call	__Z13crc32_computePKvj
	ld	a, e
	pop	de
	pop	de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+20), hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+23), a
	or	a, a
	sbc	hl, hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+24), hl
	xor	a, a
	ld	(__ZN12_GLOBAL__N_114record_scratchE+27), a
	ld	hl, 28
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	call	__Z13crc32_computePKvj
	ld	a, e
	pop	de
	pop	de
	ld	(__ZN12_GLOBAL__N_114record_scratchE+28), hl
	ld	(__ZN12_GLOBAL__N_114record_scratchE+31), a
	ld	hl, _.str.1.433
	push	hl
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	_ti_Open
	ld	e, a
	pop	hl
	pop	hl
	or	a, a
	jp	z, .LBB85_32
; %bb.20:
	push	de
	ld	hl, 1
	push	hl
	ld	hl, 2433
	push	hl
	ld	hl, __ZN12_GLOBAL__N_114record_scratchE
	push	hl
	ld	(ix - 6), de
	call	_ti_Write
	ld	(ix - 3), hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 6)
	push	hl
	call	_ti_Close
	ex	de, hl
	pop	hl
	ld	hl, (ix - 3)
	ld	bc, 1
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB85_22
; %bb.21:
	sbc	hl, hl
	adc	hl, de
	jr	nz, .LBB85_23
	.local	.LBB85_22
.LBB85_22:
	sbc	hl, hl
	adc	hl, de
	jp	nz, .LBB85_31
	jp	.LBB85_32
	.local	.LBB85_23
.LBB85_23:
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE+7254), a
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	lea	de, iy + 0
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	cp	a, 2
	jp	nz, .LBB85_31
; %bb.24:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9662)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9665)
	ld	iy, (ix + 6)
	ld	de, 2374
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	jp	nz, .LBB85_31
; %bb.25:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9666)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9669)
	ld	iy, (ix + 6)
	ld	de, 2370
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	jr	nz, .LBB85_31
; %bb.26:
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_115ensure_archivedEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB85_31
; %bb.27:
	ld	hl, __ZN12_GLOBAL__N_117candidate_scratchE+7254
	push	hl
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	cp	a, 2
	jr	nz, .LBB85_31
; %bb.28:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9670)
	bit	0, a
	jr	z, .LBB85_31
; %bb.29:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9662)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9665)
	ld	iy, (ix + 6)
	ld	de, 2374
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	jr	nz, .LBB85_31
; %bb.30:
	ld	hl, (__ZN12_GLOBAL__N_117candidate_scratchE+9666)
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+9669)
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	d, 1
	ld	bc, 2370
	add	iy, bc
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	e, a
	ld	a, (iy)
	call	__lcmpu
	jr	z, .LBB85_33
	.local	.LBB85_31
.LBB85_31:
	ld	hl, __ZL14SAVE_TEMP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	.local	.LBB85_32
.LBB85_32:
	ld	d, 0
	.local	.LBB85_33
.LBB85_33:
	ld	a, d
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end85
.Lfunc_end85:
	.size	__ZN12_GLOBAL__N_119write_verified_tempERK9GameState, .Lfunc_end85-__ZN12_GLOBAL__N_119write_verified_tempERK9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh,"ax",@progbits
	.type	__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh,@function ; -- Begin function _ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh: ; @_ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
; %bb.0:
	call	__frameset0
	ld	de, 0
	ld	bc, 444
	.local	.LBB86_1
.LBB86_1:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB86_3
; %bb.2:                                ;   in Loop: Header=BB86_1 Depth=1
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, (iy)
	ld	a, (iy + 3)
	ld	bc, (iy + 4)
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), hl
	ld	(iy + 3), a
	ld	(iy + 4), c
	ld	(iy + 5), b
	ld	bc, 444
	ex	de, hl
	ld	de, 6
	add	hl, de
	ex	de, hl
	jr	.LBB86_1
	.local	.LBB86_3
.LBB86_3:
	pop	ix
	ret
	.local	.Lfunc_end86
.Lfunc_end86:
	.size	__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh, .Lfunc_end86-__ZN12_GLOBAL__N_112pack_numbersEPNS_10WireBigNumEPK6BigNumh
                                        ; -- End function
	.section	.text.__Z10save_writeR9GameStatem,"ax",@progbits
	.globl	__Z10save_writeR9GameStatem     ; -- Begin function _Z10save_writeR9GameStatem
	.type	__Z10save_writeR9GameStatem,@function
__Z10save_writeR9GameStatem:            ; @_Z10save_writeR9GameStatem
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	hl, (ix + 6)
	ld	iy, __ZN12_GLOBAL__N_116prepared_scratchE
	ld	bc, 2408
	lea	de, iy + 0
	ldir
	ld.sis	hl, 3
	ld	(iy), l
	ld	(iy + 1), h
	ld	bc, (__ZN12_GLOBAL__N_116prepared_scratchE+2370)
	ld	a, (__ZN12_GLOBAL__N_116prepared_scratchE+2373)
	ld	d, a
	ld	hl, (__ZN12_GLOBAL__N_117rtc_floor_scratchE)
	ld	a, (__ZN12_GLOBAL__N_117rtc_floor_scratchE+3)
	ld	iyh, a
	ld	(ix - 6), hl
	ld	e, iyh
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	ld	(ix - 3), bc
	jr	nz, .LBB87_2
; %bb.1:
	ld	hl, (ix - 6)
	ld	(ix - 3), hl
	.local	.LBB87_2
.LBB87_2:
	bit	0, a
	ld	iyl, d
	jr	nz, .LBB87_4
; %bb.3:
	ld	iyl, iyh
	.local	.LBB87_4
.LBB87_4:
	push	bc
	pop	hl
	ld	e, d
	ld	bc, (ix - 6)
	ld	a, iyh
	call	__lcmpu
	ld	bc, (ix - 3)
	ld	d, iyl
	jr	c, .LBB87_6
; %bb.5:
	push	bc
	pop	hl
	ld	e, d
	push	bc
	pop	iy
	ld	bc, (ix + 9)
	ld	a, (ix + 12)
	call	__lcmpu
	lea	bc, iy + 0
	jp	nc, .LBB87_11
	.local	.LBB87_6
.LBB87_6:
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	push	bc
	pop	iy
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB87_8
; %bb.7:
	ld	iy, (ix + 9)
	.local	.LBB87_8
.LBB87_8:
	bit	0, a
	jr	nz, .LBB87_10
; %bb.9:
	ld	d, (ix + 12)
	.local	.LBB87_10
.LBB87_10:
	ld	(__ZN12_GLOBAL__N_116prepared_scratchE+2370), iy
	ld	a, d
	ld	(__ZN12_GLOBAL__N_116prepared_scratchE+2373), a
	.local	.LBB87_11
.LBB87_11:
	ld	hl, (__ZN12_GLOBAL__N_116prepared_scratchE+2374)
	ld	iy, __ZN12_GLOBAL__N_116prepared_scratchE+2374
	lea	iy, iy + 3
	ld	e, (iy)
	ld	iy, 1
	lea	bc, iy + 0
	xor	a, a
	call	__ladd
	push	hl
	pop	bc
	ld	d, e
	lea	hl, iy + 0
	ld	e, a
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB87_13
; %bb.12:
	lea	bc, iy + 0
	.local	.LBB87_13
.LBB87_13:
	ld.sis	iy, 0
	ld	hl, __ZN12_GLOBAL__N_116prepared_scratchE+2404
	bit	0, a
	jr	nz, .LBB87_15
; %bb.14:
	ld	d, 0
	.local	.LBB87_15
.LBB87_15:
	ld	(__ZN12_GLOBAL__N_116prepared_scratchE+2374), bc
	ld	a, d
	ld	(__ZN12_GLOBAL__N_116prepared_scratchE+2377), a
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	ld	hl, __ZN12_GLOBAL__N_116prepared_scratchE
	push	hl
	call	__ZN12_GLOBAL__N_120state_semantic_validERK9GameState
	pop	hl
	bit	0, a
	jr	z, .LBB87_19
; %bb.16:
	ld	hl, __ZN12_GLOBAL__N_116prepared_scratchE
	push	hl
	call	__ZN12_GLOBAL__N_119write_verified_tempERK9GameState
	pop	hl
	bit	0, a
	jr	z, .LBB87_19
; %bb.17:
	ld	iy, __ZN12_GLOBAL__N_117candidate_scratchE
	ld	hl, (__ZN12_GLOBAL__N_116prepared_scratchE+2370)
	ld	a, (__ZN12_GLOBAL__N_116prepared_scratchE+2373)
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE), hl
	ld	(__ZN12_GLOBAL__N_117rtc_floor_scratchE+3), a
	xor	a, a
	ld	(__ZN12_GLOBAL__N_117candidate_scratchE), a
	lea	de, iy + 0
	inc	de
	ld	bc, 2417
	lea	hl, iy + 0
	ldir
	push	iy
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_111read_recordEPKcRNS_13SaveCandidateE
	pop	hl
	pop	hl
	cp	a, 1
	jr	nz, .LBB87_20
; %bb.18:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jr	nz, .LBB87_25
	jr	.LBB87_28
	.local	.LBB87_19
.LBB87_19:
	xor	a, a
	jr	.LBB87_29
	.local	.LBB87_20
.LBB87_20:
	cp	a, 2
	jr	nz, .LBB87_25
; %bb.21:
	ld	a, (__ZN12_GLOBAL__N_117candidate_scratchE+2416)
	bit	0, a
	jr	nz, .LBB87_23
; %bb.22:
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_115ensure_archivedEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB87_28
	.local	.LBB87_23
.LBB87_23:
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	call	__ZN12_GLOBAL__N_117delete_if_presentEPKc
	pop	hl
	bit	0, a
	jr	z, .LBB87_28
; %bb.24:
	ld	hl, __ZL16SAVE_BACKUP_NAME
	push	hl
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	_ti_Rename
	pop	hl
	pop	hl
	or	a, a
	jr	nz, .LBB87_28
	.local	.LBB87_25
.LBB87_25:
	ld	hl, __ZL14SAVE_TEMP_NAME
	ld	de, __ZL17SAVE_PRIMARY_NAME
	push	de
	push	hl
	call	_ti_Rename
	pop	hl
	pop	hl
	or	a, a
	jr	nz, .LBB87_28
; %bb.26:
	ld	hl, __ZN12_GLOBAL__N_116prepared_scratchE
	push	hl
	ld	hl, __ZL17SAVE_PRIMARY_NAME
	push	hl
	call	__ZN12_GLOBAL__N_119verify_named_recordEPKcRK9GameState
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jr	z, .LBB87_29
; %bb.27:
	ld	hl, __ZN12_GLOBAL__N_116prepared_scratchE
	push	hl
	call	__ZN12_GLOBAL__N_118ensure_backup_copyERK9GameState
	pop	hl
	.local	.LBB87_28
.LBB87_28:
	ld	a, 1
	ld	de, (ix + 6)
	ld	hl, __ZN12_GLOBAL__N_116prepared_scratchE
	ld	bc, 2408
	ldir
	.local	.LBB87_29
.LBB87_29:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end87
.Lfunc_end87:
	.size	__Z10save_writeR9GameStatem, .Lfunc_end87-__Z10save_writeR9GameStatem
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_120state_semantic_validERK9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_120state_semantic_validERK9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_120state_semantic_validERK9GameState
__ZN12_GLOBAL__N_120state_semantic_validERK9GameState: ; @_ZN12_GLOBAL__N_120state_semantic_validERK9GameState
; %bb.0:
	ld	hl, -27
	call	__frameset
	ld	iy, (ix + 6)
	xor	a, a
	ld	hl, (iy)
	ld	de, 2374
	add	iy, de
	ld.sis	de, 3
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB88_25
; %bb.1:
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB88_25
; %bb.2:
	ld	bc, 6
	ld	de, -450
	ld	hl, _UPGRADE_DEFS+16
	ld	iy, 6
	ld	(ix - 6), hl
	.local	.LBB88_3
.LBB88_3:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	add	hl, bc
	ld	(ix - 3), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB88_8
; %bb.4:                                ;   in Loop: Header=BB88_3 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 9), hl
	ld	de, 452
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	bc, iy + 0
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.5:                                ;   in Loop: Header=BB88_3 Depth=1
	ld	hl, (ix - 9)
	ld	de, 896
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.6:                                ;   in Loop: Header=BB88_3 Depth=1
	ld	hl, (ix - 9)
	ld	de, 1502
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.7:                                ;   in Loop: Header=BB88_3 Depth=1
	ld	de, 1946
	ld	hl, (ix - 9)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	ld	de, (ix - 3)
	ld	a, 0
	ld	bc, 6
	ld	iy, 6
	jp	nz, .LBB88_3
	jp	.LBB88_25
	.local	.LBB88_8
.LBB88_8:
	ld	de, 2348
	ld	hl, (ix + 6)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.9:
	ld	de, 2200
	ld	hl, (ix + 6)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.10:
	ld	de, 2288
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 12), hl
	ld	de, 2140
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 9), hl
	ld	hl, -80
	push	hl
	pop	bc
	.local	.LBB88_11
.LBB88_11:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	push	bc
	pop	de
	ld	bc, 20
	add	hl, bc
	ld	(ix - 3), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB88_16
; %bb.12:                               ;   in Loop: Header=BB88_11 Depth=1
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 15), hl
	ld	de, 2370
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.13:                               ;   in Loop: Header=BB88_11 Depth=1
	ld	hl, (ix - 15)
	ld	de, 2376
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.14:                               ;   in Loop: Header=BB88_11 Depth=1
	ld	hl, (ix - 15)
	ld	de, 2222
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.15:                               ;   in Loop: Header=BB88_11 Depth=1
	ld	de, 2228
	ld	hl, (ix - 15)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	ld	bc, (ix - 3)
	ld	de, (ix + 6)
	push	de
	pop	iy
	jp	nz, .LBB88_11
	jp	.LBB88_24
	.local	.LBB88_16
.LBB88_16:
	ld	de, 0
	.local	.LBB88_17
.LBB88_17:                              ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	ld	bc, 2
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, 66
	or	a, a
	sbc	hl, bc
	jr	z, .LBB88_20
; %bb.18:                               ;   in Loop: Header=BB88_17 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 3), hl
	ld	de, 890
	add	hl, de
	ld	de, (hl)
	ld	hl, (ix - 6)
	ld	bc, (hl)
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jp	c, .LBB88_24
; %bb.19:                               ;   in Loop: Header=BB88_17 Depth=1
	ld	(ix - 15), iy
	ld	iy, (ix - 6)
	lea	iy, iy + 20
	ld	(ix - 6), iy
	ld	de, 1940
	ld	hl, (ix - 3)
	add	hl, de
	ld	de, (hl)
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	de, (ix - 15)
	jr	nc, .LBB88_17
	jp	.LBB88_24
	.local	.LBB88_20
.LBB88_20:
	ld	hl, (ix + 6)
	push	hl
	call	__Z30systems_persistent_state_validRK9GameState
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.21:
	ld	de, 2394
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, (hl)
	ld	bc, 2396
	lea	hl, iy + 0
	add	hl, bc
	ld	hl, (hl)
	ld	bc, 2398
	add	iy, bc
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	c, .LBB88_24
; %bb.22:
	ld	hl, (iy)
	ld.sis	de, 1024
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	nc, .LBB88_24
; %bb.23:
	ld	hl, (ix + 6)
	push	hl
	call	__Z24game_ulc_sacrifice_countRK9GameState
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z23game_ulc_min_sacrificesRK9GameState
	ld	e, a
	pop	hl
	ld	bc, 2230
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, bc
	ld	(ix - 6), hl
	ld	bc, 2232
	lea	hl, iy + 0
	add	hl, bc
	ld	(ix - 15), hl
	ld	bc, 2234
	lea	hl, iy + 0
	add	hl, bc
	ld	(ix - 18), hl
	ld	bc, 2236
	add	iy, bc
	ld	a, (ix - 3)                     ; 1-byte Folded Reload
	cp	a, e
	jr	nc, .LBB88_26
	.local	.LBB88_24
.LBB88_24:
	xor	a, a
	.local	.LBB88_25
.LBB88_25:                              ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB88_26
.LBB88_26:
	ld	hl, (ix - 6)
	ld	hl, (hl)
	ld.sis	de, 1001
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	a, 0
	jp	nc, .LBB88_25
; %bb.27:
	ld	hl, (ix - 15)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB88_25
; %bb.28:
	ld	hl, (ix - 18)
	ld	hl, (hl)
	ld.sis	de, 501
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB88_25
; %bb.29:
	ld	hl, (iy)
	ld.sis	de, 101
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB88_24
; %bb.30:
	ld	bc, 2242
	ld	de, (ix + 6)
	push	de
	pop	hl
	add	hl, bc
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	bc, 2244
	push	de
	pop	hl
	add	hl, bc
	ld	hl, (hl)
	ld	bc, 2246
	push	de
	pop	iy
	add	iy, bc
	ld	(ix - 6), iy
	ld	bc, 1018
	push	de
	pop	iy
	add	iy, bc
                                        ; kill: def $hl killed $hl killed $uhl
	ld	de, (ix - 3)
	or	a, a
	sbc.sis	hl, de
	jp	c, .LBB88_24
; %bb.31:
	ld	hl, (ix - 6)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1024
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB88_24
; %bb.32:
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	bc, (hl)
	ld	hl, 16
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	ld	hl, (ix - 3)
	ld	(ix - 6), de
	ld	(ix - 15), bc
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llcmpu
	pop	hl
	pop	hl
	pop	hl
	jp	nc, .LBB88_24
; %bb.33:
	ld	de, 1035
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 64
	jp	nc, .LBB88_24
; %bb.34:
	ld	de, 1038
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 18), hl
	ld	de, 1048
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
	ld	de, 2078
	add	iy, de
	ld.sis	de, 64
	ld	(ix - 21), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB88_24
; %bb.35:
	ld	hl, (ix - 18)
	ld	hl, (hl)
	ld	(ix - 18), hl
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 16
	push	iy
	ld	iy, 0
	push	iy
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llcmpu
	pop	hl
	pop	hl
	pop	hl
	jp	nc, .LBB88_24
; %bb.36:
	ld	de, 2077
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 64
	jp	nc, .LBB88_24
; %bb.37:
	ld	de, 2086
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 27), hl
	ld	de, 2094
	push	bc
	pop	hl
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 24), hl
	ld	hl, 3
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 131073
	push	hl
	ld	hl, (ix - 3)
	ld	de, (ix - 6)
	ld	bc, (ix - 15)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	push	hl
	pop	iy
	ld	(ix - 3), de
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 24)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 64
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB88_24
; %bb.38:
	ld	hl, 3
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 131073
	push	hl
	lea	hl, iy + 0
	ld	de, (ix - 3)
	call	__llcmpu
	pop	hl
	pop	hl
	pop	hl
	jp	nz, .LBB88_24
; %bb.39:
	ld	de, 1026
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	ld	l, 1
	and	a, l
	ld	l, a
	bit	0, l
	jp	z, .LBB88_24
; %bb.40:
	ld	de, 1036
	ld	hl, (ix + 6)
	add	hl, de
	ld	hl, (hl)
	ld.sis	bc, 1
	ld	(ix - 3), hl
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sand
	bit	0, l
	jp	z, .LBB88_24
; %bb.41:
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 78
	jp	nc, .LBB88_24
; %bb.42:
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z18game_area_unlockedRK9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.43:
	ld	de, 1041
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 16
	jp	nc, .LBB88_24
; %bb.44:                               ; %_Z18game_tool_unlockedRK9GameStateh.exit
	ld	de, 0
	ld	hl, (ix - 3)
	ld	e, l
	ld	d, h
	ld	hl, 1
	ld	c, a
	call	__ishl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB88_24
; %bb.45:
	ld	de, 1042
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	inc	de
	add	iy, de
	ld	a, (hl)
	cp	a, 16
	jp	nc, .LBB88_24
; %bb.46:
	ld	a, (iy)
	cp	a, 74
	jp	nc, .LBB88_24
; %bb.47:
	ld	de, 1051
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	dec	de
	add	hl, de
	ld	e, (hl)
	bit	0, (iy)
	jp	z, .LBB88_58
; %bb.48:
	ld	hl, (ix - 21)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB88_24
; %bb.49:
	ld	a, e
	cp	a, 6
	jp	nc, .LBB88_24
; %bb.50:
	ld	bc, 2096
	ld	hl, (ix + 6)
	add	hl, bc
	ld	d, (hl)
	ld	a, d
	cp	a, 78
	jp	nc, .LBB88_24
; %bb.51:
	ld	bc, 2097
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, bc
	ld	a, (hl)
	inc	bc
	lea	hl, iy + 0
	add	hl, bc
	inc	bc
	add	iy, bc
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	cp	a, 16
	jp	nc, .LBB88_24
; %bb.52:
	ld	a, (hl)
	cp	a, 16
	jp	nc, .LBB88_24
; %bb.53:
	ld	a, (iy)
	cp	a, 74
	jp	nc, .LBB88_24
; %bb.54:
	or	a, a
	sbc	hl, hl
	ld	l, d
	ld	c, 3
	call	__ishru
	push	hl
	pop	bc
	ld	hl, (ix + 6)
	add	hl, bc
	ld	bc, 2068
	add	hl, bc
	ld	b, (hl)
	ld	l, 7
	ld	a, d
	and	a, l
	ld	c, a
	ld	hl, 1
	call	__ishl
	ld	a, l
	and	a, b
	ld	l, a
	or	a, a
	jp	z, .LBB88_24
; %bb.55:
	ld	iy, 0
	ld	hl, (ix - 27)
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld	hl, 1
	ld	c, (ix - 3)                     ; 1-byte Folded Reload
	call	__ishl
	lea	bc, iy + 0
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB88_24
; %bb.56:
	ld	a, e
	cp	a, 2
	jr	nz, .LBB88_59
; %bb.57:
	ld	hl, (ix - 18)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB88_24
	jr	.LBB88_59
	.local	.LBB88_58
.LBB88_58:
	ld	a, e
	cp	a, -1
	jp	nz, .LBB88_24
	.local	.LBB88_59
.LBB88_59:
	ld	de, 2248
	ld	hl, (ix + 6)
	add	hl, de
	push	hl
	call	__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.60:
	ld	hl, (ix - 12)
	push	hl
	call	__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.61:
	ld	de, 2100
	ld	hl, (ix + 6)
	add	hl, de
	push	hl
	call	__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem
	pop	hl
	bit	0, a
	jp	z, .LBB88_24
; %bb.62:
	ld	hl, (ix - 9)
	push	hl
	call	__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer
	pop	hl
	bit	0, a
	ld	a, 0
	jp	z, .LBB88_25
; %bb.63:
	ld	de, 2406
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	cp	a, 8
                                        ; kill: def $a killed $a
	sbc	a, a
	jp	.LBB88_25
	.local	.Lfunc_end88
.Lfunc_end88:
	.size	__ZN12_GLOBAL__N_120state_semantic_validERK9GameState, .Lfunc_end88-__ZN12_GLOBAL__N_120state_semantic_validERK9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem,"ax",@progbits
	.type	__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem,@function ; -- Begin function _ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem
__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem: ; @_ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem
; %bb.0:
	ld	hl, -7
	call	__frameset
	ld	iy, (ix + 6)
	xor	a, a
	ld	(ix - 7), a
	ld	de, 0
	lea	hl, iy + 4
	ld	(ix - 6), hl
	.local	.LBB89_1
.LBB89_1:                               ; =>This Inner Loop Header: Depth=1
	ld	bc, 8
	ld	(ix - 3), de
	ex	de, hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB89_13
; %bb.2:                                ;   in Loop: Header=BB89_1 Depth=1
	ld	iy, (ix - 6)
	ld	a, (iy - 3)
	cp	a, 101
	jp	nc, .LBB89_13
; %bb.3:                                ;   in Loop: Header=BB89_1 Depth=1
	or	a, a
	jp	nz, .LBB89_9
; %bb.4:                                ;   in Loop: Header=BB89_1 Depth=1
	ld	hl, (ix - 6)
	ld	a, (hl)
	bit	0, a
	jp	nz, .LBB89_13
	.local	.LBB89_5
.LBB89_5:                               ;   in Loop: Header=BB89_1 Depth=1
	bit	0, a
	jp	z, .LBB89_8
; %bb.6:                                ;   in Loop: Header=BB89_1 Depth=1
	ld	hl, 1
	ld	iy, (ix - 6)
	ld	c, (iy - 2)
	call	__ishl
	ld	c, (ix - 7)
	ld	a, l
	and	a, c
	ld	c, a
	or	a, a
	jp	nz, .LBB89_13
; %bb.7:                                ;   in Loop: Header=BB89_1 Depth=1
                                        ; kill: def $l killed $l killed $uhl
	ld	c, (ix - 7)
	ld	a, c
	or	a, l
	ld	c, a
	ld	(ix - 7), c
	.local	.LBB89_8
.LBB89_8:                               ;   in Loop: Header=BB89_1 Depth=1
	ld	de, (ix - 3)
	inc	de
	ld	iy, (ix - 6)
	lea	iy, iy + 5
	ld	(ix - 6), iy
	jp	.LBB89_1
	.local	.LBB89_9
.LBB89_9:                               ;   in Loop: Header=BB89_1 Depth=1
	ld	iy, (ix - 6)
	ld	a, (iy - 4)
	cp	a, 23
	jr	nc, .LBB89_13
; %bb.10:                               ;   in Loop: Header=BB89_1 Depth=1
	ld	iy, (ix - 6)
	ld	a, (iy - 2)
	cp	a, 4
	jr	nc, .LBB89_13
; %bb.11:                               ;   in Loop: Header=BB89_1 Depth=1
	ld	iy, (ix - 6)
	ld	a, (iy - 1)
	cp	a, 51
	jr	nc, .LBB89_13
; %bb.12:                               ;   in Loop: Header=BB89_1 Depth=1
	ld	hl, (ix - 6)
	ld	a, (hl)
	jp	.LBB89_5
	.local	.LBB89_13
.LBB89_13:
	ld	hl, (ix - 3)
	ld	de, 8
	or	a, a
	sbc	hl, de
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end89
.Lfunc_end89:
	.size	__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem, .Lfunc_end89-__ZN12_GLOBAL__N_119crafted_items_validEPK11CraftedItem
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer,"ax",@progbits
	.type	__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer,@function ; -- Begin function _ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer
__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer: ; @_ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	hl, (ix + 6)
	ld	(ix - 3), hl
	ld	bc, 0
	.local	.LBB90_1
.LBB90_1:                               ; =>This Inner Loop Header: Depth=1
	ld	de, 3
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	z, .LBB90_10
; %bb.2:                                ;   in Loop: Header=BB90_1 Depth=1
	ld	hl, (ix - 3)
	ld	l, (hl)
	ld	a, l
	cp	a, 74
	jr	nc, .LBB90_10
; %bb.3:                                ;   in Loop: Header=BB90_1 Depth=1
	push	bc
	pop	de
	ld	iy, (ix - 3)
	ld	h, (iy + 1)
	ld	a, h
	cp	a, 74
	jr	nc, .LBB90_10
; %bb.4:                                ;   in Loop: Header=BB90_1 Depth=1
	ld	iy, (ix - 3)
	bit	0, (iy + 18)
	push	de
	pop	bc
	jr	z, .LBB90_9
; %bb.5:                                ;   in Loop: Header=BB90_1 Depth=1
	ld	a, l
	cp	a, h
	jr	z, .LBB90_10
; %bb.6:                                ;   in Loop: Header=BB90_1 Depth=1
	ld	iy, (ix - 3)
	ld	hl, (iy + 14)
	ld	e, (iy + 17)
	call	__lcmpzero
	jr	z, .LBB90_10
; %bb.7:                                ;   in Loop: Header=BB90_1 Depth=1
	ld	iy, (ix - 3)
	ld	hl, (iy + 2)
	ld	e, (iy + 5)
	call	__lcmpzero
	jr	z, .LBB90_10
; %bb.8:                                ;   in Loop: Header=BB90_1 Depth=1
	ld	iy, (ix - 3)
	ld	hl, (iy + 8)
	ld	e, (iy + 11)
	call	__lcmpzero
	jr	z, .LBB90_10
	.local	.LBB90_9
.LBB90_9:                               ;   in Loop: Header=BB90_1 Depth=1
	inc	bc
	ld	iy, (ix - 3)
	lea	iy, iy + 20
	ld	(ix - 3), iy
	jr	.LBB90_1
	.local	.LBB90_10
.LBB90_10:
	push	bc
	pop	hl
	ld	de, 3
	or	a, a
	sbc	hl, de
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end90
.Lfunc_end90:
	.size	__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer, .Lfunc_end90-__ZN12_GLOBAL__N_118trade_offers_validEPK10TradeOffer
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh,"ax",@progbits
	.type	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh,@function ; -- Begin function _ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh: ; @_ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
; %bb.0:
	call	__frameset0
	ld	de, 0
	ld	bc, 444
	.local	.LBB91_1
.LBB91_1:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB91_3
; %bb.2:                                ;   in Loop: Header=BB91_1 Depth=1
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, (iy)
	ld	a, (iy + 3)
	ld	bc, (iy + 4)
	ld	iy, (ix + 6)
	add	iy, de
	ld	(iy), hl
	ld	(iy + 3), a
	ld	(iy + 4), c
	ld	(iy + 5), b
	ld	bc, 444
	ex	de, hl
	ld	de, 6
	add	hl, de
	ex	de, hl
	jr	.LBB91_1
	.local	.LBB91_3
.LBB91_3:
	pop	ix
	ret
	.local	.Lfunc_end91
.Lfunc_end91:
	.size	__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh, .Lfunc_end91-__ZN12_GLOBAL__N_114unpack_numbersEP6BigNumPKNS_10WireBigNumEh
                                        ; -- End function
	.section	.text.__Z11save_manualR9GameStatem,"ax",@progbits
	.globl	__Z11save_manualR9GameStatem    ; -- Begin function _Z11save_manualR9GameStatem
	.type	__Z11save_manualR9GameStatem,@function
__Z11save_manualR9GameStatem:           ; @_Z11save_manualR9GameStatem
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, (ix + 9)
	ld	a, (ix + 12)
	ld	(ix + 6), hl
	ld	(ix + 9), de
	ld	(ix + 12), a
	pop	ix
	jp	__Z10save_writeR9GameStatem
	.local	.Lfunc_end92
.Lfunc_end92:
	.size	__Z11save_manualR9GameStatem, .Lfunc_end92-__Z11save_manualR9GameStatem
                                        ; -- End function
	.section	.text.__Z9save_autoR9GameStatemm,"ax",@progbits
	.globl	__Z9save_autoR9GameStatemm      ; -- Begin function _Z9save_autoR9GameStatemm
	.type	__Z9save_autoR9GameStatemm,@function
__Z9save_autoR9GameStatemm:             ; @_Z9save_autoR9GameStatemm
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 6)
	ld	e, 1
	ld	d, 0
	ld	bc, 2406
	lea	hl, iy + 0
	add	hl, bc
	ld	a, (hl)
	and	a, e
	ld	l, a
	bit	0, l
	jr	nz, .LBB93_2
; %bb.1:
	ld.sis	hl, 0
	ld	bc, 2404
	add	iy, bc
	ld	(iy), l
	ld	(iy + 1), h
	jp	.LBB93_7
	.local	.LBB93_2
.LBB93_2:
	ld	bc, 2404
	lea	hl, iy + 0
	add	hl, bc
	ld	(ix - 6), hl
	ld	hl, (hl)
	ld.sis	bc, 60
	ld	(ix - 3), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB93_6
; %bb.3:
	ld	hl, 60
	ld	bc, 0
	ld	a, c
	ld	de, (ix - 3)
	ld	c, e
	ld	b, d
	or	a, a
	sbc	hl, bc
	push	hl
	pop	bc
	ld	hl, (ix + 15)
	ld	e, (ix + 18)
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	ld	bc, (ix + 15)
	ld	hl, (ix - 3)
	add.sis	hl, bc
	push	hl
	pop	bc
	bit	0, a
	jr	nz, .LBB93_5
; %bb.4:
	ld.sis	bc, 60
	.local	.LBB93_5
.LBB93_5:
	ld	hl, (ix - 6)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	bit	0, a
	ld	d, 0
	jr	nz, .LBB93_7
	.local	.LBB93_6
.LBB93_6:
	ld	hl, (ix + 9)
	ld	a, (ix + 12)
	ld	e, a
	push	de
	push	hl
	push	iy
	call	__Z10save_writeR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	b, 7
	call	__bshl
	rlc	a
	sbc	a, a
	ld	l, 2
	add	a, l
	ld	d, a
	.local	.LBB93_7
.LBB93_7:
	ld	a, d
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end93
.Lfunc_end93:
	.size	__Z9save_autoR9GameStatemm, .Lfunc_end93-__Z9save_autoR9GameStatemm
                                        ; -- End function
	.section	.text.__Z30systems_persistent_state_validRK9GameState,"ax",@progbits
	.globl	__Z30systems_persistent_state_validRK9GameState ; -- Begin function _Z30systems_persistent_state_validRK9GameState
	.type	__Z30systems_persistent_state_validRK9GameState,@function
__Z30systems_persistent_state_validRK9GameState: ; @_Z30systems_persistent_state_validRK9GameState
; %bb.0:
	ld	hl, -15
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 890
	add	hl, de
	push	hl
	call	__ZN12_GLOBAL__N_123persistent_levels_validEPKt
	pop	hl
	bit	0, a
	jp	z, .LBB94_10
; %bb.1:
	ld	de, 1940
	ld	hl, (ix + 6)
	add	hl, de
	push	hl
	call	__ZN12_GLOBAL__N_123persistent_levels_validEPKt
	pop	hl
	ld	de, 2382
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	push	hl
	pop	bc
	ld	de, 2384
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 3), hl
	ld	de, 2386
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 6), hl
	ld	de, 2388
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 9), hl
	ld	de, 2390
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 12), hl
	ld	de, 2392
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 15), hl
	ld	de, 2226
	add	iy, de
	bit	0, a
	jp	z, .LBB94_10
; %bb.2:
	push	bc
	pop	hl
	ld	hl, (hl)
	ld.sis	de, 1001
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	a, 0
	jp	nc, .LBB94_11
; %bb.3:
	ld	hl, (ix - 3)
	ld	hl, (hl)
	ld.sis	de, 501
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB94_11
; %bb.4:
	ld	hl, (ix - 6)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1001
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB94_11
; %bb.5:
	ld	hl, (ix - 9)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB94_11
; %bb.6:
	ld	hl, (ix - 12)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 501
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB94_11
; %bb.7:
	ld	hl, (ix - 15)
	ld	hl, (hl)
	ld.sis	de, 101
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB94_11
; %bb.8:
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1001
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB94_11
; %bb.9:
	ld	bc, 2228
	ld	hl, (ix + 6)
	add	hl, bc
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 501
	or	a, a
	sbc.sis	hl, de
                                        ; kill: def $a killed $a
	sbc	a, a
	jr	.LBB94_11
	.local	.LBB94_10
.LBB94_10:
	xor	a, a
	.local	.LBB94_11
.LBB94_11:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end94
.Lfunc_end94:
	.size	__Z30systems_persistent_state_validRK9GameState, .Lfunc_end94-__Z30systems_persistent_state_validRK9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_123persistent_levels_validEPKt,"ax",@progbits
	.type	__ZN12_GLOBAL__N_123persistent_levels_validEPKt,@function ; -- Begin function _ZN12_GLOBAL__N_123persistent_levels_validEPKt
__ZN12_GLOBAL__N_123persistent_levels_validEPKt: ; @_ZN12_GLOBAL__N_123persistent_levels_validEPKt
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	xor	a, a
	ld	hl, (iy + 66)
	ld.sis	de, 1001
                                        ; kill: def $hl killed $hl killed $uhl
	sbc.sis	hl, de
	jp	nc, .LBB95_27
; %bb.1:
	ld	hl, (iy + 68)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB95_27
; %bb.2:
	ld	hl, (iy + 70)
	ld.sis	bc, 501
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.3:
	ld	hl, (iy + 72)
	ld.sis	bc, 201
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.4:
	ld	hl, (iy + 74)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.5:
	ld	hl, (iy + 76)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.6:
	ld	hl, (iy + 78)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.7:
	ld	hl, (iy + 80)
	ld.sis	bc, 51
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.8:
	ld	hl, (iy + 84)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 501
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.9:
	ld	hl, (iy + 86)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.10:
	ld	hl, (iy + 88)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.11:
	ld	hl, (iy + 92)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.12:
	ld	hl, (iy + 94)
	ld.sis	bc, 33
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.13:
	ld	hl, (iy + 96)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 501
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.14:
	ld	hl, (iy + 98)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB95_27
; %bb.15:
	ld	hl, (iy + 100)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.16:
	ld	hl, (iy + 102)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.17:
	ld	hl, (iy + 104)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.18:
	ld	hl, (iy + 106)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB95_27
; %bb.19:
	ld	hl, (iy + 108)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.20:
	ld	hl, (iy + 110)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB95_27
; %bb.21:
	ld	hl, (iy + 112)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.22:
	ld	hl, (iy + 114)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.23:
	ld	hl, (iy + 116)
	ld.sis	bc, 4096
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.24:
	ld	hl, (iy + 122)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 501
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB95_27
; %bb.25:
	ld	hl, (iy + 124)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB95_27
; %bb.26:
	ld	hl, (iy + 126)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
                                        ; kill: def $a killed $a
	sbc	a, a
	.local	.LBB95_27
.LBB95_27:
	pop	ix
	ret
	.local	.Lfunc_end95
.Lfunc_end95:
	.size	__ZN12_GLOBAL__N_123persistent_levels_validEPKt, .Lfunc_end95-__ZN12_GLOBAL__N_123persistent_levels_validEPKt
                                        ; -- End function
	.section	.text.__Z21systems_trade_presentRK9GameStateh,"ax",@progbits
	.globl	__Z21systems_trade_presentRK9GameStateh ; -- Begin function _Z21systems_trade_presentRK9GameStateh
	.type	__Z21systems_trade_presentRK9GameStateh,@function
__Z21systems_trade_presentRK9GameStateh: ; @_Z21systems_trade_presentRK9GameStateh
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 3
	jr	nc, .LBB96_2
; %bb.1:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 20
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 2288
	add	iy, de
	push	iy
	call	__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
	pop	hl
	jr	.LBB96_3
	.local	.LBB96_2
.LBB96_2:
	xor	a, a
	.local	.LBB96_3
.LBB96_3:
	pop	ix
	ret
	.local	.Lfunc_end96
.Lfunc_end96:
	.size	__Z21systems_trade_presentRK9GameStateh, .Lfunc_end96-__Z21systems_trade_presentRK9GameStateh
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer,"ax",@progbits
	.type	__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer,@function ; -- Begin function _ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer: ; @_ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	c, 0
	ld	l, (iy)
	ld	a, l
	cp	a, 74
	jr	nc, .LBB97_9
; %bb.1:
	ld	e, (iy + 1)
	ld	a, e
	cp	a, 74
	jr	nc, .LBB97_9
; %bb.2:
	ld	a, l
	cp	a, e
	jr	z, .LBB97_9
; %bb.3:
	lea	hl, iy + 2
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB97_8
; %bb.4:
	ld	iy, (ix + 6)
	lea	hl, iy + 8
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB97_8
; %bb.5:
	ld	iy, (ix + 6)
	ld	hl, (iy + 2)
	ld	e, (iy + 5)
	call	__lcmpzero
	ld	c, 0
	jr	z, .LBB97_9
; %bb.6:
	ld	hl, (iy + 8)
	ld	e, (iy + 11)
	call	__lcmpzero
	jr	z, .LBB97_9
; %bb.7:
	ld	c, -1
	jr	.LBB97_9
	.local	.LBB97_8
.LBB97_8:
	ld	c, 0
	.local	.LBB97_9
.LBB97_9:
	ld	a, c
	pop	ix
	ret
	.local	.Lfunc_end97
.Lfunc_end97:
	.size	__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer, .Lfunc_end97-__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
                                        ; -- End function
	.section	.text.__Z25systems_trade_completionsRK9GameState,"ax",@progbits
	.globl	__Z25systems_trade_completionsRK9GameState ; -- Begin function _Z25systems_trade_completionsRK9GameState
	.type	__Z25systems_trade_completionsRK9GameState,@function
__Z25systems_trade_completionsRK9GameState: ; @_Z25systems_trade_completionsRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 954
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	pop	ix
	ret
	.local	.Lfunc_end98
.Lfunc_end98:
	.size	__Z25systems_trade_completionsRK9GameState, .Lfunc_end98-__Z25systems_trade_completionsRK9GameState
                                        ; -- End function
	.section	.text.__Z23systems_generate_tradesR9GameStatem,"ax",@progbits
	.globl	__Z23systems_generate_tradesR9GameStatem ; -- Begin function _Z23systems_generate_tradesR9GameStatem
	.type	__Z23systems_generate_tradesR9GameStatem,@function
__Z23systems_generate_tradesR9GameStatem: ; @_Z23systems_generate_tradesR9GameStatem
; %bb.0:
	ld	hl, -63
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 24), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1024
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB99_50
; %bb.1:
	ld	iyl, 0
	xor	a, a
	ld	(ix - 28), a
	lea	hl, ix - 7
	ld	(ix - 40), hl
	lea	hl, ix - 13
	ld	(ix - 43), hl
	lea	hl, ix - 19
	ld	(ix - 46), hl
	ld	de, 60
	ld	bc, 0
	push	af
	ld	a, iyl
	ld	(ix - 34), a                    ; 1-byte Folded Spill
	pop	af
	push	af
	ld	a, iyl
	ld	(ix - 27), a                    ; 1-byte Folded Spill
	pop	af
	.local	.LBB99_2
.LBB99_2:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	iy, (ix + 6)
	jr	z, .LBB99_10
; %bb.3:                                ;   in Loop: Header=BB99_2 Depth=1
	lea	hl, iy + 0
	ld	(ix - 31), bc
	add	hl, bc
	push	hl
	pop	iy
	ld	de, 2288
	add	iy, de
	ld	(ix - 37), hl
	ld	de, 2306
	add	hl, de
	bit	0, (hl)
	ld	e, 1
	jr	nz, .LBB99_9
; %bb.4:                                ;   in Loop: Header=BB99_2 Depth=1
	push	iy
	call	__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
	pop	hl
	bit	0, a
	jr	z, .LBB99_8
; %bb.5:                                ;   in Loop: Header=BB99_2 Depth=1
	ld	de, 2302
	ld	iy, (ix - 37)
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	ld	a, 1
	jr	z, .LBB99_7
; %bb.6:                                ;   in Loop: Header=BB99_2 Depth=1
	ld	a, 0
	.local	.LBB99_7
.LBB99_7:                               ;   in Loop: Header=BB99_2 Depth=1
	ld	l, (ix - 27)
	or	a, l
	ld	e, a
	jr	.LBB99_9
	.local	.LBB99_8
.LBB99_8:                               ;   in Loop: Header=BB99_2 Depth=1
	ld	e, (ix - 27)                    ; 1-byte Folded Reload
	.local	.LBB99_9
.LBB99_9:                               ;   in Loop: Header=BB99_2 Depth=1
	ld	hl, (ix - 31)
	ld	bc, 20
	add	hl, bc
	push	hl
	pop	bc
	ld	(ix - 27), e                    ; 1-byte Folded Spill
	ld	de, 60
	jr	.LBB99_2
	.local	.LBB99_10
.LBB99_10:
	bit	0, (ix - 27)                    ; 1-byte Folded Reload
	ld	de, 2354
	jp	z, .LBB99_12
; %bb.11:
	add	iy, de
	ld	bc, (iy)
	lea	iy, iy + 3
	ld	hl, (ix + 9)
	ld	e, (ix + 12)
	ld	a, (iy)
	call	__lcmpu
	ld	bc, 0
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	0, a
	jr	z, .LBB99_14
	jp	.LBB99_50
	.local	.LBB99_12
.LBB99_12:
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	jr	.LBB99_14
	.local	.LBB99_13
.LBB99_13:                              ;   in Loop: Header=BB99_14 Depth=1
	ld	hl, __ZN12_GLOBAL__N_113TRADE_OUTPUTSE
	add	hl, bc
	ld	a, (hl)
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	ld	(ix - 27), bc
	call	__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId
	ld	bc, (ix - 27)
	pop	hl
	pop	hl
	ld	l, 1
	and	a, l
	ld	l, a
	ld	e, (ix - 28)
	ld	a, e
	add	a, l
	ld	e, a
	ld	(ix - 28), e
	inc	bc
	.local	.LBB99_14
.LBB99_14:                              ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ld	de, 8
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	nz, .LBB99_13
; %bb.15:
	ld	a, (ix - 28)                    ; 1-byte Folded Reload
	or	a, a
	ld	iy, (ix + 6)
	jp	z, .LBB99_50
; %bb.16:
	or	a, a
	sbc	hl, hl
	ld	a, l
	ld	(ix - 47), a
	ld	bc, 0
	.local	.LBB99_17
.LBB99_17:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB99_21 Depth 2
                                        ;     Child Loop BB99_26 Depth 2
	push	bc
	pop	hl
	ld	de, 3
	or	a, a
	sbc	hl, de
	jp	z, .LBB99_44
; %bb.18:                               ;   in Loop: Header=BB99_17 Depth=1
	ld	(ix - 27), bc
	push	bc
	pop	hl
	ld	bc, 20
	call	__imulu
	ex	de, hl
	lea	hl, iy + 0
	add	hl, de
	lea	bc, iy + 0
	push	hl
	pop	iy
	ld	de, 2288
	add	iy, de
	ld	(ix - 37), hl
	ld	de, 2306
	add	hl, de
	bit	0, (hl)
	jr	z, .LBB99_20
; %bb.19:                               ;   in Loop: Header=BB99_17 Depth=1
	push	bc
	pop	iy
	jp	.LBB99_43
	.local	.LBB99_20
.LBB99_20:                              ;   in Loop: Header=BB99_17 Depth=1
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ex	de, hl
	ld	(ix - 53), iy
	lea	hl, iy + 0
	push	bc
	pop	iy
	ld	bc, 18
	ldir
	push	iy
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 13
	xor	a, a
	call	__lremu
	ex	de, hl
	ld	iy, __ZN12_GLOBAL__N_112TRADE_INPUTSE
	add	iy, de
	push	bc
	pop	hl
	.local	.LBB99_21
.LBB99_21:                              ;   Parent Loop BB99_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	(ix - 31), hl
	ld	(ix - 50), de
	ex	de, hl
	call	__idivu
	ld	bc, -13
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 31)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB99_42
; %bb.22:                               ;   in Loop: Header=BB99_21 Depth=2
	ld	(ix - 57), iy
	lea	hl, iy + 0
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	(ix - 54), a                    ; 1-byte Folded Spill
	ld	l, a
	ld	bc, 6
	call	__imulu
	ex	de, hl
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy + 2)
	ld	(ix - 60), iy
	ld	e, (iy + 5)
	call	__lcmpzero
	ld	a, 1
	jr	z, .LBB99_24
; %bb.23:                               ;   in Loop: Header=BB99_21 Depth=2
	ld	a, 0
	.local	.LBB99_24
.LBB99_24:                              ;   in Loop: Header=BB99_21 Depth=2
	ld	iy, (ix - 57)
	inc	iy
	ld	de, (ix - 50)
	inc	de
	ld	hl, (ix - 31)
	dec	hl
	bit	0, a
	ld	bc, 13
	jr	nz, .LBB99_21
; %bb.25:                               ;   in Loop: Header=BB99_17 Depth=1
	ld	iy, (ix - 60)
	lea	hl, iy + 2
	ld	(ix - 31), hl
	xor	a, a
	ld	(ix - 23), a
	ld	hl, (ix - 25)
	ld	h, a
	ld	l, (ix - 28)                    ; 1-byte Folded Reload
	ld	(ix - 34), hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, (ix - 34)
	ld	a, (ix - 47)                    ; 1-byte Folded Reload
	call	__lremu
	ld	(ix - 34), hl
	or	a, a
	sbc	hl, hl
	ld	iyl, 36
	.local	.LBB99_26
.LBB99_26:                              ;   Parent Loop BB99_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	push	hl
	pop	de
	ld	bc, 8
	or	a, a
	sbc	hl, bc
	jr	z, .LBB99_32
; %bb.27:                               ;   in Loop: Header=BB99_26 Depth=2
	ld	hl, __ZN12_GLOBAL__N_113TRADE_OUTPUTSE
	ld	(ix - 50), de
	add	hl, de
	ld	a, (hl)
	ld	(ix - 57), a                    ; 1-byte Folded Spill
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB99_30
; %bb.28:                               ;   in Loop: Header=BB99_26 Depth=2
	ld	hl, (ix - 34)
	ld	a, l
	or	a, a
	ld	hl, (ix + 6)
	ld	iyl, 36
	ld	a, (ix - 57)                    ; 1-byte Folded Reload
	jr	z, .LBB99_33
; %bb.29:                               ;   in Loop: Header=BB99_26 Depth=2
	dec	(ix - 34)
	jr	.LBB99_31
	.local	.LBB99_30
.LBB99_30:                              ;   in Loop: Header=BB99_26 Depth=2
	ld	iyl, 36
	.local	.LBB99_31
.LBB99_31:                              ;   in Loop: Header=BB99_26 Depth=2
	ld	hl, (ix - 50)
	inc	hl
	jr	.LBB99_26
	.local	.LBB99_32
.LBB99_32:                              ;   in Loop: Header=BB99_17 Depth=1
	ld	a, iyl
	ld	hl, (ix + 6)
	.local	.LBB99_33
.LBB99_33:                              ;   in Loop: Header=BB99_17 Depth=1
	ld	c, (ix - 54)
	cp	a, c
	jr	z, .LBB99_35
; %bb.34:                               ;   in Loop: Header=BB99_17 Depth=1
	ld	iyl, a
	.local	.LBB99_35
.LBB99_35:                              ;   in Loop: Header=BB99_17 Depth=1
	push	af
	ld	a, iyl
	ld	(ix - 34), a
	pop	af
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 29
	xor	a, a
	call	__lremu
	ld	bc, 12
	call	__ladd
	ld	(ix - 50), hl
	ld	a, e
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 57), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	ld	hl, (ix - 50)
	ld	iy, (ix - 57)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 40)
	push	hl
	call	__Z10bn_div_u326BigNumm
	ld	iy, (ix - 40)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix - 7)
	ld	e, (ix - 4)
	call	__lcmpzero
	jr	nz, .LBB99_37
; %bb.36:                               ;   in Loop: Header=BB99_17 Depth=1
	lea	de, iy + 0
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	.local	.LBB99_37
.LBB99_37:                              ;   in Loop: Header=BB99_17 Depth=1
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	call	__Z14bn_log10_floor6BigNum
	ld	(ix - 31), hl
	ld	(ix - 50), e                    ; 1-byte Folded Spill
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 3
	ld	d, b
	ld	a, d
	call	__land
	push	hl
	pop	bc
	ld	a, e
	ld	hl, (ix - 31)
	ld	e, (ix - 50)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, 1
	ld	a, d
	call	__ladd
	ld	(ix - 50), hl
                                        ; kill: def $e killed $e def $ude
	ld	(ix - 57), de
	ld	hl, 15
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 60), hl
	pop	hl
	pop	hl
	xor	a, a
	ld	(ix - 22), a
	ld	hl, (ix - 24)
	ld	h, a
	ld	l, e
	ld	(ix - 63), hl
	sbc	hl, hl
	ld	e, l
	ld	d, h
	ld	(ix - 31), de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
	ld	a, e
	pop	de
	pop	de
	ld	c, 0
	ld	(ix - 21), c
	ld	de, (ix - 23)
	ld	d, c
	ld	e, a
	ld	iy, (ix - 31)
	push	iy
	ld	bc, (ix - 63)
	push	bc
	ld	bc, (ix - 60)
	push	bc
	ld	c, iyl
	ld	b, iyh
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	ld	(ix - 60), hl
	ld	(ix - 63), c
	ld	(ix - 62), b
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	bc, 964
	add	hl, bc
	ld	iy, (hl)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, 200
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB99_39
; %bb.38:                               ;   in Loop: Header=BB99_17 Depth=1
	ld.sis	hl, 200
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	.local	.LBB99_39
.LBB99_39:                              ;   in Loop: Header=BB99_17 Depth=1
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, 25
	call	__smulu
	ld.sis	bc, 1000
	add.sis	hl, bc
	xor	a, a
	ld	(ix - 20), a
	ld	bc, (ix - 22)
	ld	b, h
	ld	c, l
	ld	hl, (ix - 31)
	push	hl
	sbc	hl, hl
	push	hl
	push	bc
	ld	hl, (ix - 60)
	ld	c, (ix - 63)
	ld	b, (ix - 62)
	call	__llmulu
	ld	(ix - 63), hl
	ld	(ix - 31), de
                                        ; kill: def $bc killed $bc def $ubc
	ld	(ix - 60), bc
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 53)
	ld	a, (ix - 54)
	ld	(hl), a
	ld	bc, (ix - 37)
	push	bc
	pop	hl
	ld	de, 2289
	add	hl, de
	ld	a, (ix - 34)
	ld	(hl), a
	push	bc
	pop	hl
	inc	de
	add	hl, de
	ex	de, hl
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	hl, (ix - 57)
	push	hl
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix - 46)
	push	hl
	call	__Z11bn_from_u32m
	ld	iy, (ix - 63)
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 60)
	push	hl
	ld	hl, (ix - 31)
	push	hl
	push	iy
	ld	hl, -6776217
	ld	de, 0
	ld.sis	bc, 0
	call	__llcmpu
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 10000
	ld	a, b
	jr	c, .LBB99_41
; %bb.40:                               ;   in Loop: Header=BB99_17 Depth=1
	ld	hl, (ix - 31)
	ld	e, l
	lea	hl, iy + 0
	ld	bc, 1000
	xor	a, a
	call	__ldivu
	ld	a, e
	.local	.LBB99_41
.LBB99_41:                              ;   in Loop: Header=BB99_17 Depth=1
	ld	(ix - 31), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 34), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 46)
	ld	bc, 6
	ldir
	ld	hl, (ix - 31)
	ld	iy, (ix - 34)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 43)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 37)
	push	de
	pop	hl
	push	de
	pop	iy
	ld	de, 2296
	add	hl, de
	ex	de, hl
	ld	hl, (ix - 43)
	ld	bc, 6
	ldir
	lea	bc, iy + 0
	ld	de, 2302
	add	iy, de
	or	a, a
	sbc	hl, hl
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), 0
	ld	de, 2306
	push	bc
	pop	hl
	add	hl, de
	ld	(hl), 0
	ld	a, 1
	ld	(ix - 34), a                    ; 1-byte Folded Spill
	.local	.LBB99_42
.LBB99_42:                              ; %.loopexit
                                        ;   in Loop: Header=BB99_17 Depth=1
	ld	iy, (ix + 6)
	.local	.LBB99_43
.LBB99_43:                              ; %.loopexit
                                        ;   in Loop: Header=BB99_17 Depth=1
	ld	bc, (ix - 27)
	inc	bc
	jp	.LBB99_17
	.local	.LBB99_44
.LBB99_44:
	bit	0, (ix - 34)                    ; 1-byte Folded Reload
	jp	z, .LBB99_50
; %bb.45:
	ld	hl, (ix + 9)
	ld	de, 300
	add	hl, de
	ld	a, (ix + 12)
	adc	a, 0
	ld	e, a
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	0, a
	jr	z, .LBB99_47
; %bb.46:
	scf
	sbc	hl, hl
	.local	.LBB99_47
.LBB99_47:
	bit	0, a
	jr	z, .LBB99_49
; %bb.48:
	ld	e, -1
	.local	.LBB99_49
.LBB99_49:
	ld	bc, 2354
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), e
	ld	a, 1
	ld	(ix - 24), a                    ; 1-byte Folded Spill
	.local	.LBB99_50
.LBB99_50:
	ld	a, (ix - 24)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end99
.Lfunc_end99:
	.size	__Z23systems_generate_tradesR9GameStatem, .Lfunc_end99-__Z23systems_generate_tradesR9GameStatem
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId,"ax",@progbits
	.type	__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId,@function ; -- Begin function _ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId
__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId: ; @_ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	a, (ix + 9)
	ld	bc, 0
	ld	l, -36
	add	a, l
	ld	l, a
	cp	a, 8
	jr	c, .LBB100_2
; %bb.1:
	xor	a, a
	jp	.LBB100_13
	.local	.LBB100_2
.LBB100_2:
	ld	iy, (ix + 6)
	ld	a, 1
	push	bc
	pop	de
	ld	e, l
	ld	hl, JTI100_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB100_3
.LBB100_3:
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 3), hl
	lea	hl, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	hl
	pop	iy
	lea	iy, iy + 6
	ld	iy, (iy)
	push	bc
	push	bc
	ld	bc, 4096
	push	bc
	ld	hl, (ix - 3)
	ld	c, iyl
	ld	b, iyh
	jp	.LBB100_6
	.local	.LBB100_4
.LBB100_4:
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 2097152
	jp	.LBB100_11
	.local	.LBB100_5
.LBB100_5:
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 8192
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	.local	.LBB100_6
.LBB100_6:
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB100_12
	.local	.LBB100_7
.LBB100_7:
	ld	a, -1
	jp	.LBB100_13
	.local	.LBB100_8
.LBB100_8:
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1048576
	jr	.LBB100_11
	.local	.LBB100_9
.LBB100_9:
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 4194304
	jr	.LBB100_11
	.local	.LBB100_10
.LBB100_10:
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, -8388608
	.local	.LBB100_11
.LBB100_11:
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	nz, .LBB100_7
	.local	.LBB100_12
.LBB100_12:
	ld	a, 0
	.local	.LBB100_13
.LBB100_13:
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end100
.Lfunc_end100:
	.size	__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId, .Lfunc_end100-__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId
	.section	.rodata.__ZN12_GLOBAL__N_116output_availableERK9GameState10ResourceId,"a",@progbits
JTI100_0:
	d24	.LBB100_13
	d24	.LBB100_3
	d24	.LBB100_5
	d24	.LBB100_3
	d24	.LBB100_8
	d24	.LBB100_4
	d24	.LBB100_9
	d24	.LBB100_10
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty,"ax",@progbits
	.type	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty,@function ; -- Begin function _ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty: ; @_ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
; %bb.0:
	ld	hl, -15
	call	__frameset
	xor	a, a
	ld	de, 0
	ld	iy, 1000
	.local	.LBB101_1
.LBB101_1:                              ; =>This Inner Loop Header: Depth=1
	ld	bc, 40
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB101_9
; %bb.2:                                ;   in Loop: Header=BB101_1 Depth=1
	ld	(ix - 5), iy
	ld	hl, (ix + 6)
	ld	(ix - 8), de
	add	hl, de
	push	hl
	pop	iy
	ld	bc, 2248
	add	iy, bc
	ld	(ix - 11), hl
	ld	bc, 2252
	add	hl, bc
	bit	0, (hl)
	jr	z, .LBB101_6
; %bb.3:                                ;   in Loop: Header=BB101_1 Depth=1
	ld	(ix - 12), a                    ; 1-byte Folded Spill
	push	iy
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	jr	z, .LBB101_7
; %bb.4:                                ;   in Loop: Header=BB101_1 Depth=1
	ld	iy, (ix - 11)
	lea	hl, iy + 0
	ld	de, 2250
	add	hl, de
	ld	a, (hl)
	ld	l, (ix + 9)
	cp	a, l
	jr	nz, .LBB101_7
; %bb.5:                                ;   in Loop: Header=BB101_1 Depth=1
	lea	hl, iy + 0
	ld	de, 2249
	add	hl, de
	ld	a, (hl)
	ld	l, 0
	ld	(ix - 2), l
	ld	de, (ix - 4)
	ld	d, l
	ld	e, a
	ld	(ix - 15), de
	or	a, a
	sbc	hl, hl
	ld	d, l
	ld	bc, 2251
	add	iy, bc
	ld	a, (iy)
	ld	(ix - 1), l
	ld	hl, (ix - 3)
	ld	e, 0
	ld	h, e
	ld	l, a
	ld	e, d
	ld	bc, 1
	xor	a, a
	call	__ladd
	ld	bc, (ix - 15)
	ld	a, d
	call	__lmulu
	push	hl
	pop	bc
	ld	a, e
	ld	l, 2
	call	__lshru
	push	bc
	pop	hl
	ld	e, a
	ld	bc, (ix - 5)
	ld	a, (ix - 12)                    ; 1-byte Folded Reload
	call	__ladd
	push	hl
	pop	iy
	ld	a, e
	jr	.LBB101_8
	.local	.LBB101_6
.LBB101_6:                              ;   in Loop: Header=BB101_1 Depth=1
	ld	iy, (ix - 5)
	jr	.LBB101_8
	.local	.LBB101_7
.LBB101_7:                              ;   in Loop: Header=BB101_1 Depth=1
	ld	iy, (ix - 5)
	ld	a, (ix - 12)                    ; 1-byte Folded Reload
	.local	.LBB101_8
.LBB101_8:                              ;   in Loop: Header=BB101_1 Depth=1
	ld	hl, (ix - 8)
	ld	bc, 5
	add	hl, bc
	ex	de, hl
	jp	.LBB101_1
	.local	.LBB101_9
.LBB101_9:
	lea	hl, iy + 0
	ld	d, a
	ld	e, a
	ld	bc, 5000
	xor	a, a
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB101_11
; %bb.10:
	push	bc
	pop	iy
	.local	.LBB101_11
.LBB101_11:
	bit	0, a
	ld	e, d
	jr	nz, .LBB101_13
; %bb.12:
	ld	e, 0
	.local	.LBB101_13
.LBB101_13:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end101
.Lfunc_end101:
	.size	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty, .Lfunc_end101-__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem,"ax",@progbits
	.type	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem,@function ; -- Begin function _ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem: ; @_ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	l, 0
	ld	a, (iy + 1)
	dec	a
	cp	a, 100
	jp	nc, .LBB102_3
; %bb.1:
	ld	a, (iy + 2)
	cp	a, 4
	jp	nc, .LBB102_3
; %bb.2:
	ld	a, (iy)
	cp	a, 23
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	l, a
	.local	.LBB102_3
.LBB102_3:
	ld	a, l
	pop	ix
	ret
	.local	.Lfunc_end102
.Lfunc_end102:
	.size	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem, .Lfunc_end102-__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
                                        ; -- End function
	.section	.text.__Z19systems_start_tradeR9GameStatehm,"ax",@progbits
	.globl	__Z19systems_start_tradeR9GameStatehm ; -- Begin function _Z19systems_start_tradeR9GameStatehm
	.type	__Z19systems_start_tradeR9GameStatehm,@function
__Z19systems_start_tradeR9GameStatehm:  ; @_Z19systems_start_tradeR9GameStatehm
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 4), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1024
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	e, (ix + 9)
	ld	a, e
	cp	a, 3
	jp	nc, .LBB103_21
; %bb.1:
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB103_21
; %bb.2:
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	bc, 20
	call	__imulu
	ex	de, hl
	ld	iy, (ix + 6)
	add	iy, de
	ld	de, 2288
	add	iy, de
	bit	0, (iy + 18)
	jp	nz, .LBB103_21
; %bb.3:
	ld	hl, (iy + 14)
	ld	e, (iy + 17)
	call	__lcmpzero
	jp	nz, .LBB103_21
; %bb.4:
	push	iy
	ld	(ix - 7), iy
	call	__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
	pop	hl
	bit	0, a
	jp	z, .LBB103_21
; %bb.5:
	ld	iy, (ix - 7)
	ld	a, (iy)
	lea	hl, iy + 2
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB103_21
; %bb.6:
	ld	hl, 15
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 13), hl
	pop	hl
	pop	hl
	xor	a, a
	ld	(ix - 3), a
	ld	hl, (ix - 5)
	ld	h, a
	ld	l, e
	ld	(ix - 16), hl
	sbc	hl, hl
	ld	e, l
	ld	d, h
	ld	(ix - 10), de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
	ld	a, e
	pop	de
	pop	de
	ld	c, 0
	ld	(ix - 2), c
	ld	de, (ix - 4)
	ld	d, c
	ld	e, a
	ld	iy, (ix - 10)
	push	iy
	ld	bc, (ix - 16)
	push	bc
	ld	bc, (ix - 13)
	push	bc
	ld	c, iyl
	ld	b, iyh
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	ld	iy, 255
	push	iy
	ld	iy, -1
	push	iy
	call	__lland
	push	hl
	pop	iy
	ld	(ix - 13), de
	ld	(ix - 16), c
	ld	(ix - 15), b
	pop	hl
	pop	hl
	pop	hl
	ld	bc, 964
	ld	hl, (ix + 6)
	add	hl, bc
	ld	bc, (hl)
	ld.sis	de, 200
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB103_8
; %bb.7:
	ld.sis	bc, 200
	.local	.LBB103_8
.LBB103_8:
	ld	l, c
	ld	h, b
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	xor	a, a
	ld	(ix - 1), a
	ld	bc, (ix - 3)
	ld	b, h
	ld	c, l
	ld	hl, (ix - 10)
	push	hl
	sbc	hl, hl
	push	hl
	push	bc
	lea	hl, iy + 0
	ld	de, (ix - 13)
	ld	c, (ix - 16)
	ld	b, (ix - 15)
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	push	hl
	pop	bc
	pop	hl
	pop	hl
	pop	hl
	ld	d, e
	lea	hl, iy + 0
	ld	e, a
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB103_10
; %bb.9:
	lea	bc, iy + 0
	.local	.LBB103_10
.LBB103_10:
	ld	hl, 120000
	bit	0, a
	jr	nz, .LBB103_12
; %bb.11:
	ld	d, 0
	.local	.LBB103_12
.LBB103_12:
	ld	iyl, 0
	ld	e, iyl
	ld	a, d
	call	__ldivu
	push	hl
	pop	bc
	ld	d, e
	ld	hl, 12
	ld	e, iyl
	ld	a, d
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB103_14
; %bb.13:
	push	hl
	pop	bc
	.local	.LBB103_14
.LBB103_14:
	ld	hl, (ix + 12)
	bit	0, a
	ld	iy, (ix - 7)
	jr	nz, .LBB103_16
; %bb.15:
	ld	d, 0
	.local	.LBB103_16
.LBB103_16:
	add	hl, bc
	ld	a, (ix + 15)
	adc	a, d
	ld	e, a
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	0, a
	ld	bc, -1
	jr	nz, .LBB103_18
; %bb.17:
	push	hl
	pop	bc
	.local	.LBB103_18
.LBB103_18:
	bit	0, a
	jr	z, .LBB103_20
; %bb.19:
	ld	e, -1
	.local	.LBB103_20
.LBB103_20:
	ld	a, 1
	ld	(ix - 4), a
	ld	(iy + 14), bc
	ld	(iy + 17), e
	ld	(iy + 18), a
	.local	.LBB103_21
.LBB103_21:
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end103
.Lfunc_end103:
	.size	__Z19systems_start_tradeR9GameStatehm, .Lfunc_end103-__Z19systems_start_tradeR9GameStatehm
                                        ; -- End function
	.section	.text.__Z22systems_complete_tradeR9GameStatehm,"ax",@progbits
	.globl	__Z22systems_complete_tradeR9GameStatehm ; -- Begin function _Z22systems_complete_tradeR9GameStatehm
	.type	__Z22systems_complete_tradeR9GameStatehm,@function
__Z22systems_complete_tradeR9GameStatehm: ; @_Z22systems_complete_tradeR9GameStatehm
; %bb.0:
	ld	hl, -22
	call	__frameset
	ld	a, (ix + 9)
	ld	l, 0
	cp	a, 3
	jp	nc, .LBB104_10
; %bb.1:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 20
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 2288
	add	iy, de
	ld	(ix - 19), iy
	ld	(ix - 16), iy
	push	iy
	call	__ZN12_GLOBAL__N_111valid_offerERK10TradeOffer
	pop	hl
	bit	0, a
	jp	z, .LBB104_9
; %bb.2:
	ld	d, (ix + 15)
	ld	bc, -1
	ld	a, b
	ld	iy, (ix - 16)
	ld	hl, (iy + 14)
	ld	e, (iy + 17)
	call	__ladd
	ld	bc, (ix + 12)
	ld	a, d
	call	__lcmpu
	ld	l, 0
	jp	nc, .LBB104_10
; %bb.3:
	ld	iy, (ix - 16)
	bit	0, (iy + 18)
	jr	z, .LBB104_5
; %bb.4:
	lea	hl, ix - 7
	ld	(ix - 22), hl
	ld	iy, (ix - 16)
	ld	a, (iy + 1)
	ld	iy, (ix - 19)
	lea	hl, iy + 8
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	hl, (ix - 22)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 22)
	ld	bc, 6
	ldir
	ld	hl, 36
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB104_5
.LBB104_5:
	ld	de, 954
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, -1
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB104_8
; %bb.6:
	ld.sis	bc, 10
	inc.sis	de
	ld	(iy), e
	ld	(iy + 1), d
	ld	l, e
	ld	h, d
	call	__sremu
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB104_8
; %bb.7:
	ld.sis	bc, 100
	lea	hl, ix - 13
	ld	(ix - 22), hl
	ld	l, e
	ld	h, d
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 22)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 22)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB104_8
.LBB104_8:
	ld	hl, (ix - 16)
	ld	(hl), 0
	ld	de, (ix - 19)
	inc	de
	ld	bc, 18
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	ld	l, 1
	jr	.LBB104_10
	.local	.LBB104_9
.LBB104_9:
	ld	l, 0
	.local	.LBB104_10
.LBB104_10:
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end104
.Lfunc_end104:
	.size	__Z22systems_complete_tradeR9GameStatehm, .Lfunc_end104-__Z22systems_complete_tradeR9GameStatehm
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_115action_completeER9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_115action_completeER9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_115action_completeER9GameState
__ZN12_GLOBAL__N_115action_completeER9GameState: ; @_ZN12_GLOBAL__N_115action_completeER9GameState
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	hl, (ix + 6)
	ld	(ix - 3), hl
	push	hl
	call	__Z20game_refresh_unlocksR9GameState
	pop	hl
	ld	hl, (ix - 3)
	ld	(ix + 6), hl
	pop	hl
	pop	ix
	jp	__Z23game_check_achievementsR9GameState
	.local	.Lfunc_end105
.Lfunc_end105:
	.size	__ZN12_GLOBAL__N_115action_completeER9GameState, .Lfunc_end105-__ZN12_GLOBAL__N_115action_completeER9GameState
                                        ; -- End function
	.section	.text.__Z18systems_craft_itemR9GameStateh,"ax",@progbits
	.globl	__Z18systems_craft_itemR9GameStateh ; -- Begin function _Z18systems_craft_itemR9GameStateh
	.type	__Z18systems_craft_itemR9GameStateh,@function
__Z18systems_craft_itemR9GameStateh:    ; @_Z18systems_craft_itemR9GameStateh
; %bb.0:
	ld	hl, -31
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 18), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 2048
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	e, (ix + 9)
	ld	a, e
	cp	a, iyh
	jp	nc, .LBB106_12
; %bb.1:
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB106_12
; %bb.2:
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	bc, 5
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 2248
	add	hl, de
	ld	(ix - 27), hl
	push	hl
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	jp	nz, .LBB106_12
; %bb.3:                                ; %.preheader.preheader
	xor	a, a
	ld	bc, 2248
	lea	hl, ix - 7
	ld	(ix - 18), hl
	lea	hl, ix - 13
	ld	(ix - 30), hl
	ld	e, a
	.local	.LBB106_4
.LBB106_4:                              ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ld	(ix - 21), e
	ld	(ix - 20), d
	push	bc
	pop	hl
	ld	de, 2288
	or	a, a
	sbc	hl, de
	jr	z, .LBB106_6
; %bb.5:                                ;   in Loop: Header=BB106_4 Depth=1
	ld	hl, (ix + 6)
	ld	(ix - 24), bc
	add	hl, bc
	push	hl
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	ld	l, 1
	and	a, l
	ld	l, a
	ld	e, (ix - 21)
	ld	d, (ix - 20)
	ld	a, e
	add	a, l
	ld	e, a
	ld	hl, (ix - 24)
	ld	bc, 5
	add	hl, bc
	push	hl
	pop	bc
	jr	.LBB106_4
	.local	.LBB106_6
.LBB106_6:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 18)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 21)
	ld	h, (ix - 20)
	ld	h, 0
	ld	(ix - 21), l
	ld	(ix - 20), h
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 24), iy
	ld	hl, (ix - 24)
	inc	hl
	ld	(ix - 24), hl
	ld	de, (ix - 24)
	ld	hl, (ix - 18)
	ld	bc, 6
	ldir
	ld	hl, 1600
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 21)
	ld	h, (ix - 20)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 30)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	e, (ix - 21)
	ld	d, (ix - 20)
	ld	(ix - 15), d
	ld	hl, (ix - 17)
	ld	h, d
	ld	l, e
	ld	de, 0
	ld	(ix - 24), e                    ; 1-byte Folded Spill
	ld	bc, 50
	xor	a, a
	call	__lmulu
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 18)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 30)
	ld	bc, 6
	ldir
	ld	(iy + 6), 37
	lea	de, iy + 10
	ld	hl, (ix - 18)
	ld	bc, 6
	ldir
	ld	hl, 36
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	ld	(ix - 18), a                    ; 1-byte Folded Spill
	bit	0, a
	jp	z, .LBB106_12
; %bb.7:
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 80
	xor	a, a
	call	__lremu
	ld	(ix - 30), hl
	ld	(ix - 31), e                    ; 1-byte Folded Spill
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld	e, (ix - 21)
	ld	d, (ix - 20)
	ld	(ix - 14), d
	ld	bc, (ix - 16)
	ld	b, h
	ld	c, l
	ld	l, 1
	ld	a, (ix - 24)                    ; 1-byte Folded Reload
	call	__lshl
	ld	hl, (ix - 30)
	ld	e, (ix - 31)                    ; 1-byte Folded Reload
	call	__ladd
	ld	bc, 1
	xor	a, a
	call	__ladd
	ld	bc, 100
	call	__lcmpu
	jr	c, .LBB106_9
; %bb.8:
	push	bc
	pop	hl
	.local	.LBB106_9
.LBB106_9:
	ld	(ix - 21), hl
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	iy, _AREA_DEFS
	add	iy, de
	ld	a, (iy + 3)
	cp	a, 23
	jr	c, .LBB106_11
; %bb.10:
	xor	a, a
	.local	.LBB106_11
.LBB106_11:
	ld	iy, (ix - 27)
	ld	(iy), a
	ld	hl, (ix - 21)
	ld	a, l
	ld	(iy + 1), a
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	de
	ld	e, 3
	ld	a, l
	and	a, e
	ld	l, a
	ld	iy, (ix - 27)
	ld	(iy + 2), l
	ld	(iy + 3), 0
	ld	(iy + 4), 0
	.local	.LBB106_12
.LBB106_12:
	ld	a, (ix - 18)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end106
.Lfunc_end106:
	.size	__Z18systems_craft_itemR9GameStateh, .Lfunc_end106-__Z18systems_craft_itemR9GameStateh
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_,"ax",@progbits
	.type	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_,@function ; -- Begin function _ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_: ; @_ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
; %bb.0:
	ld	hl, -19
	call	__frameset
	lea	hl, ix + 12
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 10), hl
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB107_6
; %bb.1:
	lea	hl, ix + 22
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 13), hl
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB107_6
; %bb.2:
	ld	a, (ix + 9)
	ld	l, (ix + 18)
	ld	bc, 0
	ld	c, a
	cp	a, l
	jp	nz, .LBB107_5
; %bb.3:
	lea	hl, ix - 7
	ld	(ix - 16), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 19), hl
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 10)
	ld	(ix - 10), bc
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 19)
	ld	hl, (ix - 13)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 16)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix - 10)
	ld	bc, 6
	call	__imulu
	ex	de, hl
	ld	iy, (ix + 6)
	add	iy, de
	lea	hl, iy + 2
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 16)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB107_6
; %bb.4:
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 16)
	ldir
	ld	l, (ix + 9)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	jp	.LBB107_10
	.local	.LBB107_5
.LBB107_5:
	ld	iy, (ix + 6)
	lea	de, iy + 2
	ld	iy, 6
	push	bc
	pop	hl
	lea	bc, iy + 0
	call	__imulu
	push	hl
	pop	bc
	ld	(ix - 16), de
	ex	de, hl
	add	hl, bc
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	bc, 6
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 10)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	p, .LBB107_8
	.local	.LBB107_6
.LBB107_6:
	xor	a, a
	.local	.LBB107_7
.LBB107_7:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB107_8
.LBB107_8:
	or	a, a
	sbc	hl, hl
	ld	l, (ix + 18)
	ld	bc, 6
	call	__imulu
	ex	de, hl
	ld	iy, (ix - 16)
	add	iy, de
	push	hl
	push	hl
	push	hl
	push	hl
	ld	hl, 0
	add	hl, sp
	ld	(ix - 16), hl
	ld	de, (ix - 16)
	lea	hl, iy + 0
	ldir
	ld	iy, (ix - 16)
	lea	de, iy + 6
	ld	hl, (ix - 13)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	ld	a, d
	jp	m, .LBB107_7
; %bb.9:
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 10)
	ldir
	ld	l, (ix + 9)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 13)
	ld	bc, 6
	ldir
	ld	l, (ix + 18)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	ld	a, 1
	.local	.LBB107_10
.LBB107_10:
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jp	.LBB107_7
	.local	.Lfunc_end107
.Lfunc_end107:
	.size	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_, .Lfunc_end107-__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
                                        ; -- End function
	.section	.text.__Z18systems_equip_itemR9GameStateh,"ax",@progbits
	.globl	__Z18systems_equip_itemR9GameStateh ; -- Begin function _Z18systems_equip_itemR9GameStateh
	.type	__Z18systems_equip_itemR9GameStateh,@function
__Z18systems_equip_itemR9GameStateh:    ; @_Z18systems_equip_itemR9GameStateh
; %bb.0:
	ld	hl, -14
	call	__frameset
	ld	hl, (ix + 6)
	ld	a, (ix + 9)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 65536
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	cp	a, 8
	jp	nc, .LBB108_10
; %bb.1:
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	bit	0, l
	jp	z, .LBB108_10
; %bb.2:
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 5
	ld	(ix - 6), hl
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 2248
	add	hl, de
	ld	(ix - 3), hl
	push	hl
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	ld	e, 0
	jp	z, .LBB108_11
; %bb.3:
	ld	bc, 5
	ld	e, 1
	ld	iy, (ix - 3)
	ld	a, (iy + 2)
	ld	(ix - 10), a
	ld	d, (iy + 4)
	ld	hl, (ix - 6)
	call	__imulu
	ld	(ix - 6), hl
	ld	iy, 0
	.local	.LBB108_4
.LBB108_4:                              ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	ld	bc, 40
	or	a, a
	sbc	hl, bc
	jr	z, .LBB108_12
; %bb.5:                                ;   in Loop: Header=BB108_4 Depth=1
	ld	hl, (ix - 6)
	lea	bc, iy + 0
	or	a, a
	sbc	hl, bc
	jr	z, .LBB108_9
; %bb.6:                                ;   in Loop: Header=BB108_4 Depth=1
	ld	hl, (ix + 6)
	lea	bc, iy + 0
	add	hl, bc
	ld	(ix - 14), hl
	ld	(ix - 11), d                    ; 1-byte Folded Spill
	ld	de, 2248
	add	hl, de
	push	hl
	ld	(ix - 9), bc
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	ld	d, (ix - 11)                    ; 1-byte Folded Reload
	ld	iy, (ix - 9)
	ld	e, 1
	pop	hl
	bit	0, a
	jr	z, .LBB108_9
; %bb.7:                                ;   in Loop: Header=BB108_4 Depth=1
	ld	hl, (ix - 14)
	ld	bc, 2250
	add	hl, bc
	ld	iy, (ix - 9)
	ld	a, (hl)
	ld	l, (ix - 10)
	cp	a, l
	jr	nz, .LBB108_9
; %bb.8:                                ;   in Loop: Header=BB108_4 Depth=1
	ld	bc, 2252
	ld	hl, (ix - 14)
	add	hl, bc
	ld	iy, (ix - 9)
	ld	(hl), 0
	.local	.LBB108_9
.LBB108_9:                              ;   in Loop: Header=BB108_4 Depth=1
	ld	bc, 5
	add	iy, bc
	jr	.LBB108_4
	.local	.LBB108_10
.LBB108_10:
	ld	e, 0
	.local	.LBB108_11
.LBB108_11:
	ld	a, e
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB108_12
.LBB108_12:
	ld	a, d
	xor	a, e
	ld	l, a
	ld	iy, (ix - 3)
	ld	(iy + 4), l
	jr	.LBB108_11
	.local	.Lfunc_end108
.Lfunc_end108:
	.size	__Z18systems_equip_itemR9GameStateh, .Lfunc_end108-__Z18systems_equip_itemR9GameStateh
                                        ; -- End function
	.section	.text.__Z20systems_upgrade_itemR9GameStateh,"ax",@progbits
	.globl	__Z20systems_upgrade_itemR9GameStateh ; -- Begin function _Z20systems_upgrade_itemR9GameStateh
	.type	__Z20systems_upgrade_itemR9GameStateh,@function
__Z20systems_upgrade_itemR9GameStateh:  ; @_Z20systems_upgrade_itemR9GameStateh
; %bb.0:
	ld	hl, -36
	call	__frameset
	ld	hl, (ix + 6)
	ld	a, (ix + 9)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 2048
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	e, a
	cp	a, iyh
	jp	nc, .LBB109_6
; %bb.1:
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB109_6
; %bb.2:
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	bc, 5
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 2248
	add	hl, de
	ld	(ix - 22), hl
	push	hl
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	jp	z, .LBB109_6
; %bb.3:
	ld	iy, (ix - 22)
	ld	l, (iy + 3)
	ld	a, l
	cp	a, 50
	ld	a, 0
	jp	nc, .LBB109_7
; %bb.4:
	lea	de, ix - 7
	ld	(ix - 27), de
	lea	bc, ix - 13
	ld	(ix - 36), bc
	ld	(ix - 24), l
	ld	(ix - 23), h
	lea	hl, ix - 19
	ld	(ix - 33), hl
	ld	iy, (ix - 22)
	ld	a, (iy + 1)
	or	a, a
	sbc	hl, hl
	push	hl
	pop	iy
	ld	l, a
	ld	bc, 10
	add	hl, bc
	push	iy
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 24)
	ld	h, (ix - 23)
	ld	h, 0
	ld	(ix - 24), l
	ld	(ix - 23), h
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 30), iy
	ld	hl, (ix - 30)
	inc	hl
	ld	(ix - 30), hl
	ld	de, (ix - 30)
	ld	hl, (ix - 27)
	ld	bc, 6
	ldir
	ld	hl, 1450
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 24)
	ld	h, (ix - 23)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 36)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 27)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 30), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 27)
	ld	bc, 6
	ldir
	ld	hl, 1350
	ld	iy, (ix - 30)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 24)
	ld	h, (ix - 23)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 33)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 36)
	ld	bc, 6
	ldir
	ld	(iy + 6), 37
	lea	de, iy + 10
	ld	hl, (ix - 33)
	ld	bc, 6
	ldir
	ld	hl, 36
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jr	z, .LBB109_7
; %bb.5:
	ld	iy, (ix - 22)
	inc	(iy + 3)
	jr	.LBB109_7
	.local	.LBB109_6
.LBB109_6:
	xor	a, a
	.local	.LBB109_7
.LBB109_7:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end109
.Lfunc_end109:
	.size	__Z20systems_upgrade_itemR9GameStateh, .Lfunc_end109-__Z20systems_upgrade_itemR9GameStateh
                                        ; -- End function
	.section	.text.__Z23systems_alchemy_masteryRK9GameState,"ax",@progbits
	.globl	__Z23systems_alchemy_masteryRK9GameState ; -- Begin function _Z23systems_alchemy_masteryRK9GameState
	.type	__Z23systems_alchemy_masteryRK9GameState,@function
__Z23systems_alchemy_masteryRK9GameState: ; @_Z23systems_alchemy_masteryRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 956
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	pop	ix
	ret
	.local	.Lfunc_end110
.Lfunc_end110:
	.size	__Z23systems_alchemy_masteryRK9GameState, .Lfunc_end110-__Z23systems_alchemy_masteryRK9GameState
                                        ; -- End function
	.section	.text.__Z12systems_brewR9GameState13AlchemyRecipe,"ax",@progbits
	.globl	__Z12systems_brewR9GameState13AlchemyRecipe ; -- Begin function _Z12systems_brewR9GameState13AlchemyRecipe
	.type	__Z12systems_brewR9GameState13AlchemyRecipe,@function
__Z12systems_brewR9GameState13AlchemyRecipe: ; @_Z12systems_brewR9GameState13AlchemyRecipe
; %bb.0:
	ld	hl, -46
	call	__frameset
	ld	iy, (ix + 6)
	ld	a, (ix + 9)
	ld	bc, 1018
	add	iy, bc
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	de, (hl)
	lea	hl, iy + 6
	ld	iy, (hl)
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	ld	hl, 8192
	push	hl
	ld	(ix - 29), bc
	push	bc
	pop	hl
	ld	(ix - 32), de
	ld	c, iyl
	ld	b, iyh
	call	__lland
	ld	c, a
	pop	de
	pop	de
	pop	de
	cp	a, 4
	jp	nc, .LBB111_12
; %bb.1:
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB111_12
; %bb.2:
	ld	(ix - 35), iy
	ld	iy, __ZN12_GLOBAL__N_112ALCHEMY_DEFSE
	ld	de, 1
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	bc, 14
	call	__imulu
	push	hl
	pop	bc
	add	iy, bc
	ld	(ix - 38), iy
	ld	a, (iy + 12)
	ld	l, d
	ld	(ix - 26), l
	ld	bc, (ix - 28)
	ld	b, l
	ld	c, a
	push	bc
	ex	de, hl
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 35)
	push	iy
	ld	iy, (ix - 32)
	push	iy
	ld	iy, (ix - 29)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	cp	a, 64
	jp	nc, .LBB111_12
; %bb.3:
	call	__llcmpzero
	jp	z, .LBB111_12
; %bb.4:
	lea	bc, ix - 7
	ld	(ix - 32), bc
	lea	hl, ix - 13
	ld	(ix - 29), hl
	ld	iy, (ix - 38)
	ld	iy, (iy + 2)
	ld	de, 0
	push	de
	pop	hl
	ld	e, iyl
	ld	d, iyh
	push	hl
	push	de
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 38)
	ld	hl, (iy + 6)
	ld	bc, 0
	push	bc
	pop	de
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, (ix - 29)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 38)
	ld	a, (iy)
	ld	(ix - 35), a
	ld	a, (iy + 4)
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 32)
	ld	bc, 6
	ldir
	ld	(iy + 6), a
	lea	de, iy + 10
	ld	hl, (ix - 29)
	ld	bc, 6
	ldir
	ld	l, (ix - 35)                    ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB111_13
; %bb.5:
	ld	(ix - 39), a                    ; 1-byte Folded Spill
	ld	de, 956
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	(ix - 42), hl
	ld	de, (hl)
	ld.sis	bc, 501
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	l, e
	ld	h, d
	add	hl, hl
	ld	de, 1000
	add	hl, de
	ld	(ix - 35), hl
	ld	l, c
	bit	0, a
	jr	z, .LBB111_7
; %bb.6:
	ld	de, 2000
	ld	(ix - 35), de
	.local	.LBB111_7
.LBB111_7:
	ld	c, 0
	lea	de, ix - 19
	ld	(ix - 29), de
	lea	de, ix - 25
	ld	(ix - 32), de
	bit	0, a
	jr	nz, .LBB111_9
; %bb.8:
	ld	c, l
	.local	.LBB111_9
.LBB111_9:
	ld	(ix - 45), c
	ld	hl, 2
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	push	hl
	pop	bc
	ld	a, e
	pop	hl
	pop	hl
	ld	hl, (ix - 35)
	ld	e, (ix - 45)                    ; 1-byte Folded Reload
	call	__lmulu
	ld	bc, 1000
	xor	a, a
	call	__ldivu
	ld	(ix - 45), hl
	ld	(ix - 46), e                    ; 1-byte Folded Spill
	ld	iy, (ix - 38)
	ld	a, (iy + 8)
	ld	(ix - 35), a
	ld	hl, (iy + 10)
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 32)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 38), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 32)
	ld	bc, 6
	ldir
	ld	hl, (ix - 45)
	ld	iy, (ix - 38)
	ld	(iy + 7), hl
	ld	a, (ix - 46)
	ld	(iy + 10), a
	ld	hl, (ix - 29)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 29)
	ld	bc, 6
	ldir
	ld	l, (ix - 35)                    ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 42)
	ld	de, (hl)
	ld.sis	bc, 1000
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB111_11
; %bb.10:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 956
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB111_11
.LBB111_11:
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	ld	a, (ix - 39)                    ; 1-byte Folded Reload
	jr	.LBB111_13
	.local	.LBB111_12
.LBB111_12:
	xor	a, a
	.local	.LBB111_13
.LBB111_13:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end111
.Lfunc_end111:
	.size	__Z12systems_brewR9GameState13AlchemyRecipe, .Lfunc_end111-__Z12systems_brewR9GameState13AlchemyRecipe
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType,"ax",@progbits
	.type	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType,@function ; -- Begin function _ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType: ; @_ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
; %bb.0:
	ld	hl, -19
	call	__frameset
	ld	de, (ix + 6)
	ld	a, (ix + 9)
	ld	l, a
	push	hl
	push	de
	call	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
	ld	(ix - 11), hl
	pop	hl
	pop	hl
	xor	a, a
	ld	(ix - 5), a
	ld	hl, (ix - 7)
	ld	h, a
	ld	l, e
	ld	(ix - 14), hl
	sbc	hl, hl
	ld	(ix - 8), hl
	ld	de, 968
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB112_2
; %bb.1:
	ld.sis	de, 200
	.local	.LBB112_2
.LBB112_2:
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	xor	a, a
	ld	(ix - 4), a
	ld	de, (ix - 6)
	ld	d, h
	ld	e, l
	ld	(ix - 17), de
	ld	hl, 25
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	a, e
	pop	de
	pop	de
	ld	c, 0
	ld	(ix - 3), c
	ld	de, (ix - 5)
	ld	d, c
	ld	e, a
	ld	iy, (ix - 8)
	push	iy
	ld	bc, (ix - 14)
	push	bc
	ld	bc, (ix - 11)
	push	bc
	ld	c, iyl
	ld	b, iyh
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 8)
	push	iy
	ld	iy, 0
	push	iy
	ld	iy, (ix - 17)
	push	iy
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000000
	push	iy
	call	__lldivu
	ld	(ix - 14), hl
	ld	(ix - 17), de
	ld	(ix - 19), c
	ld	(ix - 18), b
	pop	hl
	pop	hl
	pop	hl
	ld	bc, 992
	ld	de, (ix + 6)
	push	de
	pop	hl
	add	hl, bc
	ld	iy, (hl)
	ld	bc, 1002
	ex	de, hl
	add	hl, bc
	ld	de, (hl)
	ld	bc, 1012
	ld	hl, (ix + 6)
	add	hl, bc
	ld	hl, (hl)
	ld	(ix - 11), hl
	ld.sis	bc, 500
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB112_4
; %bb.3:
	ld.sis	hl, 500
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	.local	.LBB112_4
.LBB112_4:
	push	de
	pop	hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB112_6
; %bb.5:
	ld.sis	hl, 500
	ld	e, l
	ld	d, h
	.local	.LBB112_6
.LBB112_6:
	ld	hl, (ix - 11)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jp	c, .LBB112_8
; %bb.7:
	ld.sis	hl, 500
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 11), hl
	.local	.LBB112_8
.LBB112_8:
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, 5
	call	__smulu
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ex	de, hl
	add.sis	hl, hl
	ld	e, l
	ld	d, h
	add.sis	iy, de
	ld	hl, (ix - 11)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__smulu
	ex.sis	de, hl
	add.sis	iy, de
	ld.sis	de, 1000
	add.sis	iy, de
	xor	a, a
	ld	(ix - 2), a
	ld	hl, (ix - 4)
	ex	de, hl
	ld	d, iyh
	ld	e, iyl
	ex	de, hl
	ld	de, (ix - 8)
	push	de
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix - 14)
	ld	de, (ix - 17)
	ld	c, (ix - 19)
	ld	b, (ix - 18)
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	ld	(ix - 11), hl
	ld	(ix - 14), de
	ld	(ix - 17), c
	ld	(ix - 16), b
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 29
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	pop	bc
	pop	bc
	xor	a, a
	ld	(ix - 1), a
	ld	bc, (ix - 3)
	ld	b, a
	ld	c, e
	ld	de, (ix - 8)
	push	de
	push	bc
	push	hl
	ld	hl, (ix - 11)
	ld	de, (ix - 14)
	ld	c, (ix - 17)
	ld	b, (ix - 16)
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 10000
	push	iy
	call	__llcmpu
	pop	bc
	pop	bc
	pop	bc
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB112_10
; %bb.9:
	lea	hl, iy + 0
	.local	.LBB112_10
.LBB112_10:
	bit	0, a
	jr	nz, .LBB112_12
; %bb.11:
	ld	de, 0
	.local	.LBB112_12
.LBB112_12:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end112
.Lfunc_end112:
	.size	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType, .Lfunc_end112-__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
                                        ; -- End function
	.section	.text.__Z23systems_artifacts_foundRK9GameState,"ax",@progbits
	.globl	__Z23systems_artifacts_foundRK9GameState ; -- Begin function _Z23systems_artifacts_foundRK9GameState
	.type	__Z23systems_artifacts_foundRK9GameState,@function
__Z23systems_artifacts_foundRK9GameState: ; @_Z23systems_artifacts_foundRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 958
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	pop	ix
	ret
	.local	.Lfunc_end113
.Lfunc_end113:
	.size	__Z23systems_artifacts_foundRK9GameState, .Lfunc_end113-__Z23systems_artifacts_foundRK9GameState
                                        ; -- End function
	.section	.text.__Z29systems_start_artifact_searchR9GameStatem,"ax",@progbits
	.globl	__Z29systems_start_artifact_searchR9GameStatem ; -- Begin function _Z29systems_start_artifact_searchR9GameStatem
	.type	__Z29systems_start_artifact_searchR9GameStatem,@function
__Z29systems_start_artifact_searchR9GameStatem: ; @_Z29systems_start_artifact_searchR9GameStatem
; %bb.0:
	ld	hl, -25
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 16384
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB114_10
; %bb.1:
	ld	de, 2362
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB114_10
; %bb.2:
	ld	iy, 250
	lea	de, ix - 7
	lea	hl, ix - 13
	ld	(ix - 22), hl
	ld	bc, 958
	ld	hl, (ix + 6)
	add	hl, bc
	ld	hl, (hl)
	ld	(ix - 19), hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	ld	(ix - 25), de
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld.sis	de, 200
	ld	hl, (ix - 19)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB114_4
; %bb.3:
	ld.sis	hl, 200
	ld	(ix - 19), hl
	.local	.LBB114_4
.LBB114_4:
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 16), iy
	ld	hl, (ix - 16)
	inc	hl
	ld	(ix - 16), hl
	ld	de, (ix - 16)
	ld	hl, (ix - 25)
	ld	bc, 6
	ldir
	ld	hl, 1200
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 19)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 22)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 22)
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB114_11
; %bb.5:
	ld	(ix - 16), a                    ; 1-byte Folded Spill
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
	push	hl
	pop	bc
	ld	a, e
	pop	hl
	pop	hl
	ld	hl, 120000
	ld	e, 0
	call	__ldivu
	push	hl
	pop	bc
	ld	hl, (ix + 9)
	add	hl, bc
	ld	a, (ix + 12)
	adc	a, e
	ld	e, a
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	0, a
	jr	z, .LBB114_7
; %bb.6:
	scf
	sbc	hl, hl
	.local	.LBB114_7
.LBB114_7:
	ld	bc, 2362
	bit	0, a
	ld	iy, (ix + 6)
	jr	z, .LBB114_9
; %bb.8:
	ld	e, -1
	.local	.LBB114_9
.LBB114_9:
	ld	a, (ix - 16)                    ; 1-byte Folded Reload
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), e
	jr	.LBB114_11
	.local	.LBB114_10
.LBB114_10:
	xor	a, a
	.local	.LBB114_11
.LBB114_11:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end114
.Lfunc_end114:
	.size	__Z29systems_start_artifact_searchR9GameStatem, .Lfunc_end114-__Z29systems_start_artifact_searchR9GameStatem
                                        ; -- End function
	.section	.text.__Z24systems_collect_artifactR9GameStatem,"ax",@progbits
	.globl	__Z24systems_collect_artifactR9GameStatem ; -- Begin function _Z24systems_collect_artifactR9GameStatem
	.type	__Z24systems_collect_artifactR9GameStatem,@function
__Z24systems_collect_artifactR9GameStatem: ; @_Z24systems_collect_artifactR9GameStatem
; %bb.0:
	ld	hl, -40
	call	__frameset
	ld	bc, (ix + 6)
	ld	l, 0
	ld	(ix - 22), hl
	ld	de, 1018
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 16384
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB115_16
; %bb.1:
	ld	bc, -1
	ld	a, b
	ld	de, 2362
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 37), iy
	lea	iy, iy + 3
	ld	(ix - 34), iy
	ld	e, (iy)
	call	__ladd
	ld	bc, (ix + 9)
	ld	a, (ix + 12)
	call	__lcmpu
	jp	nc, .LBB115_16
; %bb.2:
	lea	hl, ix - 7
	ld	(ix - 25), hl
	lea	hl, ix - 13
	ld	(ix - 31), hl
	lea	hl, ix - 19
	ld	(ix - 28), hl
	or	a, a
	sbc	hl, hl
	ld	iy, (ix - 37)
	ld	(iy), hl
	ld	hl, (ix - 34)
	ld	(hl), 0
	ld	de, 958
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 34), hl
	ld	hl, (hl)
	ld	(ix - 37), hl
	push	bc
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 100
	ld	iyl, b
	ld	a, iyl
	call	__lremu
	ld	bc, 45
	call	__lcmpu
	jr	nc, .LBB115_4
; %bb.3:
	ld	hl, 38
	ld	(ix - 40), hl
	ld	hl, 5
	jp	.LBB115_13
	.local	.LBB115_4
.LBB115_4:
	ld	bc, 75
	ld	a, iyl
	call	__lcmpu
	jr	nc, .LBB115_6
; %bb.5:
	ld	hl, 39
	ld	(ix - 40), hl
	ld	hl, 50
	jp	.LBB115_13
	.local	.LBB115_6
.LBB115_6:
	ld	bc, 95
	ld	a, iyl
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB115_8
; %bb.7:
	ld	e, 35
	jr	.LBB115_9
	.local	.LBB115_8
.LBB115_8:
	ld	e, 41
	.local	.LBB115_9
.LBB115_9:
	bit	0, a
	jr	nz, .LBB115_11
; %bb.10:
	ld	hl, 1
	jr	.LBB115_12
	.local	.LBB115_11
.LBB115_11:
	ld	hl, 10
	.local	.LBB115_12
.LBB115_12:
	bit	0, a
	ld	(ix - 40), de
	.local	.LBB115_13
.LBB115_13:
	push	iy
	push	hl
	ld	hl, (ix - 31)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 37)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 5
	call	__sdivu
	ld	iy, 0
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	inc.sis	iy
	ld	(ix - 37), iy
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	hl, 0
	add	hl, sp
	ld	(ix - 22), hl
	ld	iy, (ix - 22)
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	ld	iy, (ix - 22)
	ld	hl, (ix - 37)
	ld	(iy + 7), hl
	ld	iy, (ix - 22)
	ld	(iy + 10), 0
	ld	hl, (ix - 25)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	(ix - 22), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 31), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 25)
	ld	bc, 6
	ldir
	ld	hl, (ix - 22)
	ld	iy, (ix - 31)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 28)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 25)
	lea	de, iy + 0
	ld	hl, (ix - 28)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, (ix - 40)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 34)
	ld	de, (hl)
	ld.sis	bc, 1000
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB115_15
; %bb.14:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 958
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB115_15
.LBB115_15:
	ld	l, 1
	ld	(ix - 22), hl
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB115_16
.LBB115_16:
	ld	hl, (ix - 22)
	ld	a, l
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end115
.Lfunc_end115:
	.size	__Z24systems_collect_artifactR9GameStatem, .Lfunc_end115-__Z24systems_collect_artifactR9GameStatem
                                        ; -- End function
	.section	.text.__Z18systems_tower_costRK9GameState,"ax",@progbits
	.globl	__Z18systems_tower_costRK9GameState ; -- Begin function _Z18systems_tower_costRK9GameState
	.type	__Z18systems_tower_costRK9GameState,@function
__Z18systems_tower_costRK9GameState:    ; @_Z18systems_tower_costRK9GameState
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 9)
	ld	iy, 10
	lea	de, ix - 7
	ld	bc, 2382
	add	hl, bc
	ld	hl, (hl)
	ld.sis	bc, 1000
	ld	(ix - 13), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB116_2
; %bb.1:
	ld.sis	hl, 1000
	ld	(ix - 13), hl
	.local	.LBB116_2
.LBB116_2:
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	push	de
	ld	(ix - 16), de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 16)
	ldir
	ld	hl, 1060
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 13)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end116
.Lfunc_end116:
	.size	__Z18systems_tower_costRK9GameState, .Lfunc_end116-__Z18systems_tower_costRK9GameState
                                        ; -- End function
	.section	.text.__Z21systems_advance_towerR9GameState,"ax",@progbits
	.globl	__Z21systems_advance_towerR9GameState ; -- Begin function _Z21systems_advance_towerR9GameState
	.type	__Z21systems_advance_towerR9GameState,@function
__Z21systems_advance_towerR9GameState:  ; @_Z21systems_advance_towerR9GameState
; %bb.0:
	ld	hl, -55
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 40), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 32768
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jp	z, .LBB117_11
; %bb.1:
	ld.sis	bc, 1000
	ld	de, 2382
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	lea	hl, iy + 0
	jp	nc, .LBB117_11
; %bb.2:
	lea	de, ix - 7
	ld	(ix - 43), de
	push	hl
	push	de
	call	__Z18systems_tower_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 43)
	ldir
	ld	hl, 32
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB117_11
; %bb.3:
	ld.sis	de, 10
	ld	iy, 50
	lea	hl, ix - 13
	ld	(ix - 40), hl
	lea	hl, ix - 19
	ld	(ix - 46), hl
	lea	hl, ix - 25
	ld	(ix - 43), hl
	ld	hl, (ix + 6)
	ld	bc, 2382
	add	hl, bc
	ld	bc, (hl)
	inc.sis	bc
	ld	(ix - 49), hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	l, c
	ld	h, b
	ld	c, e
	ld	b, d
	call	__sdivu
	inc.sis	hl
	ld	(ix - 52), l
	ld	(ix - 51), h
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	ld	hl, (ix - 46)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 55), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 46)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	e, (ix - 52)
	ld	d, (ix - 51)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 55)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 40)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_112combat_bonusERK9GameState
	ld	(ix - 46), hl
	ld	a, e
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 52), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	hl, (ix - 46)
	ld	iy, (ix - 52)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 43)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 40)
	ld	hl, (ix - 43)
	ld	bc, 6
	ldir
	ld	de, 962
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB117_5
; %bb.4:
	ld.sis	de, 200
	.local	.LBB117_5
.LBB117_5:
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	ld	(ix - 46), l
	ld	(ix - 45), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 52), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	e, (ix - 46)
	ld	d, (ix - 45)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 52)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 43)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 40)
	lea	de, iy + 0
	ld	hl, (ix - 43)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 12
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 49)
	ld	de, (hl)
	ld.sis	bc, 100
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jp	c, .LBB117_7
; %bb.6:
	ld	iy, __ZZ21systems_advance_towerR9GameStateE10GEM_LEAVES
	lea	hl, ix - 31
	ld	(ix - 43), hl
	ld	l, e
	ld	h, d
	ld.sis	de, 10
	ld	c, e
	ld	b, d
	call	__sdivu
	ld.sis	bc, 7
	call	__sremu
	ld	de, 0
	ld	e, l
	ld	d, h
	add	iy, de
	ld	a, (iy)
	ld	(ix - 46), a
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 49), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	hl, 5
	ld	iy, (ix - 49)
	ld	(iy + 7), hl
	ld	(iy + 10), h
	ld	hl, (ix - 43)
	push	hl
	call	__Z10bn_div_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 43)
	ld	bc, 6
	ldir
	ld	l, (ix - 46)                    ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld.sis	bc, 10
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	ld	de, 2382
	add	hl, de
	ld	de, (hl)
	jr	.LBB117_8
	.local	.LBB117_7
.LBB117_7:
	ld	iy, (ix + 6)
	ld.sis	bc, 10
	.local	.LBB117_8
.LBB117_8:
	ld	l, e
	ld	h, d
	call	__sremu
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB117_10
; %bb.9:
	ld.sis	bc, 20
	lea	hl, ix - 37
	ld	(ix - 40), hl
	ld	l, e
	ld	h, d
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 40)
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB117_10
.LBB117_10:
	ld	a, 1
	ld	(ix - 40), a
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB117_11
.LBB117_11:
	ld	a, (ix - 40)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end117
.Lfunc_end117:
	.size	__Z21systems_advance_towerR9GameState, .Lfunc_end117-__Z21systems_advance_towerR9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_112combat_bonusERK9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_112combat_bonusERK9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_112combat_bonusERK9GameState
__ZN12_GLOBAL__N_112combat_bonusERK9GameState: ; @_ZN12_GLOBAL__N_112combat_bonusERK9GameState
; %bb.0:
	ld	hl, -14
	call	__frameset
	ld	de, (ix + 6)
	ld	hl, 17
	push	hl
	push	de
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 11), hl
	pop	hl
	pop	hl
	xor	a, a
	ld	(ix - 5), a
	ld	hl, (ix - 7)
	ld	h, a
	ld	l, e
	ld	(ix - 14), hl
	sbc	hl, hl
	ld	(ix - 8), hl
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114equipped_bonusERK9GameState13CraftProperty
	ld	a, e
	pop	de
	pop	de
	ld	c, 0
	ld	(ix - 4), c
	ld	de, (ix - 6)
	ld	d, c
	ld	e, a
	ld	iy, (ix - 8)
	push	iy
	ld	bc, (ix - 14)
	push	bc
	ld	bc, (ix - 11)
	push	bc
	ld	c, iyl
	ld	b, iyh
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	push	hl
	pop	iy
	ld	(ix - 11), de
	ld	(ix - 14), c
	ld	(ix - 13), b
	pop	hl
	pop	hl
	pop	hl
	ld	bc, 966
	ld	hl, (ix + 6)
	add	hl, bc
	ld	bc, (hl)
	ld.sis	de, 200
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB118_2
; %bb.1:
	ld.sis	bc, 200
	.local	.LBB118_2
.LBB118_2:
	ld	l, c
	ld	h, b
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	xor	a, a
	ld	(ix - 3), a
	ld	bc, (ix - 5)
	ld	b, h
	ld	c, l
	ld	hl, (ix - 8)
	push	hl
	sbc	hl, hl
	push	hl
	push	bc
	lea	hl, iy + 0
	ld	de, (ix - 11)
	ld	c, (ix - 14)
	ld	b, (ix - 13)
	call	__llmulu
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1000
	push	iy
	call	__lldivu
	push	hl
	pop	iy
	ld	(ix - 11), de
	ld	(ix - 14), c
	ld	(ix - 13), b
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2390
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld	(ix - 2), a
	ld	hl, (ix - 4)
	ld	h, d
	ld	l, e
	ld	de, 0
	ld	bc, 10
	call	__lmulu
	ld	(ix - 1), a
	ld	bc, (ix - 3)
	ld	b, a
	ld	c, e
	ld	de, (ix - 8)
	push	de
	push	bc
	push	hl
	lea	hl, iy + 0
	ld	de, (ix - 11)
	ld	c, (ix - 14)
	ld	b, (ix - 13)
	call	__lladd
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 12000
	push	iy
	call	__llcmpu
	pop	bc
	pop	bc
	pop	bc
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB118_4
; %bb.3:
	lea	hl, iy + 0
	.local	.LBB118_4
.LBB118_4:
	bit	0, a
	jr	nz, .LBB118_6
; %bb.5:
	ld	de, 0
	.local	.LBB118_6
.LBB118_6:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end118
.Lfunc_end118:
	.size	__ZN12_GLOBAL__N_112combat_bonusERK9GameState, .Lfunc_end118-__ZN12_GLOBAL__N_112combat_bonusERK9GameState
                                        ; -- End function
	.section	.text.__Z20systems_pyramid_costRK9GameState,"ax",@progbits
	.globl	__Z20systems_pyramid_costRK9GameState ; -- Begin function _Z20systems_pyramid_costRK9GameState
	.type	__Z20systems_pyramid_costRK9GameState,@function
__Z20systems_pyramid_costRK9GameState:  ; @_Z20systems_pyramid_costRK9GameState
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 9)
	ld	iy, 1
	lea	de, ix - 7
	ld	bc, 2384
	add	hl, bc
	ld	hl, (hl)
	ld.sis	bc, 500
	ld	(ix - 13), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB119_2
; %bb.1:
	ld.sis	hl, 500
	ld	(ix - 13), hl
	.local	.LBB119_2
.LBB119_2:
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	push	de
	ld	(ix - 16), de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 16)
	ldir
	ld	hl, 1050
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 13)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end119
.Lfunc_end119:
	.size	__Z20systems_pyramid_costRK9GameState, .Lfunc_end119-__Z20systems_pyramid_costRK9GameState
                                        ; -- End function
	.section	.text.__Z23systems_advance_pyramidR9GameState,"ax",@progbits
	.globl	__Z23systems_advance_pyramidR9GameState ; -- Begin function _Z23systems_advance_pyramidR9GameState
	.type	__Z23systems_advance_pyramidR9GameState,@function
__Z23systems_advance_pyramidR9GameState: ; @_Z23systems_advance_pyramidR9GameState
; %bb.0:
	ld	hl, -52
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 34), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 524288
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB120_6
; %bb.1:
	ld	de, 2384
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	hl, (hl)
	ld.sis	de, 500
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	push	bc
	pop	hl
	jp	nc, .LBB120_6
; %bb.2:
	lea	de, ix - 7
	ld	(ix - 37), de
	push	hl
	push	de
	call	__Z20systems_pyramid_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 37)
	ldir
	ld	hl, 33
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB120_6
; %bb.3:
	ld	iy, 100
	lea	hl, ix - 13
	ld	(ix - 37), hl
	lea	bc, ix - 19
	ld	(ix - 49), bc
	lea	hl, ix - 25
	ld	(ix - 40), hl
	lea	de, ix - 31
	ld	(ix - 43), de
	ld	hl, (ix + 6)
	ld	de, 2384
	add	hl, de
	ld	de, (hl)
	inc.sis	de
	ld	(ix - 34), de
	ld	(ix - 46), hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 0
	push	de
	push	iy
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 52), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 49)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	de, (ix - 34)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 52)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 37)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_112combat_bonusERK9GameState
	ld	(ix - 34), hl
	ld	a, e
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 49), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 37)
	ld	bc, 6
	ldir
	ld	hl, (ix - 34)
	ld	iy, (ix - 49)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 40)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 37)
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	de, 962
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB120_5
; %bb.4:
	ld.sis	de, 200
	.local	.LBB120_5
.LBB120_5:
	ld	a, 1
	ld	(ix - 34), a
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	ld	(ix - 49), l
	ld	(ix - 48), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 52), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 37)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	e, (ix - 49)
	ld	d, (ix - 48)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 52)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 40)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 37)
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 15
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 46)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 43)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 43)
	ld	bc, 6
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB120_6
.LBB120_6:
	ld	a, (ix - 34)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end120
.Lfunc_end120:
	.size	__Z23systems_advance_pyramidR9GameState, .Lfunc_end120-__Z23systems_advance_pyramidR9GameState
                                        ; -- End function
	.section	.text.__Z24systems_borbventure_rankRK9GameState,"ax",@progbits
	.globl	__Z24systems_borbventure_rankRK9GameState ; -- Begin function _Z24systems_borbventure_rankRK9GameState
	.type	__Z24systems_borbventure_rankRK9GameState,@function
__Z24systems_borbventure_rankRK9GameState: ; @_Z24systems_borbventure_rankRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 960
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	pop	ix
	ret
	.local	.Lfunc_end121
.Lfunc_end121:
	.size	__Z24systems_borbventure_rankRK9GameState, .Lfunc_end121-__Z24systems_borbventure_rankRK9GameState
                                        ; -- End function
	.section	.text.__Z25systems_start_borbventureR9GameStatem,"ax",@progbits
	.globl	__Z25systems_start_borbventureR9GameStatem ; -- Begin function _Z25systems_start_borbventureR9GameStatem
	.type	__Z25systems_start_borbventureR9GameStatem,@function
__Z25systems_start_borbventureR9GameStatem: ; @_Z25systems_start_borbventureR9GameStatem
; %bb.0:
	ld	hl, -32
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1048576
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB122_14
; %bb.1:
	xor	a, a
	ld	(ix - 20), a                    ; 1-byte Folded Spill
	ld	de, 2358
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB122_14
; %bb.2:
	ld	iy, 100
	lea	de, ix - 7
	lea	hl, ix - 13
	ld	(ix - 19), hl
	ld	bc, 960
	ld	hl, (ix + 6)
	add	hl, bc
	ld	hl, (hl)
	ld	(ix - 23), hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	ld	(ix - 26), de
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	bc, 0
	ld	hl, (ix - 23)
	ld	c, l
	ld	b, h
	ld	de, 200
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	(ix - 32), bc
	jr	c, .LBB122_4
; %bb.3:
	ld	bc, 200
	.local	.LBB122_4
.LBB122_4:
	ld	(ix - 29), bc
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 16), iy
	ld	hl, (ix - 16)
	inc	hl
	ld	(ix - 16), hl
	ld	de, (ix - 16)
	ld	hl, (ix - 26)
	ld	bc, 6
	ldir
	ld	hl, 1150
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 29)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 19)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 19)
	ld	bc, 6
	ldir
	ld	hl, 40
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	ld	e, a
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, e
	jp	z, .LBB122_15
; %bb.5:
	ld	iy, 180
	ld.sis	bc, 150
	ld	hl, (ix - 23)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	lea	hl, iy + 0
	ld	bc, (ix - 32)
	or	a, a
	sbc	hl, bc
	push	hl
	pop	bc
	or	a, a
	sbc	hl, hl
	ld	d, l
	bit	0, a
	jr	z, .LBB122_7
; %bb.6:
	ld	bc, 30
	.local	.LBB122_7
.LBB122_7:
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	bit	0, a
	jr	nz, .LBB122_9
; %bb.8:
	ld	(ix - 20), d                    ; 1-byte Folded Spill
	.local	.LBB122_9
.LBB122_9:
	add	hl, bc
	ld	a, (ix + 12)
	adc	a, (ix - 20)                    ; 1-byte Folded Reload
	ld	d, a
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	0, a
	jr	z, .LBB122_11
; %bb.10:
	scf
	sbc	hl, hl
	.local	.LBB122_11
.LBB122_11:
	bit	0, a
	jr	z, .LBB122_13
; %bb.12:
	ld	d, -1
	.local	.LBB122_13
.LBB122_13:
	ld	bc, 2358
	add	iy, bc
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), d
	jr	.LBB122_15
	.local	.LBB122_14
.LBB122_14:
	ld	e, 0
	.local	.LBB122_15
.LBB122_15:
	ld	a, e
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end122
.Lfunc_end122:
	.size	__Z25systems_start_borbventureR9GameStatem, .Lfunc_end122-__Z25systems_start_borbventureR9GameStatem
                                        ; -- End function
	.section	.text.__Z28systems_complete_borbventureR9GameStatem,"ax",@progbits
	.globl	__Z28systems_complete_borbventureR9GameStatem ; -- Begin function _Z28systems_complete_borbventureR9GameStatem
	.type	__Z28systems_complete_borbventureR9GameStatem,@function
__Z28systems_complete_borbventureR9GameStatem: ; @_Z28systems_complete_borbventureR9GameStatem
; %bb.0:
	ld	hl, -58
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 34), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1048576
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB123_9
; %bb.1:
	ld	bc, -1
	ld	a, b
	ld	de, 2358
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 43), iy
	lea	iy, iy + 3
	ld	(ix - 40), iy
	ld	e, (iy)
	call	__ladd
	ld	bc, (ix + 9)
	ld	a, (ix + 12)
	call	__lcmpu
	jp	nc, .LBB123_9
; %bb.2:
	lea	bc, ix - 7
	lea	hl, ix - 13
	ld	(ix - 49), hl
	lea	hl, ix - 19
	ld	(ix - 37), hl
	lea	hl, ix - 25
	ld	(ix - 46), hl
	ld	iy, 0
	ld	hl, (ix - 43)
	ld	(hl), iy
	ld	hl, (ix - 40)
	ld	(hl), 0
	ld	de, 960
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 52), hl
	ld	hl, (hl)
	ld	(ix - 43), hl
	push	iy
	ld	hl, 100
	push	hl
	ld	(ix - 40), bc
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	bc, 0
	ld	hl, (ix - 43)
	ld	c, l
	ld	b, h
	ld	de, 200
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	(ix - 55), bc
	jr	c, .LBB123_4
; %bb.3:
	ld	bc, 200
	.local	.LBB123_4
.LBB123_4:
	ld	(ix - 58), bc
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 43), iy
	ld	hl, (ix - 43)
	inc	hl
	ld	(ix - 43), hl
	ld	de, (ix - 43)
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	hl, 1150
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 58)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 49)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 43), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 49)
	ld	bc, 6
	ldir
	ld	hl, 2500
	ld	iy, (ix - 43)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 37)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	(ix - 43), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 49), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 37)
	ld	bc, 6
	ldir
	ld	hl, (ix - 43)
	ld	iy, (ix - 49)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 40)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 37)
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 40
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 55)
	call	__ishru_1
	ld	de, 5
	add	hl, de
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix - 46)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 46)
	ld	bc, 6
	ldir
	ld	hl, 41
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 10
	xor	a, a
	call	__lremu
	call	__lcmpzero
	jr	nz, .LBB123_6
; %bb.5:
	ld	hl, 1
	lea	bc, ix - 31
	ld	(ix - 34), bc
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 34)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB123_6
.LBB123_6:
	ld	hl, (ix - 52)
	ld	de, (hl)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	jr	nc, .LBB123_8
; %bb.7:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 960
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB123_8
.LBB123_8:
	ld	a, 1
	ld	(ix - 34), a
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB123_9
.LBB123_9:
	ld	a, (ix - 34)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end123
.Lfunc_end123:
	.size	__Z28systems_complete_borbventureR9GameStatem, .Lfunc_end123-__Z28systems_complete_borbventureR9GameStatem
                                        ; -- End function
	.section	.text.__Z18systems_card_levelRK9GameState8CardType,"ax",@progbits
	.globl	__Z18systems_card_levelRK9GameState8CardType ; -- Begin function _Z18systems_card_levelRK9GameState8CardType
	.type	__Z18systems_card_levelRK9GameState8CardType,@function
__Z18systems_card_levelRK9GameState8CardType: ; @_Z18systems_card_levelRK9GameState8CardType
; %bb.0:
	call	__frameset0
	ld	a, (ix + 9)
	cp	a, 4
	jr	c, .LBB124_2
; %bb.1:
	ld.sis	de, 0
	jr	.LBB124_4
	.local	.LBB124_2
.LBB124_2:
	ld	iy, (ix + 6)
	ld	l, 36
	or	a, l
	ld	e, a
	or	a, a
	sbc	hl, hl
	ld	l, e
	add	hl, hl
	ex	de, hl
	add	iy, de
	ld	de, 890
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB124_4
; %bb.3:
	ld.sis	de, 200
	.local	.LBB124_4
.LBB124_4:
	ld	l, e
	ld	h, d
	pop	ix
	ret
	.local	.Lfunc_end124
.Lfunc_end124:
	.size	__Z18systems_card_levelRK9GameState8CardType, .Lfunc_end124-__Z18systems_card_levelRK9GameState8CardType
                                        ; -- End function
	.section	.text.__Z17systems_card_costRK9GameState8CardType,"ax",@progbits
	.globl	__Z17systems_card_costRK9GameState8CardType ; -- Begin function _Z17systems_card_costRK9GameState8CardType
	.type	__Z17systems_card_costRK9GameState8CardType,@function
__Z17systems_card_costRK9GameState8CardType: ; @_Z17systems_card_costRK9GameState8CardType
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	iy, (ix + 6)
	ld	bc, 0
	ld	a, (ix + 12)
	cp	a, 4
	jr	c, .LBB125_2
; %bb.1:
	ld.sis	hl, 0
	ld	(iy), bc
	ld	(iy + 3), h
	ld	(iy + 4), l
	ld	(iy + 5), h
	jp	.LBB125_5
	.local	.LBB125_2
.LBB125_2:
	ld	hl, 25
	lea	de, ix - 7
	push	bc
	push	hl
	ld	(ix - 13), de
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	a, (ix + 12)
	ld	e, 36
	or	a, e
	ld	l, a
	add	hl, hl
	ex	de, hl
	ld	hl, (ix + 9)
	add	hl, de
	ld	de, 890
	add	hl, de
	ld	bc, (hl)
	ld.sis	de, 200
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB125_4
; %bb.3:
	ld.sis	bc, 200
	.local	.LBB125_4
.LBB125_4:
	ld	(ix - 16), bc
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 13)
	ldir
	ld	hl, 1800
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 16)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	iy, (ix + 6)
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	.local	.LBB125_5
.LBB125_5:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end125
.Lfunc_end125:
	.size	__Z17systems_card_costRK9GameState8CardType, .Lfunc_end125-__Z17systems_card_costRK9GameState8CardType
                                        ; -- End function
	.section	.text.__Z20systems_upgrade_cardR9GameState8CardType,"ax",@progbits
	.globl	__Z20systems_upgrade_cardR9GameState8CardType ; -- Begin function _Z20systems_upgrade_cardR9GameState8CardType
	.type	__Z20systems_upgrade_cardR9GameState8CardType,@function
__Z20systems_upgrade_cardR9GameState8CardType: ; @_Z20systems_upgrade_cardR9GameState8CardType
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 2097152
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	a, (ix + 9)
	cp	a, 4
	jp	nc, .LBB126_3
; %bb.1:
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB126_3
; %bb.2:
	ld	l, 36
	ld	a, (ix + 9)
	ld	iy, 0
	or	a, l
	ld	iyl, a
	add	iy, iy
	lea	de, iy + 0
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	de, 890
	add	hl, de
	ld	(ix - 10), hl
	ld	hl, (hl)
	ld.sis	de, 200
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB126_5
	.local	.LBB126_3
.LBB126_3:
	xor	a, a
	.local	.LBB126_4
.LBB126_4:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB126_5
.LBB126_5:
	lea	de, ix - 7
	ld	(ix - 13), de
	ld	l, (ix + 9)
	push	hl
	push	bc
	push	de
	call	__Z17systems_card_costRK9GameState8CardType
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 13)
	ldir
	ld	hl, 41
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jr	z, .LBB126_4
; %bb.6:
	ld	a, 1
	ld	iy, (ix - 10)
	ld	de, (iy)
	ld	l, e
	ld	h, d
	ld.sis	bc, 200
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB126_4
; %bb.7:
	inc.sis	de
	ld	(iy), e
	ld	(iy + 1), d
	jr	.LBB126_4
	.local	.Lfunc_end126
.Lfunc_end126:
	.size	__Z20systems_upgrade_cardR9GameState8CardType, .Lfunc_end126-__Z20systems_upgrade_cardR9GameState8CardType
                                        ; -- End function
	.section	.text.__Z17systems_dice_tierRK9GameState,"ax",@progbits
	.globl	__Z17systems_dice_tierRK9GameState ; -- Begin function _Z17systems_dice_tierRK9GameState
	.type	__Z17systems_dice_tierRK9GameState,@function
__Z17systems_dice_tierRK9GameState:     ; @_Z17systems_dice_tierRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 970
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 50
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB127_2
; %bb.1:
	ld.sis	de, 50
	.local	.LBB127_2
.LBB127_2:
	ld	l, e
	ld	h, d
	pop	ix
	ret
	.local	.Lfunc_end127
.Lfunc_end127:
	.size	__Z17systems_dice_tierRK9GameState, .Lfunc_end127-__Z17systems_dice_tierRK9GameState
                                        ; -- End function
	.section	.text.__Z25systems_dice_upgrade_costRK9GameState,"ax",@progbits
	.globl	__Z25systems_dice_upgrade_costRK9GameState ; -- Begin function _Z25systems_dice_upgrade_costRK9GameState
	.type	__Z25systems_dice_upgrade_costRK9GameState,@function
__Z25systems_dice_upgrade_costRK9GameState: ; @_Z25systems_dice_upgrade_costRK9GameState
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, 100
	lea	bc, ix - 7
	ld	de, 0
	push	de
	push	hl
	ld	(ix - 13), bc
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, 970
	ld	hl, (ix + 9)
	add	hl, de
	ld	bc, (hl)
	ld.sis	de, 50
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB128_2
; %bb.1:
	ld.sis	bc, 50
	.local	.LBB128_2
.LBB128_2:
	ld	(ix - 16), bc
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 13)
	ldir
	ld	hl, 2500
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 16)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end128
.Lfunc_end128:
	.size	__Z25systems_dice_upgrade_costRK9GameState, .Lfunc_end128-__Z25systems_dice_upgrade_costRK9GameState
                                        ; -- End function
	.section	.text.__Z20systems_upgrade_diceR9GameState,"ax",@progbits
	.globl	__Z20systems_upgrade_diceR9GameState ; -- Begin function _Z20systems_upgrade_diceR9GameState
	.type	__Z20systems_upgrade_diceR9GameState,@function
__Z20systems_upgrade_diceR9GameState:   ; @_Z20systems_upgrade_diceR9GameState
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 4194304
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	ld	(ix - 10), c
	ld	(ix - 9), b
	pop	iy
	pop	iy
	pop	iy
	ld	bc, 970
	ld	iy, (ix + 6)
	add	iy, bc
	ld	(ix - 16), iy
	ld	iy, (iy)
	ld	(ix - 13), iy
	ld	iy, 16
	push	iy
	ld	c, (ix - 10)
	ld	b, (ix - 9)
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB129_5
; %bb.1:
	ld.sis	de, 50
	ld	hl, (ix - 13)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	nc, .LBB129_5
; %bb.2:
	lea	de, ix - 7
	ld	(ix - 10), de
	ld	hl, (ix + 6)
	push	hl
	push	de
	call	__Z25systems_dice_upgrade_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 10)
	ldir
	ld	hl, 42
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jr	z, .LBB129_6
; %bb.3:
	ld	a, 1
	ld	hl, (ix - 16)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 50
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB129_6
; %bb.4:
	inc.sis	de
	ld	hl, (ix + 6)
	ld	bc, 970
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	.LBB129_6
	.local	.LBB129_5
.LBB129_5:
	xor	a, a
	.local	.LBB129_6
.LBB129_6:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end129
.Lfunc_end129:
	.size	__Z20systems_upgrade_diceR9GameState, .Lfunc_end129-__Z20systems_upgrade_diceR9GameState
                                        ; -- End function
	.section	.text.__Z17systems_roll_diceR9GameStatePh,"ax",@progbits
	.globl	__Z17systems_roll_diceR9GameStatePh ; -- Begin function _Z17systems_roll_diceR9GameStatePh
	.type	__Z17systems_roll_diceR9GameStatePh,@function
__Z17systems_roll_diceR9GameStatePh:    ; @_Z17systems_roll_diceR9GameStatePh
; %bb.0:
	ld	hl, -70
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 4194304
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jr	nz, .LBB130_2
; %bb.1:
	xor	a, a
	jp	.LBB130_24
	.local	.LBB130_2
.LBB130_2:
	lea	hl, ix - 7
	ld	(ix - 40), hl
	ld	de, 970
	ld	hl, (ix + 6)
	add	hl, de
	ld	bc, (hl)
	ld.sis	de, 50
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	(ix - 45), bc
	ld	iyl, c
	ld	iyh, b
	jr	c, .LBB130_4
; %bb.3:
	ld.sis	iy, 50
	.local	.LBB130_4
.LBB130_4:
	push	iy
	ex	(sp), hl
	ld	(ix - 42), l
	ld	(ix - 41), h
	pop	hl
	add.sis	iy, iy
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld	de, 10
	add	hl, de
	push	bc
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 40)
	ldir
	ld	hl, 40
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB130_24
; %bb.5:
	ld	(ix - 62), a                    ; 1-byte Folded Spill
	or	a, a
	sbc	hl, hl
	ld	e, (ix - 42)
	ld	d, (ix - 41)
	ld	l, e
	ld	h, d
	ld	(ix - 58), hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 6
	xor	a, a
	call	__lremu
	ld	(ix - 66), e                    ; 1-byte Folded Spill
	ld	(ix - 48), hl
	inc	hl
	ld	(ix - 61), hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 6
	xor	a, a
	call	__lremu
	ld	(ix - 40), hl
	ld	(ix - 55), e                    ; 1-byte Folded Spill
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 6
	xor	a, a
	call	__lremu
	push	hl
	pop	bc
	ld	(ix - 70), e                    ; 1-byte Folded Spill
	ld	iy, (ix - 40)
	ld	de, (ix - 61)
	add	iy, de
	ld	(ix - 69), bc
	add	iy, bc
	ld	de, 2
	add	iy, de
	ld	hl, (ix + 9)
	push	hl
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	lea	bc, iy + 0
	jr	z, .LBB130_7
; %bb.6:
	ld	a, c
	ex	de, hl
	ld	(hl), a
	.local	.LBB130_7
.LBB130_7:
	ld	iy, (ix - 58)
	inc	iy
	ld	(ix - 65), bc
	push	bc
	pop	hl
	lea	bc, iy + 0
	call	__imulu
	ld	(ix - 51), hl
	ld	iy, 0
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	ld	(ix - 54), hl
	ld	hl, (ix - 48)
	ld	e, (ix - 66)                    ; 1-byte Folded Reload
	ld	bc, (ix - 40)
	ld	a, (ix - 55)                    ; 1-byte Folded Reload
	call	__lcmpu
	jr	nz, .LBB130_9
; %bb.8:
	ld	a, 0
	jr	.LBB130_10
	.local	.LBB130_9
.LBB130_9:
	ld	a, 1
	.local	.LBB130_10
.LBB130_10:
	lea	hl, ix - 25
	ld	(ix - 48), hl
	bit	0, a
	jp	nz, .LBB130_17
; %bb.11:
	ld	hl, (ix - 40)
	ld	e, (ix - 55)                    ; 1-byte Folded Reload
	ld	bc, (ix - 69)
	ld	a, (ix - 70)                    ; 1-byte Folded Reload
	call	__lcmpu
	jr	nz, .LBB130_13
; %bb.12:
	ld	l, 0
	jr	.LBB130_14
	.local	.LBB130_13
.LBB130_13:
	ld	l, 1
	.local	.LBB130_14
.LBB130_14:
	xor	a, a
	bit	0, l
	jp	nz, .LBB130_17
; %bb.15:
	lea	hl, ix - 13
	ld	(ix - 40), hl
	ld	hl, (ix - 51)
	ld	de, (ix - 54)
                                        ; kill: def $e killed $e killed $ude
	ld	bc, 10
	call	__lmulu
	ld	(ix - 51), hl
                                        ; kill: def $e killed $e def $ude
	ld	(ix - 54), de
	ld	hl, (ix - 58)
	ld	de, 5
	add	hl, de
	push	iy
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	hl, 41
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 61)
	ld	de, 6
	or	a, a
	sbc	hl, de
	jr	nz, .LBB130_17
; %bb.16:
	ld	c, 5
	lea	hl, ix - 19
	ld	(ix - 40), hl
	ld	l, (ix - 42)
	ld	h, (ix - 41)
	ld	b, l
	call	__bdivu
	inc	a
	ld	de, 0
	push	de
	pop	hl
	ld	l, a
	push	de
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 40)
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB130_17
.LBB130_17:
	ld	hl, (ix - 54)
	push	hl
	ld	hl, (ix - 51)
	push	hl
	ld	hl, (ix - 48)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 48)
	ldir
	ld	hl, 42
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld.sis	de, 10
	ld	bc, (ix - 45)
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB130_20
; %bb.18:
	ld	de, 12
	ld	hl, (ix - 65)
	or	a, a
	sbc	hl, de
	jr	c, .LBB130_20
; %bb.19:
	ld	c, 10
	lea	hl, ix - 31
	ld	(ix - 40), hl
	ld	l, (ix - 42)
	ld	h, (ix - 41)
	ld	b, l
	call	__bdivu
	inc	a
	ld	de, 0
	push	de
	pop	hl
	ld	l, a
	push	de
	push	hl
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 40)
	ldir
	ld	hl, 69
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	bc, (ix - 45)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB130_20
.LBB130_20:
	ld.sis	de, 25
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	de, 0
	jr	c, .LBB130_23
; %bb.21:
	ld	bc, 15
	ld	hl, (ix - 65)
	or	a, a
	sbc	hl, bc
	jr	c, .LBB130_23
; %bb.22:
	ld	c, 25
	lea	hl, ix - 37
	ld	(ix - 40), hl
	ld	l, (ix - 42)
	ld	h, (ix - 41)
	ld	b, l
	call	__bdivu
	inc	a
	push	de
	ld	e, a
	push	de
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 40)
	ldir
	ld	hl, 70
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB130_23
.LBB130_23:
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	ld	a, (ix - 62)                    ; 1-byte Folded Reload
	.local	.LBB130_24
.LBB130_24:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end130
.Lfunc_end130:
	.size	__Z17systems_roll_diceR9GameStatePh, .Lfunc_end130-__Z17systems_roll_diceR9GameStatePh
                                        ; -- End function
	.section	.text.__Z23systems_death_book_costRK9GameState,"ax",@progbits
	.globl	__Z23systems_death_book_costRK9GameState ; -- Begin function _Z23systems_death_book_costRK9GameState
	.type	__Z23systems_death_book_costRK9GameState,@function
__Z23systems_death_book_costRK9GameState: ; @_Z23systems_death_book_costRK9GameState
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 9)
	ld	iy, 10
	lea	de, ix - 7
	ld	bc, 2390
	add	hl, bc
	ld	hl, (hl)
	ld.sis	bc, 500
	ld	(ix - 13), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB131_2
; %bb.1:
	ld.sis	hl, 500
	ld	(ix - 13), hl
	.local	.LBB131_2
.LBB131_2:
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	push	de
	ld	(ix - 16), de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 16)
	ldir
	ld	hl, 1650
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 13)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end131
.Lfunc_end131:
	.size	__Z23systems_death_book_costRK9GameState, .Lfunc_end131-__Z23systems_death_book_costRK9GameState
                                        ; -- End function
	.section	.text.__Z26systems_upgrade_death_bookR9GameState,"ax",@progbits
	.globl	__Z26systems_upgrade_death_bookR9GameState ; -- Begin function _Z26systems_upgrade_death_bookR9GameState
	.type	__Z26systems_upgrade_death_bookR9GameState,@function
__Z26systems_upgrade_death_bookR9GameState: ; @_Z26systems_upgrade_death_bookR9GameState
; %bb.0:
	ld	hl, -10
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, -8388608
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 16
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB132_2
; %bb.1:
	ld	de, 2390
	ld	hl, (ix + 6)
	add	hl, de
	ld	hl, (hl)
	ld.sis	de, 500
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB132_4
	.local	.LBB132_2
.LBB132_2:
	xor	a, a
	.local	.LBB132_3
.LBB132_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB132_4
.LBB132_4:
	lea	de, ix - 7
	ld	(ix - 10), de
	ld	hl, (ix + 6)
	push	hl
	push	de
	call	__Z23systems_death_book_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 10)
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jr	z, .LBB132_3
; %bb.5:
	ld	a, 1
	ld	iy, (ix + 6)
	ld	de, 2390
	add	iy, de
	ld	hl, (iy)
	inc.sis	hl
	ld	(iy), l
	ld	(iy + 1), h
	jr	.LBB132_3
	.local	.Lfunc_end132
.Lfunc_end132:
	.size	__Z26systems_upgrade_death_bookR9GameState, .Lfunc_end132-__Z26systems_upgrade_death_bookR9GameState
                                        ; -- End function
	.section	.text.__Z17systems_mine_costRK9GameState,"ax",@progbits
	.globl	__Z17systems_mine_costRK9GameState ; -- Begin function _Z17systems_mine_costRK9GameState
	.type	__Z17systems_mine_costRK9GameState,@function
__Z17systems_mine_costRK9GameState:     ; @_Z17systems_mine_costRK9GameState
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	hl, (ix + 9)
	ld	iy, 100
	lea	de, ix - 7
	ld	bc, 2386
	add	hl, bc
	ld	hl, (hl)
	ld.sis	bc, 1000
	ld	(ix - 13), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB133_2
; %bb.1:
	ld.sis	hl, 1000
	ld	(ix - 13), hl
	.local	.LBB133_2
.LBB133_2:
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	push	de
	ld	(ix - 16), de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 16)
	ldir
	ld	hl, 1125
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 13)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end133
.Lfunc_end133:
	.size	__Z17systems_mine_costRK9GameState, .Lfunc_end133-__Z17systems_mine_costRK9GameState
                                        ; -- End function
	.section	.text.__Z18systems_delve_mineR9GameState,"ax",@progbits
	.globl	__Z18systems_delve_mineR9GameState ; -- Begin function _Z18systems_delve_mineR9GameState
	.type	__Z18systems_delve_mineR9GameState,@function
__Z18systems_delve_mineR9GameState:     ; @_Z18systems_delve_mineR9GameState
; %bb.0:
	ld	hl, -38
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	inc	iy
	push	iy
	dec	iy
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	bit	0, l
	jp	z, .LBB134_12
; %bb.1:
	ld	de, 2386
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	hl, (hl)
	ld.sis	de, 1000
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	push	bc
	pop	hl
	jp	nc, .LBB134_12
; %bb.2:
	lea	de, ix - 7
	ld	(ix - 35), de
	push	hl
	push	de
	call	__Z17systems_mine_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 35)
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB134_5
; %bb.3:
	ld	hl, (ix + 6)
	ex	de, hl
	push	de
	pop	iy
	ld	bc, 2386
	add	iy, bc
	ld	(ix - 35), iy
	ld	hl, (iy)
	inc.sis	hl
	ld	(iy), l
	ld	(iy + 1), h
	push	de
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 100
	ld	d, b
	ld	a, d
	call	__lremu
	ld	iy, (ix - 35)
	ld	iy, (iy)
	ld	bc, 55
	call	__lcmpu
	ld	(ix - 35), iy
	jr	nc, .LBB134_6
; %bb.4:
	ld.sis	de, 2
	lea	hl, ix - 13
	ld	(ix - 38), hl
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, 3
	call	__sdivu
	add.sis	hl, de
	ld	bc, 0
	push	bc
	pop	de
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, (ix - 38)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 38)
	ldir
	ld	hl, 38
	jp	.LBB134_9
	.local	.LBB134_5
.LBB134_5:
	xor	a, a
	jp	.LBB134_12
	.local	.LBB134_6
.LBB134_6:
	ld	bc, 85
	ld	a, d
	call	__lcmpu
	jp	nc, .LBB134_8
; %bb.7:
	lea	hl, iy + 0
	ld	iy, 25
	lea	bc, ix - 19
	ld	(ix - 38), bc
	ld	(ix - 32), d
	ld	bc, (ix - 34)
	ld	b, h
	ld	c, l
	or	a, a
	sbc	hl, hl
	ld	a, l
	inc	l
	call	__lshl
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	a, d
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 38)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 38)
	ldir
	ld	hl, 39
	jr	.LBB134_9
	.local	.LBB134_8
.LBB134_8:
	ld.sis	bc, 5
	lea	hl, ix - 25
	ld	(ix - 38), hl
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	call	__sdivu
	ld.sis	de, 3
	add.sis	hl, de
	ld	bc, 0
	push	bc
	pop	de
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, (ix - 38)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 38)
	ldir
	ld	hl, 41
	.local	.LBB134_9
.LBB134_9:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, (ix - 35)
	ld	l, e
	ld	h, d
	ld.sis	bc, 10
	call	__sremu
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ex	de, hl
	jp	nz, .LBB134_11
; %bb.10:
	ld.sis	bc, 20
	lea	de, ix - 31
	ld	(ix - 38), de
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 38)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 38)
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB134_11
.LBB134_11:
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	ld	a, 1
	pop	hl
	.local	.LBB134_12
.LBB134_12:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end134
.Lfunc_end134:
	.size	__Z18systems_delve_mineR9GameState, .Lfunc_end134-__Z18systems_delve_mineR9GameState
                                        ; -- End function
	.section	.text.__Z12systems_fishR9GameState,"ax",@progbits
	.globl	__Z12systems_fishR9GameState    ; -- Begin function _Z12systems_fishR9GameState
	.type	__Z12systems_fishR9GameState,@function
__Z12systems_fishR9GameState:           ; @_Z12systems_fishR9GameState
; %bb.0:
	ld	hl, -82
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 2
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jr	z, .LBB135_2
; %bb.1:
	ld	de, 2388
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	bc, (hl)
	ld.sis	de, 1000
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB135_4
	.local	.LBB135_2
.LBB135_2:
	xor	a, a
	.local	.LBB135_3
.LBB135_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB135_4
.LBB135_4:
	ld	iy, 25
	lea	hl, ix - 7
	ld	(ix - 79), hl
	lea	de, ix - 13
	ld	(ix - 73), de
	ld	(ix - 76), bc
	ld	bc, 0
	push	bc
	push	iy
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 70), iy
	ld	hl, (ix - 70)
	inc	hl
	ld	(ix - 70), hl
	ld	de, (ix - 70)
	ld	hl, (ix - 79)
	ld	bc, 6
	ldir
	ld	hl, 1020
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 76)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 73)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 73)
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB135_3
; %bb.5:
	ld	(ix - 70), a                    ; 1-byte Folded Spill
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 100
	xor	a, a
	call	__lremu
	push	hl
	pop	iy
	ld	hl, (ix - 76)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	(ix - 73), l
	ld	(ix - 72), h
	lea	hl, iy + 0
	ld	bc, 40
	call	__lcmpu
	jr	nc, .LBB135_7
; %bb.6:
	lea	hl, ix - 19
	ld	(ix - 76), hl
	lea	de, ix - 25
	ld	(ix - 79), de
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 82), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 79)
	ld	bc, 6
	ldir
	ld	l, (ix - 73)
	ld	h, (ix - 72)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	iy, (ix - 82)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	hl, (ix - 76)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 76)
	ld	bc, 6
	ldir
	ld	hl, 36
	jp	.LBB135_14
	.local	.LBB135_7
.LBB135_7:
	ld	bc, 70
	lea	hl, iy + 0
	call	__lcmpu
	jr	nc, .LBB135_9
; %bb.8:
	ld	hl, 20
	lea	de, ix - 31
	ld	(ix - 76), de
	lea	bc, ix - 37
	ld	(ix - 79), bc
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 82), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 79)
	ld	bc, 6
	ldir
	ld	l, (ix - 73)
	ld	h, (ix - 72)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	iy, (ix - 82)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	hl, (ix - 76)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 76)
	ld	bc, 6
	ldir
	ld	hl, 40
	jp	.LBB135_14
	.local	.LBB135_9
.LBB135_9:
	ld	bc, 90
	lea	hl, iy + 0
	call	__lcmpu
	jr	nc, .LBB135_11
; %bb.10:
	ld	hl, 5
	lea	de, ix - 43
	ld	(ix - 76), de
	lea	bc, ix - 49
	ld	(ix - 79), bc
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 82), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 79)
	ld	bc, 6
	ldir
	ld	l, (ix - 73)
	ld	h, (ix - 72)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	iy, (ix - 82)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	hl, (ix - 76)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 76)
	ld	bc, 6
	ldir
	ld	hl, 41
	jp	.LBB135_14
	.local	.LBB135_11
.LBB135_11:
	ld	bc, 98
	lea	hl, iy + 0
	call	__lcmpu
	jr	nc, .LBB135_13
; %bb.12:
	lea	hl, ix - 55
	ld	(ix - 76), hl
	lea	de, ix - 61
	ld	(ix - 79), de
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 82), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 79)
	ld	bc, 6
	ldir
	ld	l, (ix - 73)
	ld	h, (ix - 72)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	iy, (ix - 82)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	hl, (ix - 76)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 76)
	ld	bc, 6
	ldir
	ld	hl, 42
	jp	.LBB135_14
	.local	.LBB135_13
.LBB135_13:
	ld.sis	bc, 100
	lea	hl, ix - 67
	ld	(ix - 73), hl
	ld	hl, (ix - 76)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 73)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 73)
	ldir
	ld	hl, 35
	.local	.LBB135_14
.LBB135_14:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	ld	de, 2388
	add	hl, de
	ld	de, (hl)
	inc.sis	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
	push	bc
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	ld	a, (ix - 70)                    ; 1-byte Folded Reload
	jp	.LBB135_3
	.local	.Lfunc_end135
.Lfunc_end135:
	.size	__Z12systems_fishR9GameState, .Lfunc_end135-__Z12systems_fishR9GameState
                                        ; -- End function
	.section	.text.__Z20systems_bank_depositR9GameState6BigNum,"ax",@progbits
	.globl	__Z20systems_bank_depositR9GameState6BigNum ; -- Begin function _Z20systems_bank_depositR9GameState6BigNum
	.type	__Z20systems_bank_depositR9GameState6BigNum,@function
__Z20systems_bank_depositR9GameState6BigNum: ; @_Z20systems_bank_depositR9GameState6BigNum
; %bb.0:
	ld	hl, -24
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 8), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 8
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB136_7
; %bb.1:
	ld	de, 2348
	ld	hl, (ix + 6)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 11), hl
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB136_7
; %bb.2:
	lea	hl, ix + 10
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 14), hl
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB136_7
; %bb.3:
	ld	hl, (ix + 10)
	ld	e, (ix + 13)
	call	__lcmpzero
	jp	z, .LBB136_7
; %bb.4:
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 14)
	ldir
	ld	hl, 34
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB136_7
; %bb.5:
	ld	a, 1
	ld	(ix - 8), a
	lea	hl, ix - 7
	ld	(ix - 17), hl
	ld	iy, (ix - 11)
	ld	hl, (iy)
	ld	(ix - 20), hl
	lea	hl, iy + 3
	lea	bc, iy + 0
	ld	a, (hl)
	ld	(ix - 21), a
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 24), hl
	inc	iy
	lea	de, iy + 0
	push	bc
	pop	hl
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 24)
	ld	hl, (ix - 14)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 17)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 11)
	ld	hl, (ix - 17)
	ld	bc, 6
	ldir
	ld	hl, (ix - 20)
	ld	e, (ix - 21)                    ; 1-byte Folded Reload
	call	__lcmpzero
	jr	nz, .LBB136_7
; %bb.6:
	ld	de, 2366
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 972
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	l, 16
	call	__lshru
	ld	de, 980
	lea	hl, iy + 0
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB136_7
.LBB136_7:
	ld	a, (ix - 8)                     ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end136
.Lfunc_end136:
	.size	__Z20systems_bank_depositR9GameState6BigNum, .Lfunc_end136-__Z20systems_bank_depositR9GameState6BigNum
                                        ; -- End function
	.section	.text.__Z27systems_bank_claim_interestR9GameState,"ax",@progbits
	.globl	__Z27systems_bank_claim_interestR9GameState ; -- Begin function _Z27systems_bank_claim_interestR9GameState
	.type	__Z27systems_bank_claim_interestR9GameState,@function
__Z27systems_bank_claim_interestR9GameState: ; @_Z27systems_bank_claim_interestR9GameState
; %bb.0:
	ld	hl, -41
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 8
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB137_13
; %bb.1:
	ld	de, 2348
	ld	hl, (ix + 6)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 18), hl
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB137_13
; %bb.2:
	ld	iy, (ix - 18)
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	ld	a, 0
	jp	z, .LBB137_14
; %bb.3:
	ld	de, 972
	ld	hl, (ix + 6)
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 15), a
	ld	iy, (ix - 17)
	ex	de, hl
	ld	iyh, d
	ld	iyl, e
	ex	de, hl
	or	a, a
	sbc	hl, hl
	ld	d, l
	ld	bc, 980
	ld	hl, (ix + 6)
	add	hl, bc
	ld	(ix - 31), hl
	ld	hl, (hl)
	xor	a, a
	ld	(ix - 14), a
	ld	bc, (ix - 16)
	ld	b, h
	ld	c, l
	ld	l, 16
	ld	a, d
	call	__lshl
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	(ix - 21), d                    ; 1-byte Folded Spill
	ld	a, d
	call	__ladd
	push	hl
	pop	bc
	ld	a, e
	ld	de, 2366
	ld	iy, (ix + 6)
	add	iy, de
	ld	d, 0
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	ld	(ix - 34), bc
	ld	(ix - 35), a                    ; 1-byte Folded Spill
	call	__lsub
	push	hl
	pop	bc
	ld	a, e
	ld	hl, 59
	ld	e, d
	call	__lcmpu
	jp	nc, .LBB137_15
; %bb.4:
	ld	iy, 60
	push	bc
	pop	hl
	ld	e, a
	lea	bc, iy + 0
	ld	iy, 720
	ld	a, d
	call	__ldivu
	ld	(ix - 27), hl
	ld	(ix - 28), e                    ; 1-byte Folded Spill
	lea	bc, iy + 0
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB137_6
; %bb.5:
	ld	(ix - 27), iy
	.local	.LBB137_6
.LBB137_6:
	bit	0, a
	jr	nz, .LBB137_8
; %bb.7:
	ld	(ix - 28), d                    ; 1-byte Folded Spill
	.local	.LBB137_8
.LBB137_8:
	ld	hl, 23
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	ld	d, 0
	ld	iy, 0
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	pop	hl
	pop	hl
	ld	bc, 5
	add	iy, bc
	ld	hl, (ix - 27)
	ld	e, (ix - 28)                    ; 1-byte Folded Reload
	lea	bc, iy + 0
	ld	iyl, d
	ld	a, (ix - 21)                    ; 1-byte Folded Reload
	call	__lmulu
	ld	d, e
	ld	bc, 5000
	ld	a, iyl
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	a
	bit	0, a
	jr	nz, .LBB137_10
; %bb.9:
	push	bc
	pop	hl
	.local	.LBB137_10
.LBB137_10:
	ld	(ix - 38), hl
	lea	hl, ix - 7
	ld	(ix - 24), hl
	lea	hl, ix - 13
	ld	(ix - 21), hl
	bit	0, a
	ld	a, d
	jr	nz, .LBB137_12
; %bb.11:
	ld	a, iyl
	.local	.LBB137_12
.LBB137_12:
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 41), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 18)
	ld	bc, 6
	ldir
	ld	hl, (ix - 38)
	ld	iy, (ix - 41)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 24)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	ld	(ix - 38), hl
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 18)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 38)
	ld	hl, (ix - 24)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 21)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 18)
	ld	hl, (ix - 21)
	ld	bc, 6
	ldir
	ld	de, 650
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 18), hl
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 7
	ld	(ix - 38), de
	inc	iy
	lea	de, iy + 0
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	de, (ix - 38)
	ld	hl, (ix - 24)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 21)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 18)
	ld	hl, (ix - 21)
	ld	bc, 6
	ldir
	ld	hl, (ix - 27)
	ld	e, (ix - 28)                    ; 1-byte Folded Reload
	ld	bc, 60
	xor	a, a
	call	__lmulu
	ld	bc, (ix - 34)
	ld	a, (ix - 35)                    ; 1-byte Folded Reload
	call	__ladd
	push	hl
	pop	bc
	ld	a, e
	ld	hl, (ix + 6)
	ld	de, 972
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	l, 16
	call	__lshru
	ld	hl, (ix - 31)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	ld	a, 1
	pop	hl
	jr	.LBB137_14
	.local	.LBB137_13
.LBB137_13:
	xor	a, a
	.local	.LBB137_14
.LBB137_14:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB137_15
.LBB137_15:
	ld	a, d
	jr	.LBB137_14
	.local	.Lfunc_end137
.Lfunc_end137:
	.size	__Z27systems_bank_claim_interestR9GameState, .Lfunc_end137-__Z27systems_bank_claim_interestR9GameState
                                        ; -- End function
	.section	.text.__Z21systems_bank_withdrawR9GameState,"ax",@progbits
	.globl	__Z21systems_bank_withdrawR9GameState ; -- Begin function _Z21systems_bank_withdrawR9GameState
	.type	__Z21systems_bank_withdrawR9GameState,@function
__Z21systems_bank_withdrawR9GameState:  ; @_Z21systems_bank_withdrawR9GameState
; %bb.0:
	ld	hl, -23
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 8), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 8
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB138_4
; %bb.1:
	ld	de, 2348
	ld	hl, (ix + 6)
	add	hl, de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	(ix - 11), hl
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB138_4
; %bb.2:
	ld	iy, (ix - 11)
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB138_4
; %bb.3:
	ld	a, 1
	ld	(ix - 8), a
	lea	hl, ix - 7
	ld	(ix - 14), hl
	ld	de, 206
	ld	hl, (ix + 6)
	add	hl, de
	ld	(ix - 20), hl
	push	de
	push	de
	push	de
	push	de
	dec	sp
	ld	(ix - 17), iy
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 7
	ld	(ix - 23), de
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	push	bc
	pop	iy
	ldir
	ld	de, (ix - 23)
	ld	hl, (ix - 11)
	lea	bc, iy + 0
	ldir
	ld	hl, (ix - 14)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 20)
	ld	hl, (ix - 14)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	iy, (ix - 11)
	ld	(iy), hl
	ld	hl, (ix - 17)
	ld	(hl), 0
	ld	de, 2352
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	lea	hl, iy + 0
	add	hl, de
	ld.sis	de, 0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	de, 2366
	add	iy, de
	ld	bc, (iy)
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 972
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	l, 16
	call	__lshru
	ld	de, 980
	lea	hl, iy + 0
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	.local	.LBB138_4
.LBB138_4:
	ld	a, (ix - 8)                     ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end138
.Lfunc_end138:
	.size	__Z21systems_bank_withdrawR9GameState, .Lfunc_end138-__Z21systems_bank_withdrawR9GameState
                                        ; -- End function
	.section	.text.__Z24systems_soul_forge_levelRK9GameState,"ax",@progbits
	.globl	__Z24systems_soul_forge_levelRK9GameState ; -- Begin function _Z24systems_soul_forge_levelRK9GameState
	.type	__Z24systems_soul_forge_levelRK9GameState,@function
__Z24systems_soul_forge_levelRK9GameState: ; @_Z24systems_soul_forge_levelRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 974
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB139_2
; %bb.1:
	ld.sis	de, 500
	.local	.LBB139_2
.LBB139_2:
	ld	l, e
	ld	h, d
	pop	ix
	ret
	.local	.Lfunc_end139
.Lfunc_end139:
	.size	__Z24systems_soul_forge_levelRK9GameState, .Lfunc_end139-__Z24systems_soul_forge_levelRK9GameState
                                        ; -- End function
	.section	.text.__Z18systems_forge_soulR9GameState,"ax",@progbits
	.globl	__Z18systems_forge_soulR9GameState ; -- Begin function _Z18systems_forge_soulR9GameState
	.type	__Z18systems_forge_soulR9GameState,@function
__Z18systems_forge_soulR9GameState:     ; @_Z18systems_forge_soulR9GameState
; %bb.0:
	ld	hl, -76
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 16
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jr	z, .LBB140_4
; %bb.1:
	ld	de, 974
	ld	iy, (ix + 6)
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	l, e
	ld	h, d
	ld	(ix - 52), l
	ld	(ix - 51), h
	jr	c, .LBB140_3
; %bb.2:
	ld.sis	hl, 500
	ld	(ix - 52), l
	ld	(ix - 51), h
	.local	.LBB140_3
.LBB140_3:
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB140_6
	.local	.LBB140_4
.LBB140_4:
	ld	l, 0
	ld	a, l
	.local	.LBB140_5
.LBB140_5:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB140_6
.LBB140_6:
	ld	(ix - 61), iy
	ld	iy, 0
	ld	l, (ix - 52)
	ld	h, (ix - 51)
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld.sis	bc, 80
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	(ix - 64), iy
	lea	hl, iy + 0
	call	__ishru_1
	ex	de, hl
	ld	hl, 50
	or	a, a
	sbc	hl, de
	ld	de, 0
	ld	iyl, e
	bit	0, a
	jr	z, .LBB140_8
; %bb.7:
	ld	hl, 10
	.local	.LBB140_8
.LBB140_8:
	lea	de, ix - 13
	bit	0, a
	ld	c, 0
	jr	nz, .LBB140_10
; %bb.9:
	ld	c, iyl
	.local	.LBB140_10
.LBB140_10:
	push	bc
	push	hl
	push	de
	ld	(ix - 55), de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 55)
	ldir
	ld	hl, 71
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB140_14
; %bb.11:
	ld.sis	bc, 25
	lea	hl, ix - 19
	ld	(ix - 55), hl
	ld	l, (ix - 52)
	ld	h, (ix - 51)
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 55)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 55)
	ldir
	ld	hl, 72
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 61)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	ld	iy, (ix + 6)
	jr	nc, .LBB140_13
; %bb.12:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 974
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB140_13
.LBB140_13:
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	ld	a, 1
	pop	hl
	jp	.LBB140_5
	.local	.LBB140_14
.LBB140_14:
	ld	hl, 25
	lea	bc, ix - 7
	ld	(ix - 55), bc
	lea	de, ix - 25
	ld	(ix - 70), de
	lea	de, ix - 31
	ld	(ix - 67), de
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 58), iy
	ld	hl, (ix - 58)
	inc	hl
	ld	(ix - 58), hl
	ld	de, (ix - 58)
	ld	hl, (ix - 55)
	ld	bc, 6
	ldir
	ld	hl, 1300
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 52)
	ld	h, (ix - 51)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 70)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 55)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 58), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 55)
	ld	bc, 6
	ldir
	ld	hl, 1150
	ld	iy, (ix - 58)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 52)
	ld	h, (ix - 51)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 67)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 70)
	ld	bc, 6
	ldir
	ld	(iy + 6), 38
	lea	de, iy + 10
	ld	hl, (ix - 67)
	ld	bc, 6
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB140_5
; %bb.15:
	ld	(ix - 67), a                    ; 1-byte Folded Spill
	lea	hl, ix - 37
	ld	(ix - 52), hl
	lea	de, ix - 43
	ld	(ix - 70), de
	lea	hl, ix - 49
	ld	(ix - 58), hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 64)
	inc	hl
	ld	(ix - 73), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 76), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 70)
	ld	bc, 6
	ldir
	ld	hl, (ix - 73)
	ld	iy, (ix - 76)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 52)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	(ix - 70), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 73), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 52)
	ld	bc, 6
	ldir
	ld	hl, (ix - 70)
	ld	iy, (ix - 73)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 55)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 52)
	lea	de, iy + 0
	ld	hl, (ix - 55)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 5
	ld	iy, (ix - 64)
	add	iy, de
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	ld	hl, (ix - 58)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 58)
	ld	bc, 6
	ldir
	ld	hl, 71
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 61)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	ld	iy, (ix + 6)
	jr	nc, .LBB140_17
; %bb.16:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 974
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB140_17
.LBB140_17:
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	ld	a, (ix - 67)                    ; 1-byte Folded Reload
	jp	.LBB140_5
	.local	.Lfunc_end140
.Lfunc_end140:
	.size	__Z18systems_forge_soulR9GameState, .Lfunc_end140-__Z18systems_forge_soulR9GameState
                                        ; -- End function
	.section	.text.__Z21systems_reactor_levelRK9GameState,"ax",@progbits
	.globl	__Z21systems_reactor_levelRK9GameState ; -- Begin function _Z21systems_reactor_levelRK9GameState
	.type	__Z21systems_reactor_levelRK9GameState,@function
__Z21systems_reactor_levelRK9GameState: ; @_Z21systems_reactor_levelRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 976
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB141_2
; %bb.1:
	ld.sis	de, 500
	.local	.LBB141_2
.LBB141_2:
	ld	l, e
	ld	h, d
	pop	ix
	ret
	.local	.Lfunc_end141
.Lfunc_end141:
	.size	__Z21systems_reactor_levelRK9GameState, .Lfunc_end141-__Z21systems_reactor_levelRK9GameState
                                        ; -- End function
	.section	.text.__Z25systems_run_quark_reactorR9GameState,"ax",@progbits
	.globl	__Z25systems_run_quark_reactorR9GameState ; -- Begin function _Z25systems_run_quark_reactorR9GameState
	.type	__Z25systems_run_quark_reactorR9GameState,@function
__Z25systems_run_quark_reactorR9GameState: ; @_Z25systems_run_quark_reactorR9GameState
; %bb.0:
	ld	hl, -46
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 28), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 32
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB142_10
; %bb.1:
	ld	de, 976
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	l, e
	ld	h, d
	jr	c, .LBB142_3
; %bb.2:
	ld.sis	hl, 500
	.local	.LBB142_3
.LBB142_3:
	ld	(ix - 37), l
	ld	(ix - 36), h
	ld	l, e
	ld	h, d
	ld.sis	de, 500
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB142_10
; %bb.4:
	ld	(ix - 43), iy
	ld	hl, 100
	lea	bc, ix - 7
	ld	(ix - 31), bc
	lea	de, ix - 13
	ld	(ix - 34), de
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 28), iy
	ld	hl, (ix - 28)
	inc	hl
	ld	(ix - 28), hl
	ld	de, (ix - 28)
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	ld	hl, 1080
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 37)
	ld	h, (ix - 36)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 34)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	(ix - 28), a                    ; 1-byte Folded Spill
	bit	0, a
	jp	z, .LBB142_10
; %bb.5:
	ld	hl, 100000
	lea	de, ix - 19
	ld	(ix - 34), de
	lea	de, ix - 25
	ld	(ix - 46), de
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix - 31)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 40), iy
	ld	hl, (ix - 40)
	inc	hl
	ld	(ix - 40), hl
	ld	de, (ix - 40)
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	ld	hl, 1120
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 37)
	ld	h, (ix - 36)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 34)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, 24
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 37), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 40), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	ld	hl, (ix - 37)
	ld	iy, (ix - 40)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 31)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 34)
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	ld	de, 968
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB142_7
; %bb.6:
	ld.sis	de, 200
	.local	.LBB142_7
.LBB142_7:
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	ld	(ix - 37), l
	ld	(ix - 36), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 40), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	e, (ix - 37)
	ld	d, (ix - 36)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 40)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 31)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 34)
	lea	de, iy + 0
	ld	hl, (ix - 31)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 44
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 31), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	iy, (ix - 31)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 46)
	push	hl
	call	__Z10bn_div_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 46)
	ld	bc, 6
	ldir
	ld	hl, 73
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 43)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB142_9
; %bb.8:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 976
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB142_9
.LBB142_9:
	push	iy
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB142_10
.LBB142_10:
	ld	a, (ix - 28)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end142
.Lfunc_end142:
	.size	__Z25systems_run_quark_reactorR9GameState, .Lfunc_end142-__Z25systems_run_quark_reactorR9GameState
                                        ; -- End function
	.section	.text.__Z18systems_quarkstigeR9GameState,"ax",@progbits
	.globl	__Z18systems_quarkstigeR9GameState ; -- Begin function _Z18systems_quarkstigeR9GameState
	.type	__Z18systems_quarkstigeR9GameState,@function
__Z18systems_quarkstigeR9GameState:     ; @_Z18systems_quarkstigeR9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 32
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jr	nz, .LBB143_2
; %bb.1:
	xor	a, a
	jr	.LBB143_4
	.local	.LBB143_2
.LBB143_2:
	ld	hl, 4
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	ld	a, 0
	jr	z, .LBB143_4
; %bb.3:
	ld	hl, 4
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	.local	.LBB143_4
.LBB143_4:
	pop	ix
	ret
	.local	.Lfunc_end143
.Lfunc_end143:
	.size	__Z18systems_quarkstigeR9GameState, .Lfunc_end143-__Z18systems_quarkstigeR9GameState
                                        ; -- End function
	.section	.text.__Z20systems_shadow_levelRK9GameState,"ax",@progbits
	.globl	__Z20systems_shadow_levelRK9GameState ; -- Begin function _Z20systems_shadow_levelRK9GameState
	.type	__Z20systems_shadow_levelRK9GameState,@function
__Z20systems_shadow_levelRK9GameState:  ; @_Z20systems_shadow_levelRK9GameState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, 978
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB144_2
; %bb.1:
	ld.sis	de, 500
	.local	.LBB144_2
.LBB144_2:
	ld	l, e
	ld	h, d
	pop	ix
	ret
	.local	.Lfunc_end144
.Lfunc_end144:
	.size	__Z20systems_shadow_levelRK9GameState, .Lfunc_end144-__Z20systems_shadow_levelRK9GameState
                                        ; -- End function
	.section	.text.__Z27systems_form_shadow_crystalR9GameState,"ax",@progbits
	.globl	__Z27systems_form_shadow_crystalR9GameState ; -- Begin function _Z27systems_form_shadow_crystalR9GameState
	.type	__Z27systems_form_shadow_crystalR9GameState,@function
__Z27systems_form_shadow_crystalR9GameState: ; @_Z27systems_form_shadow_crystalR9GameState
; %bb.0:
	ld	hl, -43
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 28), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 64
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB145_6
; %bb.1:
	ld	de, 978
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld.sis	de, 500
	ld	(ix - 31), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB145_6
; %bb.2:
	ld	(ix - 43), iy
	ld.sis	bc, 10
	lea	hl, ix - 7
	ld	(ix - 34), hl
	lea	hl, ix - 13
	ld	(ix - 40), hl
	lea	hl, ix - 19
	ld	(ix - 37), hl
	ld	hl, (ix - 31)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	pop	bc
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, (ix - 40)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000
	push	hl
	ld	hl, (ix - 34)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 28), iy
	ld	hl, (ix - 28)
	inc	hl
	ld	(ix - 28), hl
	ld	de, (ix - 28)
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	ld	hl, 1100
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 31)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 37)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 40)
	ld	bc, 6
	ldir
	ld	(iy + 6), 47
	lea	de, iy + 10
	ld	hl, (ix - 37)
	ld	bc, 6
	ldir
	ld	hl, 45
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	ld	(ix - 28), a                    ; 1-byte Folded Spill
	bit	0, a
	jp	z, .LBB145_6
; %bb.3:
	ld.sis	bc, 5
	lea	hl, ix - 25
	ld	(ix - 37), hl
	ld	hl, (ix - 31)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 37)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	(ix - 31), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 40), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 37)
	ld	bc, 6
	ldir
	ld	hl, (ix - 31)
	ld	iy, (ix - 40)
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 34)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	iy, (ix - 37)
	lea	de, iy + 0
	ld	hl, (ix - 34)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 46
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 43)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB145_5
; %bb.4:
	inc.sis	de
	ld	hl, (ix + 6)
	ld	bc, 978
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB145_5
.LBB145_5:
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB145_6
.LBB145_6:
	ld	a, (ix - 28)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end145
.Lfunc_end145:
	.size	__Z27systems_form_shadow_crystalR9GameState, .Lfunc_end145-__Z27systems_form_shadow_crystalR9GameState
                                        ; -- End function
	.section	.text.__Z19systems_galaxy_costRK9GameState,"ax",@progbits
	.globl	__Z19systems_galaxy_costRK9GameState ; -- Begin function _Z19systems_galaxy_costRK9GameState
	.type	__Z19systems_galaxy_costRK9GameState,@function
__Z19systems_galaxy_costRK9GameState:   ; @_Z19systems_galaxy_costRK9GameState
; %bb.0:
	ld	hl, -15
	call	__frameset
	ld	bc, (ix + 6)
	ld	hl, (ix + 9)
	ld	iy, 10
	ld	de, 2392
	add	hl, de
	ld	de, (hl)
	sbc.sis	hl, hl
	adc.sis	hl, de
	jr	nz, .LBB146_2
; %bb.1:
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	push	bc
	jr	.LBB146_4
	.local	.LBB146_2
.LBB146_2:
	ld.sis	bc, 1
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB146_5
; %bb.3:
	ld	hl, 1
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	.local	.LBB146_4
.LBB146_4:
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	jp	.LBB146_9
	.local	.LBB146_5
.LBB146_5:
	ld.sis	bc, -2
	lea	hl, ix - 7
	ld	(ix - 13), hl
	ld	l, e
	ld	h, d
	add.sis	hl, bc
	ld	c, l
	ld	b, h
	ld	l, e
	ld	h, d
	ld.sis	de, 103
	or	a, a
	sbc.sis	hl, de
	jr	nc, .LBB146_7
; %bb.6:
	ld	(ix - 15), c
	ld	(ix - 14), b
	jr	.LBB146_8
	.local	.LBB146_7
.LBB146_7:
	ld.sis	hl, 100
	ld	(ix - 15), l
	ld	(ix - 14), h
	.local	.LBB146_8
.LBB146_8:
	or	a, a
	sbc	hl, hl
	push	hl
	push	iy
	ld	hl, (ix - 13)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 10), iy
	ld	hl, (ix - 10)
	inc	hl
	ld	(ix - 10), hl
	ld	bc, 6
	ld	de, (ix - 10)
	ld	hl, (ix - 13)
	ldir
	ld	hl, 2000
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	l, (ix - 15)
	ld	h, (ix - 14)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix + 6)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	.local	.LBB146_9
.LBB146_9:
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end146
.Lfunc_end146:
	.size	__Z19systems_galaxy_costRK9GameState, .Lfunc_end146-__Z19systems_galaxy_costRK9GameState
                                        ; -- End function
	.section	.text.__Z22systems_advance_galaxyR9GameState,"ax",@progbits
	.globl	__Z22systems_advance_galaxyR9GameState ; -- Begin function _Z22systems_advance_galaxyR9GameState
	.type	__Z22systems_advance_galaxyR9GameState,@function
__Z22systems_advance_galaxyR9GameState: ; @_Z22systems_advance_galaxyR9GameState
; %bb.0:
	ld	hl, -80
	call	__frameset
	ld	hl, (ix + 6)
	xor	a, a
	ld	(ix - 62), a
	ld	de, 1018
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 128
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 24
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB147_11
; %bb.1:
	ld	de, 2392
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld.sis	de, 100
	ld	(ix - 65), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nc, .LBB147_11
; %bb.2:
	ld	hl, (ix - 65)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ld	(ix - 68), iy
	jr	nz, .LBB147_4
; %bb.3:
	lea	de, ix - 13
	ld	(ix - 71), de
	lea	hl, ix - 19
	ld	(ix - 65), hl
	push	bc
	push	de
	call	__Z19systems_galaxy_costRK9GameState
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 65)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 71)
	ld	bc, 6
	ldir
	ld	(iy + 6), 43
	lea	de, iy + 10
	ld	hl, (ix - 65)
	ld	bc, 6
	ldir
	ld	hl, 34
	jp	.LBB147_9
	.local	.LBB147_4
.LBB147_4:
	ld.sis	de, 1
	ld	hl, (ix - 65)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	nz, .LBB147_6
; %bb.5:
	lea	de, ix - 25
	ld	(ix - 71), de
	lea	hl, ix - 31
	ld	(ix - 65), hl
	push	bc
	push	de
	call	__Z19systems_galaxy_costRK9GameState
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000
	push	hl
	ld	hl, (ix - 65)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 71)
	ld	bc, 6
	ldir
	ld	(iy + 6), 47
	lea	de, iy + 10
	ld	hl, (ix - 65)
	ld	bc, 6
	ldir
	ld	hl, 45
	jp	.LBB147_9
	.local	.LBB147_6
.LBB147_6:
	ld	hl, 10
	lea	bc, ix - 7
	lea	de, ix - 37
	ld	(ix - 74), de
	lea	de, ix - 43
	ld	(ix - 77), de
	ld	de, 0
	push	de
	push	hl
	ld	(ix - 80), bc
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld.sis	de, 50
	ld	hl, (ix - 65)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB147_8
; %bb.7:
	ld.sis	hl, 50
	ld	(ix - 65), hl
	.local	.LBB147_8
.LBB147_8:
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 71), iy
	ld	hl, (ix - 71)
	inc	hl
	ld	(ix - 71), hl
	ld	de, (ix - 71)
	ld	hl, (ix - 80)
	ld	bc, 6
	ldir
	ld	hl, 1500
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 65)
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	hl, (ix - 74)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix + 6)
	push	hl
	ld	hl, (ix - 77)
	push	hl
	call	__Z19systems_galaxy_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 77)
	ld	bc, 6
	ldir
	ld	(iy + 6), 34
	lea	de, iy + 10
	ld	hl, (ix - 74)
	ld	bc, 6
	ldir
	ld	hl, 46
	.local	.LBB147_9
.LBB147_9:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB147_11
; %bb.10:
	ld	a, 1
	ld	(ix - 62), a
	lea	de, ix - 49
	ld	(ix - 74), de
	lea	hl, ix - 55
	ld	(ix - 65), hl
	lea	hl, ix - 61
	ld	(ix - 71), hl
	ld	hl, (ix - 68)
	ld	bc, (hl)
	inc.sis	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	or	a, a
	sbc	hl, hl
	push	hl
	pop	iy
	ld	l, c
	ld	h, b
	ld	bc, 5
	add	hl, bc
	push	iy
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 74)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 71)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 68)
	ld	hl, (hl)
	ld	(ix - 68), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 74), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 71)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	de, (ix - 68)
	ld	l, e
	ld	h, d
	ld	iy, (ix - 74)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 65)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 65)
	ld	bc, 6
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB147_11
.LBB147_11:
	ld	a, (ix - 62)                    ; 1-byte Folded Reload
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end147
.Lfunc_end147:
	.size	__Z22systems_advance_galaxyR9GameState, .Lfunc_end147-__Z22systems_advance_galaxyR9GameState
                                        ; -- End function
	.section	.text.__Z12systems_tickR9GameStatem,"ax",@progbits
	.globl	__Z12systems_tickR9GameStatem   ; -- Begin function _Z12systems_tickR9GameStatem
	.type	__Z12systems_tickR9GameStatem,@function
__Z12systems_tickR9GameStatem:          ; @_Z12systems_tickR9GameStatem
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	a, (ix + 12)
	ld	c, 0
	ld	(ix - 7), a                     ; 1-byte Folded Spill
	ld	e, a
	ld	(ix - 13), de
	.local	.LBB148_1
.LBB148_1:                              ; =>This Inner Loop Header: Depth=1
	ld	a, c
	cp	a, 3
	jr	z, .LBB148_3
; %bb.2:                                ;   in Loop: Header=BB148_1 Depth=1
	ld	de, (ix - 13)
	push	de
	push	hl
	push	bc
	push	iy
	ld	(ix - 3), iy
	ld	(ix - 6), hl
	ld	(ix - 10), bc
	call	__Z22systems_complete_tradeR9GameStatehm
	ld	bc, (ix - 10)
	ld	iy, (ix - 3)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 6)
	inc	c
	jr	.LBB148_1
	.local	.LBB148_3
.LBB148_3:
	ld	(ix + 6), iy
	ld	(ix + 9), hl
	ld	a, (ix - 7)
	ld	(ix + 12), a
	ld	sp, ix
	pop	ix
	jp	__Z28systems_complete_borbventureR9GameStatem
	.local	.Lfunc_end148
.Lfunc_end148:
	.size	__Z12systems_tickR9GameStatem, .Lfunc_end148-__Z12systems_tickR9GameStatem
                                        ; -- End function
	.section	.text.__Z22systems_primary_actionR9GameState8SystemIdm,"ax",@progbits
	.globl	__Z22systems_primary_actionR9GameState8SystemIdm ; -- Begin function _Z22systems_primary_actionR9GameState8SystemIdm
	.type	__Z22systems_primary_actionR9GameState8SystemIdm,@function
__Z22systems_primary_actionR9GameState8SystemIdm: ; @_Z22systems_primary_actionR9GameState8SystemIdm
; %bb.0:
	ld	hl, -206
	call	__frameset
	ld	a, (ix + 9)
	ld	de, 0
	ld	l, -10
	add	a, l
	ld	l, a
	cp	a, 42
	jr	c, .LBB149_2
; %bb.1:
	xor	a, a
	jp	.LBB149_280
	.local	.LBB149_2
.LBB149_2:
	lea	iy, ix - 13
	ld	(ix - 126), iy
	lea	bc, ix - 19
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 1
	ld	(iy + 0), bc
	lea	bc, ix - 25
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	(iy + 0), bc
	lea	bc, ix - 31
	push	de
	pop	iy
	lea	de, ix - 37
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), de
	pop	ix
	lea	de, ix - 43
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), de
	pop	ix
	lea	de, ix - 49
	push	ix
	lea	ix, ix - 128
	ld	(ix - 13), de
	pop	ix
	lea	de, ix - 55
	push	ix
	lea	ix, ix - 128
	ld	(ix - 16), de
	pop	ix
	lea	de, iy + 0
	ld	e, l
	ld	hl, JTI149_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	xor	a, a
	jp	(hl)
	.local	.LBB149_3
.LBB149_3:                              ; %.preheader70.preheader
	ld	a, (ix + 15)
	ld	l, a
	ld	(ix - 126), hl
	ld	l, 0
	ex	de, hl
	ld	c, e
	ld	iy, (ix + 6)
	ld	l, a
	.local	.LBB149_4
.LBB149_4:                              ; %.preheader70
                                        ; =>This Inner Loop Header: Depth=1
	ld	a, c
	cp	a, 3
	jp	z, .LBB149_200
; %bb.5:                                ;   in Loop: Header=BB149_4 Depth=1
	ld	hl, (ix - 126)
	push	hl
	ld	hl, (ix + 12)
	push	hl
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), bc
	push	bc
	push	iy
	call	__Z22systems_complete_tradeR9GameStatehm
	ld	e, 0
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix + 15)
	push	ix
	lea	ix, ix - 128
	ld	bc, (ix - 1)
	pop	ix
	inc	c
	bit	0, a
	jr	z, .LBB149_4
	jp	.LBB149_203
	.local	.LBB149_6
.LBB149_6:
	xor	a, a
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 4
	push	iy
	ld	iy, 0
	push	iy
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 48
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_279
; %bb.7:
	ld	bc, 2592000
	ld	hl, (ix + 12)
	ld	e, (ix + 15)
	ld	iyl, c
	ld	a, iyl
	call	__ldivu
	ld	a, e
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	e, l
	ld	d, h
	inc.sis	de
	ld	bc, 1010
	ld	iy, (ix + 6)
	add	iy, bc
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	z, .LBB149_279
; %bb.8:
	ld	bc, -138
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), a                         ; 1-byte Folded Spill
	ld	a, 1
	ld	bc, -150
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), a
	ld	(iy), e
	ld	(iy + 1), d
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 12
	call	__sremu
	ld.sis	bc, 10
	call	__smulu
	ld.sis	de, 100
	add.sis	hl, de
	ld	de, 0
	push	de
	pop	bc
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 126)
	ldir
	ld	hl, 60
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)                     ; 1-byte Folded Reload
	ld	bc, 3
	ld	iyl, b
	ld	a, iyl
	call	__land
	ld	bc, 25
	call	__lmulu
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 61
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 5
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	.local	.LBB149_9
.LBB149_9:                              ; %.loopexit
	ldir
	ld	hl, 35
	jp	.LBB149_245
	.local	.LBB149_10
.LBB149_10:
	xor	a, a
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 1
	push	iy
	dec	iy
	push	iy
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 48
	push	iy
	call	__llshru
	pop	de
	bit	0, l
	jp	z, .LBB149_280
; %bb.11:
	ld	de, 1006
	ld	hl, (ix + 6)
	push	hl
	pop	bc
	push	bc
	pop	iy
	add	iy, de
	ld	de, 794
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), hl
	pop	ix
	ld	de, 2388
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	de, 2386
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 13), hl
	pop	ix
	ld	de, 722
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 16), hl
	pop	ix
	ld	de, 716
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 22), hl
	pop	ix
	ld	de, 2392
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 19), hl
	pop	ix
	ld	de, 650
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 25), hl
	pop	ix
	ld	de, 2384
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 31), hl
	pop	ix
	ld	de, 644
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 34), hl
	pop	ix
	ld	de, 2382
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 28), hl
	pop	ix
	ld	de, 638
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 37), hl
	pop	ix
	ld	de, 446
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 49), hl
	pop	ix
	ld	de, -171
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	ld	de, (iy)
	or	a, a
	sbc	hl, hl
	ld	bc, -174
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	ld	l, e
	ld	h, d
	ld	de, -168
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 52), hl
	pop	ix
	lea	hl, iy + 3
	ld	l, (hl)
	ld	de, -181
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	ld	de, -184
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	ld	de, -187
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 62), hl
	pop	ix
	lea	hl, iy + 3
	ld	l, (hl)
	ld	de, -191
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	de, -150
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 66), hl
	pop	ix
	lea	hl, iy + 3
	ld	l, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -153
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 69), hl
	pop	ix
	lea	hl, iy + 3
	ld	l, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	de, -159
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -162
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 72), hl
	pop	ix
	lea	hl, iy + 3
	ld	l, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -165
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 75), hl
	pop	ix
	lea	hl, iy + 3
	ld	l, (hl)
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	bc, 12
	ld	hl, 5
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	hl, 2
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	e, b
	ld	iy, 0
	.local	.LBB149_12
.LBB149_12:                             ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	or	a, a
	sbc	hl, bc
	ld	hl, 1
	jp	z, .LBB149_280
; %bb.13:                               ;   in Loop: Header=BB149_12 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), iy
	pop	ix
	ld	c, iyl
	call	__ishl
	push	hl
	pop	iy
	push	ix
	lea	ix, ix - 128
	ld	bc, (ix - 40)
	pop	ix
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB149_32
; %bb.14:                               ;   in Loop: Header=BB149_12 Depth=1
	ex	de, hl
	ld	de, 0
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	e, l
	ld	hl, JTI149_1
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB149_15
.LBB149_15:                             ;   in Loop: Header=BB149_12 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 126)
	push	hl
	ld	de, -206
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 49)
	pop	ix
	ld	bc, 6
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 78)
	pop	ix
	xor	a, a
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	sbc	hl, de
	call	pe, __setflag
	ld	bc, -135
	lea	hl, ix + 0
	push	af
	add	hl, bc
	pop	af
	ld	de, (hl)
	jp	m, .LBB149_32
	jp	.LBB149_230
	.local	.LBB149_16
.LBB149_16:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	c, a
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 52)
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	e, (ix - 53)                    ; 1-byte Folded Reload
	jp	.LBB149_29
	.local	.LBB149_17
.LBB149_17:                             ;   in Loop: Header=BB149_12 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 31)
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 50
	jp	.LBB149_27
	.local	.LBB149_18
.LBB149_18:                             ;   in Loop: Header=BB149_12 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 59)
	jp	.LBB149_26
	.local	.LBB149_19
.LBB149_19:                             ;   in Loop: Header=BB149_12 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 28)
	jp	.LBB149_26
	.local	.LBB149_20
.LBB149_20:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	c, a
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 72)
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	e, (ix - 34)                    ; 1-byte Folded Reload
	jp	.LBB149_29
	.local	.LBB149_21
.LBB149_21:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	c, a
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 66)
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	e, (ix - 22)                    ; 1-byte Folded Reload
	jp	.LBB149_29
	.local	.LBB149_22
.LBB149_22:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	c, a
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 75)
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	e, (ix - 37)                    ; 1-byte Folded Reload
	jp	.LBB149_29
	.local	.LBB149_23
.LBB149_23:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	c, a
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 69)
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	e, (ix - 25)                    ; 1-byte Folded Reload
	jp	.LBB149_29
	.local	.LBB149_24
.LBB149_24:                             ;   in Loop: Header=BB149_12 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 19)
	pop	ix
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	ld	bc, -135
	lea	hl, ix + 0
	push	af
	add	hl, bc
	pop	af
	ld	de, (hl)
	jp	nz, .LBB149_230
	jp	.LBB149_32
	.local	.LBB149_25
.LBB149_25:                             ;   in Loop: Header=BB149_12 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 56)
	.local	.LBB149_26
.LBB149_26:                             ;   in Loop: Header=BB149_12 Depth=1
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 100
	.local	.LBB149_27
.LBB149_27:                             ;   in Loop: Header=BB149_12 Depth=1
	or	a, a
	sbc.sis	hl, de
	ld	bc, -135
	lea	hl, ix + 0
	push	af
	add	hl, bc
	pop	af
	ld	de, (hl)
	jp	nc, .LBB149_230
	jr	.LBB149_32
	.local	.LBB149_28
.LBB149_28:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	c, a
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 62)
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	e, (ix - 63)                    ; 1-byte Folded Reload
	.local	.LBB149_29
.LBB149_29:                             ;   in Loop: Header=BB149_12 Depth=1
	pop	ix
	call	__lcmpzero
	ld	a, 1
	jr	z, .LBB149_31
; %bb.30:                               ;   in Loop: Header=BB149_12 Depth=1
	ld	a, 0
	.local	.LBB149_31
.LBB149_31:                             ;   in Loop: Header=BB149_12 Depth=1
	bit	0, a
	push	ix
	lea	ix, ix - 128
	ld	de, (ix - 7)
	pop	ix
	ld	a, c
	jp	z, .LBB149_230
	.local	.LBB149_32
.LBB149_32:                             ;   in Loop: Header=BB149_12 Depth=1
	ld	bc, -138
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	inc	iy
	ld	bc, 2
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 16)
	pop	ix
	add	hl, bc
	push	ix
	lea	ix, ix - 128
	ld	(ix - 16), hl
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ld	bc, 5
	add	hl, bc
	push	ix
	lea	ix, ix - 128
	ld	(ix - 13), hl
	pop	ix
	inc	e
	ld	bc, 12
	jp	.LBB149_12
	.local	.LBB149_33
.LBB149_33:
	ld	hl, 35
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	xor	a, a
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 2
	push	iy
	ld	iy, 0
	push	iy
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 48
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_279
; %bb.34:
	ld	bc, 86400
	ld	hl, (ix + 12)
	ld	e, (ix + 15)
	ld	iyl, 0
	ld	a, iyl
	call	__ldivu
	ld	a, e
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	e, l
	ld	d, h
	inc.sis	de
	ld	bc, 1008
	ld	iy, (ix + 6)
	add	iy, bc
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	z, .LBB149_279
; %bb.35:
	ld	(iy), e
	ld	(iy + 1), d
	ld	hl, (ix + 6)
	push	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	call	__Z9game_randR9GameState
	pop	bc
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	bc, (iy + 0)
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 7
	ld	a, (iy + 0)                     ; 1-byte Folded Reload
	call	__lxor
	ld	bc, 3
	ld	iyl, b
	ld	a, iyl
	call	__land
	ld	a, l
	or	a, a
	ld	de, (ix - 126)
	dec	bc
	jp	z, .LBB149_244
; %bb.36:
	ld	a, l
	cp	a, 1
	jp	nz, .LBB149_231
; %bb.37:
	ld	hl, 36
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	bc, 25
	jp	.LBB149_244
	.local	.LBB149_38
.LBB149_38:
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 65536
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	bit	0, l
	jp	z, .LBB149_280
; %bb.39:
	ld	bc, 994
	ld	iy, (ix + 6)
	add	iy, bc
	ld	bc, (iy)
	ld.sis	de, 500
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 1)
	pop	ix
	ld	de, 5
	jp	nc, .LBB149_280
; %bb.40:
	push	ix
	lea	ix, ix - 128
	ld	(ix - 13), iy
	pop	ix
	or	a, a
	sbc	hl, hl
	push	hl
	push	de
	ld	hl, (ix - 126)
	push	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1350
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 52
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.41:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 1)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 1), hl
	pop	ix
	ld	bc, 6
	push	ix
	lea	ix, ix - 128
	ld	de, (ix - 1)
	pop	ix
	ld	hl, (ix - 126)
	ldir
	ld	hl, 1400
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	ld	de, 962
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB149_43
; %bb.42:
	ld.sis	hl, 200
	ld	e, l
	ld	d, h
	.local	.LBB149_43
.LBB149_43:
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)
	ld	d, (iy + 1)
	ld	l, e
	ld	h, d
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	hl, _AREA_DEFS
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy + 3)
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB149_277
; %bb.44:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 994
	jp	.LBB149_276
	.local	.LBB149_45
.LBB149_45:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, -8388608
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.46:
	ld	de, 1016
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 25), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.47:
	ld	de, -159
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld.sis	de, 500
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 25
	ld	bc, (iy + 0)
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	l, c
	ld	h, b
	jr	c, .LBB149_49
; %bb.48:
	ld.sis	hl, 500
	.local	.LBB149_49
.LBB149_49:
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -150
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 22)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 22), hl
	pop	ix
	ld	bc, -150
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1050
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	l, (ix - 28)
	ld	h, (ix - 27)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 59
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.50:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 100
	ld	iyl, b
	ld	a, iyl
	call	__lremu
	push	hl
	pop	iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 25)
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 5
	call	__sdivu
	inc.sis	hl
	ld	(ix - 126), l
	ld	(ix - 125), h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), iy
	lea	hl, iy + 0
	ld	bc, 45
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_233
; %bb.51:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 2
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, (ix - 126)
	ld	h, (ix - 125)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 58
	jp	.LBB149_262
	.local	.LBB149_52
.LBB149_52:
	ld	hl, (ix + 6)
	push	hl
	call	__Z25systems_run_quark_reactorR9GameState
	jp	.LBB149_224
	.local	.LBB149_53
.LBB149_53:
	ld	bc, 0
	ld	de, 2348
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB149_204
; %bb.54:
	lea	de, ix - 121
	ld	(ix - 126), de
	push	bc
	ld	hl, 1
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	dec	sp
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	inc	de
	ld	bc, 6
	ld	hl, (ix - 126)
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z20systems_bank_depositR9GameState6BigNum
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	jp	.LBB149_280
	.local	.LBB149_55
.LBB149_55:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 4194304
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.56:
	ld	de, 1014
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 25), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.57:
	ld	de, -159
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 25
	ld	de, (iy + 0)
	ld	c, e
	ld	b, d
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, 500
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 28
	ld	bc, (iy + 0)
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	c, .LBB149_59
; %bb.58:
	ld	bc, 500
	.local	.LBB149_59
.LBB149_59:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 16)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 16), hl
	pop	ix
	ld	bc, -144
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1075
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 22)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.60:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	hl, 28
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	(ix - 126), hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, 10
	add	hl, de
	ld	de, 0
	push	de
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, (ix - 126)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 16)
	pop	ix
	ld	(iy + 7), hl
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	a, (hl)
	ld	(iy + 10), a
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 55
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	call	__ishru_1
	ld	de, 5
	add	hl, de
	ld	de, 0
	push	de
	push	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, (ix - 126)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 4)
	pop	ix
	ld	(iy + 7), hl
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	a, (hl)
	ld	(iy + 10), a
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 59
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -153
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -141
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 50
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -159
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 1000
	or	a, a
	sbc.sis	hl, bc
	ld	iy, (ix + 6)
	jp	nc, .LBB149_277
; %bb.61:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 1014
	jp	.LBB149_276
	.local	.LBB149_62
.LBB149_62:
	ld	hl, (ix + 6)
	push	hl
	call	__Z26systems_upgrade_death_bookR9GameState
	jp	.LBB149_224
	.local	.LBB149_63
.LBB149_63:
	ld	a, (ix + 15)
	ld	de, 2362
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	ld	l, a
	jp	nz, .LBB149_205
; %bb.64:
	push	hl
	ld	hl, (ix + 12)
	push	hl
	push	bc
	call	__Z29systems_start_artifact_searchR9GameStatem
	jp	.LBB149_222
	.local	.LBB149_65
.LBB149_65:
	ld	hl, (ix + 6)
	push	hl
	call	__Z18systems_delve_mineR9GameState
	jp	.LBB149_224
	.local	.LBB149_66
.LBB149_66:
	ld	a, 1
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	hl, 964
	ld	(ix - 126), hl
	ld	bc, 970
	ld	e, 0
	ld	iy, (ix + 6)
	.local	.LBB149_67
.LBB149_67:                             ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 126)
	or	a, a
	sbc	hl, bc
	jp	z, .LBB149_75
; %bb.68:                               ;   in Loop: Header=BB149_67 Depth=1
	ld	bc, (ix - 126)
	add	iy, bc
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), de
	pop	ix
	ld	a, e
	cp	a, 4
	ld.sis	hl, 0
	ld	e, l
	ld	d, h
	jr	nc, .LBB149_72
; %bb.69:                               ;   in Loop: Header=BB149_67 Depth=1
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	ld	e, 36
	ld	a, l
	or	a, e
	ld	e, a
	or	a, a
	sbc	hl, hl
	ld	l, e
	add	hl, hl
	ex	de, hl
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 890
	add	hl, de
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 200
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB149_71
; %bb.70:                               ;   in Loop: Header=BB149_67 Depth=1
	ld.sis	hl, 200
	ld	e, l
	ld	d, h
	.local	.LBB149_71
.LBB149_71:                             ;   in Loop: Header=BB149_67 Depth=1
	ld	bc, (ix - 126)
	.local	.LBB149_72
.LBB149_72:                             ;   in Loop: Header=BB149_67 Depth=1
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	de, -129
	lea	iy, ix + 0
	push	af
	add	iy, de
	pop	af
	ld	a, (iy + 0)                     ; 1-byte Folded Reload
	jr	c, .LBB149_74
; %bb.73:                               ;   in Loop: Header=BB149_67 Depth=1
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	a, l
	.local	.LBB149_74
.LBB149_74:                             ;   in Loop: Header=BB149_67 Depth=1
	push	bc
	pop	hl
	ld	de, 2
	add	hl, de
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)
	inc	e
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e
	ld	(ix - 126), hl
	ld	e, a
	ld	iy, (ix + 6)
	ld	bc, 970
	jp	.LBB149_67
	.local	.LBB149_75
.LBB149_75:
	push	de
	push	iy
	call	__Z20systems_upgrade_cardR9GameState8CardType
	jp	.LBB149_223
	.local	.LBB149_76
.LBB149_76:
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 16384
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.77:
	ld	de, 990
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	hl, (hl)
	ld.sis	de, 500
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	ld	bc, -129
	lea	iy, ix + 0
	push	af
	add	iy, bc
	pop	af
	ld	de, (iy + 0)
	ld	iy, _AREA_DEFS
	jp	nc, .LBB149_280
; %bb.78:
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	a, (iy + 3)
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 4)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 4), hl
	pop	ix
	ld	bc, -132
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1500
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.79:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	lea	hl, ix - 73
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 5
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 52
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	ld	iy, (ix + 6)
	jp	nc, .LBB149_277
; %bb.80:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 990
	jp	.LBB149_276
	.local	.LBB149_81
.LBB149_81:
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 8192
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.82:
	ld	hl, 7
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, 2253
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 1), hl
	pop	ix
	ld	de, 8
	ld	bc, 0
	.local	.LBB149_83
.LBB149_83:                             ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB149_86 Depth 2
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB149_213
; %bb.84:                               ;   in Loop: Header=BB149_83 Depth=1
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), bc
	push	bc
	pop	hl
	ld	bc, 5
	call	__imulu
	push	hl
	pop	bc
	lea	hl, iy + 0
	add	hl, bc
	ld	de, 2248
	add	hl, de
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	push	hl
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	pop	hl
	bit	0, a
	jp	z, .LBB149_91
; %bb.85:                               ;   in Loop: Header=BB149_83 Depth=1
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	push	de
	pop	bc
	.local	.LBB149_86
.LBB149_86:                             ;   Parent Loop BB149_83 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sbc	hl, hl
	adc	hl, bc
	jp	z, .LBB149_91
; %bb.87:                               ;   in Loop: Header=BB149_86 Depth=2
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), bc
	push	iy
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	jp	z, .LBB149_90
; %bb.88:                               ;   in Loop: Header=BB149_86 Depth=2
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	l, (iy + 2)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	a, (iy + 2)
	cp	a, l
	jp	nz, .LBB149_90
; %bb.89:                               ;   in Loop: Header=BB149_86 Depth=2
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	a, (iy + 1)
	ld	l, 0
	ld	d, l
	ld	(ix - 123), d
	ld	bc, (ix - 125)
	ld	b, d
	ld	c, a
	or	a, a
	sbc	hl, hl
	ld	a, l
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 13)
	pop	ix
	ld	e, (iy + 1)
	ld	(ix - 122), d
	ld	hl, (ix - 124)
	ld	h, d
	ld	l, e
	ld	e, a
	call	__ladd
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	bc, -150
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e                     ; 1-byte Folded Spill
	ld	bc, 25
	ld	iyl, b
	ld	a, iyl
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 38
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB149_253
	.local	.LBB149_90
.LBB149_90:                             ; %.backedge
                                        ;   in Loop: Header=BB149_86 Depth=2
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	bc, (iy + 0)
	dec	bc
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	iy, iy + 5
	push	ix
	lea	ix, ix - 128
	ld	de, (ix - 4)
	pop	ix
	jp	.LBB149_86
	.local	.LBB149_91
.LBB149_91:                             ; %.loopexit81
                                        ;   in Loop: Header=BB149_83 Depth=1
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 10
	ld	bc, (iy + 0)
	inc	bc
	dec	de
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	(iy + 0), de
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	iy, iy + 5
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	de, 8
	jp	.LBB149_83
	.local	.LBB149_92
.LBB149_92:
	ld	bc, 2288
	ld	l, 0
                                        ; kill: def $l killed $l killed $uhl def $uhl
	ld	(ix - 126), hl
	ld	iy, (ix + 6)
	ld	de, 2248
	.local	.LBB149_93
.LBB149_93:                             ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB149_194
; %bb.94:                               ;   in Loop: Header=BB149_93 Depth=1
	lea	hl, iy + 0
	add	hl, de
	push	hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	jp	z, .LBB149_225
; %bb.95:                               ;   in Loop: Header=BB149_93 Depth=1
	inc	(ix - 126)
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, 5
	add	hl, de
	ex	de, hl
	ld	iy, (ix + 6)
	ld	bc, 2288
	jr	.LBB149_93
	.local	.LBB149_96
.LBB149_96:
	ld	hl, (ix + 6)
	push	hl
	call	__Z18systems_forge_soulR9GameState
	jp	.LBB149_224
	.local	.LBB149_97
.LBB149_97:                             ; %.preheader76.preheader
	ld	c, 3
	ld	l, -1
	ld	h, 0
	.local	.LBB149_98
.LBB149_98:                             ; %.preheader76
                                        ; =>This Inner Loop Header: Depth=1
	ld	de, (ix + 6)
	ld	a, c
	cp	a, 0
	call	pe, __setflag
	jp	p, .LBB149_100
; %bb.99:                               ; %.preheader76
                                        ;   in Loop: Header=BB149_98 Depth=1
	ld	l, h
	.local	.LBB149_100
.LBB149_100:                            ; %.preheader76
                                        ;   in Loop: Header=BB149_98 Depth=1
	ld	a, c
	cp	a, 0
	call	pe, __setflag
	jp	m, .LBB149_199
; %bb.101:                              ;   in Loop: Header=BB149_98 Depth=1
	push	bc
	push	de
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l                     ; 1-byte Folded Spill
	ld	(ix - 126), bc
	call	__Z12systems_brewR9GameState13AlchemyRecipe
	ld	bc, (ix - 126)
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 22
	ld	e, (iy + 0)                     ; 1-byte Folded Reload
	pop	hl
	pop	hl
	ld	h, 0
	ld	l, -1
	dec	c
	bit	0, a
	ld	a, e
	jr	z, .LBB149_98
	jp	.LBB149_280
	.local	.LBB149_102
.LBB149_102:
	ld	hl, (ix + 6)
	push	hl
	call	__Z23systems_advance_pyramidR9GameState
	jp	.LBB149_224
	.local	.LBB149_103
.LBB149_103:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 1048576
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.104:
	ld	de, 1002
	ld	iy, (ix + 6)
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.105:
	ld	bc, -144
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), iy
	ld	bc, -141
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	ld	de, 0
	push	de
	ld	de, 500
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), hl
	pop	ix
	ld	bc, -138
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1250
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1150
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 10)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 1)
	pop	ix
	ld	bc, 6
	ldir
	ld	(iy + 6), 36
	lea	de, iy + 10
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.106:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	iy, 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 16)
	pop	ix
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB149_108
; %bb.107:
	inc.sis	de
	ld	hl, (ix + 6)
	ld	bc, 1002
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB149_108
.LBB149_108:
	lea	hl, iy + 0
	ld	bc, 5
	call	__imulu
	ld	de, 25
	add	hl, de
	ld	de, 0
	push	de
	push	hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 19)
	pop	ix
	push	hl
	ld	(ix - 126), iy
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 19
	ld	hl, (iy + 0)
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 126)
	inc	hl
	ld	bc, 10
	call	__iremu
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB149_246
; %bb.109:
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 50
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 7
	ld	hl, (iy + 0)
	jp	.LBB149_9
	.local	.LBB149_110
.LBB149_110:
	ld	hl, (ix + 6)
	push	hl
	call	__Z27systems_form_shadow_crystalR9GameState
	jp	.LBB149_224
	.local	.LBB149_111
.LBB149_111:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), iy
	pop	ix
	push	iy
	ld	iy, 512
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.112:
	ld	de, 984
	ld	hl, (ix + 6)
	push	hl
	pop	bc
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld.sis	de, 32
	push	ix
	lea	ix, ix - 128
	ld	(ix - 13), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	push	bc
	pop	hl
	ld	c, d
	ld	a, c
	jp	nc, .LBB149_280
; %bb.113:
	push	ix
	lea	ix, ix - 128
	ld	(ix - 25), iy
	pop	ix
	ld	bc, 1040
	add	hl, bc
	ld	a, (hl)
	ld	de, 0
	push	de
	pop	hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	push	hl
	pop	bc
	ld	iy, _AREA_DEFS
	add	iy, bc
	ld	a, (iy + 3)
	ld	bc, -144
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), a
	push	de
	ld	hl, 100000
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), hl
	pop	ix
	ld	bc, -138
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1300
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.114:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	bc, -141
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	l, e
	ld	h, d
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, -153
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 32
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB149_116
; %bb.115:
	inc.sis	de
	ld	hl, (ix + 6)
	ld	bc, 984
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB149_116
.LBB149_116:
	ld	c, 2
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	call	__ishru
	inc	hl
	ld	de, 0
	push	de
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	hl, (iy + 0)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	c, 3
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	call	__ishru
	inc	hl
	ld	de, 0
	push	de
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	jp	.LBB149_212
	.local	.LBB149_117
.LBB149_117:
	ld	hl, (ix + 6)
	push	hl
	call	__Z21systems_advance_towerR9GameState
	jp	.LBB149_224
	.local	.LBB149_118
.LBB149_118:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 1024
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.119:
	ld	de, 2386
	ld	hl, (ix + 6)
	add	hl, de
	ld	iy, (hl)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.120:
	ld.sis	de, 500
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	or	a, a
	sbc.sis	hl, de
	jr	c, .LBB149_122
; %bb.121:
	ld.sis	hl, 500
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	.local	.LBB149_122
.LBB149_122:
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 50
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1080
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.123:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	lea	hl, ix - 103
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	hl, (ix + 6)
	ld	de, 2386
	add	hl, de
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	de, (hl)
	inc.sis	de
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	ld	(hl), e
	inc	hl
	ld	(hl), d
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	a, h
                                        ; kill: def $l killed $l killed $uhl
	srl	a
	rr	l
	ex	de, hl
	ld	iyl, e
	ex	de, hl
	ld	iyh, a
	inc.sis	iy
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	hl, 0
	add	hl, sp
	push	ix
	lea	ix, ix - 128
	ld	(ix - 13), hl
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 4)
	pop	ix
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 13)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 53
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 5
	call	__sremu
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB149_246
; %bb.124:
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 19
	ld	hl, (iy + 0)
	ldir
	ld	hl, 54
	jp	.LBB149_245
	.local	.LBB149_125
.LBB149_125:
	ld	hl, (ix + 6)
	push	hl
	call	__Z12systems_fishR9GameState
	jp	.LBB149_224
	.local	.LBB149_126
.LBB149_126:
	ld	de, 8
	ld	bc, 5
	ld	iy, 0
	.local	.LBB149_127
.LBB149_127:                            ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB149_132 Depth 2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jp	z, .LBB149_280
; %bb.128:                              ;   in Loop: Header=BB149_127 Depth=1
	ld	(ix - 126), iy
	lea	hl, iy + 0
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, 2248
	add	hl, de
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	push	hl
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	pop	hl
	bit	0, a
	jr	z, .LBB149_130
; %bb.129:                              ;   in Loop: Header=BB149_127 Depth=1
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	bit	0, (iy + 4)
	jr	z, .LBB149_131
	.local	.LBB149_130
.LBB149_130:                            ; %.loopexit74
                                        ;   in Loop: Header=BB149_127 Depth=1
	ld	iy, (ix - 126)
	inc	iy
	ld	c, 0
	ld	a, c
	ld	de, 8
	ld	bc, 5
	jr	.LBB149_127
	.local	.LBB149_131
.LBB149_131:                            ;   in Loop: Header=BB149_127 Depth=1
	or	a, a
	sbc	hl, hl
	.local	.LBB149_132
.LBB149_132:                            ;   Parent Loop BB149_127 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	push	hl
	pop	bc
	ld	de, 40
	or	a, a
	sbc	hl, de
	ld	hl, (ix + 6)
	jp	z, .LBB149_229
; %bb.133:                              ;   in Loop: Header=BB149_132 Depth=2
	add	hl, bc
	push	hl
	pop	iy
	ld	de, 2248
	add	iy, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 4), hl
	pop	ix
	ld	de, 2252
	add	hl, de
	bit	0, (hl)
	jr	z, .LBB149_136
; %bb.134:                              ;   in Loop: Header=BB149_132 Depth=2
	push	iy
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	bc, (iy + 0)
	pop	hl
	bit	0, a
	jr	z, .LBB149_136
; %bb.135:                              ;   in Loop: Header=BB149_132 Depth=2
	ld	de, 2250
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	hl, (iy + 0)
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 1)
	pop	ix
	ld	e, (iy + 2)
	ld	a, (hl)
	cp	a, e
	jp	z, .LBB149_130
	.local	.LBB149_136
.LBB149_136:                            ;   in Loop: Header=BB149_132 Depth=2
	push	bc
	pop	hl
	ld	de, 5
	add	hl, de
	jr	.LBB149_132
	.local	.LBB149_137
.LBB149_137:
	ld	hl, (ix + 6)
	push	hl
	call	__Z22systems_advance_galaxyR9GameState
	jp	.LBB149_224
	.local	.LBB149_138
.LBB149_138:
	ld	de, 970
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 50
	or	a, a
	sbc.sis	hl, de
	lea	bc, iy + 0
	jp	nc, .LBB149_193
; %bb.139:
	lea	iy, ix - 115
	ld	(ix - 126), iy
	ld	de, 254
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 1), hl
	pop	ix
	push	bc
	push	iy
	call	__Z25systems_dice_upgrade_costRK9GameState
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 1)
	pop	ix
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	ld	iy, (ix + 6)
	lea	bc, iy + 0
	pop	de
	pop	de
	pop	de
	pop	de
	ld	de, 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	jp	m, .LBB149_193
; %bb.140:
	push	bc
	call	__Z20systems_upgrade_diceR9GameState
	jp	.LBB149_224
	.local	.LBB149_141
.LBB149_141:
	ld	a, (ix + 15)
	ld	de, 2358
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	ld	l, a
	jp	nz, .LBB149_206
; %bb.142:
	push	hl
	ld	hl, (ix + 12)
	push	hl
	push	bc
	call	__Z25systems_start_borbventureR9GameStatem
	jp	.LBB149_222
	.local	.LBB149_143
.LBB149_143:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	xor	a, a
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 524288
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_279
; %bb.144:
	ld	de, 290
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB149_226
; %bb.145:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 50
	push	hl
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	(iy + 6), 40
	lea	de, iy + 10
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 36
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB149_279
; %bb.146:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 5
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	hl, (iy + 0)
	ldir
	ld	hl, 48
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix + 6)
	jp	.LBB149_267
	.local	.LBB149_147
.LBB149_147:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 2097152
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.148:
	ld	de, 1004
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	ld.sis	de, 500
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.149:
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	ld	de, 0
	push	de
	ld	de, 100
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), hl
	pop	ix
	ld	bc, -138
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1100
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 57
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.150:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	hl, 28
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 5
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	pop	bc
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 16)
	pop	ix
	ld	(iy + 7), hl
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	a, (hl)
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 58
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	ld.sis	de, 2
	add.sis	hl, de
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 59
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	ld	iy, (ix + 6)
	jp	nc, .LBB149_277
; %bb.151:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 1004
	jp	.LBB149_276
	.local	.LBB149_152
.LBB149_152:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 2048
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.153:
	ld	de, 986
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld.sis	de, 500
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.154:
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	ld	de, 0
	push	de
	ld	de, 100
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 10), hl
	pop	ix
	ld	bc, -138
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1125
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -138
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1050
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 10)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 1)
	pop	ix
	ld	bc, 6
	ldir
	ld	(iy + 6), 38
	lea	de, iy + 10
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.155:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	lea	hl, ix - 97
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	inc.sis	hl
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	l, e
	ld	h, d
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 4)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, 27
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	de, 962
	ld	hl, (ix + 6)
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 200
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	c, .LBB149_157
; %bb.156:
	ld.sis	hl, 200
	ld	e, l
	ld	d, h
	.local	.LBB149_157
.LBB149_157:
	ld	l, e
	ld	h, d
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 1000
	add.sis	hl, de
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)
	ld	d, (iy + 1)
	ld	l, e
	ld	h, d
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	de, 1040
	ld	hl, (ix + 6)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	hl, _AREA_DEFS
	push	hl
	pop	iy
	add	iy, de
	ld	a, (iy + 3)
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, a
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 13)
	pop	ix
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB149_277
; %bb.158:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 986
	jp	.LBB149_276
	.local	.LBB149_159
.LBB149_159:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	xor	a, a
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 256
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	bit	0, l
	jp	z, .LBB149_280
; %bb.160:
	ld	bc, 982
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, bc
	ld	bc, (iy)
	ld.sis	de, 500
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	hl, (ix + 6)
	jp	nc, .LBB149_280
; %bb.161:
	push	ix
	lea	ix, ix - 128
	ld	(ix - 16), iy
	pop	ix
	ld	de, 1040
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	iy, _AREA_DEFS
	add	iy, de
	ld	a, (iy + 3)
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1100
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)                     ; 1-byte Folded Reload
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.162:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	lea	hl, ix - 109
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	hl, 26
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_effect_permilleRK9GameState13UpgradeEffect
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	bc, -141
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e                     ; 1-byte Folded Spill
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 5
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	inc.sis	hl
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -153
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	l, e
	ld	h, d
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 25)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 4)
	pop	ix
	ld	(iy + 7), hl
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	a, (hl)
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_114combined_bonusERK9GameState13CraftProperty8CardType
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	a, e
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 37
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 25
	ld	iyl, b
	ld	a, iyl
	call	__lremu
	call	__lcmpzero
	jr	nz, .LBB149_164
; %bb.163:
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 19
	ld	hl, (iy + 0)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB149_164
.LBB149_164:
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	jp	nc, .LBB149_277
; %bb.165:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 982
	jp	.LBB149_276
	.local	.LBB149_166
.LBB149_166:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 4096
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.167:
	ld	de, 988
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 25), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.168:
	ld	de, -159
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld.sis	de, 500
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 25
	ld	bc, (iy + 0)
	ld	l, c
	ld	h, b
	or	a, a
	sbc.sis	hl, de
	ld	l, c
	ld	h, b
	jr	c, .LBB149_170
; %bb.169:
	ld.sis	hl, 500
	.local	.LBB149_170
.LBB149_170:
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -150
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 22)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 22), hl
	pop	ix
	ld	bc, -150
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1100
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	l, (ix - 28)
	ld	h, (ix - 27)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 39
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.171:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 100
	ld	iyl, b
	ld	a, iyl
	call	__lremu
	push	hl
	pop	iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 25)
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	(ix - 126), l
	ld	(ix - 125), h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), iy
	lea	hl, iy + 0
	ld	bc, 35
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_237
; %bb.172:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 2
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, (ix - 126)
	ld	h, (ix - 125)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 56
	jp	.LBB149_274
	.local	.LBB149_173
.LBB149_173:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 131072
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.174:
	ld	de, 996
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 25), hl
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.175:
	ld	de, -156
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 25
	ld	de, (iy + 0)
	ld	c, e
	ld	b, d
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	push	hl
	ld	hl, 500
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	ld	de, 500
	pop	hl
	pop	hl
	pop	hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 13
	ld	bc, (iy + 0)
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	c, .LBB149_177
; %bb.176:
	push	de
	pop	bc
	.local	.LBB149_177
.LBB149_177:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 16)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 16), hl
	pop	ix
	ld	bc, -144
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1125
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 22)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 47
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.178:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	lea	hl, ix - 67
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	inc	hl
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 16)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_112combat_bonusERK9GameState
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	a, e
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 16)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	hl, (ix - 126)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 6
	ldir
	ld	hl, 43
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 5
	push	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	(ix - 126), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	iy, (ix - 126)
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 71
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -153
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 49
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -156
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 1000
	or	a, a
	sbc.sis	hl, bc
	ld	iy, (ix + 6)
	jp	nc, .LBB149_277
; %bb.179:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 996
	jp	.LBB149_276
	.local	.LBB149_180
.LBB149_180:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 262144
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 40
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.181:
	ld	de, 998
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	hl, (hl)
	ld.sis	de, 500
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.182:
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	pop	bc
	ld	e, l
	ld	d, h
	push	bc
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 126)
	ldir
	ld	hl, 45
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.183:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	lea	hl, ix - 61
	ld	(ix - 126), hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 5
	push	hl
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	inc.sis	hl
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -144
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	ld	bc, -141
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)
	ld	d, (iy + 1)
	ld	l, e
	ld	h, d
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 16)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	hl, (ix - 126)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_112combat_bonusERK9GameState
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	a, e
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -141
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 13)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), a
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	de, (ix - 126)
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, (ix + 6)
	push	hl
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 5
	ld	iyl, b
	ld	a, iyl
	call	__lremu
	call	__lcmpzero
	jp	z, .LBB149_239
; %bb.184:
	ld	a, 0
	jp	.LBB149_240
	.local	.LBB149_185
.LBB149_185:
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 8
	push	iy
	ld	iy, 0
	push	iy
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 48
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	z, .LBB149_192
; %bb.186:
	ld	de, 1012
	ld	iy, (ix + 6)
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.187:
	ld	bc, -141
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), iy
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	ld	de, 0
	push	de
	ld	de, 10
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1300
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1150
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 1)
	pop	ix
	ld	bc, 6
	ldir
	ld	(iy + 6), 46
	lea	de, iy + 10
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 61
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_110spend_pairER9GameState10ResourceId6BigNumS2_S3_
	ld	hl, 22
	add	hl, sp
	ld	sp, hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.188:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB149_190
; %bb.189:
	inc.sis	de
	ld	hl, (ix + 6)
	ld	bc, 1012
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB149_190
.LBB149_190:
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 25
	call	__smulu
	ld.sis	de, 100
	add.sis	hl, de
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 19
	ld	hl, (iy + 0)
	ldir
	ld	hl, 47
	jp	.LBB149_245
	.local	.LBB149_191
.LBB149_191:
	ld	de, 1018
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	ld	iy, 32768
	push	iy
	ld	iy, 0
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	ld	iy, 32
	push	iy
	call	__llshru
	pop	de
	ld	a, l
	or	a, a
	jp	nz, .LBB149_207
	.local	.LBB149_192
.LBB149_192:
	ld	c, 0
	ld	a, c
	jp	.LBB149_280
	.local	.LBB149_193
.LBB149_193:
	or	a, a
	sbc	hl, hl
	push	hl
	push	bc
	call	__Z17systems_roll_diceR9GameStatePh
	jp	.LBB149_223
	.local	.LBB149_194
.LBB149_194:
	ld	c, -1
	ld	d, 0
	ld	l, d
	.local	.LBB149_195
.LBB149_195:                            ; %.preheader72
                                        ; =>This Inner Loop Header: Depth=1
	ld	a, l
	cp	a, 8
	ld	e, c
	jr	nz, .LBB149_197
; %bb.196:                              ; %.preheader72
                                        ;   in Loop: Header=BB149_195 Depth=1
	ld	e, d
	.local	.LBB149_197
.LBB149_197:                            ; %.preheader72
                                        ;   in Loop: Header=BB149_195 Depth=1
	ld	a, l
	cp	a, 8
	jp	z, .LBB149_260
; %bb.198:                              ;   in Loop: Header=BB149_195 Depth=1
	push	hl
	push	iy
	ld	bc, -150
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e                     ; 1-byte Folded Spill
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	call	__Z20systems_upgrade_itemR9GameStateh
	ld	d, 0
	ld	c, -1
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 22
	ld	e, (iy + 0)                     ; 1-byte Folded Reload
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	l
	bit	0, a
	ld	a, e
	jr	z, .LBB149_195
	jp	.LBB149_280
	.local	.LBB149_199
.LBB149_199:
	ld	a, l
	jp	.LBB149_280
	.local	.LBB149_200
.LBB149_200:
	ld	c, l
	ld	(ix - 126), bc
	ld	bc, (ix + 12)
	.local	.LBB149_201
.LBB149_201:                            ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ld	a, e
	cp	a, 3
	jp	z, .LBB149_221
; %bb.202:                              ;   in Loop: Header=BB149_201 Depth=1
	ld	hl, (ix - 126)
	push	hl
	push	bc
	push	de
	push	iy
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	call	__Z19systems_start_tradeR9GameStatehm
	ld	bc, (ix + 12)
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 7
	ld	de, (iy + 0)
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix + 15)
	inc	e
	bit	0, a
	jr	z, .LBB149_201
	.local	.LBB149_203
.LBB149_203:
	ld	a, 1
	jp	.LBB149_280
	.local	.LBB149_204
.LBB149_204:
	ld	hl, (ix + 6)
	push	hl
	call	__Z27systems_bank_claim_interestR9GameState
	jp	.LBB149_224
	.local	.LBB149_205
.LBB149_205:
	push	hl
	ld	hl, (ix + 12)
	push	hl
	push	bc
	call	__Z24systems_collect_artifactR9GameStatem
	jp	.LBB149_222
	.local	.LBB149_206
.LBB149_206:
	push	hl
	ld	hl, (ix + 12)
	push	hl
	push	bc
	call	__Z28systems_complete_borbventureR9GameStatem
	jp	.LBB149_222
	.local	.LBB149_207
.LBB149_207:
	ld	de, 992
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	de, (iy)
	ld.sis	bc, 500
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	ld	c, 0
	ld	a, c
	jp	nc, .LBB149_280
; %bb.208:
	ld	bc, -141
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), iy
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	ld	de, 0
	push	de
	ld	de, 10
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 7)
	pop	ix
	inc	hl
	push	ix
	lea	ix, ix - 128
	ld	(ix - 7), hl
	pop	ix
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 1400
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	(iy + 13), l
	ld	(iy + 14), h
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_geometric_cost6BigNummt
	ld	hl, 19
	add	hl, sp
	ld	sp, hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 56
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_280
; %bb.209:
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a                     ; 1-byte Folded Spill
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB149_211
; %bb.210:
	inc.sis	de
	ld	hl, (ix + 6)
	ld	bc, 992
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB149_211
.LBB149_211:
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 10
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 4
	ld	hl, (iy + 0)
	.local	.LBB149_212
.LBB149_212:                            ; %.loopexit
	ldir
	ld	hl, 52
	jp	.LBB149_245
	.local	.LBB149_213
.LBB149_213:
	ld	de, 2288
	ld	bc, 2248
	.local	.LBB149_214
.LBB149_214:                            ; %.preheader79
                                        ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB149_192
; %bb.215:                              ;   in Loop: Header=BB149_214 Depth=1
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), bc
	add	iy, bc
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	iy
	call	__ZN12_GLOBAL__N_110valid_itemERK11CraftedItem
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	pop	hl
	bit	0, a
	jr	z, .LBB149_220
; %bb.216:                              ;   in Loop: Header=BB149_214 Depth=1
	ld	a, (iy + 3)
	cp	a, 25
	jr	c, .LBB149_220
; %bb.217:                              ;   in Loop: Header=BB149_214 Depth=1
	ld	a, (iy + 1)
	cp	a, 80
	jr	c, .LBB149_220
; %bb.218:                              ;   in Loop: Header=BB149_214 Depth=1
	ld	a, (iy)
	cp	a, 22
	jr	nc, .LBB149_220
; %bb.219:                              ;   in Loop: Header=BB149_214 Depth=1
	srl	a
	inc	a
	ld	de, 0
	push	de
	pop	hl
	ld	l, a
	push	de
	push	hl
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	ld	hl, 52
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB149_270
	.local	.LBB149_220
.LBB149_220:                            ;   in Loop: Header=BB149_214 Depth=1
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, 5
	add	hl, de
	push	hl
	pop	bc
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	de, 2288
	jp	.LBB149_214
	.local	.LBB149_221
.LBB149_221:
                                        ; kill: def $l killed $l def $uhl
	push	hl
	push	bc
	push	iy
	call	__Z23systems_generate_tradesR9GameStatem
	.local	.LBB149_222
.LBB149_222:                            ; %.loopexit
	pop	hl
	.local	.LBB149_223
.LBB149_223:                            ; %.loopexit
	pop	hl
	.local	.LBB149_224
.LBB149_224:                            ; %.loopexit
	pop	hl
	jp	.LBB149_280
	.local	.LBB149_225
.LBB149_225:
	ld	hl, (ix - 126)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z18systems_craft_itemR9GameStateh
	jr	.LBB149_223
	.local	.LBB149_226
.LBB149_226:
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 19
	ld	hl, (iy + 0)
	ldir
	ld	hl, 48
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z10game_spendR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB149_279
; %bb.227:
	ld	hl, (ix + 6)
	push	hl
	pop	bc
	ld	de, 1000
	add	hl, de
	ld	(ix - 126), hl
	ld	hl, (hl)
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	push	bc
	call	__Z9game_randR9GameState
	pop	bc
	ld	bc, 100
	ld	iyl, b
	ld	a, iyl
	call	__lremu
	ld	bc, 50
	call	__lcmpu
	jp	nc, .LBB149_235
; %bb.228:
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 5
	call	__sdivu
	ld.sis	de, 2
	add.sis	hl, de
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 7
	ld	hl, (iy + 0)
	ldir
	ld	hl, 60
	jp	.LBB149_265
	.local	.LBB149_229
.LBB149_229:
	ld	de, (ix - 126)
	push	de
	push	hl
	call	__Z18systems_equip_itemR9GameStateh
	jp	.LBB149_223
	.local	.LBB149_230
.LBB149_230:
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 46)
	pop	ix
                                        ; kill: def $hl killed $hl killed $uhl
	ld	c, iyl
	ld	b, iyh
	call	__sor
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 43)
	pop	ix
	ld	(iy), l
	ld	(iy + 1), h
	or	a, a
	sbc	hl, hl
	push	hl
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 1
	ld	hl, (iy + 0)
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	ld	de, -132
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 60
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	ld	c, 1
	ld	a, c
	jp	.LBB149_224
	.local	.LBB149_231
.LBB149_231:
	ld	a, l
	cp	a, 2
	ld	bc, 25
	jp	z, .LBB149_242
; %bb.232:
	ld	l, 37
	jp	.LBB149_243
	.local	.LBB149_233
.LBB149_233:
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 80
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_247
; %bb.234:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 3
	push	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, (ix - 126)
	ld	h, (ix - 125)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 56
	jp	.LBB149_262
	.local	.LBB149_235
.LBB149_235:
	ld	bc, 80
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_249
; %bb.236:
	ld	de, 0
	push	de
	pop	hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 1
	ld	bc, (iy + 0)
	ld	l, c
	ld	h, b
	ld	bc, 10
	add	hl, bc
	push	de
	push	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 10
	ld	hl, (iy + 0)
	ldir
	ld	hl, 42
	jp	.LBB149_265
	.local	.LBB149_237
.LBB149_237:
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 60
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_251
; %bb.238:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	de, -138
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -138
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, (ix - 126)
	ld	h, (ix - 125)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -135
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 41
	jp	.LBB149_274
	.local	.LBB149_239
.LBB149_239:
	ld	a, 1
	.local	.LBB149_240
.LBB149_240:
	ld	l, 50
	add	a, l
	ld	iyl, a
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	hl, (ix - 126)
	ld	bc, 6
	ldir
	push	iy
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -135
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 5
	call	__sdivu
	ld.sis	de, 2
	add.sis	hl, de
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -147
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 49
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 10)
	pop	ix
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 500
	or	a, a
	sbc.sis	hl, bc
	jp	nc, .LBB149_277
; %bb.241:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 998
	jp	.LBB149_276
	.local	.LBB149_242
.LBB149_242:
	ld	l, 60
	.local	.LBB149_243
.LBB149_243:
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 1
	ld	(iy + 0), hl
	.local	.LBB149_244
.LBB149_244:
	ld	a, 1
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 22
	ld	(iy + 0), a
	ld	l, 0
	push	hl
	push	bc
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 126)
	ldir
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	.local	.LBB149_245
.LBB149_245:                            ; %.loopexit
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB149_246
.LBB149_246:                            ; %.loopexit
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB149_278
	.local	.LBB149_247
.LBB149_247:
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 97
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_261
; %bb.248:
	ld.sis	bc, 20
	ld	de, -153
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 13
	ld	hl, (iy + 0)
	ldir
	ld	hl, 51
	jp	.LBB149_262
	.local	.LBB149_249
.LBB149_249:
	ld	bc, 97
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_264
; %bb.250:
	ld.sis	bc, 3
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	call	__sdivu
	add.sis	hl, bc
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 13
	ld	hl, (iy + 0)
	ldir
	ld	hl, 50
	jp	.LBB149_265
	.local	.LBB149_251
.LBB149_251:
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 80
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_268
; %bb.252:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 2
	push	hl
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -129
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -144
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, (ix - 126)
	ld	h, (ix - 125)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	bc, -129
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	de, -141
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -141
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 48
	jp	.LBB149_274
	.local	.LBB149_253
.LBB149_253:
	ld	l, 1
	ld	de, -147
	lea	iy, ix + 0
	add	iy, de
	ld	bc, (iy + 0)
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	a, (iy + 0)                     ; 1-byte Folded Reload
	call	__lshru
	push	bc
	pop	hl
	ld	e, a
	ld	bc, 90
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jr	c, .LBB149_255
; %bb.254:
	push	bc
	pop	hl
	.local	.LBB149_255
.LBB149_255:
	ld	e, 10
	ld	a, l
	add	a, e
	ld	l, a
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 7)
	pop	ix
	ld	(iy + 1), l
	ld	a, (iy + 3)
	ld	iy, 0
	lea	hl, iy + 0
	push	hl
	pop	de
	ld	e, a
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 13)
	pop	ix
	ld	a, (iy + 3)
	srl	a
	push	hl
	pop	iy
	ld	iyl, a
	add	iy, de
	ld	de, 49
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	c, .LBB149_257
; %bb.256:
	ld	iy, 49
	.local	.LBB149_257
.LBB149_257:
	ld	a, iyl
	inc	a
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	(iy + 3), a
	bit	0, (iy + 4)
	ld	e, 1
	ld	a, e
	jr	nz, .LBB149_259
; %bb.258:
	ld	bc, -141
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	a, (iy + 4)
	.local	.LBB149_259
.LBB149_259:
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 4), a
	ld	bc, -141
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy), 0
	lea	hl, iy + 0
	inc	hl
	ld	a, (iy)
	ld	(hl), a
	ld	a, (iy + 1)
	ld	(iy + 2), a
	ld	a, (iy + 2)
	ld	(iy + 3), a
	ld	a, (iy + 3)
	ld	(iy + 4), a
	.local	.LBB149_260
.LBB149_260:
	ld	a, e
	jp	.LBB149_280
	.local	.LBB149_261
.LBB149_261:
	ld	de, -153
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 100
	call	__sdivu
	ld.sis	de, 2
	add.sis	hl, de
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 16
	ld	hl, (iy + 0)
	ldir
	ld	hl, 35
	.local	.LBB149_262
.LBB149_262:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -159
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 1000
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	jp	nc, .LBB149_277
; %bb.263:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 1016
	jp	.LBB149_276
	.local	.LBB149_264
.LBB149_264:
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 100
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	de, -144
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 16
	ld	hl, (iy + 0)
	ldir
	ld	hl, 35
	.local	.LBB149_265
.LBB149_265:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 126)
	ld	iy, (hl)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld.sis	bc, 1000
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix + 6)
	jr	nc, .LBB149_267
; %bb.266:
	inc.sis	iy
	push	bc
	pop	hl
	ld	de, 1000
	add	hl, de
	push	de
	ld	e, iyl
	ld	d, iyh
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	de
	.local	.LBB149_267
.LBB149_267:
	ld	a, 1
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	push	bc
	jp	.LBB149_278
	.local	.LBB149_268
.LBB149_268:
	ld	bc, 95
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 1
	ld	hl, (iy + 0)
	ld	iyl, b
	ld	a, iyl
	call	__lcmpu
	jp	nc, .LBB149_273
; %bb.269:
	lea	hl, ix - 79
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	lea	de, ix - 85
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 3
	push	hl
	push	de
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -135
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -132
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	l, (ix - 126)
	ld	h, (ix - 125)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	bc, -135
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	(iy + 7), de
	ld	(iy + 10), 0
	ld	de, -129
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z10bn_mul_u326BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -129
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 59
	jp	.LBB149_274
	.local	.LBB149_270
.LBB149_270:
	ld	de, -132
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	inc	(iy)
	ld	(iy + 3), 0
	ld	a, (iy + 1)
	cp	a, 95
	jr	c, .LBB149_272
; %bb.271:
	ld	a, 95
	.local	.LBB149_272
.LBB149_272:
	ld	l, 5
	add	a, l
	ld	l, a
	ld	(iy + 1), l
	jp	.LBB149_203
	.local	.LBB149_273
.LBB149_273:
	lea	hl, ix - 91
	ld	(ix - 126), hl
	ld	de, -153
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 100
	call	__sdivu
	inc.sis	hl
	ld	de, 0
	push	de
	ld	e, l
	ld	d, h
	push	de
	ld	hl, (ix - 126)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ld	hl, (ix - 126)
	ldir
	ld	hl, 35
	.local	.LBB149_274
.LBB149_274:
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, -159
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 1000
	or	a, a
	sbc.sis	hl, bc
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	jr	nc, .LBB149_277
; %bb.275:
	inc.sis	de
	lea	hl, iy + 0
	ld	bc, 988
	.local	.LBB149_276
.LBB149_276:
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	.local	.LBB149_277
.LBB149_277:
	push	iy
	.local	.LBB149_278
.LBB149_278:                            ; %.loopexit
	call	__ZN12_GLOBAL__N_115action_completeER9GameState
	pop	hl
	.local	.LBB149_279
.LBB149_279:                            ; %.loopexit
	ld	de, -150
	lea	iy, ix + 0
	add	iy, de
	ld	a, (iy + 0)                     ; 1-byte Folded Reload
	.local	.LBB149_280
.LBB149_280:                            ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end149
.Lfunc_end149:
	.size	__Z22systems_primary_actionR9GameState8SystemIdm, .Lfunc_end149-__Z22systems_primary_actionR9GameState8SystemIdm
	.section	.rodata.__Z22systems_primary_actionR9GameState8SystemIdm,"a",@progbits
JTI149_0:
	d24	.LBB149_3
	d24	.LBB149_92
	d24	.LBB149_280
	d24	.LBB149_97
	d24	.LBB149_63
	d24	.LBB149_117
	d24	.LBB149_126
	d24	.LBB149_280
	d24	.LBB149_280
	d24	.LBB149_102
	d24	.LBB149_141
	d24	.LBB149_66
	d24	.LBB149_138
	d24	.LBB149_62
	d24	.LBB149_65
	d24	.LBB149_125
	d24	.LBB149_280
	d24	.LBB149_53
	d24	.LBB149_96
	d24	.LBB149_52
	d24	.LBB149_110
	d24	.LBB149_137
	d24	.LBB149_159
	d24	.LBB149_111
	d24	.LBB149_118
	d24	.LBB149_152
	d24	.LBB149_166
	d24	.LBB149_81
	d24	.LBB149_76
	d24	.LBB149_191
	d24	.LBB149_38
	d24	.LBB149_173
	d24	.LBB149_180
	d24	.LBB149_143
	d24	.LBB149_103
	d24	.LBB149_147
	d24	.LBB149_55
	d24	.LBB149_45
	d24	.LBB149_10
	d24	.LBB149_33
	d24	.LBB149_6
	d24	.LBB149_185
JTI149_1:
	d24	.LBB149_15
	d24	.LBB149_22
	d24	.LBB149_19
	d24	.LBB149_20
	d24	.LBB149_17
	d24	.LBB149_23
	d24	.LBB149_24
	d24	.LBB149_21
	d24	.LBB149_28
	d24	.LBB149_18
	d24	.LBB149_25
	d24	.LBB149_16
                                        ; -- End function
	.section	.text.__Z7ui_initR7UiState,"ax",@progbits
	.globl	__Z7ui_initR7UiState            ; -- Begin function _Z7ui_initR7UiState
	.type	__Z7ui_initR7UiState,@function
__Z7ui_initR7UiState:                   ; @_Z7ui_initR7UiState
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	(hl), 0
	push	hl
	pop	iy
	inc	iy
	ld	bc, 54
	lea	de, iy + 0
	ldir
	pop	ix
	ret
	.local	.Lfunc_end150
.Lfunc_end150:
	.size	__Z7ui_initR7UiState, .Lfunc_end150-__Z7ui_initR7UiState
                                        ; -- End function
	.section	.text.__Z9ui_notifyR7UiStatePKc,"ax",@progbits
	.globl	__Z9ui_notifyR7UiStatePKc       ; -- Begin function _Z9ui_notifyR7UiStatePKc
	.type	__Z9ui_notifyR7UiStatePKc,@function
__Z9ui_notifyR7UiStatePKc:              ; @_Z9ui_notifyR7UiStatePKc
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	de, (ix + 9)
	ld	(ix + 6), hl
	ld	(ix + 9), de
	pop	ix
	jp	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	.local	.Lfunc_end151
.Lfunc_end151:
	.size	__Z9ui_notifyR7UiStatePKc, .Lfunc_end151-__Z9ui_notifyR7UiStatePKc
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_111set_messageER7UiStatePKc,"ax",@progbits
	.type	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc,@function ; -- Begin function _ZN12_GLOBAL__N_111set_messageER7UiStatePKc
__ZN12_GLOBAL__N_111set_messageER7UiStatePKc: ; @_ZN12_GLOBAL__N_111set_messageER7UiStatePKc
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	de, 47
	push	de
	push	hl
	pea	iy + 7
	call	_strncpy
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	(iy + 54), 0
	ld	(iy + 4), 75
	pop	ix
	ret
	.local	.Lfunc_end152
.Lfunc_end152:
	.size	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc, .Lfunc_end152-__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
                                        ; -- End function
	.section	.text.__Z16ui_init_graphicsv,"ax",@progbits
	.globl	__Z16ui_init_graphicsv          ; -- Begin function _Z16ui_init_graphicsv
	.type	__Z16ui_init_graphicsv,@function
__Z16ui_init_graphicsv:                 ; @_Z16ui_init_graphicsv
; %bb.0:
	ld	iy, -1900032
	ld	hl, -1900030
	ld.sis	de, 0
	ld.sis	bc, 1057
	ld	(iy), c
	ld	(iy + 1), b
	ld.sis	bc, 2182
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld.sis	hl, 4487
	ld	iy, -1900028
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 11944
	ld	iy, -1900026
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 12549
	ld	iy, -1900024
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 11661
	ld	iy, -1900022
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 7831
	ld	iy, -1900020
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 22230
	ld	iy, -1900018
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 26855
	ld	iy, -1900016
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 30214
	ld	iy, -1900014
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 31559
	ld	iy, -1900012
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 15146
	ld	iy, -1900010
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 5491
	ld	iy, -1900008
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 16693
	ld	iy, -1900006
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 27059
	ld	iy, -1900004
	ld	(iy), l
	ld	(iy + 1), h
	ld.sis	hl, 31709
	ld	iy, -1900002
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, -1899522
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, 255
	push	hl
	call	_gfx_SetTextTransparentColor
	pop	hl
	ld	hl, 1
	push	hl
	push	hl
	call	_gfx_SetTextScale
	pop	hl
	pop	hl
	ret
	.local	.Lfunc_end153
.Lfunc_end153:
	.size	__Z16ui_init_graphicsv, .Lfunc_end153-__Z16ui_init_graphicsv
                                        ; -- End function
	.section	.text.__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem,"ax",@progbits
	.globl	__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem ; -- Begin function _Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem
	.type	__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem,@function
__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem: ; @_Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem
; %bb.0:                                ; %_Z13input_pressedRK10InputStatehh.exit
	ld	hl, -11
	call	__frameset
	ld	iy, (ix + 6)
	ld	de, (ix + 18)
	ld	c, 1
	ld	(iy), 0
	ld	(iy + 1), 0
	ld	(iy + 2), 0
	push	de
	pop	iy
	ld	h, (iy + 6)
	ld	a, (iy + 14)
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	and	a, c
	ld	e, a
	ld	a, (iy + 1)
	ld	(ix - 3), a
	ld	a, (iy + 9)
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	bit	5, a
	ld	d, -1
	ld	iyl, 0
	ld	b, d
	jr	z, .LBB154_2
; %bb.1:                                ; %_Z13input_pressedRK10InputStatehh.exit
	ld	b, iyl
	.local	.LBB154_2
.LBB154_2:                              ; %_Z13input_pressedRK10InputStatehh.exit
	ld	a, h
	and	a, c
	ld	l, a
	ld	a, e
	xor	a, c
	ld	e, a
	bit	5, (ix - 3)                     ; 1-byte Folded Reload
	jr	nz, .LBB154_4
; %bb.3:                                ; %_Z13input_pressedRK10InputStatehh.exit
	ld	d, iyl
	.local	.LBB154_4
.LBB154_4:                              ; %_Z13input_pressedRK10InputStatehh.exit
	ld	a, l
	and	a, e
	ld	c, a
	ld	a, d
	and	a, b
	ld	b, a
	bit	6, h
	ld	iy, (ix + 9)
	lea	hl, iy + 6
	ld	(ix - 9), hl
	jr	nz, .LBB154_7
; %bb.5:                                ; %_Z13input_pressedRK10InputStatehh.exit3.thread
	bit	0, (iy + 6)
	jr	nz, .LBB154_13
; %bb.6:
	ld	e, 0
	jr	.LBB154_18
	.local	.LBB154_7
.LBB154_7:                              ; %_Z13input_pressedRK10InputStatehh.exit3
	ld	e, 64
	ld	a, (ix - 6)
	and	a, e
	ld	l, a
	or	a, a
	jr	z, .LBB154_9
; %bb.8:                                ; %_Z13input_pressedRK10InputStatehh.exit3
	ld	e, 0
	jr	.LBB154_10
	.local	.LBB154_9
.LBB154_9:
	ld	e, -1
	.local	.LBB154_10
.LBB154_10:                             ; %_Z13input_pressedRK10InputStatehh.exit3
	bit	0, (iy + 6)
	jr	z, .LBB154_18
; %bb.11:
	ld	a, l
	or	a, a
	jr	nz, .LBB154_13
; %bb.12:
	ld	(iy + 6), 0
	.local	.LBB154_13
.LBB154_13:                             ; %.thread
	bit	0, c
	jr	nz, .LBB154_15
; %bb.14:                               ; %.thread
	bit	0, b
	jp	z, .LBB154_133
	.local	.LBB154_15
.LBB154_15:
	ld	a, (iy + 5)
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB154_17
; %bb.16:
	ld	hl, _.str.451
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	(iy), 1
	ld	(iy + 2), 1
	ld	hl, (ix + 12)
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	__Z22leaf_field_change_areaR9LeafFieldR9GameState
	pop	hl
	pop	hl
	.local	.LBB154_17
.LBB154_17:
	ld	hl, (ix - 9)
	ld	(hl), 0
	jp	.LBB154_133
	.local	.LBB154_18
.LBB154_18:
	bit	6, (ix - 3)                     ; 1-byte Folded Reload
	jr	nz, .LBB154_20
; %bb.19:                               ; %_Z13input_pressedRK10InputStatehh.exit4.thread
	ld	hl, (ix + 9)
	ld	l, (hl)
	jr	.LBB154_22
	.local	.LBB154_20
.LBB154_20:                             ; %_Z13input_pressedRK10InputStatehh.exit4
	ld	hl, (ix + 9)
	ld	l, (hl)
	bit	6, (ix - 10)                    ; 1-byte Folded Reload
	jr	nz, .LBB154_22
; %bb.21:                               ; %_Z13input_pressedRK10InputStatehh.exit4
	ld	a, l
	or	a, a
	jr	nz, .LBB154_25
	.local	.LBB154_22
.LBB154_22:
	ld	a, l
	or	a, a
	jr	z, .LBB154_26
; %bb.23:
	bit	0, e
	jr	z, .LBB154_29
; %bb.24:
	ld	a, l
	cp	a, 1
	jp	nz, .LBB154_35
	.local	.LBB154_25
.LBB154_25:
	ld	(iy + 6), 0
	ld	(iy), 0
	ld	(iy + 1), 0
	ld	(iy + 2), 0
	jp	.LBB154_133
	.local	.LBB154_26
.LBB154_26:
	bit	0, c
	jr	z, .LBB154_33
	.local	.LBB154_27
.LBB154_27:
	ld	(iy), 1
	.local	.LBB154_28
.LBB154_28:
	ld	(iy + 1), 0
	ld	(iy + 2), 0
	ld	(iy + 6), 0
	jp	.LBB154_133
	.local	.LBB154_29
.LBB154_29:
	dec	l
	ld	a, l
	cp	a, 16
	jp	nc, .LBB154_133
; %bb.30:
	ld	de, 0
	ld	e, l
	ld	hl, JTI154_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB154_31
.LBB154_31:
	ld	hl, 17
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	de, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.32:
	push	de
	pop	bc
	push	bc
	pop	iy
	ld	a, (iy + 1)
	or	a, a
	sbc	hl, hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	iy, __ZN12_GLOBAL__N_112MENU_ENTRIESE
	add	iy, de
	ld	a, (iy + 3)
	push	bc
	pop	iy
	ld	(iy), a
	jr	.LBB154_28
	.local	.LBB154_33
.LBB154_33:
	bit	0, e
	jp	z, .LBB154_133
	.local	.LBB154_34
.LBB154_34:
	ld	iy, (ix + 6)
	ld	(iy + 1), 1
	jp	.LBB154_133
	.local	.LBB154_35
.LBB154_35:
	ld	a, l
	cp	a, 7
	jp	nz, .LBB154_27
; %bb.36:
	ld	(iy), 6
	jp	.LBB154_28
	.local	.LBB154_37
.LBB154_37:
	ld	hl, 32
	jp	.LBB154_55
	.local	.LBB154_38
.LBB154_38:
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	ld	hl, 8
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 3), b                     ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 3)                     ; 1-byte Folded Reload
	jp	z, .LBB154_87
; %bb.39:
	ld	l, (ix + 24)
	push	hl
	ld	hl, (ix + 21)
	push	hl
	ld	hl, 11
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z22systems_primary_actionR9GameState8SystemIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB154_85
; %bb.40:
	ld	hl, _.str.17.468
	jp	.LBB154_86
	.local	.LBB154_41
.LBB154_41:
	ld	hl, 78
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.42:
	ld	de, 1040
	ld	hl, (ix + 12)
	push	hl
	pop	bc
	add	hl, de
	ld	(ix - 6), hl
	ld	a, (hl)
	ld	(ix - 3), a
	ld	a, (iy + 1)
	ld	l, a
	push	hl
	push	bc
	call	__Z13game_buy_areaR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB154_91
; %bb.43:
	ld	hl, (ix - 6)
	ld	a, (hl)
	ld	e, (ix - 3)                     ; 1-byte Folded Reload
	cp	a, e
	ld	l, 1
	jr	nz, .LBB154_45
; %bb.44:
	ld	l, 0
	.local	.LBB154_45
.LBB154_45:
	ld	iy, (ix + 6)
	ld	(iy + 2), l
	cp	a, e
	ld	hl, (ix + 12)
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	nz, __Z22leaf_field_change_areaR9LeafFieldR9GameState
	pop	hl
	pop	hl
	ld	hl, _.str.3.454
	jp	.LBB154_130
	.local	.LBB154_46
.LBB154_46:
	ld	hl, 3
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.47:
	ld	a, (iy + 1)
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z21systems_trade_presentRK9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB154_92
; %bb.48:
	or	a, a
	sbc	hl, hl
	ld	l, (ix - 3)                     ; 1-byte Folded Reload
	ld	bc, 20
	call	__imulu
	ex	de, hl
	ld	bc, (ix + 12)
	push	bc
	pop	hl
	add	hl, de
	ld	de, 2306
	add	hl, de
	bit	0, (hl)
	push	bc
	pop	de
	ld	bc, (ix + 21)
	ld	a, (ix + 24)
	ld	l, a
	jp	z, .LBB154_111
; %bb.49:
	push	hl
	push	bc
	ld	l, (ix - 3)                     ; 1-byte Folded Reload
	push	hl
	push	de
	call	__Z22systems_complete_tradeR9GameStatehm
	jp	.LBB154_112
	.local	.LBB154_50
.LBB154_50:
	ld	hl, 6
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId
	ld	e, a
	pop	hl
	ld	(ix - 3), de
	push	de
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.51:
	ld	hl, (ix - 3)
	ld	a, l
	or	a, a
	jp	z, .LBB154_133
; %bb.52:
	ld	a, (iy + 1)
	ld	l, a
	push	hl
	ld	hl, 6
	push	hl
	call	__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z16game_buy_upgradeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB154_128
; %bb.53:
	ld	hl, _.str.13.464
	jp	.LBB154_130
	.local	.LBB154_54
.LBB154_54:
	ld	hl, 74
	.local	.LBB154_55
.LBB154_55:
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	pop	hl
	jp	.LBB154_132
	.local	.LBB154_56
.LBB154_56:
	ld	hl, 5
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.57:
	ld	a, (iy + 1)
	cp	a, 3
	jp	nc, .LBB154_93
; %bb.58:
	ld	hl, 1
	ld	c, a
	call	__ishl
	ld	bc, 2406
	lea	de, iy + 0
	ld	iy, (ix + 12)
	add	iy, bc
	ld	a, (iy)
                                        ; kill: def $l killed $l killed $uhl
	xor	a, l
	ld	l, a
	ld	(iy), l
	ld	hl, _.str.27.478
	jp	.LBB154_116
	.local	.LBB154_59
.LBB154_59:
	ld	hl, 16
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.60:
	ld	a, (iy + 1)
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z13game_buy_toolR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB154_95
; %bb.61:
	ld	hl, _.str.2.453
	jp	.LBB154_130
	.local	.LBB154_62
.LBB154_62:
	ld	hl, 10
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.63:
	ld	a, (iy + 1)
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z25game_toggle_ulc_sacrificeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB154_96
; %bb.64:
	ld	hl, _.str.8.459
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	(hl), 1
	jp	.LBB154_133
	.local	.LBB154_65
.LBB154_65:
	ld	iy, (ix + 18)
	ld	a, (iy + 7)
	bit	1, a
	jp	z, .LBB154_120
; %bb.66:                               ; %_Z13input_pressedRK10InputStatehh.exit5
	bit	1, (iy + 15)
	jp	nz, .LBB154_120
; %bb.67:
	ld	iy, (ix + 9)
	ld	l, (iy + 3)
	ld	a, l
	or	a, a
	jp	z, .LBB154_118
; %bb.68:
	dec	l
	jp	.LBB154_119
	.local	.LBB154_69
.LBB154_69:
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	ld	hl, 6
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 3), b                     ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 3)                     ; 1-byte Folded Reload
	ld	de, 1051
	jp	z, .LBB154_81
; %bb.70:
	ld	hl, (ix + 12)
	add	hl, de
	bit	0, (hl)
	jp	z, .LBB154_81
; %bb.71:
	ld	hl, (ix + 12)
	push	hl
	call	__Z22game_abandon_challengeR9GameState
	pop	hl
	ld	hl, _.str.22.473
	push	hl
	ld	hl, (ix + 9)
	push	hl
	jp	.LBB154_137
	.local	.LBB154_72
.LBB154_72:
	ld	hl, 5
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	ld	(ix - 3), b                     ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	e, (ix - 11)                    ; 1-byte Folded Reload
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	ld	a, (iy + 1)
	bit	0, (ix - 3)                     ; 1-byte Folded Reload
	jp	z, .LBB154_101
; %bb.73:
	cp	a, 3
	jp	z, .LBB154_98
; %bb.74:
	ld	l, 0
	jp	.LBB154_99
	.local	.LBB154_75
.LBB154_75:
	ld	hl, 16
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.76:
	ld	a, (iy + 1)
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z12game_buy_petR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB154_104
; %bb.77:
	ld	hl, _.str.15.466
	jp	.LBB154_130
	.local	.LBB154_78
.LBB154_78:
	ld	hl, 52
	push	hl
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 11), c                    ; 1-byte Folded Spill
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	ld	a, (ix + 24)
	ld	iy, (ix + 9)
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	jp	z, .LBB154_133
; %bb.79:
	ld	l, a
	ld	a, (iy + 1)
                                        ; kill: def $l killed $l def $uhl
	push	hl
	ld	hl, (ix + 21)
	push	hl
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z22systems_primary_actionR9GameState8SystemIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB154_105
; %bb.80:
	ld	hl, _.str.12.463
	jp	.LBB154_130
	.local	.LBB154_81
.LBB154_81:
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	ld	iy, (ix + 9)
	jp	z, .LBB154_133
; %bb.82:
	ld	bc, (ix + 12)
	push	bc
	pop	hl
	add	hl, de
	bit	0, (hl)
	jp	z, .LBB154_106
; %bb.83:
	push	bc
	call	__Z21game_finish_challengeR9GameState
	pop	hl
	bit	0, a
	jp	nz, .LBB154_134
; %bb.84:
	ld	hl, _.str.24.475
	jp	.LBB154_136
	.local	.LBB154_85
.LBB154_85:
	ld	hl, _.str.16.467
	.local	.LBB154_86
.LBB154_86:
	ld	de, (ix + 9)
	push	hl
	push	de
	call	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	.local	.LBB154_87
.LBB154_87:
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	ld	iy, (ix + 9)
	jp	z, .LBB154_133
; %bb.88:
	ld	e, (iy + 1)
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	bc, 5
	call	__imulu
	push	hl
	pop	bc
	ld	hl, (ix + 12)
	add	hl, bc
	ld	bc, 2249
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	z, .LBB154_133
; %bb.89:
	ld	l, e
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z18systems_equip_itemR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB154_109
; %bb.90:
	ld	hl, _.str.19.470
	jp	.LBB154_110
	.local	.LBB154_91
.LBB154_91:
	ld	hl, _.str.4.455
	jp	.LBB154_130
	.local	.LBB154_92
.LBB154_92:
	ld	l, (ix + 24)
	push	hl
	ld	hl, (ix + 21)
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z23systems_generate_tradesR9GameStatem
	jp	.LBB154_113
	.local	.LBB154_93
.LBB154_93:
	cp	a, 3
	jp	nz, .LBB154_34
; %bb.94:
	ld	de, _.str.28.479
	ld	hl, (ix + 6)
	ld	(hl), 1
	push	de
	push	iy
	jp	.LBB154_131
	.local	.LBB154_95
.LBB154_95:
	ld	hl, _.str.1.452
	jp	.LBB154_130
	.local	.LBB154_96
.LBB154_96:
	ld	de, 650
	ld	hl, (ix + 12)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB154_117
; %bb.97:
	ld	hl, _.str.9.460
	jp	.LBB154_130
	.local	.LBB154_98
.LBB154_98:
	ld	l, -1
	.local	.LBB154_99
.LBB154_99:
	bit	0, l
	jr	z, .LBB154_101
; %bb.100:
	ld	(iy), 7
	jp	.LBB154_28
	.local	.LBB154_101
.LBB154_101:
	bit	0, e
	jp	z, .LBB154_133
; %bb.102:
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	ld	l, a
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB154_108
; %bb.103:
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	ld	a, (ix - 3)
	ld	(iy + 5), a
	ld	(iy + 6), 1
	jp	.LBB154_133
	.local	.LBB154_104
.LBB154_104:
	ld	hl, _.str.14.465
	jp	.LBB154_130
	.local	.LBB154_105
.LBB154_105:
	ld	hl, _.str.11.462
	jp	.LBB154_130
	.local	.LBB154_106
.LBB154_106:
	ld	a, (iy + 1)
	ld	l, a
	push	hl
	push	bc
	call	__Z20game_start_challengeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB154_135
; %bb.107:
	ld	hl, _.str.26.477
	jp	.LBB154_136
	.local	.LBB154_108
.LBB154_108:
	ld	hl, _.str.7.458
	jp	.LBB154_130
	.local	.LBB154_109
.LBB154_109:
	ld	hl, _.str.18.469
	.local	.LBB154_110
.LBB154_110:
	ld	de, (ix + 9)
	jr	.LBB154_116
	.local	.LBB154_111
.LBB154_111:
	push	hl
	push	bc
	ld	l, (ix - 3)                     ; 1-byte Folded Reload
	push	hl
	push	de
	call	__Z19systems_start_tradeR9GameStatehm
	.local	.LBB154_112
.LBB154_112:
	pop	hl
	.local	.LBB154_113
.LBB154_113:
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	ld	de, (ix + 9)
	jr	nz, .LBB154_115
; %bb.114:
	ld	hl, _.str.21.472
	jr	.LBB154_116
	.local	.LBB154_115
.LBB154_115:
	ld	hl, _.str.20.471
	.local	.LBB154_116
.LBB154_116:
	push	hl
	push	de
	jp	.LBB154_131
	.local	.LBB154_117
.LBB154_117:
	ld	hl, _.str.10.461
	jp	.LBB154_130
	.local	.LBB154_118
.LBB154_118:
	ld	l, 8
	.local	.LBB154_119
.LBB154_119:
	ld	de, (ix + 9)
	push	de
	pop	iy
	ld	(iy + 3), l
	ld	(iy + 1), 0
	ld	iy, (ix + 18)
	ld	a, (iy + 7)
	.local	.LBB154_120
.LBB154_120:                            ; %_Z13input_pressedRK10InputStatehh.exit5.thread
	bit	2, a
	ld	(ix - 11), c
	ld	iy, (ix + 9)
	jr	nz, .LBB154_122
; %bb.121:                              ; %_Z13input_pressedRK10InputStatehh.exit6.thread
	ld	a, (iy + 3)
	jp	.LBB154_124
	.local	.LBB154_122
.LBB154_122:                            ; %_Z13input_pressedRK10InputStatehh.exit6
	ld	a, (iy + 3)
	lea	de, iy + 0
	ld	iy, (ix + 18)
	bit	2, (iy + 15)
	jp	nz, .LBB154_124
; %bb.123:
	ld.sis	bc, 9
	ld	h, b
	ld	l, a
	inc.sis	hl
	call	__sremu
                                        ; kill: def $hl killed $hl def $uhl
	ld	a, l
	push	de
	pop	iy
	ld	(iy + 3), a
	ld	(iy + 1), b
	jr	.LBB154_125
	.local	.LBB154_124
.LBB154_124:
	ld	l, a
	.local	.LBB154_125
.LBB154_125:
	push	hl
	call	__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId
	ld	e, a
	pop	hl
	ld	(ix - 3), de
	push	de
	ld	hl, (ix + 18)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
	pop	hl
	pop	hl
	pop	hl
	bit	0, (ix - 11)                    ; 1-byte Folded Reload
	ld	iy, (ix + 9)
	jp	z, .LBB154_133
; %bb.126:
	ld	hl, (ix - 3)
	ld	a, l
	or	a, a
	jp	z, .LBB154_133
; %bb.127:
	ld	a, (iy + 3)
	ld	l, (iy + 1)
                                        ; kill: def $l killed $l def $uhl
	push	hl
	ld	l, a
	push	hl
	call	__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__Z16game_buy_upgradeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB154_129
	.local	.LBB154_128
.LBB154_128:
	ld	hl, _.str.6.457
	jr	.LBB154_130
	.local	.LBB154_129
.LBB154_129:
	ld	hl, _.str.5.456
	.local	.LBB154_130
.LBB154_130:
	push	hl
	ld	hl, (ix + 9)
	push	hl
	.local	.LBB154_131
.LBB154_131:
	call	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	.local	.LBB154_132
.LBB154_132:
	pop	hl
	pop	hl
	.local	.LBB154_133
.LBB154_133:
	ld	hl, (ix + 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB154_134
.LBB154_134:
	ld	hl, _.str.23.474
	jr	.LBB154_136
	.local	.LBB154_135
.LBB154_135:
	ld	hl, _.str.25.476
	.local	.LBB154_136
.LBB154_136:
	ld	de, (ix + 9)
	push	hl
	push	de
	.local	.LBB154_137
.LBB154_137:
	call	__ZN12_GLOBAL__N_111set_messageER7UiStatePKc
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	(iy), 1
	ld	(iy + 2), 1
	ld	hl, (ix + 12)
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	__Z22leaf_field_change_areaR9LeafFieldR9GameState
	jr	.LBB154_132
	.local	.Lfunc_end154
.Lfunc_end154:
	.size	__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem, .Lfunc_end154-__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem
	.section	.rodata.__Z15ui_handle_inputR7UiStateR9GameStateR9LeafFieldRK10InputStatem,"a",@progbits
JTI154_0:
	d24	.LBB154_31
	d24	.LBB154_54
	d24	.LBB154_59
	d24	.LBB154_41
	d24	.LBB154_65
	d24	.LBB154_72
	d24	.LBB154_62
	d24	.LBB154_78
	d24	.LBB154_50
	d24	.LBB154_75
	d24	.LBB154_38
	d24	.LBB154_46
	d24	.LBB154_69
	d24	.LBB154_37
	d24	.LBB154_133
	d24	.LBB154_56
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh,"ax",@progbits
	.type	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh,@function ; -- Begin function _ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh: ; @_ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	l, (ix + 12)
	ld	b, 0
	ld	a, l
	or	a, a
	jr	nz, .LBB155_2
; %bb.1:
	ld	(iy + 1), 0
	jr	.LBB155_10
	.local	.LBB155_2
.LBB155_2:
	ld	iy, (ix + 9)
	ld	h, 1
	ld	a, (iy + 7)
	bit	3, a
	jr	z, .LBB155_7
; %bb.3:                                ; %_Z13input_pressedRK10InputStatehh.exit
	bit	3, (iy + 15)
	jr	nz, .LBB155_7
; %bb.4:
	ld	iy, (ix + 6)
	ld	e, (iy + 1)
	ld	a, e
	or	a, a
	ld	a, l
	jr	z, .LBB155_6
; %bb.5:
	ld	a, e
	.local	.LBB155_6
.LBB155_6:
	dec	a
	ld	(iy + 1), a
	ld	iy, (ix + 9)
	ld	a, (iy + 7)
	.local	.LBB155_7
.LBB155_7:                              ; %_Z13input_pressedRK10InputStatehh.exit.thread
	and	a, h
	ld	e, a
	bit	0, e
	jr	z, .LBB155_10
; %bb.8:                                ; %_Z13input_pressedRK10InputStatehh.exit1
	ld	a, (iy + 15)
	and	a, h
	ld	e, a
	bit	0, e
	jr	nz, .LBB155_10
; %bb.9:
	ld	c, l
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	h, 0
	ld	l, a
	inc.sis	hl
	call	__sremu
	ld	a, l
	ld	(iy + 1), a
	.local	.LBB155_10
.LBB155_10:                             ; %_Z13input_pressedRK10InputStatehh.exit1.thread
	pop	ix
	ret
	.local	.Lfunc_end155
.Lfunc_end155:
	.size	__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh, .Lfunc_end155-__ZN12_GLOBAL__N_114move_selectionER7UiStateRK10InputStateh
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId,"ax",@progbits
	.type	__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId,@function ; -- Begin function _ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId
__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId: ; @_ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	bc, 6
	xor	a, a
	ld	(ix - 1), a
	ld	de, 646
	.local	.LBB156_1
.LBB156_1:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jr	z, .LBB156_5
; %bb.2:                                ;   in Loop: Header=BB156_1 Depth=1
	ld	hl, _UPGRADE_DEFS
	add	hl, bc
	ld	a, (hl)
	ld	l, (ix + 6)
	cp	a, l
	ld	l, 1
	jr	z, .LBB156_4
; %bb.3:                                ;   in Loop: Header=BB156_1 Depth=1
	ld	l, 0
	.local	.LBB156_4
.LBB156_4:                              ;   in Loop: Header=BB156_1 Depth=1
	ld	e, (ix - 1)
	ld	a, e
	add	a, l
	ld	e, a
	ld	(ix - 1), e
	push	bc
	pop	hl
	ld	de, 20
	add	hl, de
	push	hl
	pop	bc
	lea	de, iy + 0
	jr	.LBB156_1
	.local	.LBB156_5
.LBB156_5:
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end156
.Lfunc_end156:
	.size	__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId, .Lfunc_end156-__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh,"ax",@progbits
	.type	__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh,@function ; -- Begin function _ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh
__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh: ; @_ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh
; %bb.0:
	ld	hl, -2
	call	__frameset
	ld	a, (ix + 9)
	ld	(ix - 2), a
	ld	a, -1
	ld	l, 0
	ld	(ix - 1), l
	ld	bc, 6
	ld	de, 646
	.local	.LBB157_1
.LBB157_1:                              ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jr	z, .LBB157_7
; %bb.2:                                ;   in Loop: Header=BB157_1 Depth=1
	ld	e, a
	ld	hl, _UPGRADE_DEFS
	add	hl, bc
	ld	a, (hl)
	ld	l, (ix + 6)
	cp	a, l
	jr	nz, .LBB157_5
; %bb.3:                                ;   in Loop: Header=BB157_1 Depth=1
	ld	l, (ix - 2)                     ; 1-byte Folded Reload
	ld	a, l
	or	a, a
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	jr	z, .LBB157_7
; %bb.4:                                ;   in Loop: Header=BB157_1 Depth=1
	dec	l
	ld	(ix - 2), l
	jr	.LBB157_6
	.local	.LBB157_5
.LBB157_5:                              ;   in Loop: Header=BB157_1 Depth=1
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	.local	.LBB157_6
.LBB157_6:                              ;   in Loop: Header=BB157_1 Depth=1
	inc	a
	ld	(ix - 1), a
	push	bc
	pop	hl
	ld	bc, 20
	add	hl, bc
	push	hl
	pop	bc
	ld	a, e
	lea	de, iy + 0
	jr	.LBB157_1
	.local	.LBB157_7
.LBB157_7:                              ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end157
.Lfunc_end157:
	.size	__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh, .Lfunc_end157-__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh
                                        ; -- End function
	.section	.text.__Z7ui_tickR7UiState,"ax",@progbits
	.globl	__Z7ui_tickR7UiState            ; -- Begin function _Z7ui_tickR7UiState
	.type	__Z7ui_tickR7UiState,@function
__Z7ui_tickR7UiState:                   ; @_Z7ui_tickR7UiState
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	l, (iy + 4)
	ld	a, l
	or	a, a
	jr	z, .LBB158_2
; %bb.1:
	dec	l
	ld	(iy + 4), l
	.local	.LBB158_2
.LBB158_2:
	pop	ix
	ret
	.local	.Lfunc_end158
.Lfunc_end158:
	.size	__Z7ui_tickR7UiState, .Lfunc_end158-__Z7ui_tickR7UiState
                                        ; -- End function
	.section	.text.__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm,"ax",@progbits
	.globl	__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm ; -- Begin function _Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm
	.type	__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm,@function
__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm: ; @_Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm
; %bb.0:
	ld	hl, -117
	call	__frameset
	lea	hl, ix - 55
	ld	(ix - 90), hl
	lea	hl, ix - 81
	ld	(ix - 93), hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetColor
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_FillScreen
	ld	iy, (ix + 6)
	pop	hl
	ld	a, (iy)
	cp	a, 19
	jp	nc, .LBB159_235
; %bb.1:
	ld	de, 0
	ld	e, a
	ld	hl, JTI159_0
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB159_2
.LBB159_2:
	ld	de, 1040
	ld	hl, (ix + 9)
	add	hl, de
	ld	(ix - 99), hl
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	iy, _AREA_DEFS
	add	iy, de
	ld	a, (iy + 13)
	ld	(ix - 87), a
	ld	l, a
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 201
	push	hl
	ld	hl, 320
	push	hl
	ld	hl, 24
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	l, 3
	ld	a, (ix - 87)
	add	a, l
	ld	l, a
	ld	e, 15
	ld	a, l
	and	a, e
	ld	l, a
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	de, 225
	ld	iy, 39
	.local	.LBB159_3
.LBB159_3:                              ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jp	nc, .LBB159_138
; %bb.4:                                ;   in Loop: Header=BB159_3 Depth=1
	ld	hl, 320
	push	hl
	push	iy
	or	a, a
	sbc	hl, hl
	push	hl
	ld	(ix - 87), iy
	call	_gfx_HorizLine
	ld	iy, (ix - 87)
	pop	hl
	pop	hl
	pop	hl
	ld	de, 32
	add	iy, de
	ld	de, 225
	jr	.LBB159_3
	.local	.LBB159_5
.LBB159_5:
	ld	hl, _.str.138.565
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	iyl, a
	ld	de, 2406
	ld	hl, (ix + 9)
	add	hl, de
	ld	(ix - 87), hl
	ld	a, (hl)
	ld	e, 1
	and	a, e
	ld	e, a
	bit	0, e
	ld	hl, _.str.141.566
	ld	(ix - 96), hl
	ld	de, _.str.141.566
	jr	z, .LBB159_7
; %bb.6:
	ld	de, _.str.140.567
	.local	.LBB159_7
.LBB159_7:
	ld	bc, 1
	push	bc
	push	de
	ld	hl, _.str.139.568
	push	hl
	ld	a, iyl
	or	a, a
	jp	z, .LBB159_212
; %bb.8:
	ld	hl, 0
	jp	.LBB159_213
	.local	.LBB159_9
.LBB159_9:
	ld	hl, _.str.42.491
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	iyl, 0
	lea	hl, iy + 0
	ld	e, l
	jr	c, .LBB159_11
; %bb.10:
	ld	l, -8
	add	a, l
	ld	e, a
	.local	.LBB159_11
.LBB159_11:
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, e
	ld	a, e
	cp	a, 33
	ld	(ix - 105), e                   ; 1-byte Folded Spill
	jr	nc, .LBB159_13
; %bb.12:
	ld	a, 32
	.local	.LBB159_13
.LBB159_13:
	ld	de, _ACHIEVEMENT_DEFS
	ld	(ix - 96), de
	ld	l, a
	or	a, a
	sbc	hl, bc
	ld	de, 9
	push	hl
	pop	iy
	or	a, a
	sbc	hl, de
	jr	c, .LBB159_15
; %bb.14:
	ld	iy, 9
	.local	.LBB159_15
.LBB159_15:
	ld	(ix - 102), bc
	push	bc
	pop	hl
	ld	bc, 10
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 96)
	add	hl, de
	ld	(ix - 96), hl
	ld	c, b
	ld	(ix - 99), c                    ; 1-byte Folded Spill
	lea	de, iy + 0
	.local	.LBB159_16
.LBB159_16:                             ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, de
	jp	z, .LBB159_24
; %bb.17:                               ;   in Loop: Header=BB159_16 Depth=1
	ld	(ix - 108), de
	push	bc
	pop	de
	ld	iy, (ix + 9)
	ld	bc, 1044
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 111), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	iyl, a
	ld	bc, 1
	ld	a, e
	ld	hl, (ix - 102)
                                        ; kill: def $l killed $l killed $uhl
	call	__lshl
	ld	hl, (ix - 111)
	ld	e, iyl
	call	__land
	call	__lcmpzero
	ld	a, 1
	jr	z, .LBB159_19
; %bb.18:                               ;   in Loop: Header=BB159_16 Depth=1
	ld	a, 0
	.local	.LBB159_19
.LBB159_19:                             ;   in Loop: Header=BB159_16 Depth=1
	ld	iy, (ix + 6)
	ld	l, (iy + 1)
	ld	(ix - 111), l
	ld	hl, (ix - 96)
	ld	iy, (hl)
	bit	0, a
	ld	de, _.str.65.518
	jr	nz, .LBB159_21
; %bb.20:                               ;   in Loop: Header=BB159_16 Depth=1
	ld	de, _.str.129.556
	.local	.LBB159_21
.LBB159_21:                             ;   in Loop: Header=BB159_16 Depth=1
	ld	a, (ix - 105)
	ld	l, (ix - 99)
	add	a, l
	ld	l, a
	ld	bc, 1
	push	bc
	push	de
	push	iy
	ld	l, (ix - 111)
	cp	a, l
	ld	hl, -1
	jr	z, .LBB159_23
; %bb.22:                               ;   in Loop: Header=BB159_16 Depth=1
	ld	hl, 0
	.local	.LBB159_23
.LBB159_23:                             ;   in Loop: Header=BB159_16 Depth=1
	push	hl
	ld	l, (ix - 99)                    ; 1-byte Folded Reload
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 96)
	lea	iy, iy + 10
	ld	(ix - 96), iy
	inc	(ix - 99)
	ld	hl, (ix - 102)
	inc	hl
	ld	(ix - 102), hl
	ld	de, (ix - 108)
	dec	de
	ld	iyl, 0
	lea	bc, iy + 0
	jp	.LBB159_16
	.local	.LBB159_24
.LBB159_24:
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.130.557
	jp	.LBB159_233
	.local	.LBB159_25
.LBB159_25:
	ld	hl, _.str.39.488
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	bc, 0
	.local	.LBB159_26
.LBB159_26:                             ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 8
	or	a, a
	sbc	hl, de
	jp	z, .LBB159_37
; %bb.27:                               ;   in Loop: Header=BB159_26 Depth=1
	ld	(ix - 87), bc
	push	bc
	pop	hl
	ld	bc, 5
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 9)
	add	hl, de
	push	hl
	pop	iy
	ld	de, 2248
	add	iy, de
	ld	(ix - 96), hl
	inc	de
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	nz, .LBB159_29
; %bb.28:                               ;   in Loop: Header=BB159_26 Depth=1
	ld	iy, (ix - 87)
	inc	iy
	ld	(ix - 96), iy
	push	iy
	ld	hl, _.str.108.537
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.109.538
	ld	a, (hl)
	ld	hl, (ix - 93)
	ld	(hl), a
	ld	a, (_.str.109.538+1)
	ld	(ix - 80), a
	ld	a, (_.str.109.538+2)
	ld	(ix - 79), a
	jr	.LBB159_32
	.local	.LBB159_29
.LBB159_29:                             ;   in Loop: Header=BB159_26 Depth=1
	ld	a, (iy)
	ld	de, 0
	ld	(ix - 99), de
	ld	(ix - 102), hl
	ex	de, hl
	ld	l, a
	inc	hl
	push	hl
	ld	hl, _.str.110.539
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 102)
	ld	a, (hl)
	ld	de, 0
	ld	e, a
	ld	iy, (ix - 96)
	lea	hl, iy + 0
	ld	bc, 2251
	add	hl, bc
	ld	a, (hl)
	ld	hl, (ix - 99)
	ld	l, a
	ld	(ix - 99), hl
	inc	bc
	add	iy, bc
	bit	0, (iy)
	ld	hl, _.str.112.540
	jr	nz, .LBB159_31
; %bb.30:                               ;   in Loop: Header=BB159_26 Depth=1
	ld	hl, _.str.113.541
	.local	.LBB159_31
.LBB159_31:                             ;   in Loop: Header=BB159_26 Depth=1
	ld	bc, (ix - 87)
	inc	bc
	ld	(ix - 96), bc
	push	hl
	ld	hl, (ix - 99)
	push	hl
	push	de
	ld	hl, _.str.111.542
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, (ix - 93)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB159_32
.LBB159_32:                             ;   in Loop: Header=BB159_26 Depth=1
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 99), hl
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 2048
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	ld	hl, -1
	jr	nz, .LBB159_34
; %bb.33:                               ;   in Loop: Header=BB159_26 Depth=1
	ld	hl, 0
	.local	.LBB159_34
.LBB159_34:                             ;   in Loop: Header=BB159_26 Depth=1
	push	hl
	ld	hl, (ix - 93)
	push	hl
	ld	hl, (ix - 90)
	push	hl
	ld	de, (ix - 87)
	push	de
	pop	hl
	ld	bc, (ix - 99)
	or	a, a
	sbc	hl, bc
	ld	hl, -1
	jr	z, .LBB159_36
; %bb.35:                               ;   in Loop: Header=BB159_26 Depth=1
	ld	hl, 0
	.local	.LBB159_36
.LBB159_36:                             ;   in Loop: Header=BB159_26 Depth=1
	push	hl
	push	de
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 96)
	jp	.LBB159_26
	.local	.LBB159_37
.LBB159_37:
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.114.543
	jp	.LBB159_233
	.local	.LBB159_38
.LBB159_38:
	ld	hl, _.str.33.482
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	l, 0
	ld	c, l
	jr	c, .LBB159_40
; %bb.39:
	ld	l, -8
	add	a, l
	ld	c, a
	.local	.LBB159_40
.LBB159_40:
	or	a, a
	sbc	hl, hl
	push	hl
	pop	de
	ld	e, c
	ld	a, c
	cp	a, 79
	ld	(ix - 108), c                   ; 1-byte Folded Spill
	jr	nc, .LBB159_42
; %bb.41:
	ld	c, 78
	.local	.LBB159_42
.LBB159_42:
	ld	iy, 14
	ld	l, c
	or	a, a
	sbc	hl, de
	ld	bc, 9
	ld	(ix - 96), hl
	or	a, a
	sbc	hl, bc
	jr	c, .LBB159_44
; %bb.43:
	ld	hl, 9
	ld	(ix - 96), hl
	.local	.LBB159_44
.LBB159_44:
	ex	de, hl
	lea	bc, iy + 0
	call	__imulu
	ex	de, hl
	ld	hl, _AREA_DEFS
	push	hl
	pop	iy
	add	iy, de
	lea	iy, iy + 6
	ld	l, 0
	ld	(ix - 87), l                    ; 1-byte Folded Spill
	ld	bc, (ix - 96)
	.local	.LBB159_45
.LBB159_45:                             ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, bc
	ld	de, 0
	jp	z, .LBB159_59
; %bb.46:                               ;   in Loop: Header=BB159_45 Depth=1
	ld	(ix - 96), bc
	ld	(ix - 99), iy
	ld	a, (iy + 6)
	ld	iy, (ix + 9)
	ld	bc, 1018
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 105), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 111), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 114), hl
	ld	l, 0
	ld	c, l
	ld	(ix - 83), c
	ld	hl, (ix - 85)
	ld	h, c
	ld	(ix - 102), a                   ; 1-byte Folded Spill
	ld	l, a
	push	hl
	ld	hl, 1
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 114)
	push	iy
	ld	iy, (ix - 111)
	push	iy
	ld	iy, (ix - 105)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	ld	l, -1
	jr	nz, .LBB159_48
; %bb.47:                               ;   in Loop: Header=BB159_45 Depth=1
	ld	l, 0
	.local	.LBB159_48
.LBB159_48:                             ;   in Loop: Header=BB159_45 Depth=1
	ld	a, (ix - 108)
	ld	e, (ix - 87)
	add	a, e
	ld	e, a
	ld	a, (ix - 102)                   ; 1-byte Folded Reload
	cp	a, 64
                                        ; kill: def $a killed $a
	sbc	a, a
	and	a, l
	ld	l, a
	ld	(ix - 105), l
	ld	(ix - 102), de
	push	de
	ld	hl, (ix + 9)
	push	hl
	call	__Z18game_area_unlockedRK9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB159_52
; %bb.49:                               ;   in Loop: Header=BB159_45 Depth=1
	ld	hl, (ix + 9)
	ld	de, 1040
	add	hl, de
	ld	l, (hl)
	ld	de, (ix - 102)
	ld	a, e
	cp	a, l
	ld	hl, _.str.64.517
	ld	de, (ix - 90)
	ld	bc, _.str.59.514
	jr	z, .LBB159_51
; %bb.50:                               ;   in Loop: Header=BB159_45 Depth=1
	ld	hl, _.str.65.518
	.local	.LBB159_51
.LBB159_51:                             ;   in Loop: Header=BB159_45 Depth=1
	push	hl
	push	bc
	ld	hl, 24
	push	hl
	push	de
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	jr	.LBB159_56
	.local	.LBB159_52
.LBB159_52:                             ;   in Loop: Header=BB159_45 Depth=1
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	bit	0, a
	jr	z, .LBB159_54
; %bb.53:                               ;   in Loop: Header=BB159_45 Depth=1
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 99)
	ld	bc, 6
	ldir
	ld	hl, (ix - 90)
	ld	(iy + 6), hl
	ld	hl, 24
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB159_55
	.local	.LBB159_54
.LBB159_54:                             ;   in Loop: Header=BB159_45 Depth=1
	ld	de, (ix - 90)
	ld	hl, _.str.62.515
	ld	bc, 7
	ldir
	.local	.LBB159_55
.LBB159_55:                             ;   in Loop: Header=BB159_45 Depth=1
	ld	iy, (ix + 6)
	.local	.LBB159_56
.LBB159_56:                             ;   in Loop: Header=BB159_45 Depth=1
	ld	l, (iy + 1)
	ld	iy, (ix - 99)
	ld	de, (iy - 6)
	ld	c, a
	push	bc
	ld	bc, (ix - 90)
	push	bc
	push	de
	ld	de, (ix - 102)
	ld	a, e
	cp	a, l
	ld	hl, -1
	jr	z, .LBB159_58
; %bb.57:                               ;   in Loop: Header=BB159_45 Depth=1
	ld	hl, 0
	.local	.LBB159_58
.LBB159_58:                             ;   in Loop: Header=BB159_45 Depth=1
	push	hl
	ld	l, (ix - 87)                    ; 1-byte Folded Reload
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 99)
	lea	iy, iy + 14
	inc	(ix - 87)
	ld	bc, (ix - 96)
	dec	bc
	jp	.LBB159_45
	.local	.LBB159_59
.LBB159_59:
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.66.519
	jp	.LBB159_233
	.local	.LBB159_60
.LBB159_60:
	ld	hl, _.str.40.489
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	de, 2288
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, 1
	ld	c, h
	.local	.LBB159_61
.LBB159_61:                             ; =>This Inner Loop Header: Depth=1
	ld	(ix - 96), hl
	ld	de, 4
	or	a, a
	sbc	hl, de
	jp	z, .LBB159_76
; %bb.62:                               ;   in Loop: Header=BB159_61 Depth=1
	ld	(ix - 99), iy
	ld	(ix - 87), bc
	push	bc
	ld	hl, (ix + 9)
	push	hl
	call	__Z21systems_trade_presentRK9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB159_69
; %bb.63:                               ;   in Loop: Header=BB159_61 Depth=1
	ld	hl, (ix - 99)
	ld	a, (hl)
	ld	de, 0
	ld	e, a
	push	de
	pop	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	pop	bc
	ld	hl, _RESOURCE_DEFS
	push	hl
	pop	iy
	add	iy, bc
	ld	bc, (iy + 3)
	ld	iy, (ix - 99)
	ld	a, (iy + 1)
	ld	e, a
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	iy, _RESOURCE_DEFS
	add	iy, de
	ld	hl, (iy + 3)
	push	hl
	push	bc
	ld	hl, _.str.117.545
	push	hl
	ld	hl, 28
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	ld	iy, (ix - 99)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, (iy + 18)
	jp	z, .LBB159_70
; %bb.64:                               ;   in Loop: Header=BB159_61 Depth=1
	ld	hl, (iy + 14)
	or	a, a
	ld	de, (ix + 15)
	sbc	hl, de
	ld	a, (iy + 17)
	sbc	a, (ix + 18)
	ld	e, a
                                        ; kill: def $a killed $a
	sbc	a, a
	bit	0, a
	ld	bc, 0
	jr	nz, .LBB159_66
; %bb.65:                               ;   in Loop: Header=BB159_61 Depth=1
	push	hl
	pop	bc
	.local	.LBB159_66
.LBB159_66:                             ;   in Loop: Header=BB159_61 Depth=1
	bit	0, a
	ld	a, 0
	ld	l, a
	jr	nz, .LBB159_68
; %bb.67:                               ;   in Loop: Header=BB159_61 Depth=1
	ld	l, e
	.local	.LBB159_68
.LBB159_68:                             ;   in Loop: Header=BB159_61 Depth=1
	push	hl
	push	bc
	ld	hl, _.str.118.546
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 93)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB159_71
	.local	.LBB159_69
.LBB159_69:                             ;   in Loop: Header=BB159_61 Depth=1
	ld	hl, (ix - 96)
	push	hl
	ld	hl, _.str.115.544
	push	hl
	ld	hl, 28
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 5719374
	ld	(ix - 81), hl
	ld	(ix - 78), 0
	jr	.LBB159_71
	.local	.LBB159_70
.LBB159_70:                             ;   in Loop: Header=BB159_61 Depth=1
	ld	de, (ix - 93)
	ld	hl, _.str.119.547
	ld	bc, 6
	ldir
	.local	.LBB159_71
.LBB159_71:                             ;   in Loop: Header=BB159_61 Depth=1
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 102), hl
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	lea	bc, iy + 0
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 1024
	push	iy
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, h
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	ld	de, -1
	jr	nz, .LBB159_73
; %bb.72:                               ;   in Loop: Header=BB159_61 Depth=1
	ld	de, 0
	.local	.LBB159_73
.LBB159_73:                             ;   in Loop: Header=BB159_61 Depth=1
	ld	hl, (ix - 96)
	dec	hl
	push	de
	ld	de, (ix - 93)
	push	de
	ld	de, (ix - 90)
	push	de
	ld	de, (ix - 102)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	ld	de, (ix - 87)
	jr	z, .LBB159_75
; %bb.74:                               ;   in Loop: Header=BB159_61 Depth=1
	ld	hl, 0
	.local	.LBB159_75
.LBB159_75:                             ;   in Loop: Header=BB159_61 Depth=1
	push	hl
	push	de
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	ld	bc, (ix - 87)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 99)
	lea	iy, iy + 20
	ld	hl, (ix - 96)
	inc	hl
	inc	c
	jp	.LBB159_61
	.local	.LBB159_76
.LBB159_76:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 111
	push	hl
	ld	hl, 28
	push	hl
	ld	hl, _.str.120.548
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.121.549
	jp	.LBB159_233
	.local	.LBB159_77
.LBB159_77:
	ld	hl, _.str.30.534
	push	hl
	ld	hl, 6
	jp	.LBB159_154
	.local	.LBB159_78
.LBB159_78:
	ld	hl, _RESOURCE_DEFS
	ld	(ix - 99), hl
	ld	hl, _.str.55.508
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	l, 0
	ld	e, l
	jr	c, .LBB159_80
; %bb.79:
	ld	l, -8
	add	a, l
	ld	e, a
	.local	.LBB159_80
.LBB159_80:
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	(ix - 102), hl
	ld	bc, 6
	call	__imulu
	ex	de, hl
	ld	iy, (ix + 9)
	add	iy, de
	lea	hl, iy + 2
	ld	(ix - 108), hl
	ld	iy, (ix - 102)
	lea	hl, iy + 0
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl, (ix - 99)
	add	hl, de
	ld	(ix - 99), hl
	ld	de, 9
	ld	bc, 0
	ld	l, b
	ld	(ix - 87), hl
	.local	.LBB159_81
.LBB159_81:                             ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	add	hl, bc
	ld	(ix - 105), hl
	ld	(ix - 96), bc
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	de, _.str.57.510
	ex	de, hl
	jp	nc, .LBB159_86
; %bb.82:                               ;   in Loop: Header=BB159_81 Depth=1
	push	hl
	pop	iy
	ld	hl, (ix - 105)
	ld	bc, 74
	or	a, a
	sbc	hl, bc
	lea	hl, iy + 0
	jp	nc, .LBB159_86
; %bb.83:                               ;   in Loop: Header=BB159_81 Depth=1
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 108)
	ld	bc, 6
	ldir
	ld	hl, (ix - 90)
	ld	(iy + 6), hl
	ld	hl, 22
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	de, 0
	ld	e, a
	ld	hl, (ix - 99)
	ld	hl, (hl)
	ld	bc, 1
	push	bc
	ld	bc, (ix - 90)
	push	bc
	push	hl
	ld	hl, (ix - 105)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	jr	z, .LBB159_85
; %bb.84:                               ;   in Loop: Header=BB159_81 Depth=1
	ld	hl, 0
	.local	.LBB159_85
.LBB159_85:                             ;   in Loop: Header=BB159_81 Depth=1
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 96)
	inc	bc
	inc	(ix - 87)
	ld	iy, (ix - 108)
	lea	iy, iy + 6
	ld	(ix - 108), iy
	ld	iy, (ix - 99)
	lea	iy, iy + 8
	ld	(ix - 99), iy
	ld	iy, (ix - 102)
	ld	de, 9
	jp	.LBB159_81
	.local	.LBB159_86
.LBB159_86:
	push	hl
	ld	hl, _.str.56.509
	jp	.LBB159_233
	.local	.LBB159_87
.LBB159_87:
	ld	hl, _.str.43.492
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	de, 2366
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 96), hl
	lea	iy, iy + 3
	ld	e, (iy)
	ld	(ix - 99), e
	ld	bc, 3600
	ld	iyl, 0
	ld	a, iyl
	call	__ldivu
	ld	(ix - 102), hl
                                        ; kill: def $e killed $e def $ude
	ld	(ix - 105), de
	ld	hl, (ix - 96)
	ld	e, (ix - 99)                    ; 1-byte Folded Reload
	ld	bc, 60
	ld	a, iyl
	call	__ldivu
	ld	(ix - 114), hl
	ld	(ix - 111), e
	ld	a, iyl
	call	__lremu
	push	hl
	pop	iy
                                        ; kill: def $e killed $e def $ude
	ld	(ix - 108), de
	ld	hl, (ix - 114)
	ld	e, (ix - 111)                   ; 1-byte Folded Reload
	ld	bc, -60
	ld	a, b
	call	__lmulu
	ld	bc, (ix - 96)
	ld	a, (ix - 99)                    ; 1-byte Folded Reload
	call	__ladd
                                        ; kill: def $e killed $e def $ude
	push	de
	push	hl
	ld	hl, (ix - 108)
	push	hl
	push	iy
	ld	hl, (ix - 105)
	push	hl
	ld	hl, (ix - 102)
	push	hl
	ld	hl, _.str.131.558
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	ld	hl, 27
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 44
	push	hl
	ld	hl, 18
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2382
	ld	hl, (ix + 9)
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	push	de
	ld	hl, _.str.132.559
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 66
	push	hl
	ld	hl, 18
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2384
	ld	hl, (ix + 9)
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	push	de
	ld	hl, _.str.133.560
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 88
	push	hl
	ld	hl, 18
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2386
	ld	bc, (ix + 9)
	push	bc
	pop	iy
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
	ld	bc, 0
	ld	c, l
	ld	b, h
	ld	de, 2388
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	push	de
	push	bc
	ld	hl, _.str.134.561
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 110
	push	hl
	ld	hl, 18
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2390
	ld	iy, (ix + 9)
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
	ld	bc, 0
	ld	c, l
	ld	b, h
	ld	de, 2392
	lea	hl, iy + 0
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	push	de
	push	bc
	ld	hl, _.str.135.562
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 132
	push	hl
	ld	hl, 18
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 1018
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 99), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 102), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 105), hl
	ld	iyl, 0
	push	af
	ld	a, iyl
	ld	(ix - 96), a                    ; 1-byte Folded Spill
	pop	af
	ld	a, iyl
	ld	de, 0
	.local	.LBB159_88
.LBB159_88:                             ; =>This Inner Loop Header: Depth=1
	ld.sis	bc, 0
	cp	a, 52
	jp	z, .LBB159_92
; %bb.89:                               ;   in Loop: Header=BB159_88 Depth=1
	push	af
	ld	a, iyl
	ld	(ix - 84), a
	pop	af
	ld	hl, (ix - 86)
	ex	de, hl
	ld	d, iyl
	ex	de, hl
	ld	(ix - 108), a                   ; 1-byte Folded Spill
	ld	l, a
	push	hl
	ld	hl, 1
	call	__llshl
                                        ; kill: def $bc killed $bc def $ubc
	pop	iy
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 99)
	ld	de, (ix - 102)
	ld	bc, (ix - 105)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	ld	l, 1
	jr	nz, .LBB159_91
; %bb.90:                               ;   in Loop: Header=BB159_88 Depth=1
	ld	l, 0
	.local	.LBB159_91
.LBB159_91:                             ;   in Loop: Header=BB159_88 Depth=1
	ld	e, (ix - 96)
	ld	a, e
	add	a, l
	ld	e, a
	ld	(ix - 96), e
	ld	a, (ix - 108)                   ; 1-byte Folded Reload
	inc	a
	ld	de, 0
	ld	c, d
	push	bc
	pop	iy
	jp	.LBB159_88
	.local	.LBB159_92
.LBB159_92:
	or	a, a
	sbc	hl, hl
	ld	l, (ix - 96)                    ; 1-byte Folded Reload
	ld	de, 52
	push	de
	push	hl
	ld	hl, _.str.136.563
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 154
	push	hl
	ld	hl, 18
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.137.564
	jp	.LBB159_233
	.local	.LBB159_93
.LBB159_93:
	ld	hl, _.str.58.511
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	iyl, 0
	ld	e, iyl
	jr	c, .LBB159_95
; %bb.94:
	ld	l, -8
	add	a, l
	ld	e, a
	.local	.LBB159_95
.LBB159_95:
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, e
	ld	(ix - 96), bc
	ld	a, e
	cp	a, 17
	ld	(ix - 111), e                   ; 1-byte Folded Spill
	jr	nc, .LBB159_97
; %bb.96:
	ld	e, 16
	.local	.LBB159_97
.LBB159_97:
	ld	l, e
	ld	de, (ix - 96)
	or	a, a
	sbc	hl, de
	ld	de, 9
	ld	(ix - 99), hl
	or	a, a
	sbc	hl, de
	ld	bc, _.str.57.510
	jr	c, .LBB159_99
; %bb.98:
	ld	hl, 9
	ld	(ix - 99), hl
	.local	.LBB159_99
.LBB159_99:
	ld	hl, (ix - 96)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl, _TOOL_DEFS
	add	hl, de
	push	af
	ld	a, iyl
	ld	(ix - 87), a                    ; 1-byte Folded Spill
	pop	af
	push	hl
	pop	iy
	ld	de, (ix - 99)
	.local	.LBB159_100
.LBB159_100:                            ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, de
	jp	z, .LBB159_115
; %bb.101:                              ;   in Loop: Header=BB159_100 Depth=1
	ld	(ix - 99), de
	ld	(ix - 102), iy
	ld	c, (iy + 15)
	ld	iy, (ix + 9)
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 108), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 114), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 117), hl
	xor	a, a
	ld	(ix - 82), a
	ld	hl, (ix - 84)
	ld	h, a
	ld	(ix - 105), c                   ; 1-byte Folded Spill
	ld	l, c
	push	hl
	ld	hl, 1
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 117)
	push	iy
	ld	iy, (ix - 114)
	push	iy
	ld	iy, (ix - 108)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	ld	l, -1
	jr	nz, .LBB159_103
; %bb.102:                              ;   in Loop: Header=BB159_100 Depth=1
	ld	l, 0
	.local	.LBB159_103
.LBB159_103:                            ;   in Loop: Header=BB159_100 Depth=1
	ld	a, (ix - 111)
	ld	e, (ix - 87)
	add	a, e
	ld	e, a
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	cp	a, 64
                                        ; kill: def $a killed $a
	sbc	a, a
	and	a, l
	ld	l, a
	ld	(ix - 105), l
	ld	(ix - 108), e                   ; 1-byte Folded Spill
	ld	a, e
	cp	a, 16
	ld	iy, _.str.62.515
	jp	nc, .LBB159_105
; %bb.104:                              ; %_Z18game_tool_unlockedRK9GameStateh.exit
                                        ;   in Loop: Header=BB159_100 Depth=1
	ld	hl, (ix - 96)
	ld	bc, 15
	call	__iand
	push	hl
	pop	bc
	ld	hl, (ix + 9)
	ld	de, 1036
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	hl, 1
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB159_109
	.local	.LBB159_105
.LBB159_105:                            ; %_Z18game_tool_unlockedRK9GameStateh.exit.thread
                                        ;   in Loop: Header=BB159_100 Depth=1
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	bit	0, a
	jr	z, .LBB159_107
; %bb.106:                              ;   in Loop: Header=BB159_100 Depth=1
	ld	iy, (ix - 102)
	lea	hl, iy + 4
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	bc, 6
	ldir
	ld	hl, (ix - 90)
	ld	(iy + 6), hl
	ld	hl, 24
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB159_108
	.local	.LBB159_107
.LBB159_107:                            ;   in Loop: Header=BB159_100 Depth=1
	ld	de, (ix - 90)
	lea	hl, iy + 0
	ld	bc, 7
	ldir
	.local	.LBB159_108
.LBB159_108:                            ;   in Loop: Header=BB159_100 Depth=1
	ld	iy, (ix + 6)
	jr	.LBB159_112
	.local	.LBB159_109
.LBB159_109:                            ;   in Loop: Header=BB159_100 Depth=1
	ld	hl, (ix + 9)
	ld	de, 1041
	add	hl, de
	ld	l, (hl)
	ld	a, (ix - 108)                   ; 1-byte Folded Reload
	cp	a, l
	ld	hl, _.str.60.512
	ld	de, (ix - 90)
	ld	bc, 24
	jr	z, .LBB159_111
; %bb.110:                              ;   in Loop: Header=BB159_100 Depth=1
	ld	hl, _.str.61.513
	.local	.LBB159_111
.LBB159_111:                            ;   in Loop: Header=BB159_100 Depth=1
	push	hl
	ld	hl, _.str.59.514
	push	hl
	push	bc
	push	de
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	.local	.LBB159_112
.LBB159_112:                            ;   in Loop: Header=BB159_100 Depth=1
	ld	l, (iy + 1)
	ex	de, hl
	ld	iyl, e
	ex	de, hl
	ld	hl, (ix - 102)
	ld	de, (hl)
	ld	c, a
	push	bc
	ld	bc, (ix - 90)
	push	bc
	push	de
	ld	a, (ix - 108)                   ; 1-byte Folded Reload
	cp	a, iyl
	ld	hl, -1
	jr	z, .LBB159_114
; %bb.113:                              ;   in Loop: Header=BB159_100 Depth=1
	ld	hl, 0
	.local	.LBB159_114
.LBB159_114:                            ;   in Loop: Header=BB159_100 Depth=1
	push	hl
	ld	l, (ix - 87)                    ; 1-byte Folded Reload
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 96)
	inc	hl
	ld	(ix - 96), hl
	ld	iy, (ix - 102)
	lea	iy, iy + 16
	inc	(ix - 87)
	ld	de, (ix - 99)
	dec	de
	ld	bc, _.str.57.510
	jp	.LBB159_100
	.local	.LBB159_115
.LBB159_115:
	push	bc
	ld	hl, _.str.63.516
	jp	.LBB159_233
	.local	.LBB159_116
.LBB159_116:
	ld	hl, _.str.87.525
	ld	de, __ZN12_GLOBAL__N_119ULC_SACRIFICE_NAMESE
	ld	(ix - 99), de
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	l, 0
	ld	c, l
	jr	c, .LBB159_118
; %bb.117:
	ld	l, -8
	add	a, l
	ld	c, a
	.local	.LBB159_118
.LBB159_118:
	ld	de, 650
	ld	iy, (ix + 9)
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 102), hl
	lea	hl, iy + 3
	ld	a, (hl)
	ld	de, 0
	ld	e, c
	push	de
	pop	hl
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, (ix - 99)
	add	hl, bc
	ld	(ix - 99), hl
	ld	bc, 0
	ld	l, b
	ld	(ix - 87), hl
	.local	.LBB159_119
.LBB159_119:                            ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	add	iy, bc
	ld	(ix - 96), bc
	push	bc
	pop	hl
	ld	bc, 9
	or	a, a
	sbc	hl, bc
	push	de
	pop	bc
	jp	nc, .LBB159_128
; %bb.120:                              ;   in Loop: Header=BB159_119 Depth=1
	lea	hl, iy + 0
	ld	de, 10
	or	a, a
	sbc	hl, de
	jp	nc, .LBB159_128
; %bb.121:                              ;   in Loop: Header=BB159_119 Depth=1
	ld	(ix - 108), bc
	ld	hl, (ix - 102)
	ld	e, a
	call	__lcmpzero
	ld	l, 1
                                        ; kill: def $l killed $l def $uhl
	jp	nz, .LBB159_123
; %bb.122:                              ;   in Loop: Header=BB159_119 Depth=1
	ld	l, 0
                                        ; kill: def $l killed $l def $uhl
	.local	.LBB159_123
.LBB159_123:                            ;   in Loop: Header=BB159_119 Depth=1
	ld	(ix - 114), hl
	ld	hl, (ix + 9)
	ld	de, 2398
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	push	de
	pop	bc
	ld	c, l
	ld	b, h
	ld	(ix - 105), bc
	ld	hl, 1
	ld	(ix - 111), iy
	ld	c, iyl
	call	__ishl
	ld	bc, (ix - 105)
	call	__iand
	ld	iy, (ix + 6)
	ld	e, (iy + 1)
	ld	(ix - 117), de
	ld	iy, (ix - 99)
	ld	de, (iy)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	ld	hl, _.str.89.526
	jr	z, .LBB159_125
; %bb.124:                              ;   in Loop: Header=BB159_119 Depth=1
	ld	hl, _.str.88.527
	.local	.LBB159_125
.LBB159_125:                            ;   in Loop: Header=BB159_119 Depth=1
	ld	(ix - 105), a                   ; 1-byte Folded Spill
	ld	bc, (ix - 114)
	push	bc
	push	hl
	push	de
	ld	hl, (ix - 111)
	ld	de, (ix - 117)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	ld	de, (ix - 87)
	jr	z, .LBB159_127
; %bb.126:                              ;   in Loop: Header=BB159_119 Depth=1
	ld	hl, 0
	.local	.LBB159_127
.LBB159_127:                            ;   in Loop: Header=BB159_119 Depth=1
	push	hl
	push	de
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 96)
	inc	bc
	inc	(ix - 87)
	ld	iy, (ix - 99)
	lea	iy, iy + 3
	ld	(ix - 99), iy
	ld	a, (ix - 105)                   ; 1-byte Folded Reload
	ld	de, (ix - 108)
	jp	.LBB159_119
	.local	.LBB159_128
.LBB159_128:
	ld	hl, (ix - 102)
	ld	e, a
	call	__lcmpzero
	jp	nz, .LBB159_227
; %bb.129:
	ld	a, 0
	jp	.LBB159_228
	.local	.LBB159_130
.LBB159_130:
	ld	hl, _.str.51.504
	ld	de, __ZN12_GLOBAL__N_112MENU_ENTRIESE
	ld	(ix - 99), de
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	iyl, 0
	lea	hl, iy + 0
	ld	(ix - 87), hl
                                        ; kill: def $l killed $l killed $uhl
	jr	c, .LBB159_132
; %bb.131:
	ld	l, -8
	add	a, l
	ld	l, a
	.local	.LBB159_132
.LBB159_132:
	ld	iy, 0
	ex	de, hl
	ld	iyl, e
	ex	de, hl
	lea	hl, iy + 0
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl, (ix - 99)
	add	hl, de
	ld	(ix - 99), hl
	ld	de, 9
	ld	bc, 0
	ld	(ix - 102), iy
	.local	.LBB159_133
.LBB159_133:                            ; =>This Inner Loop Header: Depth=1
	add	iy, bc
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	nc, .LBB159_145
; %bb.134:                              ;   in Loop: Header=BB159_133 Depth=1
	lea	hl, iy + 0
	ld	de, 17
	or	a, a
	sbc	hl, de
	jp	nc, .LBB159_145
; %bb.135:                              ;   in Loop: Header=BB159_133 Depth=1
	ld	(ix - 96), bc
	ld	(ix - 105), iy
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	de, 0
	ld	e, a
	ld	hl, (ix - 99)
	ld	hl, (hl)
	ld	bc, 1
	push	bc
	ld	bc, _.str.52.505
	push	bc
	push	hl
	ld	hl, (ix - 105)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	jr	z, .LBB159_137
; %bb.136:                              ;   in Loop: Header=BB159_133 Depth=1
	ld	hl, 0
	.local	.LBB159_137
.LBB159_137:                            ;   in Loop: Header=BB159_133 Depth=1
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 96)
	inc	bc
	inc	(ix - 87)
	ld	iy, (ix - 99)
	lea	iy, iy + 4
	ld	(ix - 99), iy
	ld	iy, (ix - 102)
	ld	de, 9
	jr	.LBB159_133
	.local	.LBB159_138
.LBB159_138:
	ld	hl, (ix - 99)
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	iy, _AREA_DEFS
	add	iy, de
	ld	a, (iy + 3)
	cp	a, 57
	jr	nz, .LBB159_140
; %bb.139:
	ld	hl, 7
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 133
	push	hl
	ld	hl, 38
	push	hl
	ld	hl, 65
	push	hl
	ld	hl, 278
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 125
	push	hl
	ld	hl, 30
	push	hl
	ld	hl, 69
	push	hl
	ld	hl, 282
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 119
	push	hl
	ld	hl, 285
	push	hl
	ld	hl, _.str.48.501
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB159_140
.LBB159_140:                            ; %.preheader
	ld	iy, 864
	ld	a, 12
	ld	de, 0
	.local	.LBB159_141
.LBB159_141:                            ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	lea	bc, iy + 0
	or	a, a
	sbc	hl, bc
	jp	z, .LBB159_146
; %bb.142:                              ;   in Loop: Header=BB159_141 Depth=1
	ld	iy, (ix + 12)
	add	iy, de
	bit	0, (iy + 11)
	jp	z, .LBB159_144
; %bb.143:                              ;   in Loop: Header=BB159_141 Depth=1
	ld	hl, (iy)
	ld	(ix - 87), hl
                                        ; kill: def $hl killed $hl killed $uhl
	add.sis	hl, hl
	sbc.sis	hl, hl
	ld	(ix - 96), de
	ld	c, a
	call	__sshru
	ex.sis	de, hl
	ld	hl, (ix - 87)
	add.sis	hl, de
                                        ; kill: def $hl killed $hl killed $uhl
	ld	b, 4
	ld	c, b
	call	__sshrs
	ex.sis	de, hl
	ld	a, d
	rlc	a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	ld	(ix - 102), hl
	ld	de, (iy + 2)
	ld	l, e
	ld	h, d
	add.sis	hl, hl
	sbc.sis	hl, hl
	ld	c, 12
	call	__sshru
	ld	c, l
	ld	b, h
	ex	de, hl
	add.sis	hl, bc
                                        ; kill: def $hl killed $hl killed $uhl
	ld	c, 4
	call	__sshrs
	ex.sis	de, hl
	ld	a, d
	rlc	a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	ld	(ix - 105), hl
	ld	a, (iy + 9)
	ld	l, a
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	iy, (ix - 105)
	lea	hl, iy + 0
	ld	de, -3
	add	hl, de
	ld	(ix - 108), hl
	ld	bc, (ix - 102)
	push	bc
	pop	hl
	dec	de
	add	hl, de
	ld	(ix - 111), hl
	lea	hl, iy + 0
	ld	de, 2
	add	hl, de
	ld	(ix - 114), hl
	ld	(ix - 87), bc
	push	bc
	pop	de
	ld	hl, 3
	push	hl
	pop	bc
	ld	hl, (ix - 87)
	add	hl, bc
	ld	(ix - 87), hl
	add	iy, bc
	push	iy
	push	hl
	ld	hl, (ix - 114)
	push	hl
	ld	hl, (ix - 111)
	push	hl
	ld	hl, (ix - 108)
	push	hl
	push	de
	call	_gfx_FillTriangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 4
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, (ix - 105)
	push	hl
	pop	iy
	inc	iy
	ld	de, 5
	add	hl, de
	push	hl
	ld	hl, (ix - 87)
	push	hl
	push	iy
	ld	hl, (ix - 102)
	push	hl
	call	_gfx_Line
	ld	a, 12
	ld	de, (ix - 96)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB159_144
.LBB159_144:                            ;   in Loop: Header=BB159_141 Depth=1
	ex	de, hl
	ld	de, 12
	add	hl, de
	ex	de, hl
	ld	hl, 864
	push	hl
	pop	iy
	jp	.LBB159_141
	.local	.LBB159_145
.LBB159_145:
	ld	hl, _.str.54.507
	push	hl
	ld	hl, _.str.53.506
	jp	.LBB159_233
	.local	.LBB159_146
.LBB159_146:
	ld	hl, (ix + 12)
	lea	de, iy + 0
	add	hl, de
	ld	iy, (hl)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	add.sis	hl, hl
	sbc.sis	hl, hl
	ld	a, 12
	ld	c, a
	call	__sshru
	ex.sis	de, hl
	add.sis	iy, de
	ld	e, 4
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld	c, e
	call	__sshrs
	ld	c, l
	ld	b, h
	ld	l, b
	rlc	l
	sbc	hl, hl
	ld	l, c
	ld	h, b
	ld	(ix - 87), hl
	ld	bc, 866
	ld	hl, (ix + 12)
	add	hl, bc
	ld	iy, (hl)
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	add.sis	hl, hl
	sbc.sis	hl, hl
	ld	c, a
	call	__sshru
	ld	c, l
	ld	b, h
	add.sis	iy, bc
	ex	de, hl
	ld	e, iyl
	ld	d, iyh
	ex	de, hl
	ld	c, e
	call	__sshrs
	ex.sis	de, hl
	ld	a, d
	rlc	a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	ld	(ix - 96), hl
	ld	hl, 7
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 6
	push	hl
	ld	hl, (ix - 96)
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	_gfx_FillCircle
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 6
	push	hl
	ld	hl, (ix - 96)
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	_gfx_Circle
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 9
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	de, 868
	ld	hl, (ix + 12)
	add	hl, de
	ld	a, (hl)
	ld	l, a
	rlc	l
	sbc	hl, hl
	ld	l, a
	ld	(ix - 102), hl
	ld	bc, 5
	call	__imulu
	ld	de, (ix - 87)
	add	hl, de
	ld	(ix - 105), hl
	ld	de, 869
	ld	hl, (ix + 12)
	add	hl, de
	ld	a, (hl)
	ld	l, a
	rlc	l
	sbc	hl, hl
	push	hl
	pop	iy
	ld	iyl, a
	lea	hl, iy + 0
	call	__imulu
	ld	de, (ix - 96)
	add	hl, de
	ld	(ix - 108), hl
	ld	hl, (ix - 102)
	ld	bc, 13
	call	__imulu
	ld	de, (ix - 87)
	add	hl, de
	push	hl
	pop	bc
	ld	(ix - 111), bc
	lea	hl, iy + 0
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	(ix - 114), de
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 87), hl
	lea	hl, iy + 0
	ld	bc, 13
	call	__imulu
	push	hl
	pop	iy
	ld	de, (ix - 96)
	add	iy, de
	ld	hl, (ix - 102)
	add	hl, hl
	add	hl, hl
	push	hl
	pop	bc
	lea	hl, iy + 0
	or	a, a
	sbc	hl, bc
	ld	(ix - 96), hl
	ld	hl, (ix - 111)
	ld	de, (ix - 114)
	or	a, a
	sbc	hl, de
	add	iy, bc
	push	iy
	push	hl
	ld	hl, (ix - 96)
	push	hl
	ld	hl, (ix - 87)
	push	hl
	ld	hl, (ix - 108)
	push	hl
	ld	hl, (ix - 105)
	push	hl
	call	_gfx_FillTriangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 99)
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 87), hl
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	hl, _AREA_DEFS
	add	hl, de
	ld	hl, (hl)
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	de, 1041
	ld	iy, (ix + 9)
	lea	bc, iy + 0
	push	bc
	pop	hl
	add	hl, de
	ld	a, (hl)
	ld	hl, (ix - 87)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl, _TOOL_DEFS
	add	hl, de
	ld	iy, (hl)
	ld	de, 2400
	push	bc
	pop	hl
	add	hl, de
	ld	de, (hl)
	ld.sis	bc, 2
	ld	l, e
	ld	h, d
	or	a, a
	sbc.sis	hl, bc
	jr	nc, .LBB159_148
; %bb.147:
	ld.sis	hl, 1
	ld	e, l
	ld	d, h
	.local	.LBB159_148
.LBB159_148:
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	push	hl
	push	iy
	ld	hl, _.str.49.502
	push	hl
	ld	hl, 44
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.50.503
	push	hl
	ld	hl, (ix - 90)
	jp	.LBB159_233
	.local	.LBB159_149
.LBB159_149:
	ld	hl, _.str.45.494
	ld	de, ___const._ZN12_GLOBAL__N_113draw_controlsERK9GameState.lines
	ld	(ix - 87), de
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	de, 214
	ld	hl, 34
	push	hl
	pop	iy
	.local	.LBB159_150
.LBB159_150:                            ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	ld	bc, 12
	jr	z, .LBB159_152
; %bb.151:                              ;   in Loop: Header=BB159_150 Depth=1
	ld	hl, (ix - 87)
	ld	hl, (hl)
	ld	de, 0
	push	de
	ld	de, 15
	push	de
	push	iy
	push	bc
	push	hl
	ld	(ix - 96), iy
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	ld	bc, (ix - 96)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 87)
	lea	iy, iy + 3
	ld	(ix - 87), iy
	ld	de, 20
	push	bc
	pop	iy
	add	iy, de
	ld	de, 214
	jr	.LBB159_150
	.local	.LBB159_152
.LBB159_152:
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.158.576
	jp	.LBB159_233
	.local	.LBB159_153
.LBB159_153:
	ld	hl, _.str.29.520
	ld	a, (iy + 3)
	push	hl
	ld	l, a
	.local	.LBB159_154
.LBB159_154:
	push	hl
	ld	hl, (ix + 9)
	push	hl
	push	iy
	call	__ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	jp	.LBB159_176
	.local	.LBB159_155
.LBB159_155:
	ld	hl, _.str.41.490
	ld	de, _CHALLENGE_DEFS+8
	ld	(ix - 99), de
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	bc, 0
	ld	iyl, b
	.local	.LBB159_156
.LBB159_156:                            ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	ld	de, 6
	or	a, a
	sbc	hl, de
	jp	z, .LBB159_167
; %bb.157:                              ;   in Loop: Header=BB159_156 Depth=1
	ld	(ix - 87), iy
	ld	iy, (ix + 9)
	lea	hl, iy + 0
	ld	de, 1051
	add	hl, de
	dec	de
	add	iy, de
	bit	0, (hl)
	ld	(ix - 96), bc
	jr	z, .LBB159_160
; %bb.158:                              ;   in Loop: Header=BB159_156 Depth=1
	ld	a, (iy)
	ld	de, 0
	ld	e, a
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jr	nz, .LBB159_160
; %bb.159:                              ;   in Loop: Header=BB159_156 Depth=1
	ld	hl, 5133650
	ld	(ix - 55), hl
	ld	hl, 5130574
	ld	(ix - 52), hl
	ld.sis	hl, 71
	ld	(ix - 49), l
	ld	(ix - 48), h
	jp	.LBB159_164
	.local	.LBB159_160
.LBB159_160:                            ;   in Loop: Header=BB159_156 Depth=1
	ld	hl, (ix + 9)
	ld	de, 1048
	add	hl, de
	ld	hl, (hl)
	ld	iy, 0
	lea	de, iy + 0
	ld	e, l
	ld	d, h
	ld	hl, 1
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB159_162
; %bb.161:                              ;   in Loop: Header=BB159_156 Depth=1
	ld	hl, (ix - 99)
	ld	de, (hl)
	ld	l, e
	ld	h, d
	ld.sis	bc, 10
	call	__sdivu
	ex	de, hl
	ld	iyl, e
	ld	iyh, d
	ex	de, hl
	ld.sis	bc, -10
	call	__smulu
	add.sis	hl, de
	ld	de, 0
	ld	e, l
	ld	d, h
	push	de
	push	iy
	ld	hl, _.str.124.551
	push	hl
	ld	hl, 22
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB159_163
	.local	.LBB159_162
.LBB159_162:                            ;   in Loop: Header=BB159_156 Depth=1
	ld	de, (ix - 90)
	ld	hl, _.str.123.550
	ld	bc, 9
	ldir
	.local	.LBB159_163
.LBB159_163:                            ;   in Loop: Header=BB159_156 Depth=1
	ld	bc, (ix - 96)
	.local	.LBB159_164
.LBB159_164:                            ;   in Loop: Header=BB159_156 Depth=1
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	de, 0
	ld	e, a
	ld	iy, (ix - 99)
	ld	iy, (iy - 8)
	ld	hl, 1
	push	hl
	ld	hl, (ix - 90)
	push	hl
	push	iy
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	hl, -1
	jr	z, .LBB159_166
; %bb.165:                              ;   in Loop: Header=BB159_156 Depth=1
	ld	hl, 0
	.local	.LBB159_166
.LBB159_166:                            ;   in Loop: Header=BB159_156 Depth=1
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 96)
	inc	bc
	ld	iy, (ix - 99)
	lea	iy, iy + 10
	ld	(ix - 99), iy
	ld	iy, (ix - 87)
	inc	iyl
	jp	.LBB159_156
	.local	.LBB159_167
.LBB159_167:
	ld	hl, (ix + 9)
	ld	de, 1051
	add	hl, de
	bit	0, (hl)
	ld	hl, _.str.57.510
	jp	z, .LBB159_232
; %bb.168:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, 176
	push	hl
	ld	hl, 8
	push	hl
	ld	hl, _.str.125.552
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.127.554
	push	hl
	ld	hl, _.str.126.553
	jp	.LBB159_233
	.local	.LBB159_169
.LBB159_169:
	ld	hl, _.str.78.521
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	hl, __ZN12_GLOBAL__N_111RESET_NAMESE
	ld	(ix - 99), hl
	ld	de, 0
	ld	iyl, d
	.local	.LBB159_170
.LBB159_170:                            ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	ld	bc, 5
	or	a, a
	sbc	hl, bc
	jp	z, .LBB159_174
; %bb.171:                              ;   in Loop: Header=BB159_170 Depth=1
	push	iy
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 93)
	push	hl
	ld	(ix - 96), de
	ld	(ix - 87), iy
	call	__Z17game_reset_rewardRK9GameState9ResetTier
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 93)
	ld	bc, 6
	ldir
	ld	hl, (ix - 90)
	ld	(iy + 6), hl
	ld	hl, 22
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 102), hl
	ld	hl, (ix - 99)
	ld	hl, (hl)
	ld	(ix - 105), hl
	ld	hl, (ix - 87)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	ld	l, a
	pop	de
	pop	de
	push	hl
	ld	hl, (ix - 90)
	push	hl
	ld	hl, (ix - 105)
	push	hl
	ld	hl, (ix - 96)
	ld	de, (ix - 102)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	jr	z, .LBB159_173
; %bb.172:                              ;   in Loop: Header=BB159_170 Depth=1
	ld	hl, 0
	.local	.LBB159_173
.LBB159_173:                            ;   in Loop: Header=BB159_170 Depth=1
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	ld	bc, (ix - 87)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, (ix - 96)
	inc	de
	inc	c
	ld	iy, (ix - 99)
	lea	iy, iy + 3
	ld	(ix - 99), iy
	push	bc
	pop	iy
	jp	.LBB159_170
	.local	.LBB159_174
.LBB159_174:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 151
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, _.str.79.522
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 169
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, _.str.80.523
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.81.524
	jp	.LBB159_233
	.local	.LBB159_175
.LBB159_175:
	ld	hl, _.str.159.577
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 39
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.160.578
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 61
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.161.579
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, 83
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.162.580
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, 105
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.163.581
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 135
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.164.582
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 157
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.165.583
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 6
	push	hl
	ld	hl, 187
	push	hl
	ld	hl, 24
	push	hl
	ld	hl, _.str.166.584
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.167.585
	push	hl
	call	__ZN12_GLOBAL__N_111draw_footerEPKcS1_
	ld	iy, (ix + 6)
	.local	.LBB159_176
.LBB159_176:
	pop	hl
	pop	hl
	jp	.LBB159_235
	.local	.LBB159_177
.LBB159_177:
	ld	hl, _.str.38.487
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	iyl, 0
	lea	hl, iy + 0
	ld	c, l
	jr	c, .LBB159_179
; %bb.178:
	ld	l, -8
	add	a, l
	ld	c, a
	.local	.LBB159_179
.LBB159_179:
	ld	iy, _PET_DEFS
	ld	de, 0
	push	de
	pop	hl
	ld	l, c
	ld	a, c
	cp	a, 17
	ld	(ix - 108), c                   ; 1-byte Folded Spill
	jr	nc, .LBB159_181
; %bb.180:
	ld	c, 16
	.local	.LBB159_181
.LBB159_181:
	ld	e, c
	ld	(ix - 102), de
	ld	(ix - 96), hl
	ld	bc, 18
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	(ix - 105), iy
	ld	de, 162
	ld	bc, 0
	push	bc
	pop	iy
	lea	hl, iy + 0
	ld	(ix - 87), c                    ; 1-byte Folded Spill
	.local	.LBB159_182
.LBB159_182:                            ; =>This Inner Loop Header: Depth=1
	ld	(ix - 99), hl
	or	a, a
	sbc	hl, de
	ld	de, _.str.57.510
	jp	z, .LBB159_198
; %bb.183:                              ;   in Loop: Header=BB159_182 Depth=1
	ld	hl, (ix - 102)
	ld	bc, (ix - 96)
	or	a, a
	sbc	hl, bc
	jp	z, .LBB159_198
; %bb.184:                              ;   in Loop: Header=BB159_182 Depth=1
	ld	a, (ix - 108)
	ld	l, (ix - 87)
	add	a, l
	ld	l, a
	ld	(ix - 111), l
	ld	hl, (ix + 9)
	ld	de, 1018
	add	hl, de
	push	hl
	pop	bc
	ld	hl, (hl)
	ld	(ix - 117), hl
	lea	hl, iy + 0
	push	bc
	pop	iy
	lea	iy, iy + 3
	ld	de, (iy)
	push	bc
	pop	iy
	lea	iy, iy + 6
	ld	bc, (iy)
	ld	(ix - 114), bc
	ld	iy, 0
	push	iy
	push	hl
	ld	bc, 512
	push	bc
	ld	hl, (ix - 117)
	ld	bc, (ix - 114)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	de
	pop	de
	pop	de
	ld	a, (ix - 111)                   ; 1-byte Folded Reload
	cp	a, 16
	ld	a, h
	ld	(ix - 114), a
	jp	nc, .LBB159_186
; %bb.185:                              ; %_Z17game_pet_unlockedRK9GameStateh.exit
                                        ;   in Loop: Header=BB159_182 Depth=1
	ld	hl, (ix - 96)
	ld	bc, 15
	call	__iand
	push	hl
	pop	bc
	ld	hl, (ix + 9)
	ld	de, 1038
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	hl, 1
                                        ; kill: def $c killed $c killed $ubc
	call	__ishl
	push	de
	pop	bc
	call	__iand
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB159_189
	.local	.LBB159_186
.LBB159_186:                            ; %_Z17game_pet_unlockedRK9GameStateh.exit.thread
                                        ;   in Loop: Header=BB159_182 Depth=1
	or	a, a
	sbc	hl, hl
	ld	l, h
	cp	a, l
	jr	z, .LBB159_188
; %bb.187:                              ;   in Loop: Header=BB159_182 Depth=1
	ld	iy, (ix - 105)
	ld	de, (ix - 99)
	add	iy, de
	lea	hl, iy + 12
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	bc, 6
	ldir
	ld	hl, (ix - 90)
	ld	(iy + 6), hl
	ld	hl, 22
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	ld	de, (ix - 105)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	jr	.LBB159_193
	.local	.LBB159_188
.LBB159_188:                            ;   in Loop: Header=BB159_182 Depth=1
	ld	de, (ix - 90)
	ld	hl, _.str.62.515
	ld	bc, 7
	ldir
	jr	.LBB159_192
	.local	.LBB159_189
.LBB159_189:                            ;   in Loop: Header=BB159_182 Depth=1
	ld	hl, (ix + 9)
	ld	de, 1042
	add	hl, de
	ld	l, (hl)
	ld	a, (ix - 111)                   ; 1-byte Folded Reload
	cp	a, l
	ld	hl, _.str.106.535
	jr	z, .LBB159_191
; %bb.190:                              ;   in Loop: Header=BB159_182 Depth=1
	ld	hl, _.str.61.513
	.local	.LBB159_191
.LBB159_191:                            ;   in Loop: Header=BB159_182 Depth=1
	push	hl
	ld	hl, _.str.59.514
	push	hl
	ld	hl, 22
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB159_192
.LBB159_192:                            ;   in Loop: Header=BB159_182 Depth=1
	ld	iy, (ix + 6)
	ld	de, (ix - 105)
	.local	.LBB159_193
.LBB159_193:                            ;   in Loop: Header=BB159_182 Depth=1
	or	a, a
	sbc	hl, hl
	ld	c, h
	ld	a, (iy + 1)
	ld	(ix - 117), a
	ex	de, hl
	ld	de, (ix - 99)
	add	hl, de
	ld	de, (hl)
	ld	a, (ix - 114)                   ; 1-byte Folded Reload
	cp	a, c
	ld	hl, -1
	push	hl
	pop	bc
	ld	iy, 0
	jr	nz, .LBB159_195
; %bb.194:                              ;   in Loop: Header=BB159_182 Depth=1
	lea	bc, iy + 0
	.local	.LBB159_195
.LBB159_195:                            ;   in Loop: Header=BB159_182 Depth=1
	push	bc
	ld	bc, (ix - 90)
	push	bc
	push	de
	ld	a, (ix - 111)                   ; 1-byte Folded Reload
	ld	e, (ix - 117)
	cp	a, e
	jr	z, .LBB159_197
; %bb.196:                              ;   in Loop: Header=BB159_182 Depth=1
	lea	hl, iy + 0
	.local	.LBB159_197
.LBB159_197:                            ;   in Loop: Header=BB159_182 Depth=1
	push	hl
	ld	l, (ix - 87)                    ; 1-byte Folded Reload
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	(ix - 87)
	ld	hl, (ix - 96)
	inc	hl
	ld	(ix - 96), hl
	ld	hl, (ix - 99)
	ld	de, 18
	add	hl, de
	ld	bc, 0
	push	bc
	pop	iy
	ld	de, 162
	jp	.LBB159_182
	.local	.LBB159_198
.LBB159_198:
	push	de
	ld	hl, _.str.107.536
	jp	.LBB159_233
	.local	.LBB159_199
.LBB159_199:
	ld	hl, _.str.103.531
	ld	de, _SYSTEM_NAMES
	ld	(ix - 96), de
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	l, 0
	ld	(ix - 87), hl
                                        ; kill: def $l killed $l killed $uhl
	jr	c, .LBB159_201
; %bb.200:
	ld	l, -8
	add	a, l
	ld	l, a
	.local	.LBB159_201
.LBB159_201:
	ld	iy, 0
	ex	de, hl
	ld	iyl, e
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, (ix - 96)
	add	hl, bc
	ld	(ix - 96), hl
	ld	a, 1
	ld	bc, 0
	ld	(ix - 102), iy
	.local	.LBB159_202
.LBB159_202:                            ; =>This Inner Loop Header: Depth=1
	add	iy, bc
	ld	(ix - 99), bc
	push	bc
	pop	hl
	ld	de, 9
	or	a, a
	sbc	hl, de
	ld	de, _.str.57.510
	jp	nc, .LBB159_211
; %bb.203:                              ;   in Loop: Header=BB159_202 Depth=1
	lea	hl, iy + 0
	ld	bc, 52
	or	a, a
	sbc	hl, bc
	jp	nc, .LBB159_211
; %bb.204:                              ;   in Loop: Header=BB159_202 Depth=1
	ld	hl, (ix + 9)
	ld	de, 1018
	add	hl, de
	push	hl
	pop	de
	ld	hl, (hl)
	ld	(ix - 108), hl
	lea	bc, iy + 0
	push	de
	pop	iy
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 111), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 114), hl
	ld	(ix - 105), bc
	push	bc
	ld	hl, 1
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
                                        ; kill: def $bc killed $bc def $ubc
	pop	iy
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 108)
	ld	de, (ix - 111)
	ld	bc, (ix - 114)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	jr	nz, .LBB159_206
; %bb.205:                              ;   in Loop: Header=BB159_202 Depth=1
	ld	a, 0
	.local	.LBB159_206
.LBB159_206:                            ;   in Loop: Header=BB159_202 Depth=1
	ld	iy, (ix + 6)
	ld	l, (iy + 1)
	ld	de, 0
	ld	e, l
	ld	hl, (ix - 96)
	ld	iy, (hl)
	bit	0, a
	ld	bc, _.str.104.532
	jr	nz, .LBB159_208
; %bb.207:                              ;   in Loop: Header=BB159_202 Depth=1
	ld	bc, _.str.62.515
	.local	.LBB159_208
.LBB159_208:                            ;   in Loop: Header=BB159_202 Depth=1
	ld	l, a
	push	hl
	push	bc
	push	iy
	ld	hl, (ix - 105)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	jr	z, .LBB159_210
; %bb.209:                              ;   in Loop: Header=BB159_202 Depth=1
	ld	hl, 0
	.local	.LBB159_210
.LBB159_210:                            ;   in Loop: Header=BB159_202 Depth=1
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 99)
	inc	hl
	ld	de, (ix - 87)
	inc	e
	ld	(ix - 87), de
	ld	iy, (ix - 96)
	lea	iy, iy + 3
	ld	(ix - 96), iy
	push	hl
	pop	bc
	ld	iy, (ix - 102)
	ld	a, 1
	jp	.LBB159_202
	.local	.LBB159_211
.LBB159_211:
	push	de
	ld	hl, _.str.105.533
	jp	.LBB159_233
	.local	.LBB159_212
.LBB159_212:
	ld	hl, -1
	.local	.LBB159_213
.LBB159_213:
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	hl, (ix - 87)
	bit	1, (hl)
	ld	hl, _.str.141.566
	jr	z, .LBB159_215
; %bb.214:
	ld	hl, _.str.140.567
	.local	.LBB159_215
.LBB159_215:
	ld	de, 1
	push	de
	push	hl
	ld	hl, _.str.142.569
	push	hl
	cp	a, e
	jr	z, .LBB159_217
; %bb.216:
	ld	hl, 0
	jr	.LBB159_218
	.local	.LBB159_217
.LBB159_217:
	ld	hl, -1
	.local	.LBB159_218
.LBB159_218:
	push	hl
	ld	hl, 1
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	hl, (ix - 87)
	bit	2, (hl)
	jr	z, .LBB159_220
; %bb.219:
	ld	hl, _.str.140.567
	ld	(ix - 96), hl
	.local	.LBB159_220
.LBB159_220:
	ld	hl, 1
	push	hl
	ld	hl, (ix - 96)
	push	hl
	ld	hl, _.str.143.570
	push	hl
	cp	a, 2
	ld	hl, -1
	ld	(ix - 87), hl
	ld	de, 2
	jr	z, .LBB159_222
; %bb.221:
	ld	hl, 0
	.local	.LBB159_222
.LBB159_222:
	push	hl
	push	de
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	hl, 1
	push	hl
	ld	hl, _.str.145.572
	push	hl
	ld	hl, _.str.144.571
	push	hl
	cp	a, 3
	ld	hl, -1
	jr	z, .LBB159_224
; %bb.223:
	ld	hl, 0
	.local	.LBB159_224
.LBB159_224:
	push	hl
	ld	hl, 3
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	hl, 1
	push	hl
	ld	hl, _.str.147.574
	push	hl
	ld	hl, _.str.146.573
	push	hl
	cp	a, 4
	jr	z, .LBB159_226
; %bb.225:
	ld	hl, 0
	ld	(ix - 87), hl
	.local	.LBB159_226
.LBB159_226:
	ld	hl, (ix - 87)
	push	hl
	ld	hl, 4
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.57.510
	push	hl
	ld	hl, _.str.148.575
	jr	.LBB159_233
	.local	.LBB159_227
.LBB159_227:
	ld	a, 1
	.local	.LBB159_228
.LBB159_228:
	ld	hl, (ix + 9)
	bit	0, a
	jr	z, .LBB159_230
; %bb.229:
	push	hl
	call	__Z24game_ulc_sacrifice_countRK9GameState
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 87), hl
	pop	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z23game_ulc_min_sacrificesRK9GameState
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	l, a
	push	hl
	ld	hl, (ix - 87)
	push	hl
	ld	hl, _.str.91.529
	push	hl
	ld	hl, 38
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	ld	iy, (ix - 90)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB159_231
	.local	.LBB159_230
.LBB159_230:
	ld	iy, (ix - 90)
	lea	de, iy + 0
	ld	hl, _.str.90.528
	ld	bc, 18
	ldir
	.local	.LBB159_231
.LBB159_231:
	ld	hl, _.str.92.530
	push	hl
	push	iy
	jr	.LBB159_234
	.local	.LBB159_232
.LBB159_232:
	push	hl
	ld	hl, _.str.128.555
	.local	.LBB159_233
.LBB159_233:
	push	hl
	.local	.LBB159_234
.LBB159_234:
	call	__ZN12_GLOBAL__N_111draw_footerEPKcS1_
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	.local	.LBB159_235
.LBB159_235:
	ld	a, (iy + 4)
	or	a, a
	jp	z, .LBB159_240
; %bb.236:
	ld	a, (iy + 7)
	or	a, a
	jp	z, .LBB159_240
; %bb.237:
	lea	hl, iy + 7
	ld	(ix - 99), hl
	push	hl
	call	_gfx_GetStringWidth
	push	hl
	pop	iy
	pop	hl
	ld	de, 18
	add	iy, de
	ld	de, 308
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	call	pe, __setflag
	lea	de, iy + 0
	jp	m, .LBB159_239
; %bb.238:
	ld	hl, 308
	ex	de, hl
	.local	.LBB159_239
.LBB159_239:
	ld	(ix - 96), de
	ld	hl, 320
	or	a, a
	sbc	hl, de
	call	__ishru_1
	ld	(ix - 87), hl
	ld	hl, 10
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	iy, (ix - 87)
	ld	de, -2
	add	iy, de
	ld	hl, (ix - 96)
	ld	de, 4
	add	hl, de
	ld	de, 23
	push	de
	push	hl
	ld	hl, 196
	push	hl
	push	iy
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 19
	push	hl
	ld	hl, (ix - 96)
	push	hl
	ld	hl, 198
	push	hl
	ld	hl, (ix - 87)
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 8
	ld	iy, (ix - 87)
	add	iy, de
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 204
	push	hl
	push	iy
	ld	hl, (ix - 99)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	.local	.LBB159_240
.LBB159_240:
	bit	0, (iy + 6)
	jp	z, .LBB159_245
; %bb.241:
	ld	hl, __ZN12_GLOBAL__N_114RESET_PREVIEWSE
	ld	(ix - 87), hl
	lea	hl, ix - 7
	ld	(ix - 96), hl
	ld	a, (iy + 5)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 12
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 87)
	add	hl, de
	ld	(ix - 87), hl
	ld	hl, 7
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 195
	push	hl
	ld	hl, 308
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, 6
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 189
	push	hl
	ld	hl, 302
	push	hl
	ld	hl, 28
	push	hl
	ld	hl, 9
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 8
	push	hl
	ld	hl, 34
	push	hl
	ld	hl, 104
	push	hl
	ld	hl, _.str.168.586
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 5)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 3
	call	__imulu
	ex	de, hl
	ld	hl, __ZN12_GLOBAL__N_111RESET_NAMESE
	add	hl, de
	ld	hl, (hl)
	ld	de, 0
	push	de
	ld	de, 15
	push	de
	ld	de, 49
	push	de
	ld	de, 17
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 5)
	ld	l, a
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 96)
	push	hl
	call	__Z17game_reset_rewardRK9GameState9ResetTier
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 96)
	ld	bc, 6
	ldir
	ld	hl, (ix - 93)
	ld	(iy + 6), hl
	ld	hl, 20
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 93)
	push	hl
	ld	hl, _.str.169.587
	push	hl
	ld	hl, 32
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, 17
	push	hl
	ld	hl, (ix - 90)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 8
	push	hl
	ld	hl, 82
	push	hl
	ld	hl, 17
	push	hl
	ld	hl, _.str.170.588
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 87)
	ld	hl, (hl)
	ld	de, 0
	push	de
	ld	de, 15
	push	de
	ld	de, 96
	push	de
	ld	de, 17
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 87)
	ld	hl, (iy + 3)
	ld	de, 0
	push	de
	ld	de, 15
	push	de
	ld	de, 110
	push	de
	ld	de, 17
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 11
	push	hl
	ld	hl, 129
	push	hl
	ld	hl, 17
	push	hl
	ld	hl, _.str.171.589
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 87)
	ld	hl, (iy + 6)
	ld	de, 0
	push	de
	ld	de, 15
	push	de
	ld	de, 143
	push	de
	ld	de, 17
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 87)
	ld	hl, (iy + 9)
	ld	de, 0
	push	de
	ld	de, 15
	push	de
	ld	de, 157
	push	de
	ld	de, 17
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 6
	push	hl
	ld	hl, 176
	push	hl
	ld	hl, 17
	push	hl
	ld	hl, _.str.172.590
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 5)
	cp	a, 5
	jr	c, .LBB159_246
; %bb.242:
	ld	bc, _.str.113.541
	.local	.LBB159_243
.LBB159_243:
	ld	de, 0
	.local	.LBB159_244
.LBB159_244:
	push	de
	ld	hl, 15
	push	hl
	ld	hl, 190
	push	hl
	ld	hl, 17
	push	hl
	push	bc
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, 205
	push	hl
	ld	hl, 17
	push	hl
	ld	hl, _.str.173.600
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB159_245
.LBB159_245:
	call	_gfx_SwapDraw
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB159_246
.LBB159_246:
	ld	bc, _.str.192.599
	ld	iy, 0
	lea	de, iy + 0
	ld	e, a
	ld	hl, JTI159_1
	add	hl, de
	add	hl, de
	add	hl, de
	ld	hl, (hl)
	lea	de, iy + 0
	jp	(hl)
	.local	.LBB159_247
.LBB159_247:
	ld	hl, 10
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	z, .LBB159_257
; %bb.248:
	ld	bc, _.str.193.592
	jp	.LBB159_243
	.local	.LBB159_249
.LBB159_249:
	ld	bc, _.str.200.598
	jp	.LBB159_244
	.local	.LBB159_250
.LBB159_250:
	ld	hl, 20
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB159_254
; %bb.251:
	ld	bc, _.str.195.594
	jp	.LBB159_243
	.local	.LBB159_252
.LBB159_252:
	ld	hl, (ix + 9)
	push	hl
	call	__Z24game_ulc_sacrifice_countRK9GameState
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	(ix - 87), hl
	ld	hl, 22
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	z, .LBB159_255
; %bb.253:
	ld	hl, _.str.198.596
	jr	.LBB159_256
	.local	.LBB159_254
.LBB159_254:
	ld	bc, _.str.196.593
	jp	.LBB159_243
	.local	.LBB159_255
.LBB159_255:
	ld	hl, _.str.199.595
	.local	.LBB159_256
.LBB159_256:
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, (ix - 87)
	push	hl
	ld	hl, _.str.197.597
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, __ZZN12_GLOBAL__N_118reset_current_ruleERK9GameStatehE4rule
	push	hl
	call	_snprintf
	ld	bc, __ZZN12_GLOBAL__N_118reset_current_ruleERK9GameStatehE4rule
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jp	.LBB159_243
	.local	.LBB159_257
.LBB159_257:
	ld	bc, _.str.194.591
	jp	.LBB159_243
	.local	.Lfunc_end159
.Lfunc_end159:
	.size	__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm, .Lfunc_end159-__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm
	.section	.rodata.__Z9ui_renderRK7UiStateRK9GameStateRK9LeafFieldm,"a",@progbits
JTI159_0:
	d24	.LBB159_2
	d24	.LBB159_130
	d24	.LBB159_78
	d24	.LBB159_93
	d24	.LBB159_38
	d24	.LBB159_153
	d24	.LBB159_169
	d24	.LBB159_116
	d24	.LBB159_199
	d24	.LBB159_77
	d24	.LBB159_177
	d24	.LBB159_25
	d24	.LBB159_60
	d24	.LBB159_155
	d24	.LBB159_9
	d24	.LBB159_87
	d24	.LBB159_5
	d24	.LBB159_149
	d24	.LBB159_175
JTI159_1:
	d24	.LBB159_244
	d24	.LBB159_247
	d24	.LBB159_250
	d24	.LBB159_252
	d24	.LBB159_249
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_19draw_textEPKciihh,"ax",@progbits
	.type	__ZN12_GLOBAL__N_19draw_textEPKciihh,@function ; -- Begin function _ZN12_GLOBAL__N_19draw_textEPKciihh
__ZN12_GLOBAL__N_19draw_textEPKciihh:   ; @_ZN12_GLOBAL__N_19draw_textEPKciihh
; %bb.0:
	ld	hl, -10
	call	__frameset
	ld	hl, (ix + 6)
	ld	(ix - 3), hl
	ld	hl, (ix + 9)
	ld	(ix - 6), hl
	ld	hl, (ix + 12)
	ld	(ix - 9), hl
	ld	a, (ix + 15)
	ld	l, (ix + 18)
	ld	(ix - 10), l
	ld	l, a
	push	hl
	call	_gfx_SetTextFGColor
	pop	hl
	ld	l, (ix - 10)                    ; 1-byte Folded Reload
	push	hl
	call	_gfx_SetTextBGColor
	pop	hl
	ld	hl, (ix - 3)
	ld	(ix + 6), hl
	ld	hl, (ix - 6)
	ld	(ix + 9), hl
	ld	hl, (ix - 9)
	ld	(ix + 12), hl
	ld	sp, ix
	pop	ix
	jp	_gfx_PrintStringXY
	.local	.Lfunc_end160
.Lfunc_end160:
	.size	__ZN12_GLOBAL__N_19draw_textEPKciihh, .Lfunc_end160-__ZN12_GLOBAL__N_19draw_textEPKciihh
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState,"ax",@progbits
	.type	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState,@function ; -- Begin function _ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState: ; @_ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
; %bb.0:
	ld	hl, -23
	call	__frameset
	lea	hl, ix - 20
	ld	(ix - 23), hl
	ld	hl, 1
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 24
	push	hl
	ld	hl, 320
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 8
	push	hl
	ld	hl, 6
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 1040
	ld	hl, (ix + 9)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 14
	call	__imulu
	ex	de, hl
	ld	iy, _AREA_DEFS
	add	iy, de
	ld	a, (iy + 3)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 6
	call	__imulu
	ex	de, hl
	ld	iy, (ix + 9)
	add	iy, de
	lea	hl, iy + 2
	push	de
	push	de
	push	de
	push	de
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ldir
	ld	hl, (ix - 23)
	ld	(iy + 6), hl
	ld	hl, 20
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 23)
	push	hl
	call	_gfx_GetStringWidth
	ex	de, hl
	pop	hl
	ld	hl, 314
	or	a, a
	sbc	hl, de
	ld	de, 1
	push	de
	ld	de, 10
	push	de
	ld	de, 8
	push	de
	push	hl
	ld	hl, (ix - 23)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end161
.Lfunc_end161:
	.size	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState, .Lfunc_end161-__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_111draw_footerEPKcS1_,"ax",@progbits
	.type	__ZN12_GLOBAL__N_111draw_footerEPKcS1_,@function ; -- Begin function _ZN12_GLOBAL__N_111draw_footerEPKcS1_
__ZN12_GLOBAL__N_111draw_footerEPKcS1_: ; @_ZN12_GLOBAL__N_111draw_footerEPKcS1_
; %bb.0:
	call	__frameset0
	ld	hl, 1
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 15
	push	hl
	ld	hl, 320
	push	hl
	ld	hl, 225
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 229
	push	hl
	ld	hl, 5
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 9)
	push	hl
	call	_gfx_GetStringWidth
	ex	de, hl
	pop	hl
	ld	hl, 315
	or	a, a
	sbc	hl, de
	ld	de, 1
	push	de
	ld	de, 7
	push	de
	ld	de, 229
	push	de
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end162
.Lfunc_end162:
	.size	__ZN12_GLOBAL__N_111draw_footerEPKcS1_, .Lfunc_end162-__ZN12_GLOBAL__N_111draw_footerEPKcS1_
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b,"ax",@progbits
	.type	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b,@function ; -- Begin function _ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b:  ; @_ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	a, (ix + 6)
	ld	l, (ix + 9)
	ex	de, hl
	ld	iyh, e
	ex	de, hl
	ld	l, (ix + 18)
	ex	de, hl
	ld	iyl, e
	ex	de, hl
	ld	bc, 21
	ld	de, 28
	or	a, a
	sbc	hl, hl
	ld	l, a
	call	__imulu
	ld	(ix - 3), hl
	add	hl, de
	ld	(ix - 12), hl
	ld	a, iyh
	bit	0, a
	jr	nz, .LBB163_2
; %bb.1:
	ld	l, 0
	jr	.LBB163_3
	.local	.LBB163_2
.LBB163_2:
	ld	l, 12
	.local	.LBB163_3
.LBB163_3:
	ld	(ix - 6), hl
	ld	a, iyl
	bit	0, a
	jr	nz, .LBB163_5
; %bb.4:
	ld	l, 5
	jr	.LBB163_6
	.local	.LBB163_5
.LBB163_5:
	ld	l, 15
	.local	.LBB163_6
.LBB163_6:
	ld	(ix - 9), hl
	ld	hl, (ix - 6)
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 19
	push	hl
	ld	hl, 312
	push	hl
	ld	hl, (ix - 12)
	push	hl
	ld	hl, 4
	push	hl
	call	_gfx_FillRectangle
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 3)
	ld	de, 33
	add	hl, de
	ld	de, (ix - 6)
	push	de
	ld	de, (ix - 9)
	push	de
	ld	(ix - 3), hl
	push	hl
	ld	hl, 9
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 15)
	ex	de, hl
	sbc	hl, hl
	adc	hl, de
	ex	de, hl
	jr	z, .LBB163_9
; %bb.7:
	ld	a, (hl)
	or	a, a
	jr	z, .LBB163_9
; %bb.8:
	push	hl
	call	_gfx_GetStringWidth
	ex	de, hl
	pop	hl
	ld	hl, 310
	or	a, a
	sbc	hl, de
	ld	de, (ix - 6)
	push	de
	ld	de, (ix - 9)
	push	de
	ld	de, (ix - 3)
	push	de
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	__ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB163_9
.LBB163_9:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end163
.Lfunc_end163:
	.size	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b, .Lfunc_end163-__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc,"ax",@progbits
	.type	__ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc,@function ; -- Begin function _ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc
__ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc: ; @_ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc
; %bb.0:
	ld	hl, -93
	call	__frameset
	ld	iy, __ZN12_GLOBAL__N_110SHOP_NAMESE
	or	a, a
	sbc	hl, hl
	ld	l, (ix + 12)
	ld	bc, 3
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	hl, (iy)
	ld	de, (ix + 9)
	push	de
	push	hl
	call	__ZN12_GLOBAL__N_111draw_headerEPKcRK9GameState
	pop	hl
	pop	hl
	ld	l, (ix + 12)
	push	hl
	call	__ZN12_GLOBAL__N_118shop_upgrade_countE6ShopId
	ld	e, a
	pop	hl
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	cp	a, 9
	ld	l, 0
	ld	(ix - 49), l                    ; 1-byte Folded Spill
	ld	iyh, 0
	jr	c, .LBB164_2
; %bb.1:
	ld	l, -8
	add	a, l
	ld	iyh, a
	.local	.LBB164_2
.LBB164_2:
	ld	bc, 0
	push	bc
	pop	hl
	ex	de, hl
	ld	e, iyh
	ex	de, hl
	ld	a, e
	cp	a, iyh
	push	af
	ld	a, iyh
	ld	(ix - 56), a                    ; 1-byte Folded Spill
	pop	af
	ld	c, iyh
	jr	c, .LBB164_4
; %bb.3:
	ld	c, a
	.local	.LBB164_4
.LBB164_4:
	lea	de, ix - 25
	ld	(ix - 55), de
	lea	de, ix - 40
	ld	(ix - 65), de
	lea	de, ix - 47
	ld	(ix - 68), de
	ld	de, 0
	ld	e, c
	ld	(ix - 52), hl
	or	a, a
	sbc	hl, de
	ld	c, (ix + 12)
	ld	(ix - 62), bc
	ld	bc, 0
	ld	(ix - 59), hl
	.local	.LBB164_5
.LBB164_5:                              ; =>This Inner Loop Header: Depth=1
	add	hl, bc
	ex	de, hl
	push	bc
	pop	hl
	push	bc
	pop	iy
	ld	bc, 9
	or	a, a
	sbc	hl, bc
	lea	bc, iy + 0
	jp	z, .LBB164_17
; %bb.6:                                ;   in Loop: Header=BB164_5 Depth=1
	ld	hl, (ix - 52)
	add	hl, bc
	ld	(ix - 71), hl
	sbc	hl, hl
	adc	hl, de
	jp	z, .LBB164_17
; %bb.7:                                ;   in Loop: Header=BB164_5 Depth=1
	ld	(ix - 78), bc
	ld	(ix - 75), a                    ; 1-byte Folded Spill
	ld	l, (ix - 49)
	ld	a, (ix - 56)
	add	a, l
	ld	l, a
	push	hl
	ld	hl, (ix - 62)
	push	hl
	call	__ZN12_GLOBAL__N_115shop_upgrade_atE6ShopIdh
	ld	e, a
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	(ix - 93), de
	ld	l, e
	ld	(ix - 81), hl
	ld	bc, 20
	call	__imulu
	ex	de, hl
	ld	hl, _UPGRADE_DEFS
	push	hl
	pop	iy
	add	iy, de
	ld	(ix - 74), iy
	ld	a, (iy + 19)
	ld	iy, (ix + 9)
	ld	de, 1018
	add	iy, de
	ld	hl, (iy)
	ld	(ix - 84), hl
	lea	hl, iy + 3
	ld	hl, (hl)
	ld	(ix - 87), hl
	lea	hl, iy + 6
	ld	hl, (hl)
	ld	(ix - 90), hl
	ld	l, b
	ld	e, l
	ld	(ix - 48), e
	ld	hl, (ix - 50)
	ld	h, e
	ld	l, a
	push	hl
	ld	hl, 1
	ld	de, 0
	ld.sis	bc, 0
	call	__llshl
	pop	iy
	ld	iy, (ix - 90)
	push	iy
	ld	iy, (ix - 87)
	push	iy
	ld	iy, (ix - 84)
	push	iy
	call	__lland
	pop	iy
	pop	iy
	pop	iy
	call	__llcmpzero
	ld	l, -1
	jr	nz, .LBB164_9
; %bb.8:                                ;   in Loop: Header=BB164_5 Depth=1
	ld	l, 0
	.local	.LBB164_9
.LBB164_9:                              ;   in Loop: Header=BB164_5 Depth=1
	cp	a, 64
                                        ; kill: def $a killed $a
	sbc	a, a
	and	a, l
	ld	e, a
	ld	hl, (ix - 81)
	add	hl, hl
	push	hl
	pop	bc
	ld	hl, (ix + 9)
	add	hl, bc
	ld	bc, 890
	add	hl, bc
	ld	(ix - 84), hl
	ld	hl, (hl)
	ld	iy, (ix - 74)
	ld	bc, (iy + 16)
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	l, a
	ld	a, l
	and	a, e
	ld	c, a
	ld	(ix - 81), bc
	bit	0, l
	jr	z, .LBB164_12
; %bb.10:                               ;   in Loop: Header=BB164_5 Depth=1
	bit	0, e
	jr	z, .LBB164_13
; %bb.11:                               ;   in Loop: Header=BB164_5 Depth=1
	ld	hl, (ix - 93)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 68)
	push	hl
	call	__Z17game_upgrade_costRK9GameStateh
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 68)
	ld	bc, 6
	ldir
	ld	hl, (ix - 65)
	ld	(iy + 6), hl
	ld	hl, 15
	ld	(iy + 9), hl
	call	__Z9bn_format6BigNumPcj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 84)
	ld	hl, (hl)
	ld	de, 0
	ld	e, l
	ld	d, h
	ld	hl, (ix - 65)
	push	hl
	push	de
	ld	hl, _.str.68.643
	push	hl
	ld	hl, 25
	push	hl
	ld	hl, (ix - 55)
	push	hl
	call	_snprintf
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jr	.LBB164_14
	.local	.LBB164_12
.LBB164_12:                             ;   in Loop: Header=BB164_5 Depth=1
	ld	hl, 5783885
	ld	(ix - 25), hl
	ld	(ix - 22), 0
	jr	.LBB164_14
	.local	.LBB164_13
.LBB164_13:                             ;   in Loop: Header=BB164_5 Depth=1
	ld	de, (ix - 55)
	ld	hl, _.str.62.515
	ld	bc, 7
	ldir
	.local	.LBB164_14
.LBB164_14:                             ;   in Loop: Header=BB164_5 Depth=1
	ld	iy, (ix + 6)
	ld	a, (iy + 1)
	ld	de, 0
	ld	e, a
	ld	hl, (ix - 74)
	ld	hl, (hl)
	ld	bc, (ix - 81)
	push	bc
	ld	bc, (ix - 55)
	push	bc
	push	hl
	ld	hl, (ix - 71)
	or	a, a
	sbc	hl, de
	ld	hl, -1
	jr	z, .LBB164_16
; %bb.15:                               ;   in Loop: Header=BB164_5 Depth=1
	ld	hl, 0
	.local	.LBB164_16
.LBB164_16:                             ;   in Loop: Header=BB164_5 Depth=1
	push	hl
	ld	l, (ix - 49)                    ; 1-byte Folded Reload
	push	hl
	call	__ZN12_GLOBAL__N_18draw_rowEhbPKcS1_b
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 78)
	inc	hl
	inc	(ix - 49)
	push	hl
	pop	bc
	ld	a, (ix - 75)                    ; 1-byte Folded Reload
	ld	hl, (ix - 59)
	jp	.LBB164_5
	.local	.LBB164_17
.LBB164_17:
	or	a, a
	ld	hl, 0
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, 108
	push	hl
	ld	hl, 48
	push	hl
	ld	hl, _.str.69.644
	push	hl
	call	z, __ZN12_GLOBAL__N_19draw_textEPKciihh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, _.str.57.510
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	__ZN12_GLOBAL__N_111draw_footerEPKcS1_
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end164
.Lfunc_end164:
	.size	__ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc, .Lfunc_end164-__ZN12_GLOBAL__N_19draw_shopERK7UiStateRK9GameState6ShopIdPKc
                                        ; -- End function
	.section	.text.__Z17runtime_self_testR9GameState,"ax",@progbits
	.globl	__Z17runtime_self_testR9GameState ; -- Begin function _Z17runtime_self_testR9GameState
	.type	__Z17runtime_self_testR9GameState,@function
__Z17runtime_self_testR9GameState:      ; @_Z17runtime_self_testR9GameState
; %bb.0:
	ld	hl, -262
	call	__frameset
	ld	de, -187
	lea	iy, ix + 0
	add	iy, de
	ld	hl, 100
	lea	bc, ix - 121
	push	ix
	lea	ix, ix - 128
	ld	(ix - 68), bc
	pop	ix
	lea	de, ix - 127
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), de
	pop	ix
	push	ix
	lea	ix, ix - 128
	lea	de, ix - 5
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	(ix - 62), de
	pop	ix
	push	ix
	lea	ix, ix - 128
	ld	(ix - 65), iy
	pop	ix
	lea	de, iy + 48
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 74
	ld	(iy + 0), de
	ld	de, 0
	push	de
	push	hl
	push	bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 50
	push	hl
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	push	ix
	lea	ix, ix - 128
	ld	(ix - 77), hl
	pop	ix
	inc	iy
	ld	bc, 6
	lea	de, iy + 0
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 68
	ld	hl, (iy + 0)
	push	bc
	pop	iy
	ldir
	ld	bc, -205
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 71)
	pop	ix
	lea	bc, iy + 0
	ldir
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z6bn_add6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 62)
	pop	ix
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	(iy + 6), hl
	ld	(iy + 9), 0
	call	__Z17bn_to_u32_clamped6BigNumm
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	bc, 150
	xor	a, a
	call	__lcmpu
	ld.sis	hl, 1
	jr	nz, .LBB165_2
; %bb.1:
	ld.sis	hl, 0
	.local	.LBB165_2
.LBB165_2:
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	push	ix
	lea	ix, ix - 128
	ld	(ix - 77), hl
	pop	ix
	inc	iy
	lea	de, iy + 0
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	bc, -205
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 71)
	pop	ix
	lea	bc, iy + 0
	ldir
	ld	de, -202
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z6bn_sub6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 74)
	pop	ix
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	(iy + 6), hl
	ld	(iy + 9), 0
	call	__Z17bn_to_u32_clamped6BigNumm
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	bc, 50
	xor	a, a
	call	__lcmpu
	ld	a, 1
	jr	z, .LBB165_4
; %bb.3:
	ld	a, 0
	.local	.LBB165_4
.LBB165_4:
	ld	de, -193
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	lea	hl, iy + 42
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), hl
	pop	ix
	lea	bc, iy + 36
	bit	0, a
	ld	hl, 0
	push	hl
	pop	iy
	jr	nz, .LBB165_6
; %bb.5:
	ld.sis	de, 2
	push	ix
	lea	ix, ix - 128
	ld	l, (ix - 62)
	ld	h, (ix - 61)
	pop	ix
	add.sis	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 62), l
	ld	(ix - 61), h
	pop	ix
	.local	.LBB165_6
.LBB165_6:
	push	iy
	ld	hl, 25
	push	hl
	push	bc
	ld	de, -202
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), bc
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	push	ix
	lea	ix, ix - 128
	ld	(ix - 77), hl
	pop	ix
	inc	iy
	lea	de, iy + 0
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	bc, -205
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 74)
	pop	ix
	lea	bc, iy + 0
	ldir
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z6bn_mul6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 71)
	pop	ix
	ld	bc, 6
	ldir
	ld	hl, 10000
	ld	(iy + 6), hl
	ld	(iy + 9), 0
	call	__Z17bn_to_u32_clamped6BigNumm
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	bc, 2500
	xor	a, a
	call	__lcmpu
	jr	z, .LBB165_8
; %bb.7:
	ld	a, 0
	jr	.LBB165_9
	.local	.LBB165_8
.LBB165_8:
	ld	a, 1
	.local	.LBB165_9
.LBB165_9:
	ld	de, -193
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	bc, 4
	lea	hl, iy + 30
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), hl
	pop	ix
	lea	iy, iy + 24
	bit	0, a
	ld	hl, 0
	jr	nz, .LBB165_11
; %bb.10:
	ld.sis	de, 4
	push	ix
	lea	ix, ix - 128
	ld	l, (ix - 62)
	ld	h, (ix - 61)
	pop	ix
	add.sis	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 62), l
	ld	(ix - 61), h
	pop	ix
	or	a, a
	sbc	hl, hl
	.local	.LBB165_11
.LBB165_11:
	push	hl
	push	bc
	ld	de, -202
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	push	iy
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	push	ix
	lea	ix, ix - 128
	ld	(ix - 77), hl
	pop	ix
	inc	iy
	lea	de, iy + 0
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	bc, -205
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 74)
	pop	ix
	lea	bc, iy + 0
	ldir
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z6bn_div6BigNumS_
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 71)
	pop	ix
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	(iy + 6), hl
	ld	(iy + 9), 0
	call	__Z17bn_to_u32_clamped6BigNumm
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	bc, 25
	xor	a, a
	call	__lcmpu
	jr	z, .LBB165_13
; %bb.12:
	ld	a, 0
	jr	.LBB165_14
	.local	.LBB165_13
.LBB165_13:
	ld	a, 1
	.local	.LBB165_14
.LBB165_14:
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 65)
	pop	ix
	lea	de, iy + 18
	ld	bc, -199
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	bit	0, a
	jr	nz, .LBB165_16
; %bb.15:
	ld.sis	de, 8
	add.sis	hl, de
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_16
.LBB165_16:
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	ld	de, -202
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	inc	iy
	lea	de, iy + 0
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 1250
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 74)
	pop	ix
	ld	(iy + 7), hl
	ld	(iy + 10), 0
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z17bn_scale_permille6BigNumm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 71)
	pop	ix
	ld	bc, 6
	ldir
	ld	hl, 1000
	ld	(iy + 6), hl
	ld	(iy + 9), 0
	call	__Z17bn_to_u32_clamped6BigNumm
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	bc, 125
	xor	a, a
	call	__lcmpu
	jr	z, .LBB165_18
; %bb.17:
	ld	a, 0
	jr	.LBB165_19
	.local	.LBB165_18
.LBB165_18:
	ld	a, 1
	.local	.LBB165_19
.LBB165_19:
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 65)
	pop	ix
	lea	de, iy + 6
	lea	bc, iy + 0
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 68
	ld	(iy + 0), bc
	ld.sis	bc, 16
	call	__sor
	bit	0, a
	jr	nz, .LBB165_21
; %bb.20:
	ld	bc, -190
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_21
.LBB165_21:
	ld	hl, 30000
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, -6777217
	push	hl
	ld	bc, -199
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	push	de
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 10
	push	hl
	ld	de, -196
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	dec	sp
	ld	iy, 0
	add	iy, sp
	lea	hl, iy + 7
	push	ix
	lea	ix, ix - 128
	ld	(ix - 74), hl
	pop	ix
	inc	iy
	lea	de, iy + 0
	ld	bc, -199
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	iy, 6
	lea	bc, iy + 0
	ldir
	ld	bc, -202
	lea	hl, ix + 0
	add	hl, bc
	ld	de, (hl)
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 68)
	pop	ix
	lea	bc, iy + 0
	ldir
	ld	de, -193
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	pea	iy + 12
	call	__Z6bn_mul6BigNumS_
	ld	de, -193
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	inc	sp
	ld	hl, (iy + 12)
	ld	e, (iy + 15)
	call	__lcmpzero
	jr	nz, .LBB165_24
; %bb.22:
	ld	hl, (iy + 16)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	z, .LBB165_25
; %bb.23:
	ld	e, 0
	jp	.LBB165_26
	.local	.LBB165_24
.LBB165_24:
	ld	bc, -1000000
	ld	a, -1
	call	__ladd
	ld	bc, -7777216
	inc	a
	call	__lcmpu
	ccf
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	e, a
	inc	e
	ld	hl, (iy + 16)
	ld.sis	bc, 30000
	add.sis	hl, bc
	ld.sis	bc, -5535
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, bc
                                        ; kill: def $a killed $a
	sbc	a, a
	ld	l, a
	ld	a, e
	and	a, l
	ld	e, a
	jr	.LBB165_26
	.local	.LBB165_25
.LBB165_25:
	ld	e, -1
	.local	.LBB165_26
.LBB165_26:                             ; %_Z8bn_valid6BigNum.exit
	ld	bc, -190
	lea	iy, ix + 0
	add	iy, bc
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 32
	call	__sor
	bit	0, e
	jr	nz, .LBB165_28
; %bb.27:                               ; %_Z8bn_valid6BigNum.exit
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_28
.LBB165_28:                             ; %_Z8bn_valid6BigNum.exit
	ld	iy, (ix + 6)
	ld	bc, 0
	ld.sis	hl, 101
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), l
	ld	(ix - 70), h
	pop	ix
	lea	hl, ix - 13
	push	ix
	lea	ix, ix - 128
	ld	(ix - 65), hl
	pop	ix
	lea	hl, ix - 19
	push	ix
	lea	ix, ix - 128
	ld	(ix - 68), hl
	pop	ix
	lea	hl, ix - 25
	push	ix
	lea	ix, ix - 128
	ld	(ix - 74), hl
	pop	ix
	lea	hl, ix - 31
	push	ix
	lea	ix, ix - 128
	ld	(ix - 77), hl
	pop	ix
	lea	hl, ix - 37
	push	ix
	lea	ix, ix - 128
	ld	(ix - 80), hl
	pop	ix
	lea	hl, ix - 43
	push	ix
	lea	ix, ix - 128
	ld	(ix - 89), hl
	pop	ix
	lea	hl, ix - 49
	push	ix
	lea	ix, ix - 128
	ld	(ix - 86), hl
	pop	ix
	lea	hl, ix - 55
	push	ix
	lea	ix, ix - 128
	ld	(ix - 95), hl
	pop	ix
	lea	hl, ix - 61
	push	ix
	lea	ix, ix - 128
	ld	(ix - 92), hl
	pop	ix
	lea	hl, ix - 67
	push	ix
	lea	ix, ix - 128
	ld	(ix - 116), hl
	pop	ix
	lea	hl, ix - 73
	push	ix
	lea	ix, ix - 128
	ld	(ix - 113), hl
	pop	ix
	lea	hl, ix - 79
	push	ix
	lea	ix, ix - 128
	ld	(ix - 110), hl
	pop	ix
	lea	hl, ix - 85
	push	ix
	lea	ix, ix - 128
	ld	(ix - 107), hl
	pop	ix
	lea	hl, ix - 91
	push	ix
	lea	ix, ix - 128
	ld	(ix - 104), hl
	pop	ix
	lea	hl, ix - 97
	push	ix
	lea	ix, ix - 128
	ld	(ix - 101), hl
	pop	ix
	lea	hl, ix - 103
	push	ix
	lea	ix, ix - 128
	ld	(ix - 98), hl
	pop	ix
	lea	hl, ix - 109
	push	ix
	lea	ix, ix - 128
	ld	(ix - 122), hl
	pop	ix
	lea	hl, ix - 115
	push	ix
	lea	ix, ix - 128
	ld	(ix - 119), hl
	pop	ix
	.local	.LBB165_29
.LBB165_29:                             ; =>This Inner Loop Header: Depth=1
	ld	de, 1092
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB165_37
; %bb.30:                               ;   in Loop: Header=BB165_29 Depth=1
	ld	iy, _AREA_DEFS
	add	iy, bc
	ld	a, (iy + 3)
	cp	a, 74
	jr	nc, .LBB165_35
; %bb.31:                               ;   in Loop: Header=BB165_29 Depth=1
	ld	a, (iy + 4)
	cp	a, 74
	jr	nc, .LBB165_35
; %bb.32:                               ;   in Loop: Header=BB165_29 Depth=1
	ld	a, (iy + 12)
	cp	a, 52
	jr	nc, .LBB165_35
; %bb.33:                               ;   in Loop: Header=BB165_29 Depth=1
	ld	hl, _AREA_DEFS
	push	hl
	pop	iy
	add	iy, bc
	ld	de, -253
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	lea	hl, iy + 6
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 83
	ld	(iy + 0), bc
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	ld	de, -211
	lea	iy, ix + 0
	add	iy, de
	ld	bc, (iy + 0)
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB165_35
; %bb.34:                               ;   in Loop: Header=BB165_29 Depth=1
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB165_36
	.local	.LBB165_35
.LBB165_35:                             ;   in Loop: Header=BB165_29 Depth=1
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	push	bc
	pop	de
	ld.sis	bc, 128
	call	__sor
	push	de
	pop	bc
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_36
.LBB165_36:                             ;   in Loop: Header=BB165_29 Depth=1
	ld	de, (ix + 6)
	push	de
	pop	iy
	push	bc
	pop	hl
	ld	bc, 14
	add	hl, bc
	push	hl
	pop	bc
	jp	.LBB165_29
	.local	.LBB165_37
.LBB165_37:
	ld	bc, 256
	ld	de, 0
	.local	.LBB165_38
.LBB165_38:                             ; %.preheader36
                                        ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB165_46
; %bb.39:                               ;   in Loop: Header=BB165_38 Depth=1
	ld	iy, _TOOL_DEFS
	add	iy, de
	ld	a, (iy + 3)
	cp	a, 74
	push	de
	pop	bc
	jr	nc, .LBB165_44
; %bb.40:                               ;   in Loop: Header=BB165_38 Depth=1
	ld	a, (iy + 15)
	cp	a, 52
	jr	nc, .LBB165_44
; %bb.41:                               ;   in Loop: Header=BB165_38 Depth=1
	ld	iy, _TOOL_DEFS
	add	iy, bc
	lea	hl, iy + 4
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 83
	ld	(iy + 0), bc
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	ld	de, -211
	lea	iy, ix + 0
	add	iy, de
	ld	bc, (iy + 0)
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB165_44
; %bb.42:                               ;   in Loop: Header=BB165_38 Depth=1
	ld	iy, _TOOL_DEFS
	add	iy, bc
	ld	hl, (iy + 10)
	ld	e, (iy + 13)
	call	__lcmpzero
	jr	z, .LBB165_44
; %bb.43:                               ;   in Loop: Header=BB165_38 Depth=1
	ld	a, (iy + 14)
	or	a, a
	jr	nz, .LBB165_45
	.local	.LBB165_44
.LBB165_44:                             ;   in Loop: Header=BB165_38 Depth=1
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	push	bc
	pop	de
	ld.sis	bc, 256
	call	__sor
	push	de
	pop	bc
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_45
.LBB165_45:                             ;   in Loop: Header=BB165_38 Depth=1
	ld	de, (ix + 6)
	push	de
	pop	iy
	push	bc
	pop	hl
	ld	bc, 16
	add	hl, bc
	ex	de, hl
	ld	bc, 256
	jp	.LBB165_38
	.local	.LBB165_46
.LBB165_46:
	ld	bc, 640
	or	a, a
	sbc	hl, hl
	ex	de, hl
	.local	.LBB165_47
.LBB165_47:                             ; %.preheader35
                                        ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB165_56
; %bb.48:                               ;   in Loop: Header=BB165_47 Depth=1
	ld	iy, _UPGRADE_DEFS
	add	iy, de
	ld	a, (iy + 6)
	cp	a, 9
	jp	nc, .LBB165_54
; %bb.49:                               ;   in Loop: Header=BB165_47 Depth=1
	ld	a, (iy + 7)
	cp	a, 74
	jp	nc, .LBB165_54
; %bb.50:                               ;   in Loop: Header=BB165_47 Depth=1
	ld	a, (iy + 19)
	cp	a, 52
	jp	nc, .LBB165_54
; %bb.51:                               ;   in Loop: Header=BB165_47 Depth=1
	ld	hl, _UPGRADE_DEFS
	push	hl
	pop	iy
	add	iy, de
	ld	bc, -253
	lea	hl, ix + 0
	add	hl, bc
	ld	(hl), iy
	lea	hl, iy + 8
	ld	bc, -211
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), de
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	ld	bc, -211
	lea	iy, ix + 0
	add	iy, bc
	ld	de, (iy + 0)
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_54
; %bb.52:                               ;   in Loop: Header=BB165_47 Depth=1
	ld	de, -253
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy + 14)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	lea	iy, ix + 0
	push	af
	add	iy, bc
	pop	af
	ld	de, (iy + 0)
	jr	c, .LBB165_54
; %bb.53:                               ;   in Loop: Header=BB165_47 Depth=1
	ld	bc, -253
	lea	hl, ix + 0
	add	hl, bc
	ld	iy, (hl)
	ld	hl, (iy + 16)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jr	nz, .LBB165_55
	.local	.LBB165_54
.LBB165_54:                             ;   in Loop: Header=BB165_47 Depth=1
	ld	bc, -190
	lea	iy, ix + 0
	add	iy, bc
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 512
	call	__sor
	ld	bc, -190
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_55
.LBB165_55:                             ;   in Loop: Header=BB165_47 Depth=1
	ex	de, hl
	ld	de, 20
	add	hl, de
	ld	de, (ix + 6)
	push	de
	pop	iy
	ex	de, hl
	ld	bc, 640
	jp	.LBB165_47
	.local	.LBB165_56
.LBB165_56:
	ld	de, 288
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	.local	.LBB165_57
.LBB165_57:                             ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB165_64
; %bb.58:                               ;   in Loop: Header=BB165_57 Depth=1
	ld	iy, _PET_DEFS
	add	iy, bc
	ld	a, (iy + 10)
	cp	a, 74
	push	ix
	lea	ix, ix - 128
	ld	l, (ix - 62)
	ld	h, (ix - 61)
	pop	ix
	jp	nc, .LBB165_62
; %bb.59:                               ;   in Loop: Header=BB165_57 Depth=1
	ld	a, (iy + 6)
	cp	a, 31
	jp	nc, .LBB165_62
; %bb.60:                               ;   in Loop: Header=BB165_57 Depth=1
	ld	hl, _PET_DEFS
	push	hl
	pop	iy
	add	iy, bc
	ld	de, -253
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	lea	hl, iy + 12
	push	de
	push	de
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 83
	ld	(iy + 0), bc
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	ld	de, -211
	lea	iy, ix + 0
	add	iy, de
	ld	bc, (iy + 0)
	pop	hl
	pop	hl
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	bit	0, a
	jp	z, .LBB165_62
; %bb.61:                               ;   in Loop: Header=BB165_57 Depth=1
	ld	de, -253
	lea	hl, ix + 0
	add	hl, de
	ld	iy, (hl)
	ld	hl, (iy + 8)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1000
	or	a, a
	sbc.sis	hl, de
	ld	de, -190
	lea	iy, ix + 0
	push	af
	add	iy, de
	pop	af
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	jr	nc, .LBB165_63
	.local	.LBB165_62
.LBB165_62:                             ;   in Loop: Header=BB165_57 Depth=1
	push	bc
	pop	de
	ld.sis	bc, 1024
	call	__sor
	push	de
	pop	bc
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_63
.LBB165_63:                             ;   in Loop: Header=BB165_57 Depth=1
	push	bc
	pop	hl
	ld	de, 18
	add	hl, de
	push	hl
	pop	bc
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	de, 288
	jp	.LBB165_57
	.local	.LBB165_64
.LBB165_64:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1234
	push	hl
	push	iy
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	hl, (hl)
	ld.sis	de, 3
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	de, 1050
	jp	nz, .LBB165_84
; %bb.65:
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	push	de
	pop	iy
	ld	de, 1040
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 83), hl
	pop	ix
	inc	de
	push	bc
	pop	hl
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 125), hl
	pop	ix
	push	bc
	pop	hl
	lea	de, iy + 0
	add	hl, de
	ld	de, 2398
	push	bc
	pop	iy
	add	iy, de
	lea	bc, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 83)
	pop	ix
	ld	a, (iy)
	or	a, a
	jp	nz, .LBB165_84
; %bb.66:
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 125)
	pop	ix
	ld	a, (iy)
	or	a, a
	jp	nz, .LBB165_84
; %bb.67:
	ld	a, (hl)
	cp	a, -1
	jp	nz, .LBB165_84
; %bb.68:
	push	bc
	pop	hl
	ld	hl, (hl)
	ld.sis	de, 1023
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB165_84
; %bb.69:
	ld	hl, (ix + 6)
	ld	de, 1026
	add	hl, de
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	a, (hl)
	ld	l, 1
	and	a, l
	ld	l, a
	bit	0, l
	jp	z, .LBB165_84
; %bb.70:
	ld	de, 1036
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	bc, 1
	call	__sand
	bit	0, l
	jp	z, .LBB165_84
; %bb.71:
	ld	hl, 100
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, -6777217
	push	hl
	ld	de, -193
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 65
	ld	hl, (iy + 0)
	ldir
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB165_72
.LBB165_72:                             ; =>This Inner Loop Header: Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_buy_upgradeR9GameStateh
	pop	hl
	pop	hl
	ld	bc, -199
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)
	ld	d, (iy + 1)
	dec.sis	de
	sbc.sis	hl, hl
	adc.sis	hl, de
	jr	z, .LBB165_74
; %bb.73:                               ;   in Loop: Header=BB165_72 Depth=1
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), e
	ld	(iy + 1), d
	bit	0, a
	jr	nz, .LBB165_72
	jp	.LBB165_84
	.local	.LBB165_74
.LBB165_74:
	bit	0, a
	jp	nz, .LBB165_84
; %bb.75:
	ld	de, 890
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 100
	or	a, a
	sbc.sis	hl, de
	jr	nz, .LBB165_77
; %bb.76:
	ld	a, 0
	jr	.LBB165_78
	.local	.LBB165_77
.LBB165_77:
	ld	a, -1
	.local	.LBB165_78
.LBB165_78:
	bit	0, a
	jp	nz, .LBB165_84
; %bb.79:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	de, -259
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	ld	hl, (iy)
	push	ix
	ld	de, -262
	add	ix, de
	ld	(ix + 0), hl
	pop	ix
	lea	hl, iy + 3
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), hl
	pop	ix
	ld	de, (hl)
	lea	hl, iy + 6
	ld	bc, -256
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	bc, (hl)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 2
	push	iy
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 128
	lea	iy, iy - 6
	ld	hl, (iy + 0)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	pop	iy
	pop	iy
	pop	iy
	push	ix
	lea	ix, ix - 128
	lea	ix, ix - 128
	lea	ix, ix - 3
	ld	iy, (ix + 0)
	pop	ix
	ld	(iy), hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 71
	ld	hl, (iy + 0)
	ld	(hl), de
	ld	de, -256
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, 20
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, -6777217
	push	hl
	ld	de, -196
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 23
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z13game_buy_areaR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB165_84
; %bb.80:
	ld	de, -211
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	a, (hl)
	cp	a, 1
	jr	nz, .LBB165_84
; %bb.81:
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	a, (hl)
	ld	bc, -190
	lea	iy, ix + 0
	add	iy, bc
	ld	e, (iy + 0)
	ld	d, (iy + 1)
	ld	l, e
	ld	h, d
	ld.sis	bc, 2048
	call	__sor
	bit	1, a
	jr	z, .LBB165_83
; %bb.82:
	ex.sis	de, hl
	.local	.LBB165_83
.LBB165_83:
	ld	de, -190
	jr	.LBB165_85
	.local	.LBB165_84
.LBB165_84:                             ; %.loopexit
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 2048
	call	__sor
	.local	.LBB165_85
.LBB165_85:
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	or	a, a
	sbc	hl, hl
	ld	de, (ix + 6)
	push	hl
	ld	bc, 10
	push	bc
	push	de
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	de, 1026
	add	hl, de
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	set	1, (hl)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000
	push	hl
	ld	de, -193
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 65
	ld	hl, (iy + 0)
	ldir
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 77
	push	hl
	ld	de, -196
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.86:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB165_137
; %bb.87:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 77
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.88:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	bit	1, (hl)
	jp	z, .LBB165_137
; %bb.89:
	ld	de, 140
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), iy
	pop	ix
	lea	iy, iy + 3
	push	ix
	lea	ix, ix - 128
	ld	(ix - 83), iy
	pop	ix
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB165_137
; %bb.90:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 11
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	de, 1026
	add	hl, de
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	set	1, (hl)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	de, -202
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 74
	ld	hl, (iy + 0)
	ldir
	ld	hl, 31
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 90
	push	hl
	ld	de, -205
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -205
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 23
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 55
	push	hl
	ld	de, -208
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -208
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.91:
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB165_137
; %bb.92:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 83)
	pop	ix
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB165_137
; %bb.93:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 55
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.94:
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	bit	1, (hl)
	jp	z, .LBB165_137
; %bb.95:
	ld	de, 194
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), iy
	pop	ix
	lea	iy, iy + 3
	push	ix
	lea	ix, ix - 128
	ld	(ix - 80), iy
	pop	ix
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB165_137
; %bb.96:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 12
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, 10
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.97:
	ld	hl, 3
	push	hl
	ld	hl, 7
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.98:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 100
	push	hl
	ld	de, -217
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 89
	ld	hl, (iy + 0)
	ldir
	ld	hl, 31
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 90
	push	hl
	ld	de, -214
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -214
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 23
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.99:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 90
	push	hl
	ld	hl, 23
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.100:
	ld	hl, 7
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z17game_effect_levelRK9GameState13UpgradeEffect
	pop	de
	pop	de
	ld.sis	de, 3
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB165_137
; %bb.101:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 13
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	set	1, (hl)
	ld	de, 2382
	ld	iy, (ix + 6)
	add	iy, de
	ld.sis	hl, 100
	push	ix
	lea	ix, ix - 128
	ld	(ix - 83), iy
	pop	ix
	ld	(iy), l
	ld	(iy + 1), h
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 99
	push	hl
	ld	de, -223
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 95
	ld	hl, (iy + 0)
	ldir
	ld	hl, 32
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 44
	push	hl
	ld	de, -220
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -220
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2306
	ld	bc, (ix + 6)
	push	bc
	pop	hl
	add	hl, de
	ld	de, -214
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	(hl), 1
	ld	de, 2302
	push	bc
	pop	iy
	add	iy, de
	ld	hl, 1000
	ld	(iy), hl
	lea	hl, iy + 3
	ld	(hl), 0
	ld	hl, 2
	push	hl
	push	bc
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.102:
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB165_137
; %bb.103:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 80)
	pop	ix
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB165_137
; %bb.104:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 44
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.105:
	ld	de, -253
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	bit	1, (hl)
	jp	nz, .LBB165_137
; %bb.106:
	ld	de, -211
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB165_137
; %bb.107:
	ld	de, -214
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	bit	0, (hl)
	jp	nz, .LBB165_137
; %bb.108:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 14
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2384
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	add	iy, de
	ld.sis	hl, 50
	ld	(iy), l
	ld	(iy + 1), h
	push	bc
	pop	hl
	ld	de, 1026
	add	hl, de
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	set	1, (hl)
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 80
	push	hl
	ld	de, -244
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 116
	ld	hl, (iy + 0)
	ldir
	ld	hl, 33
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 33
	push	hl
	ld	de, -241
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -241
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 12
	push	hl
	ld	de, -238
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -238
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 13
	push	hl
	ld	de, -235
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -235
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 49
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 14
	push	hl
	ld	de, -232
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -232
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 55
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	de, -229
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -229
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 58
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 16
	push	hl
	ld	de, -226
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -226
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 46
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.109:
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z14game_can_resetRK9GameState9ResetTier
	pop	hl
	pop	hl
	ld	de, 200
	ld	iy, (ix + 6)
	add	iy, de
	bit	0, a
	jp	nz, .LBB165_137
; %bb.110:
	ld	hl, (iy)
	lea	bc, iy + 3
	ld	iy, (ix + 6)
	ld	de, (iy + 98)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 80), de
	pop	ix
	ld	a, (iy + 101)
	push	bc
	pop	iy
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB165_137
; %bb.111:
	ld	de, -208
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	e, a
	call	__lcmpzero
	jp	nz, .LBB165_137
; %bb.112:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 12
	push	hl
	ld	hl, 35
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.113:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 13
	push	hl
	ld	hl, 49
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.114:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 14
	push	hl
	ld	hl, 55
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.115:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, 58
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.116:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, 46
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.117:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	bit	1, (hl)
	jp	nz, .LBB165_137
; %bb.118:
	ld	hl, 3
	push	hl
	ld	hl, 30
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.119:
	ld	hl, 1
	push	hl
	ld	hl, 22
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.120:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z25game_toggle_ulc_sacrificeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.121:
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z25game_toggle_ulc_sacrificeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.122:
	ld	hl, 2
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z25game_toggle_ulc_sacrificeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.123:
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z25game_toggle_ulc_sacrificeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB165_137
; %bb.124:
	ld	hl, (ix + 6)
	push	hl
	call	__Z24game_ulc_sacrifice_countRK9GameState
	pop	hl
	cp	a, 7
	jp	nz, .LBB165_137
; %bb.125:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	set	1, (hl)
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	bc, 2384
	add	iy, bc
	ld.sis	hl, 50
	ld	(iy), l
	ld	(iy + 1), h
	ld	hl, 3
	push	hl
	push	de
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.126:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	bit	1, (hl)
	jp	z, .LBB165_137
; %bb.127:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 15
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	set	1, (hl)
	ld	hl, (ix + 6)
	ld	de, 1040
	add	hl, de
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	(hl), 1
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000000
	push	hl
	ld	de, -250
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 122
	ld	hl, (iy + 0)
	ldir
	ld	hl, 44
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 99
	push	hl
	ld	de, -247
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -247
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	ld	hl, 73
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 4
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	ld	de, 266
	ld	iy, (ix + 6)
	add	iy, de
	bit	0, a
	jp	z, .LBB165_137
; %bb.128:
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 71)
	pop	ix
	ld	a, (hl)
	cp	a, 1
	jp	nz, .LBB165_137
; %bb.129:
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	nz, .LBB165_137
; %bb.130:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 250000
	push	hl
	ld	hl, 73
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_137
; %bb.131:
	or	a, a
	sbc	hl, hl
	push	hl
	inc	hl
	push	hl
	ld	hl, 45
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2394
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
	ld.sis	de, 1
                                        ; kill: def $hl killed $hl killed $uhl
	or	a, a
	sbc.sis	hl, de
	ld	c, -1
	ld	l, c
	jr	z, .LBB165_133
; %bb.132:
	ld	l, 0
	.local	.LBB165_133
.LBB165_133:
	and	a, l
	ld	b, a
	ld	de, 2396
	ld	iy, (ix + 6)
	add	iy, de
	ld	hl, (iy)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 1
	or	a, a
	sbc.sis	hl, de
	jr	z, .LBB165_135
; %bb.134:
	ld	c, 0
	.local	.LBB165_135
.LBB165_135:
	ld	a, b
	and	a, c
	ld	e, a
	ld	bc, -190
	lea	iy, ix + 0
	add	iy, bc
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 4096
	call	__sor
	bit	0, e
	jr	nz, .LBB165_139
; %bb.136:
	ld	de, -190
	jr	.LBB165_138
	.local	.LBB165_137
.LBB165_137:
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 4096
	call	__sor
	.local	.LBB165_138
.LBB165_138:
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_139
.LBB165_139:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 20
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 321
	push	hl
	ld	de, -193
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 65
	ld	hl, (iy + 0)
	ldir
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2259
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	lea	hl, iy + 0
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), hl
	pop	ix
	ld	(hl), 75
	ld	de, 2322
	add	iy, de
	ld	hl, 777
	ld	(iy), hl
	ld	de, -208
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	lea	hl, iy + 3
	ld	de, -211
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	(hl), 0
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 88
	push	hl
	ld	de, -196
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	ld	de, 2348
	ld	iy, (ix + 6)
	lea	hl, iy + 0
	add	hl, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 86), hl
	pop	ix
	ex	de, hl
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 68)
	pop	ix
	ld	bc, 6
	ldir
	ld	de, 2386
	lea	bc, iy + 0
	add	iy, de
	ld.sis	hl, 9
	ld	(iy), l
	ld	(iy + 1), h
	ld	de, 2378
	push	bc
	pop	iy
	add	iy, de
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 89), hl
	pop	ix
	ld	de, -223
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	lea	hl, iy + 3
	ld	de, -226
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	a, (hl)
	ld	de, -220
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), a
	or	a, a
	sbc	hl, hl
	push	hl
	push	bc
	call	__Z20game_start_challengeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_160
; %bb.140:
	ld	hl, (ix + 6)
	push	hl
	call	__Z21game_finish_challengeR9GameState
	pop	hl
	bit	0, a
	jp	nz, .LBB165_160
; %bb.141:
	ld	iy, (ix + 6)
	ld	hl, (iy + 98)
	lea	bc, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 71)
	pop	ix
	ld	a, (iy)
	push	bc
	pop	iy
	ld	de, 2386
	add	iy, de
	push	ix
	lea	ix, ix - 128
	ld	(ix - 104), iy
	pop	ix
	ld	de, (iy)
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 101
	ld	(iy + 0), de
	push	bc
	pop	iy
	ld	e, (iy + 101)
	call	__lcmpzero
	jp	nz, .LBB165_160
; %bb.142:
	or	a, a
	jp	nz, .LBB165_160
; %bb.143:
	ld	de, -229
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	add.sis	hl, bc
	or	a, a
	sbc.sis	hl, bc
	jp	nz, .LBB165_160
; %bb.144:
	ld	hl, (ix + 6)
	push	hl
	call	__Z22game_abandon_challengeR9GameState
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 321
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_160
; %bb.145:
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	a, (hl)
	cp	a, 75
	jp	nz, .LBB165_160
; %bb.146:
	ld	de, -208
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 83)
	pop	ix
	ld	e, (iy)
	ld	bc, 777
	xor	a, a
	call	__lcmpu
	jp	nz, .LBB165_160
; %bb.147:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	de, 0
	push	de
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_160
; %bb.148:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 88
	push	hl
	ld	de, -202
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	bc, 6
	lea	de, iy + 0
	push	ix
	lea	ix, ix - 128
	ld	hl, (ix - 86)
	pop	ix
	ldir
	lea	de, iy + 6
	ld	bc, -202
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB165_160
; %bb.149:
	ld	de, -232
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 9
	or	a, a
	sbc.sis	hl, de
	jp	nz, .LBB165_160
; %bb.150:
	ld	de, -223
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	hl, (hl)
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 98)
	pop	ix
	ld	e, (iy)
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 89
	ld	bc, (iy + 0)
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 92
	ld	a, (iy + 0)                     ; 1-byte Folded Reload
	call	__lcmpu
	jp	nz, .LBB165_160
; %bb.151:
	ld	hl, 4
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_start_challengeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_160
; %bb.152:
	ld	de, 954
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld.sis	de, 10
	ld	(iy), e
	ld	(iy + 1), d
	push	hl
	call	__Z21game_finish_challengeR9GameState
	pop	hl
	bit	0, a
	jp	z, .LBB165_160
; %bb.153:
	ld	de, 1048
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	ld	de, 212
	add	hl, de
	bit	4, (iy)
	jp	z, .LBB165_160
; %bb.154:
	push	hl
	pop	iy
	ld	hl, (iy)
	lea	iy, iy + 3
	ld	e, (iy)
	call	__lcmpzero
	jp	z, .LBB165_160
; %bb.155:
	ld	hl, 1
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_start_challengeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_160
; %bb.156:
	ld	de, 1051
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	add	iy, de
	dec	de
	add	hl, de
	bit	0, (iy)
	jp	z, .LBB165_160
; %bb.157:
	ld	a, (hl)
	ld	l, -5
	and	a, l
	ld	l, a
	cp	a, 1
	jr	nz, .LBB165_160
; %bb.158:
	ld	hl, (ix + 6)
	push	hl
	call	__Z22game_abandon_challengeR9GameState
	pop	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z20game_start_challengeR9GameStateh
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB165_160
; %bb.159:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 1000
	push	hl
	ld	de, -205
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 77
	ld	hl, (iy + 0)
	ldir
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z16game_apply_resetR9GameState9ResetTier
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB165_168
	.local	.LBB165_160
.LBB165_160:
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 8192
	call	__sor
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), l
	ld	(iy + 1), h
	.local	.LBB165_161
.LBB165_161:
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 30
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_newR9GameStatem
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	de, 1018
	add	iy, de
	ld	de, -205
	lea	hl, ix + 0
	add	hl, de
	ld	(hl), iy
	ld	hl, (iy)
	push	ix
	lea	ix, ix - 128
	ld	(ix - 80), hl
	pop	ix
	lea	hl, iy + 3
	push	ix
	lea	ix, ix - 128
	ld	(ix - 71), hl
	pop	ix
	ld	de, (hl)
	lea	hl, iy + 6
	ld	bc, -202
	lea	iy, ix + 0
	add	iy, bc
	ld	(iy + 0), hl
	ld	bc, (hl)
	ld	iy, 0
	push	iy
	push	iy
	ld	iy, 8
	push	iy
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 80
	ld	hl, (iy + 0)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llor
	pop	iy
	pop	iy
	pop	iy
	push	ix
	lea	ix, ix - 128
	ld	iy, (ix - 77)
	pop	ix
	ld	(iy), hl
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 71
	ld	hl, (iy + 0)
	ld	(hl), de
	ld	de, -202
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 60
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z18game_apply_offlineR9GameStatem
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (iy + 2)
	ld	e, (iy + 5)
	call	__lcmpzero
	jr	nz, .LBB165_163
; %bb.162:
	ld	de, -190
	lea	iy, ix + 0
	add	iy, de
	ld	l, (iy + 0)
	ld	h, (iy + 1)
	ld.sis	bc, 16384
	call	__sor
	jp	.LBB165_166
	.local	.LBB165_163
.LBB165_163:
	lea	hl, iy + 2
	ld	de, -199
	lea	iy, ix + 0
	add	iy, de
	ld	(iy + 0), hl
	ld	hl, 30000
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, -6777217
	push	hl
	ld	de, -193
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, 6
	lea	iy, ix + 0
	lea	iy, iy - 128
	lea	iy, iy - 65
	ld	hl, (iy + 0)
	ldir
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 30000
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, -6777217
	push	hl
	ld	de, -196
	lea	iy, ix + 0
	add	iy, de
	ld	hl, (iy + 0)
	push	hl
	call	__Z7bn_makems
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -196
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__Z8game_addR9GameState10ResourceId6BigNum
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	ex	de, hl
	ld	hl, 0
	add	hl, sp
	ex	de, hl
	ld	bc, -199
	lea	iy, ix + 0
	add	iy, bc
	ld	hl, (iy + 0)
	ld	bc, 6
	ldir
	call	__Z8bn_valid6BigNum
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 6)
                                        ; kill: def $hl killed $hl killed $uhl
	ld.sis	de, 30000
	or	a, a
	sbc.sis	hl, de
	ld	l, -1
	jr	z, .LBB165_165
; %bb.164:
	ld	l, 0
	.local	.LBB165_165
.LBB165_165:
	and	a, l
	ld	iyl, a
	ld	bc, -190
	lea	hl, ix + 0
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	ld	l, e
	ld	h, d
	ld.sis	bc, 16384
	call	__sor
	bit	0, a
	jr	nz, .LBB165_167
	.local	.LBB165_166
.LBB165_166:
	ex.sis	de, hl
	.local	.LBB165_167
.LBB165_167:
	ex.sis	de, hl
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB165_168
.LBB165_168:
	ld	hl, (ix + 6)
	push	hl
	call	__Z22game_abandon_challengeR9GameState
	pop	hl
	jp	.LBB165_161
	.local	.Lfunc_end165
.Lfunc_end165:
	.size	__Z17runtime_self_testR9GameState, .Lfunc_end165-__Z17runtime_self_testR9GameState
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm,"ax",@progbits
	.type	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm,@function ; -- Begin function _ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm: ; @_ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
; %bb.0:
	ld	hl, -13
	call	__frameset
	ld	iy, (ix + 6)
	ld	c, (ix + 9)
	ld	de, (ix + 12)
	ld	a, (ix + 15)
	lea	hl, ix - 7
	ld	(ix - 10), hl
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	bc, 6
	call	__imulu
	push	hl
	pop	bc
	add	iy, bc
	lea	hl, iy + 2
	ld	(ix - 13), hl
	ld	l, a
	push	hl
	push	de
	ld	hl, (ix - 10)
	push	hl
	call	__Z11bn_from_u32m
	pop	hl
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	push	hl
	ld	iy, 0
	add	iy, sp
	lea	de, iy + 0
	ld	hl, (ix - 13)
	ld	bc, 6
	ldir
	lea	de, iy + 6
	ld	hl, (ix - 10)
	ld	bc, 6
	ldir
	call	__Z10bn_compare6BigNumS_
	pop	de
	pop	de
	pop	de
	pop	de
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB166_2
; %bb.1:
	ld	a, 0
	jr	.LBB166_3
	.local	.LBB166_2
.LBB166_2:
	ld	a, -1
	.local	.LBB166_3
.LBB166_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end166
.Lfunc_end166:
	.size	__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm, .Lfunc_end166-__ZN12_GLOBAL__N_19amount_isERK9GameState10ResourceIdm
                                        ; -- End function
	.section	.text.__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt,"ax",@progbits
	.type	__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt,@function ; -- Begin function _ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt: ; @_ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, _UPGRADE_DEFS+18
	ld	(ix - 3), de
	ld	bc, -1
	xor	a, a
	ld	de, 888
	add	hl, de
	.local	.LBB167_1
.LBB167_1:                              ; =>This Inner Loop Header: Depth=1
	push	hl
	pop	iy
	push	bc
	pop	hl
	ld	de, 31
	or	a, a
	sbc	hl, de
	jp	z, .LBB167_4
; %bb.2:                                ;   in Loop: Header=BB167_1 Depth=1
	inc	bc
	ld	(ix - 12), iy
	lea	hl, iy + 2
	ld	(ix - 9), hl
	ld	iy, (ix - 3)
	lea	de, iy + 20
	ld	(ix - 6), de
	ld	e, a
	ld	hl, (ix - 3)
	ld	a, (hl)
	ld	hl, (ix - 9)
	ld	d, (ix + 9)
	cp	a, d
	ld	a, e
	ld	de, (ix - 6)
	ld	(ix - 3), de
	jr	nz, .LBB167_1
; %bb.3:
	ld	hl, (ix + 12)
	ld	iy, (ix - 12)
	ld	(iy + 2), l
	ld	(iy + 3), h
	ld	de, 32
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
                                        ; kill: def $a killed $a
	sbc	a, a
	.local	.LBB167_4
.LBB167_4:                              ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end167
.Lfunc_end167:
	.size	__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt, .Lfunc_end167-__ZN12_GLOBAL__N_116set_effect_levelER9GameState13UpgradeEffectt
                                        ; -- End function
	.section	.rodata._.str,"a",@progbits
	.balign	1
	.local	_.str
_.str:
	.asciz	"0"

	.section	.rodata._.str.1,"a",@progbits
	.balign	1
	.local	_.str.1
_.str.1:
	.asciz	"%lu"

	.section	.rodata._.str.2,"a",@progbits
	.balign	1
	.local	_.str.2
_.str.2:
	.asciz	"%lu.%02lue%d"

	.section	.rodata.__ZZL9pow10_u32hE6values,"a",@progbits
	.balign	1
	.local	__ZZL9pow10_u32hE6values
__ZZL9pow10_u32hE6values:
	d32	1                               ; 0x1
	d32	10                              ; 0xa
	d32	100                             ; 0x64
	d32	1000                            ; 0x3e8
	d32	10000                           ; 0x2710
	d32	100000                          ; 0x186a0
	d32	1000000                         ; 0xf4240
	d32	10000000                        ; 0x989680

	.section	.rodata._.str.3,"a",@progbits
	.balign	1
	.local	_.str.3
_.str.3:
	.asciz	"Leaves"

	.section	.rodata._.str.1.4,"a",@progbits
	.balign	1
	.local	_.str.1.4
_.str.1.4:
	.asciz	"Leaf"

	.section	.rodata._.str.2.5,"a",@progbits
	.balign	1
	.local	_.str.2.5
_.str.2.5:
	.asciz	"Gold Leaves"

	.section	.rodata._.str.3.6,"a",@progbits
	.balign	1
	.local	_.str.3.6
_.str.3.6:
	.asciz	"Gold"

	.section	.rodata._.str.4,"a",@progbits
	.balign	1
	.local	_.str.4
_.str.4:
	.asciz	"Platinum Leaves"

	.section	.rodata._.str.5,"a",@progbits
	.balign	1
	.local	_.str.5
_.str.5:
	.asciz	"Plat"

	.section	.rodata._.str.6,"a",@progbits
	.balign	1
	.local	_.str.6
_.str.6:
	.asciz	"Bismuth Leaves"

	.section	.rodata._.str.7,"a",@progbits
	.balign	1
	.local	_.str.7
_.str.7:
	.asciz	"Bism"

	.section	.rodata._.str.8,"a",@progbits
	.balign	1
	.local	_.str.8
_.str.8:
	.asciz	"Cosmic Leaves"

	.section	.rodata._.str.9,"a",@progbits
	.balign	1
	.local	_.str.9
_.str.9:
	.asciz	"Cos"

	.section	.rodata._.str.10,"a",@progbits
	.balign	1
	.local	_.str.10
_.str.10:
	.asciz	"Void Leaves"

	.section	.rodata._.str.11,"a",@progbits
	.balign	1
	.local	_.str.11
_.str.11:
	.asciz	"Void"

	.section	.rodata._.str.12,"a",@progbits
	.balign	1
	.local	_.str.12
_.str.12:
	.asciz	"Exotic Leaves"

	.section	.rodata._.str.13,"a",@progbits
	.balign	1
	.local	_.str.13
_.str.13:
	.asciz	"Exot"

	.section	.rodata._.str.14,"a",@progbits
	.balign	1
	.local	_.str.14
_.str.14:
	.asciz	"Celestial Leaves"

	.section	.rodata._.str.15,"a",@progbits
	.balign	1
	.local	_.str.15
_.str.15:
	.asciz	"Cele"

	.section	.rodata._.str.16,"a",@progbits
	.balign	1
	.local	_.str.16
_.str.16:
	.asciz	"Mythical Leaves"

	.section	.rodata._.str.17,"a",@progbits
	.balign	1
	.local	_.str.17
_.str.17:
	.asciz	"Myth"

	.section	.rodata._.str.18,"a",@progbits
	.balign	1
	.local	_.str.18
_.str.18:
	.asciz	"Lava Leaves"

	.section	.rodata._.str.19,"a",@progbits
	.balign	1
	.local	_.str.19
_.str.19:
	.asciz	"Lava"

	.section	.rodata._.str.20,"a",@progbits
	.balign	1
	.local	_.str.20
_.str.20:
	.asciz	"Ice Leaves"

	.section	.rodata._.str.21,"a",@progbits
	.balign	1
	.local	_.str.21
_.str.21:
	.asciz	"Ice"

	.section	.rodata._.str.22,"a",@progbits
	.balign	1
	.local	_.str.22
_.str.22:
	.asciz	"Obsidian Leaves"

	.section	.rodata._.str.23,"a",@progbits
	.balign	1
	.local	_.str.23
_.str.23:
	.asciz	"Obsi"

	.section	.rodata._.str.24,"a",@progbits
	.balign	1
	.local	_.str.24
_.str.24:
	.asciz	"Silicon Leaves"

	.section	.rodata._.str.25,"a",@progbits
	.balign	1
	.local	_.str.25
_.str.25:
	.asciz	"Sili"

	.section	.rodata._.str.26,"a",@progbits
	.balign	1
	.local	_.str.26
_.str.26:
	.asciz	"Benitoite Leaves"

	.section	.rodata._.str.27,"a",@progbits
	.balign	1
	.local	_.str.27
_.str.27:
	.asciz	"Beni"

	.section	.rodata._.str.28,"a",@progbits
	.balign	1
	.local	_.str.28
_.str.28:
	.asciz	"Moonstone Leaves"

	.section	.rodata._.str.29,"a",@progbits
	.balign	1
	.local	_.str.29
_.str.29:
	.asciz	"Moon"

	.section	.rodata._.str.30,"a",@progbits
	.balign	1
	.local	_.str.30
_.str.30:
	.asciz	"Sand Leaves"

	.section	.rodata._.str.31,"a",@progbits
	.balign	1
	.local	_.str.31
_.str.31:
	.asciz	"Sand"

	.section	.rodata._.str.32,"a",@progbits
	.balign	1
	.local	_.str.32
_.str.32:
	.asciz	"Ancient Leaves"

	.section	.rodata._.str.33,"a",@progbits
	.balign	1
	.local	_.str.33
_.str.33:
	.asciz	"Anct"

	.section	.rodata._.str.34,"a",@progbits
	.balign	1
	.local	_.str.34
_.str.34:
	.asciz	"Sacred Leaves"

	.section	.rodata._.str.35,"a",@progbits
	.balign	1
	.local	_.str.35
_.str.35:
	.asciz	"Sacr"

	.section	.rodata._.str.36,"a",@progbits
	.balign	1
	.local	_.str.36
_.str.36:
	.asciz	"Biotite Leaves"

	.section	.rodata._.str.37,"a",@progbits
	.balign	1
	.local	_.str.37
_.str.37:
	.asciz	"Biot"

	.section	.rodata._.str.38,"a",@progbits
	.balign	1
	.local	_.str.38
_.str.38:
	.asciz	"Malachite Leaves"

	.section	.rodata._.str.39,"a",@progbits
	.balign	1
	.local	_.str.39
_.str.39:
	.asciz	"Mala"

	.section	.rodata._.str.40,"a",@progbits
	.balign	1
	.local	_.str.40
_.str.40:
	.asciz	"Hematite Leaves"

	.section	.rodata._.str.41,"a",@progbits
	.balign	1
	.local	_.str.41
_.str.41:
	.asciz	"Hema"

	.section	.rodata._.str.42,"a",@progbits
	.balign	1
	.local	_.str.42
_.str.42:
	.asciz	"Plasma Leaves"

	.section	.rodata._.str.43,"a",@progbits
	.balign	1
	.local	_.str.43
_.str.43:
	.asciz	"Plas"

	.section	.rodata._.str.44,"a",@progbits
	.balign	1
	.local	_.str.44
_.str.44:
	.asciz	"Electrical Leaves"

	.section	.rodata._.str.45,"a",@progbits
	.balign	1
	.local	_.str.45
_.str.45:
	.asciz	"Elec"

	.section	.rodata._.str.46,"a",@progbits
	.balign	1
	.local	_.str.46
_.str.46:
	.asciz	"Prestige Coins"

	.section	.rodata._.str.47,"a",@progbits
	.balign	1
	.local	_.str.47
_.str.47:
	.asciz	"Coin"

	.section	.rodata._.str.48,"a",@progbits
	.balign	1
	.local	_.str.48
_.str.48:
	.asciz	"Red Flasks"

	.section	.rodata._.str.49,"a",@progbits
	.balign	1
	.local	_.str.49
_.str.49:
	.asciz	"RFlk"

	.section	.rodata._.str.50,"a",@progbits
	.balign	1
	.local	_.str.50
_.str.50:
	.asciz	"Orange Flasks"

	.section	.rodata._.str.51,"a",@progbits
	.balign	1
	.local	_.str.51
_.str.51:
	.asciz	"OFlk"

	.section	.rodata._.str.52,"a",@progbits
	.balign	1
	.local	_.str.52
_.str.52:
	.asciz	"Yellow Flasks"

	.section	.rodata._.str.53,"a",@progbits
	.balign	1
	.local	_.str.53
_.str.53:
	.asciz	"YFlk"

	.section	.rodata._.str.54,"a",@progbits
	.balign	1
	.local	_.str.54
_.str.54:
	.asciz	"Green Flasks"

	.section	.rodata._.str.55,"a",@progbits
	.balign	1
	.local	_.str.55
_.str.55:
	.asciz	"GFlk"

	.section	.rodata._.str.56,"a",@progbits
	.balign	1
	.local	_.str.56
_.str.56:
	.asciz	"Blue Flasks"

	.section	.rodata._.str.57,"a",@progbits
	.balign	1
	.local	_.str.57
_.str.57:
	.asciz	"BFlk"

	.section	.rodata._.str.58,"a",@progbits
	.balign	1
	.local	_.str.58
_.str.58:
	.asciz	"Purple Flasks"

	.section	.rodata._.str.59,"a",@progbits
	.balign	1
	.local	_.str.59
_.str.59:
	.asciz	"PFlk"

	.section	.rodata._.str.60,"a",@progbits
	.balign	1
	.local	_.str.60
_.str.60:
	.asciz	"Black Flasks"

	.section	.rodata._.str.61,"a",@progbits
	.balign	1
	.local	_.str.61
_.str.61:
	.asciz	"KFlk"

	.section	.rodata._.str.62,"a",@progbits
	.balign	1
	.local	_.str.62
_.str.62:
	.asciz	"Strange Flasks"

	.section	.rodata._.str.63,"a",@progbits
	.balign	1
	.local	_.str.63
_.str.63:
	.asciz	"SFlk"

	.section	.rodata._.str.64,"a",@progbits
	.balign	1
	.local	_.str.64
_.str.64:
	.asciz	"BLC Coins"

	.section	.rodata._.str.65,"a",@progbits
	.balign	1
	.local	_.str.65
_.str.65:
	.asciz	"BLC"

	.section	.rodata._.str.66,"a",@progbits
	.balign	1
	.local	_.str.66
_.str.66:
	.asciz	"MLC Coins"

	.section	.rodata._.str.67,"a",@progbits
	.balign	1
	.local	_.str.67
_.str.67:
	.asciz	"MLC"

	.section	.rodata._.str.68,"a",@progbits
	.balign	1
	.local	_.str.68
_.str.68:
	.asciz	"ULC Coins"

	.section	.rodata._.str.69,"a",@progbits
	.balign	1
	.local	_.str.69
_.str.69:
	.asciz	"ULC"

	.section	.rodata._.str.70,"a",@progbits
	.balign	1
	.local	_.str.70
_.str.70:
	.asciz	"Gems"

	.section	.rodata._.str.71,"a",@progbits
	.balign	1
	.local	_.str.71
_.str.71:
	.asciz	"Gem"

	.section	.rodata._.str.72,"a",@progbits
	.balign	1
	.local	_.str.72
_.str.72:
	.asciz	"Cheese"

	.section	.rodata._.str.73,"a",@progbits
	.balign	1
	.local	_.str.73
_.str.73:
	.asciz	"Chz"

	.section	.rodata._.str.75,"a",@progbits
	.balign	1
	.local	_.str.75
_.str.75:
	.asciz	"Mat"

	.section	.rodata._.str.76,"a",@progbits
	.balign	1
	.local	_.str.76
_.str.76:
	.asciz	"Essence"

	.section	.rodata._.str.77,"a",@progbits
	.balign	1
	.local	_.str.77
_.str.77:
	.asciz	"Ess"

	.section	.rodata._.str.78,"a",@progbits
	.balign	1
	.local	_.str.78
_.str.78:
	.asciz	"Mulch"

	.section	.rodata._.str.79,"a",@progbits
	.balign	1
	.local	_.str.79
_.str.79:
	.asciz	"Borbs"

	.section	.rodata._.str.80,"a",@progbits
	.balign	1
	.local	_.str.80
_.str.80:
	.asciz	"Borb"

	.section	.rodata._.str.81,"a",@progbits
	.balign	1
	.local	_.str.81
_.str.81:
	.asciz	"Card Parts"

	.section	.rodata._.str.82,"a",@progbits
	.balign	1
	.local	_.str.82
_.str.82:
	.asciz	"Card"

	.section	.rodata._.str.83,"a",@progbits
	.balign	1
	.local	_.str.83
_.str.83:
	.asciz	"Dice Points"

	.section	.rodata._.str.85,"a",@progbits
	.balign	1
	.local	_.str.85
_.str.85:
	.asciz	"Souls"

	.section	.rodata._.str.86,"a",@progbits
	.balign	1
	.local	_.str.86
_.str.86:
	.asciz	"Soul"

	.section	.rodata._.str.87,"a",@progbits
	.balign	1
	.local	_.str.87
_.str.87:
	.asciz	"Quarks"

	.section	.rodata._.str.88,"a",@progbits
	.balign	1
	.local	_.str.88
_.str.88:
	.asciz	"Quark"

	.section	.rodata._.str.89,"a",@progbits
	.balign	1
	.local	_.str.89
_.str.89:
	.asciz	"Quantum Blobs"

	.section	.rodata._.str.90,"a",@progbits
	.balign	1
	.local	_.str.90
_.str.90:
	.asciz	"QBlob"

	.section	.rodata._.str.91,"a",@progbits
	.balign	1
	.local	_.str.91
_.str.91:
	.asciz	"Shadow Crystals"

	.section	.rodata._.str.92,"a",@progbits
	.balign	1
	.local	_.str.92
_.str.92:
	.asciz	"Shad"

	.section	.rodata._.str.93,"a",@progbits
	.balign	1
	.local	_.str.93
_.str.93:
	.asciz	"Energy"

	.section	.rodata._.str.94,"a",@progbits
	.balign	1
	.local	_.str.94
_.str.94:
	.asciz	"NRG"

	.section	.rodata._.str.95,"a",@progbits
	.balign	1
	.local	_.str.95
_.str.95:
	.asciz	"Beer"

	.section	.rodata._.str.96,"a",@progbits
	.balign	1
	.local	_.str.96
_.str.96:
	.asciz	"Curses"

	.section	.rodata._.str.97,"a",@progbits
	.balign	1
	.local	_.str.97
_.str.97:
	.asciz	"Curse"

	.section	.rodata._.str.98,"a",@progbits
	.balign	1
	.local	_.str.98
_.str.98:
	.asciz	"Silver Tokens"

	.section	.rodata._.str.99,"a",@progbits
	.balign	1
	.local	_.str.99
_.str.99:
	.asciz	"Silv"

	.section	.rodata._.str.100,"a",@progbits
	.balign	1
	.local	_.str.100
_.str.100:
	.asciz	"Gold Tokens"

	.section	.rodata._.str.101,"a",@progbits
	.balign	1
	.local	_.str.101
_.str.101:
	.asciz	"GTok"

	.section	.rodata._.str.102,"a",@progbits
	.balign	1
	.local	_.str.102
_.str.102:
	.asciz	"Shards"

	.section	.rodata._.str.103,"a",@progbits
	.balign	1
	.local	_.str.103
_.str.103:
	.asciz	"Shard"

	.section	.rodata._.str.104,"a",@progbits
	.balign	1
	.local	_.str.104
_.str.104:
	.asciz	"Coal Leaves"

	.section	.rodata._.str.105,"a",@progbits
	.balign	1
	.local	_.str.105
_.str.105:
	.asciz	"Coal"

	.section	.rodata._.str.106,"a",@progbits
	.balign	1
	.local	_.str.106
_.str.106:
	.asciz	"Coal Bars"

	.section	.rodata._.str.107,"a",@progbits
	.balign	1
	.local	_.str.107
_.str.107:
	.asciz	"CBar"

	.section	.rodata._.str.108,"a",@progbits
	.balign	1
	.local	_.str.108
_.str.108:
	.asciz	"Fish Credits"

	.section	.rodata._.str.109,"a",@progbits
	.balign	1
	.local	_.str.109
_.str.109:
	.asciz	"Fish"

	.section	.rodata._.str.110,"a",@progbits
	.balign	1
	.local	_.str.110
_.str.110:
	.asciz	"Relic Fragments"

	.section	.rodata._.str.111,"a",@progbits
	.balign	1
	.local	_.str.111
_.str.111:
	.asciz	"Relic"

	.section	.rodata._.str.112,"a",@progbits
	.balign	1
	.local	_.str.112
_.str.112:
	.asciz	"Water Leaves"

	.section	.rodata._.str.113,"a",@progbits
	.balign	1
	.local	_.str.113
_.str.113:
	.asciz	"Water"

	.section	.rodata._.str.114,"a",@progbits
	.balign	1
	.local	_.str.114
_.str.114:
	.asciz	"Water Crystals"

	.section	.rodata._.str.115,"a",@progbits
	.balign	1
	.local	_.str.115
_.str.115:
	.asciz	"WCryst"

	.section	.rodata._.str.116,"a",@progbits
	.balign	1
	.local	_.str.116
_.str.116:
	.asciz	"Ship Fuel"

	.section	.rodata._.str.117,"a",@progbits
	.balign	1
	.local	_.str.117
_.str.117:
	.asciz	"Fuel"

	.section	.rodata._.str.118,"a",@progbits
	.balign	1
	.local	_.str.118
_.str.118:
	.asciz	"Party Tokens"

	.section	.rodata._.str.119,"a",@progbits
	.balign	1
	.local	_.str.119
_.str.119:
	.asciz	"Party"

	.section	.rodata._.str.120,"a",@progbits
	.balign	1
	.local	_.str.120
_.str.120:
	.asciz	"Dusk Leaves"

	.section	.rodata._.str.121,"a",@progbits
	.balign	1
	.local	_.str.121
_.str.121:
	.asciz	"Dusk"

	.section	.rodata._.str.122,"a",@progbits
	.balign	1
	.local	_.str.122
_.str.122:
	.asciz	"Amber Leaves"

	.section	.rodata._.str.123,"a",@progbits
	.balign	1
	.local	_.str.123
_.str.123:
	.asciz	"Amber"

	.section	.rodata._.str.124,"a",@progbits
	.balign	1
	.local	_.str.124
_.str.124:
	.asciz	"Amethyst Leaves"

	.section	.rodata._.str.125,"a",@progbits
	.balign	1
	.local	_.str.125
_.str.125:
	.asciz	"Ameth"

	.section	.rodata._.str.126,"a",@progbits
	.balign	1
	.local	_.str.126
_.str.126:
	.asciz	"Emerald Leaves"

	.section	.rodata._.str.127,"a",@progbits
	.balign	1
	.local	_.str.127
_.str.127:
	.asciz	"Emer"

	.section	.rodata._.str.128,"a",@progbits
	.balign	1
	.local	_.str.128
_.str.128:
	.asciz	"Kyanite Leaves"

	.section	.rodata._.str.129,"a",@progbits
	.balign	1
	.local	_.str.129
_.str.129:
	.asciz	"Kyan"

	.section	.rodata._.str.130,"a",@progbits
	.balign	1
	.local	_.str.130
_.str.130:
	.asciz	"Rhodonite Leaves"

	.section	.rodata._.str.131,"a",@progbits
	.balign	1
	.local	_.str.131
_.str.131:
	.asciz	"Rhod"

	.section	.rodata._.str.132,"a",@progbits
	.balign	1
	.local	_.str.132
_.str.132:
	.asciz	"Ruby Leaves"

	.section	.rodata._.str.133,"a",@progbits
	.balign	1
	.local	_.str.133
_.str.133:
	.asciz	"Ruby"

	.section	.rodata._.str.134,"a",@progbits
	.balign	1
	.local	_.str.134
_.str.134:
	.asciz	"Tektite Leaves"

	.section	.rodata._.str.135,"a",@progbits
	.balign	1
	.local	_.str.135
_.str.135:
	.asciz	"Tekt"

	.section	.rodata._.str.136,"a",@progbits
	.balign	1
	.local	_.str.136
_.str.136:
	.asciz	"Azurite Leaves"

	.section	.rodata._.str.137,"a",@progbits
	.balign	1
	.local	_.str.137
_.str.137:
	.asciz	"Azur"

	.section	.rodata._.str.138,"a",@progbits
	.balign	1
	.local	_.str.138
_.str.138:
	.asciz	"Niobium Leaves"

	.section	.rodata._.str.139,"a",@progbits
	.balign	1
	.local	_.str.139
_.str.139:
	.asciz	"Niob"

	.section	.rodata._.str.140,"a",@progbits
	.balign	1
	.local	_.str.140
_.str.140:
	.asciz	"Empty Soul Leaves"

	.section	.rodata._.str.141,"a",@progbits
	.balign	1
	.local	_.str.141
_.str.141:
	.asciz	"Empty"

	.section	.rodata._.str.142,"a",@progbits
	.balign	1
	.local	_.str.142
_.str.142:
	.asciz	"Soul Leaves"

	.section	.rodata._.str.143,"a",@progbits
	.balign	1
	.local	_.str.143
_.str.143:
	.asciz	"SLeaf"

	.section	.rodata._.str.144,"a",@progbits
	.balign	1
	.local	_.str.144
_.str.144:
	.asciz	"Quark Leaves"

	.section	.rodata._.str.145,"a",@progbits
	.balign	1
	.local	_.str.145
_.str.145:
	.asciz	"QLeaf"

	.section	.rodata._.str.149,"a",@progbits
	.balign	1
	.local	_.str.149
_.str.149:
	.asciz	"Printers"

	.section	.rodata._.str.150,"a",@progbits
	.balign	1
	.local	_.str.150
_.str.150:
	.asciz	"Converters"

	.section	.rodata._.str.151,"a",@progbits
	.balign	1
	.local	_.str.151
_.str.151:
	.asciz	"Flasks"

	.section	.rodata._.str.153,"a",@progbits
	.balign	1
	.local	_.str.153
_.str.153:
	.asciz	"Seeds"

	.section	.rodata._.str.154,"a",@progbits
	.balign	1
	.local	_.str.154
_.str.154:
	.asciz	"Autoblowers"

	.section	.rodata._.str.157,"a",@progbits
	.balign	1
	.local	_.str.157
_.str.157:
	.asciz	"Crafting"

	.section	.rodata._.str.158,"a",@progbits
	.balign	1
	.local	_.str.158
_.str.158:
	.asciz	"Alchemy"

	.section	.rodata._.str.159,"a",@progbits
	.balign	1
	.local	_.str.159
_.str.159:
	.asciz	"Artifacts"

	.section	.rodata._.str.160,"a",@progbits
	.balign	1
	.local	_.str.160
_.str.160:
	.asciz	"Leaf Tower"

	.section	.rodata._.str.164,"a",@progbits
	.balign	1
	.local	_.str.164
_.str.164:
	.asciz	"Pyramid"

	.section	.rodata._.str.167,"a",@progbits
	.balign	1
	.local	_.str.167
_.str.167:
	.asciz	"Death Book"

	.section	.rodata._.str.169,"a",@progbits
	.balign	1
	.local	_.str.169
_.str.169:
	.asciz	"Fishing"

	.section	.rodata._.str.171,"a",@progbits
	.balign	1
	.local	_.str.171
_.str.171:
	.asciz	"Banks"

	.section	.rodata._.str.172,"a",@progbits
	.balign	1
	.local	_.str.172
_.str.172:
	.asciz	"Soul Forge"

	.section	.rodata._.str.173,"a",@progbits
	.balign	1
	.local	_.str.173
_.str.173:
	.asciz	"Quark Reactor"

	.section	.rodata._.str.174,"a",@progbits
	.balign	1
	.local	_.str.174
_.str.174:
	.asciz	"Shadow Crystal"

	.section	.rodata._.str.175,"a",@progbits
	.balign	1
	.local	_.str.175
_.str.175:
	.asciz	"Galaxies"

	.section	.rodata._.str.176,"a",@progbits
	.balign	1
	.local	_.str.176
_.str.176:
	.asciz	"Fruit & Farming"

	.section	.rodata._.str.177,"a",@progbits
	.balign	1
	.local	_.str.177
_.str.177:
	.asciz	"Unique Leaves"

	.section	.rodata._.str.178,"a",@progbits
	.balign	1
	.local	_.str.178
_.str.178:
	.asciz	"Shovelling"

	.section	.rodata._.str.179,"a",@progbits
	.balign	1
	.local	_.str.179
_.str.179:
	.asciz	"Scrolls"

	.section	.rodata._.str.180,"a",@progbits
	.balign	1
	.local	_.str.180
_.str.180:
	.asciz	"Chests"

	.section	.rodata._.str.181,"a",@progbits
	.balign	1
	.local	_.str.181
_.str.181:
	.asciz	"Fusion & Ascension"

	.section	.rodata._.str.184,"a",@progbits
	.balign	1
	.local	_.str.184
_.str.184:
	.asciz	"Mirrors"

	.section	.rodata._.str.185,"a",@progbits
	.balign	1
	.local	_.str.185
_.str.185:
	.asciz	"Soul Crypt"

	.section	.rodata._.str.186,"a",@progbits
	.balign	1
	.local	_.str.186
_.str.186:
	.asciz	"Leafton Pit"

	.section	.rodata._.str.187,"a",@progbits
	.balign	1
	.local	_.str.187
_.str.187:
	.asciz	"Cheese Pub"

	.section	.rodata._.str.188,"a",@progbits
	.balign	1
	.local	_.str.188
_.str.188:
	.asciz	"House"

	.section	.rodata._.str.189,"a",@progbits
	.balign	1
	.local	_.str.189
_.str.189:
	.asciz	"Industrial Harbor"

	.section	.rodata._.str.190,"a",@progbits
	.balign	1
	.local	_.str.190
_.str.190:
	.asciz	"Harbor Jobs"

	.section	.rodata._.str.191,"a",@progbits
	.balign	1
	.local	_.str.191
_.str.191:
	.asciz	"Ships & Divers"

	.section	.rodata._.str.192,"a",@progbits
	.balign	1
	.local	_.str.192
_.str.192:
	.asciz	"Milestones"

	.section	.rodata._.str.193,"a",@progbits
	.balign	1
	.local	_.str.193
_.str.193:
	.asciz	"Daily Quests"

	.section	.rodata._.str.194,"a",@progbits
	.balign	1
	.local	_.str.194
_.str.194:
	.asciz	"Seasons & Events"

	.section	.rodata._.str.195,"a",@progbits
	.balign	1
	.local	_.str.195
_.str.195:
	.asciz	"Shadow Tree"

	.section	.rodata._.str.196,"a",@progbits
	.balign	1
	.local	_.str.196
_.str.196:
	.asciz	"Home Garden"

	.section	.rodata._.str.197,"a",@progbits
	.balign	1
	.local	_.str.197
_.str.197:
	.asciz	"Neighbors' Garden"

	.section	.rodata._.str.198,"a",@progbits
	.balign	1
	.local	_.str.198
_.str.198:
	.asciz	"Mountain"

	.section	.rodata._.str.199,"a",@progbits
	.balign	1
	.local	_.str.199
_.str.199:
	.asciz	"Space"

	.section	.rodata._.str.200,"a",@progbits
	.balign	1
	.local	_.str.200
_.str.200:
	.asciz	"THE VOID"

	.section	.rodata._.str.201,"a",@progbits
	.balign	1
	.local	_.str.201
_.str.201:
	.asciz	"The Abyss"

	.section	.rodata._.str.202,"a",@progbits
	.balign	1
	.local	_.str.202
_.str.202:
	.asciz	"The Celestial Plane"

	.section	.rodata._.str.203,"a",@progbits
	.balign	1
	.local	_.str.203
_.str.203:
	.asciz	"The Mythical Garden"

	.section	.rodata._.str.204,"a",@progbits
	.balign	1
	.local	_.str.204
_.str.204:
	.asciz	"The Volcano"

	.section	.rodata._.str.205,"a",@progbits
	.balign	1
	.local	_.str.205
_.str.205:
	.asciz	"The Abandoned Research Station"

	.section	.rodata._.str.206,"a",@progbits
	.balign	1
	.local	_.str.206
_.str.206:
	.asciz	"The Hidden Sea"

	.section	.rodata._.str.207,"a",@progbits
	.balign	1
	.local	_.str.207
_.str.207:
	.asciz	"Leafsink Harbor"

	.section	.rodata._.str.208,"a",@progbits
	.balign	1
	.local	_.str.208
_.str.208:
	.asciz	"The Leaf Tower"

	.section	.rodata._.str.209,"a",@progbits
	.balign	1
	.local	_.str.209
_.str.209:
	.asciz	"The Moon"

	.section	.rodata._.str.210,"a",@progbits
	.balign	1
	.local	_.str.210
_.str.210:
	.asciz	"The Infernal Desert"

	.section	.rodata._.str.211,"a",@progbits
	.balign	1
	.local	_.str.211
_.str.211:
	.asciz	"The Cursed Pyramid"

	.section	.rodata._.str.212,"a",@progbits
	.balign	1
	.local	_.str.212
_.str.212:
	.asciz	"The Inner Cursed Pyramid"

	.section	.rodata._.str.213,"a",@progbits
	.balign	1
	.local	_.str.213
_.str.213:
	.asciz	"Kokkaupunki"

	.section	.rodata._.str.214,"a",@progbits
	.balign	1
	.local	_.str.214
_.str.214:
	.asciz	"Cursed Kokkaupunki"

	.section	.rodata._.str.215,"a",@progbits
	.balign	1
	.local	_.str.215
_.str.215:
	.asciz	"The Dark Glade"

	.section	.rodata._.str.216,"a",@progbits
	.balign	1
	.local	_.str.216
_.str.216:
	.asciz	"Black Leaf Hole"

	.section	.rodata._.str.217,"a",@progbits
	.balign	1
	.local	_.str.217
_.str.217:
	.asciz	"Dicey Meadows"

	.section	.rodata._.str.218,"a",@progbits
	.balign	1
	.local	_.str.218
_.str.218:
	.asciz	"Glinting Thicket"

	.section	.rodata._.str.219,"a",@progbits
	.balign	1
	.local	_.str.219
_.str.219:
	.asciz	"Fish Pond"

	.section	.rodata._.str.220,"a",@progbits
	.balign	1
	.local	_.str.220
_.str.220:
	.asciz	"The Cheese Pub"

	.section	.rodata._.str.221,"a",@progbits
	.balign	1
	.local	_.str.221
_.str.221:
	.asciz	"Your House"

	.section	.rodata._.str.222,"a",@progbits
	.balign	1
	.local	_.str.222
_.str.222:
	.asciz	"Biotite Forest"

	.section	.rodata._.str.223,"a",@progbits
	.balign	1
	.local	_.str.223
_.str.223:
	.asciz	"The Exalted Bridge"

	.section	.rodata._.str.224,"a",@progbits
	.balign	1
	.local	_.str.224
_.str.224:
	.asciz	"The Ancient Sanctum"

	.section	.rodata._.str.225,"a",@progbits
	.balign	1
	.local	_.str.225
_.str.225:
	.asciz	"Vilewood Cemetery"

	.section	.rodata._.str.226,"a",@progbits
	.balign	1
	.local	_.str.226
_.str.226:
	.asciz	"The Lone Tree"

	.section	.rodata._.str.227,"a",@progbits
	.balign	1
	.local	_.str.227
_.str.227:
	.asciz	"Spark Range"

	.section	.rodata._.str.228,"a",@progbits
	.balign	1
	.local	_.str.228
_.str.228:
	.asciz	"Spark Bubble"

	.section	.rodata._.str.229,"a",@progbits
	.balign	1
	.local	_.str.229
_.str.229:
	.asciz	"Spark Portal"

	.section	.rodata._.str.230,"a",@progbits
	.balign	1
	.local	_.str.230
_.str.230:
	.asciz	"Energy Shrine"

	.section	.rodata._.str.231,"a",@progbits
	.balign	1
	.local	_.str.231
_.str.231:
	.asciz	"Plasma Forest"

	.section	.rodata._.str.232,"a",@progbits
	.balign	1
	.local	_.str.232
_.str.232:
	.asciz	"Blue Planet Edge"

	.section	.rodata._.str.233,"a",@progbits
	.balign	1
	.local	_.str.233
_.str.233:
	.asciz	"Green Planet Edge"

	.section	.rodata._.str.234,"a",@progbits
	.balign	1
	.local	_.str.234
_.str.234:
	.asciz	"Red Planet Edge"

	.section	.rodata._.str.235,"a",@progbits
	.balign	1
	.local	_.str.235
_.str.235:
	.asciz	"Purple Planet Edge"

	.section	.rodata._.str.236,"a",@progbits
	.balign	1
	.local	_.str.236
_.str.236:
	.asciz	"Black Planet Edge"

	.section	.rodata._.str.237,"a",@progbits
	.balign	1
	.local	_.str.237
_.str.237:
	.asciz	"Terror Graveyard"

	.section	.rodata._.str.238,"a",@progbits
	.balign	1
	.local	_.str.238
_.str.238:
	.asciz	"Energy Singularity"

	.section	.rodata._.str.239,"a",@progbits
	.balign	1
	.local	_.str.239
_.str.239:
	.asciz	"Fire Fields Portal"

	.section	.rodata._.str.240,"a",@progbits
	.balign	1
	.local	_.str.240
_.str.240:
	.asciz	"The Shadow Cavern"

	.section	.rodata._.str.241,"a",@progbits
	.balign	1
	.local	_.str.241
_.str.241:
	.asciz	"The Coal Mine"

	.section	.rodata._.str.242,"a",@progbits
	.balign	1
	.local	_.str.242
_.str.242:
	.asciz	"Mount Moltenfury"

	.section	.rodata._.str.243,"a",@progbits
	.balign	1
	.local	_.str.243
_.str.243:
	.asciz	"The Fire Temple"

	.section	.rodata._.str.244,"a",@progbits
	.balign	1
	.local	_.str.244
_.str.244:
	.asciz	"Flame Brazier"

	.section	.rodata._.str.245,"a",@progbits
	.balign	1
	.local	_.str.245
_.str.245:
	.asciz	"The Fire Universe"

	.section	.rodata._.str.246,"a",@progbits
	.balign	1
	.local	_.str.246
_.str.246:
	.asciz	"Soul Portal"

	.section	.rodata._.str.247,"a",@progbits
	.balign	1
	.local	_.str.247
_.str.247:
	.asciz	"Soul Temple"

	.section	.rodata._.str.248,"a",@progbits
	.balign	1
	.local	_.str.248
_.str.248:
	.asciz	"The Hollow"

	.section	.rodata._.str.249,"a",@progbits
	.balign	1
	.local	_.str.249
_.str.249:
	.asciz	"The Fabric of the Leafverse"

	.section	.rodata._.str.250,"a",@progbits
	.balign	1
	.local	_.str.250
_.str.250:
	.asciz	"Quark Portal"

	.section	.rodata._.str.251,"a",@progbits
	.balign	1
	.local	_.str.251
_.str.251:
	.asciz	"Primordial Ethos"

	.section	.rodata._.str.252,"a",@progbits
	.balign	1
	.local	_.str.252
_.str.252:
	.asciz	"Quark Nexus"

	.section	.rodata._.str.253,"a",@progbits
	.balign	1
	.local	_.str.253
_.str.253:
	.asciz	"Quantum Aether"

	.section	.rodata._.str.254,"a",@progbits
	.balign	1
	.local	_.str.254
_.str.254:
	.asciz	"Astral Oasis"

	.section	.rodata._.str.255,"a",@progbits
	.balign	1
	.local	_.str.255
_.str.255:
	.asciz	"Dimensional Tapestry"

	.section	.rodata._.str.256,"a",@progbits
	.balign	1
	.local	_.str.256
_.str.256:
	.asciz	"Planck Scope"

	.section	.rodata._.str.257,"a",@progbits
	.balign	1
	.local	_.str.257
_.str.257:
	.asciz	"Ante Leafton"

	.section	.rodata._.str.258,"a",@progbits
	.balign	1
	.local	_.str.258
_.str.258:
	.asciz	"The Leafton Pit"

	.section	.rodata._.str.259,"a",@progbits
	.balign	1
	.local	_.str.259
_.str.259:
	.asciz	"Tenebris Field"

	.section	.rodata._.str.260,"a",@progbits
	.balign	1
	.local	_.str.260
_.str.260:
	.asciz	"Blacklight Verge"

	.section	.rodata._.str.261,"a",@progbits
	.balign	1
	.local	_.str.261
_.str.261:
	.asciz	"Sombrynth"

	.section	.rodata._.str.262,"a",@progbits
	.balign	1
	.local	_.str.262
_.str.262:
	.asciz	"Latsyrc Wodash"

	.section	.rodata._.str.263,"a",@progbits
	.balign	1
	.local	_.str.263
_.str.263:
	.asciz	"Shadow Lighthouse"

	.section	.rodata._.str.264,"a",@progbits
	.balign	1
	.local	_.str.264
_.str.264:
	.asciz	"Spiral Walk"

	.section	.rodata._.str.265,"a",@progbits
	.balign	1
	.local	_.str.265
_.str.265:
	.asciz	"Cursed Halloween"

	.section	.rodata._.str.266,"a",@progbits
	.balign	1
	.local	_.str.266
_.str.266:
	.asciz	"Farm Field"

	.section	.rodata._.str.267,"a",@progbits
	.balign	1
	.local	_.str.267
_.str.267:
	.asciz	"Butterfly Field"

	.section	.rodata._.str.268,"a",@progbits
	.balign	1
	.local	_.str.268
_.str.268:
	.asciz	"Vial of Life"

	.section	.rodata._.str.269,"a",@progbits
	.balign	1
	.local	_.str.269
_.str.269:
	.asciz	"The Doomed Tree"

	.section	.rodata._.str.270,"a",@progbits
	.balign	1
	.local	_.str.270
_.str.270:
	.asciz	"Hands"

	.section	.rodata._.str.271,"a",@progbits
	.balign	1
	.local	_.str.271
_.str.271:
	.asciz	"Small Rake"

	.section	.rodata._.str.272,"a",@progbits
	.balign	1
	.local	_.str.272
_.str.272:
	.asciz	"Large Rake"

	.section	.rodata._.str.273,"a",@progbits
	.balign	1
	.local	_.str.273
_.str.273:
	.asciz	"Leaf Blower"

	.section	.rodata._.str.274,"a",@progbits
	.balign	1
	.local	_.str.274
_.str.274:
	.asciz	"Advanced Blower"

	.section	.rodata._.str.275,"a",@progbits
	.balign	1
	.local	_.str.275
_.str.275:
	.asciz	"Nuclear Blower"

	.section	.rodata._.str.276,"a",@progbits
	.balign	1
	.local	_.str.276
_.str.276:
	.asciz	"Leaf Sword"

	.section	.rodata._.str.277,"a",@progbits
	.balign	1
	.local	_.str.277
_.str.277:
	.asciz	"High-Tech Blower"

	.section	.rodata._.str.278,"a",@progbits
	.balign	1
	.local	_.str.278
_.str.278:
	.asciz	"Ancient Blower"

	.section	.rodata._.str.279,"a",@progbits
	.balign	1
	.local	_.str.279
_.str.279:
	.asciz	"Sacred Blower"

	.section	.rodata._.str.280,"a",@progbits
	.balign	1
	.local	_.str.280
_.str.280:
	.asciz	"Quark Blower"

	.section	.rodata._.str.281,"a",@progbits
	.balign	1
	.local	_.str.281
_.str.281:
	.asciz	"Depth Shovel"

	.section	.rodata._.str.282,"a",@progbits
	.balign	1
	.local	_.str.282
_.str.282:
	.asciz	"Master Trout"

	.section	.rodata._.str.283,"a",@progbits
	.balign	1
	.local	_.str.283
_.str.283:
	.asciz	"Harbor Fan"

	.section	.rodata._.str.284,"a",@progbits
	.balign	1
	.local	_.str.284
_.str.284:
	.asciz	"Shadow Blower"

	.section	.rodata._.str.285,"a",@progbits
	.balign	1
	.local	_.str.285
_.str.285:
	.asciz	"World Blower"

	.section	.rodata._.str.286,"a",@progbits
	.balign	1
	.local	_.str.286
_.str.286:
	.asciz	"Blow Power"

	.section	.rodata._.str.287,"a",@progbits
	.balign	1
	.local	_.str.287
_.str.287:
	.asciz	"Push leaves harder"

	.section	.rodata._.str.288,"a",@progbits
	.balign	1
	.local	_.str.288
_.str.288:
	.asciz	"Blow Range"

	.section	.rodata._.str.289,"a",@progbits
	.balign	1
	.local	_.str.289
_.str.289:
	.asciz	"Larger blower radius"

	.section	.rodata._.str.290,"a",@progbits
	.balign	1
	.local	_.str.290
_.str.290:
	.asciz	"Movement"

	.section	.rodata._.str.291,"a",@progbits
	.balign	1
	.local	_.str.291
_.str.291:
	.asciz	"Move blower faster"

	.section	.rodata._.str.292,"a",@progbits
	.balign	1
	.local	_.str.292
_.str.292:
	.asciz	"More Leaves"

	.section	.rodata._.str.293,"a",@progbits
	.balign	1
	.local	_.str.293
_.str.293:
	.asciz	"More leaves spawn"

	.section	.rodata._.str.294,"a",@progbits
	.balign	1
	.local	_.str.294
_.str.294:
	.asciz	"Leaf Value"

	.section	.rodata._.str.295,"a",@progbits
	.balign	1
	.local	_.str.295
_.str.295:
	.asciz	"All leaves worth more"

	.section	.rodata._.str.296,"a",@progbits
	.balign	1
	.local	_.str.296
_.str.296:
	.asciz	"Combo"

	.section	.rodata._.str.297,"a",@progbits
	.balign	1
	.local	_.str.297
_.str.297:
	.asciz	"Rapid clears multiply value"

	.section	.rodata._.str.298,"a",@progbits
	.balign	1
	.local	_.str.298
_.str.298:
	.asciz	"Printer Output"

	.section	.rodata._.str.299,"a",@progbits
	.balign	1
	.local	_.str.299
_.str.299:
	.asciz	"Print unlocked leaves"

	.section	.rodata._.str.300,"a",@progbits
	.balign	1
	.local	_.str.300
_.str.300:
	.asciz	"Converter Speed"

	.section	.rodata._.str.301,"a",@progbits
	.balign	1
	.local	_.str.301
_.str.301:
	.asciz	"Convert flasks faster"

	.section	.rodata._.str.302,"a",@progbits
	.balign	1
	.local	_.str.302
_.str.302:
	.asciz	"Area Discount"

	.section	.rodata._.str.303,"a",@progbits
	.balign	1
	.local	_.str.303
_.str.303:
	.asciz	"Areas cost less"

	.section	.rodata._.str.304,"a",@progbits
	.balign	1
	.local	_.str.304
_.str.304:
	.asciz	"Offline Rewards"

	.section	.rodata._.str.305,"a",@progbits
	.balign	1
	.local	_.str.305
_.str.305:
	.asciz	"Earn while powered off"

	.section	.rodata._.str.306,"a",@progbits
	.balign	1
	.local	_.str.306
_.str.306:
	.asciz	"Crunchy Coins"

	.section	.rodata._.str.307,"a",@progbits
	.balign	1
	.local	_.str.307
_.str.307:
	.asciz	"Keep coins after BLC"

	.section	.rodata._.str.308,"a",@progbits
	.balign	1
	.local	_.str.308
_.str.308:
	.asciz	"Moar BLC"

	.section	.rodata._.str.309,"a",@progbits
	.balign	1
	.local	_.str.309
_.str.309:
	.asciz	"Increase BLC rewards"

	.section	.rodata._.str.310,"a",@progbits
	.balign	1
	.local	_.str.310
_.str.310:
	.asciz	"Periodic leaf growth"

	.section	.rodata._.str.311,"a",@progbits
	.balign	1
	.local	_.str.311
_.str.311:
	.asciz	"ALB Capacity"

	.section	.rodata._.str.312,"a",@progbits
	.balign	1
	.local	_.str.312
_.str.312:
	.asciz	"Add an autoblower"

	.section	.rodata._.str.313,"a",@progbits
	.balign	1
	.local	_.str.313
_.str.313:
	.asciz	"ALB Power"

	.section	.rodata._.str.314,"a",@progbits
	.balign	1
	.local	_.str.314
_.str.314:
	.asciz	"Stronger autoblowers"

	.section	.rodata._.str.315,"a",@progbits
	.balign	1
	.local	_.str.315
_.str.315:
	.asciz	"Trade Education"

	.section	.rodata._.str.316,"a",@progbits
	.balign	1
	.local	_.str.316
_.str.316:
	.asciz	"Faster, richer trades"

	.section	.rodata._.str.318,"a",@progbits
	.balign	1
	.local	_.str.318
_.str.318:
	.asciz	"Improve crafted leaves"

	.section	.rodata._.str.319,"a",@progbits
	.balign	1
	.local	_.str.319
_.str.319:
	.asciz	"Blower Damage"

	.section	.rodata._.str.320,"a",@progbits
	.balign	1
	.local	_.str.320
_.str.320:
	.asciz	"Damage enemies"

	.section	.rodata._.str.321,"a",@progbits
	.balign	1
	.local	_.str.321
_.str.321:
	.asciz	"Better Pets"

	.section	.rodata._.str.322,"a",@progbits
	.balign	1
	.local	_.str.322
_.str.322:
	.asciz	"Improve pet bonuses"

	.section	.rodata._.str.323,"a",@progbits
	.balign	1
	.local	_.str.323
_.str.323:
	.asciz	"Moar MLC"

	.section	.rodata._.str.324,"a",@progbits
	.balign	1
	.local	_.str.324
_.str.324:
	.asciz	"Increase MLC rewards"

	.section	.rodata._.str.325,"a",@progbits
	.balign	1
	.local	_.str.325
_.str.325:
	.asciz	"Crunchy BLC"

	.section	.rodata._.str.326,"a",@progbits
	.balign	1
	.local	_.str.326
_.str.326:
	.asciz	"Keep BLC after MLC"

	.section	.rodata._.str.327,"a",@progbits
	.balign	1
	.local	_.str.327
_.str.327:
	.asciz	"All Rewards"

	.section	.rodata._.str.328,"a",@progbits
	.balign	1
	.local	_.str.328
_.str.328:
	.asciz	"Multiply all production"

	.section	.rodata._.str.329,"a",@progbits
	.balign	1
	.local	_.str.329
_.str.329:
	.asciz	"Moar ULC"

	.section	.rodata._.str.330,"a",@progbits
	.balign	1
	.local	_.str.330
_.str.330:
	.asciz	"Increase ULC rewards"

	.section	.rodata._.str.331,"a",@progbits
	.balign	1
	.local	_.str.331
_.str.331:
	.asciz	"Stable Areas"

	.section	.rodata._.str.332,"a",@progbits
	.balign	1
	.local	_.str.332
_.str.332:
	.asciz	"Keep areas after ULC"

	.section	.rodata._.str.333,"a",@progbits
	.balign	1
	.local	_.str.333
_.str.333:
	.asciz	"Bank Interest"

	.section	.rodata._.str.334,"a",@progbits
	.balign	1
	.local	_.str.334
_.str.334:
	.asciz	"Boost bank yield"

	.section	.rodata._.str.335,"a",@progbits
	.balign	1
	.local	_.str.335
_.str.335:
	.asciz	"Quark Output"

	.section	.rodata._.str.336,"a",@progbits
	.balign	1
	.local	_.str.336
_.str.336:
	.asciz	"Increase reactor output"

	.section	.rodata._.str.337,"a",@progbits
	.balign	1
	.local	_.str.337
_.str.337:
	.asciz	"Galaxy Rewards"

	.section	.rodata._.str.338,"a",@progbits
	.balign	1
	.local	_.str.338
_.str.338:
	.asciz	"Boost every galaxy"

	.section	.rodata._.str.339,"a",@progbits
	.balign	1
	.local	_.str.339
_.str.339:
	.asciz	"Fruit Harvest"

	.section	.rodata._.str.340,"a",@progbits
	.balign	1
	.local	_.str.340
_.str.340:
	.asciz	"Improve fruit and farming"

	.section	.rodata._.str.341,"a",@progbits
	.balign	1
	.local	_.str.341
_.str.341:
	.asciz	"Scroll Duration"

	.section	.rodata._.str.342,"a",@progbits
	.balign	1
	.local	_.str.342
_.str.342:
	.asciz	"Longer timed bonuses"

	.section	.rodata._.str.343,"a",@progbits
	.balign	1
	.local	_.str.343
_.str.343:
	.asciz	"Harbor Crew"

	.section	.rodata._.str.344,"a",@progbits
	.balign	1
	.local	_.str.344
_.str.344:
	.asciz	"Faster jobs and ships"

	.section	.rodata._.str.345,"a",@progbits
	.balign	1
	.local	_.str.345
_.str.345:
	.asciz	"Permanent dusk bonuses"

	.section	.rodata._.str.346,"a",@progbits
	.balign	1
	.local	_.str.346
_.str.346:
	.asciz	"Less Sacrifices"

	.section	.rodata._.str.347,"a",@progbits
	.balign	1
	.local	_.str.347
_.str.347:
	.asciz	"Keep one ULC family per level"

	.section	.rodata._.str.348,"a",@progbits
	.balign	1
	.local	_.str.348
_.str.348:
	.asciz	"Autoblowo"

	.section	.rodata._.str.349,"a",@progbits
	.balign	1
	.local	_.str.349
_.str.349:
	.asciz	"Autoblower power"

	.section	.rodata._.str.350,"a",@progbits
	.balign	1
	.local	_.str.350
_.str.350:
	.asciz	"Bunnyo"

	.section	.rodata._.str.351,"a",@progbits
	.balign	1
	.local	_.str.351
_.str.351:
	.asciz	"Converter speed"

	.section	.rodata._.str.352,"a",@progbits
	.balign	1
	.local	_.str.352
_.str.352:
	.asciz	"Penguino"

	.section	.rodata._.str.353,"a",@progbits
	.balign	1
	.local	_.str.353
_.str.353:
	.asciz	"Trade speed"

	.section	.rodata._.str.354,"a",@progbits
	.balign	1
	.local	_.str.354
_.str.354:
	.asciz	"Raccoono"

	.section	.rodata._.str.355,"a",@progbits
	.balign	1
	.local	_.str.355
_.str.355:
	.asciz	"Seed growth"

	.section	.rodata._.str.356,"a",@progbits
	.balign	1
	.local	_.str.356
_.str.356:
	.asciz	"Crabbo"

	.section	.rodata._.str.357,"a",@progbits
	.balign	1
	.local	_.str.357
_.str.357:
	.asciz	"Enemy damage"

	.section	.rodata._.str.358,"a",@progbits
	.balign	1
	.local	_.str.358
_.str.358:
	.asciz	"Butterflyo"

	.section	.rodata._.str.359,"a",@progbits
	.balign	1
	.local	_.str.359
_.str.359:
	.asciz	"All pet effects"

	.section	.rodata._.str.360,"a",@progbits
	.balign	1
	.local	_.str.360
_.str.360:
	.asciz	"Bearo"

	.section	.rodata._.str.361,"a",@progbits
	.balign	1
	.local	_.str.361
_.str.361:
	.asciz	"Automatic trades"

	.section	.rodata._.str.362,"a",@progbits
	.balign	1
	.local	_.str.362
_.str.362:
	.asciz	"Snekko"

	.section	.rodata._.str.363,"a",@progbits
	.balign	1
	.local	_.str.363
_.str.363:
	.asciz	"Galaxy rewards"

	.section	.rodata._.str.364,"a",@progbits
	.balign	1
	.local	_.str.364
_.str.364:
	.asciz	"Foxo"

	.section	.rodata._.str.365,"a",@progbits
	.balign	1
	.local	_.str.365
_.str.365:
	.asciz	"Fruit harvest"

	.section	.rodata._.str.366,"a",@progbits
	.balign	1
	.local	_.str.366
_.str.366:
	.asciz	"Owlo"

	.section	.rodata._.str.367,"a",@progbits
	.balign	1
	.local	_.str.367
_.str.367:
	.asciz	"Scroll duration"

	.section	.rodata._.str.368,"a",@progbits
	.balign	1
	.local	_.str.368
_.str.368:
	.asciz	"Sluggo"

	.section	.rodata._.str.369,"a",@progbits
	.balign	1
	.local	_.str.369
_.str.369:
	.asciz	"Material finds"

	.section	.rodata._.str.370,"a",@progbits
	.balign	1
	.local	_.str.370
_.str.370:
	.asciz	"Batto"

	.section	.rodata._.str.371,"a",@progbits
	.balign	1
	.local	_.str.371
_.str.371:
	.asciz	"Relic fragments"

	.section	.rodata._.str.372,"a",@progbits
	.balign	1
	.local	_.str.372
_.str.372:
	.asciz	"Camelo"

	.section	.rodata._.str.373,"a",@progbits
	.balign	1
	.local	_.str.373
_.str.373:
	.asciz	"Chest rewards"

	.section	.rodata._.str.374,"a",@progbits
	.balign	1
	.local	_.str.374
_.str.374:
	.asciz	"Panthero"

	.section	.rodata._.str.375,"a",@progbits
	.balign	1
	.local	_.str.375
_.str.375:
	.asciz	"Tower combat"

	.section	.rodata._.str.376,"a",@progbits
	.balign	1
	.local	_.str.376
_.str.376:
	.asciz	"Monkeyo"

	.section	.rodata._.str.377,"a",@progbits
	.balign	1
	.local	_.str.377
_.str.377:
	.asciz	"Harbor work"

	.section	.rodata._.str.378,"a",@progbits
	.balign	1
	.local	_.str.378
_.str.378:
	.asciz	"Sharko"

	.section	.rodata._.str.379,"a",@progbits
	.balign	1
	.local	_.str.379
_.str.379:
	.asciz	"Fishing rewards"

	.section	.rodata._.str.380,"a",@progbits
	.balign	1
	.local	_.str.380
_.str.380:
	.asciz	"Speedblower Prestige"

	.section	.rodata._.str.381,"a",@progbits
	.balign	1
	.local	_.str.381
_.str.381:
	.asciz	"Reach Prestige without autoblowers"

	.section	.rodata._.str.382,"a",@progbits
	.balign	1
	.local	_.str.382
_.str.382:
	.asciz	"Speedblower BLC"

	.section	.rodata._.str.383,"a",@progbits
	.balign	1
	.local	_.str.383
_.str.383:
	.asciz	"Reach BLC with reduced rewards"

	.section	.rodata._.str.384,"a",@progbits
	.balign	1
	.local	_.str.384
_.str.384:
	.asciz	"Petless"

	.section	.rodata._.str.385,"a",@progbits
	.balign	1
	.local	_.str.385
_.str.385:
	.asciz	"Reach the Tower without pets"

	.section	.rodata._.str.386,"a",@progbits
	.balign	1
	.local	_.str.386
_.str.386:
	.asciz	"No Prestige"

	.section	.rodata._.str.387,"a",@progbits
	.balign	1
	.local	_.str.387
_.str.387:
	.asciz	"Reach BLC without Prestige"

	.section	.rodata._.str.388,"a",@progbits
	.balign	1
	.local	_.str.388
_.str.388:
	.asciz	"Trader Crunch"

	.section	.rodata._.str.389,"a",@progbits
	.balign	1
	.local	_.str.389
_.str.389:
	.asciz	"Complete ten trades"

	.section	.rodata._.str.390,"a",@progbits
	.balign	1
	.local	_.str.390
_.str.390:
	.asciz	"Ultra Trial"

	.section	.rodata._.str.391,"a",@progbits
	.balign	1
	.local	_.str.391
_.str.391:
	.asciz	"Reach ULC with half production"

	.section	.rodata._.str.392,"a",@progbits
	.balign	1
	.local	_.str.392
_.str.392:
	.asciz	"First Leaf"

	.section	.rodata._.str.393,"a",@progbits
	.balign	1
	.local	_.str.393
_.str.393:
	.asciz	"Leaf Pile"

	.section	.rodata._.str.394,"a",@progbits
	.balign	1
	.local	_.str.394
_.str.394:
	.asciz	"Leaf Mountain"

	.section	.rodata._.str.395,"a",@progbits
	.balign	1
	.local	_.str.395
_.str.395:
	.asciz	"Going Gold"

	.section	.rodata._.str.396,"a",@progbits
	.balign	1
	.local	_.str.396
_.str.396:
	.asciz	"Prestigious"

	.section	.rodata._.str.397,"a",@progbits
	.balign	1
	.local	_.str.397
_.str.397:
	.asciz	"Flask Lab"

	.section	.rodata._.str.398,"a",@progbits
	.balign	1
	.local	_.str.398
_.str.398:
	.asciz	"Big Crunch"

	.section	.rodata._.str.399,"a",@progbits
	.balign	1
	.local	_.str.399
_.str.399:
	.asciz	"Pet Friend"

	.section	.rodata._.str.400,"a",@progbits
	.balign	1
	.local	_.str.400
_.str.400:
	.asciz	"Cheesy"

	.section	.rodata._.str.401,"a",@progbits
	.balign	1
	.local	_.str.401
_.str.401:
	.asciz	"Tower Climber"

	.section	.rodata._.str.402,"a",@progbits
	.balign	1
	.local	_.str.402
_.str.402:
	.asciz	"Mega Crunch"

	.section	.rodata._.str.403,"a",@progbits
	.balign	1
	.local	_.str.403
_.str.403:
	.asciz	"Ancient"

	.section	.rodata._.str.404,"a",@progbits
	.balign	1
	.local	_.str.404
_.str.404:
	.asciz	"Ultra Crunch"

	.section	.rodata._.str.405,"a",@progbits
	.balign	1
	.local	_.str.405
_.str.405:
	.asciz	"Borb Enjoyer"

	.section	.rodata._.str.406,"a",@progbits
	.balign	1
	.local	_.str.406
_.str.406:
	.asciz	"Card Collector"

	.section	.rodata._.str.407,"a",@progbits
	.balign	1
	.local	_.str.407
_.str.407:
	.asciz	"High Roller"

	.section	.rodata._.str.408,"a",@progbits
	.balign	1
	.local	_.str.408
_.str.408:
	.asciz	"Soulful"

	.section	.rodata._.str.409,"a",@progbits
	.balign	1
	.local	_.str.409
_.str.409:
	.asciz	"Quark Tech"

	.section	.rodata._.str.410,"a",@progbits
	.balign	1
	.local	_.str.410
_.str.410:
	.asciz	"Quantum"

	.section	.rodata._.str.411,"a",@progbits
	.balign	1
	.local	_.str.411
_.str.411:
	.asciz	"Into Shadow"

	.section	.rodata._.str.412,"a",@progbits
	.balign	1
	.local	_.str.412
_.str.412:
	.asciz	"Gem Leaf"

	.section	.rodata._.str.413,"a",@progbits
	.balign	1
	.local	_.str.413
_.str.413:
	.asciz	"Glinting"

	.section	.rodata._.str.414,"a",@progbits
	.balign	1
	.local	_.str.414
_.str.414:
	.asciz	"Coal Baron"

	.section	.rodata._.str.415,"a",@progbits
	.balign	1
	.local	_.str.415
_.str.415:
	.asciz	"Water Worker"

	.section	.rodata._.str.416,"a",@progbits
	.balign	1
	.local	_.str.416
_.str.416:
	.asciz	"Harbor Captain"

	.section	.rodata._.str.417,"a",@progbits
	.balign	1
	.local	_.str.417
_.str.417:
	.asciz	"Angler"

	.section	.rodata._.str.418,"a",@progbits
	.balign	1
	.local	_.str.418
_.str.418:
	.asciz	"Relic Hunter"

	.section	.rodata._.str.419,"a",@progbits
	.balign	1
	.local	_.str.419
_.str.419:
	.asciz	"Dusk Walker"

	.section	.rodata._.str.420,"a",@progbits
	.balign	1
	.local	_.str.420
_.str.420:
	.asciz	"Pub Regular"

	.section	.rodata._.str.421,"a",@progbits
	.balign	1
	.local	_.str.421
_.str.421:
	.asciz	"Cursed"

	.section	.rodata._.str.422,"a",@progbits
	.balign	1
	.local	_.str.422
_.str.422:
	.asciz	"Anniversary"

	.section	.bss.__ZZ4mainE5state,"aw",@nobits
	.balign	2
	.local	__ZZ4mainE5state
__ZZ4mainE5state:
	.zero	2408

	.section	.bss.__ZZ4mainE5field,"aw",@nobits
	.balign	2
	.local	__ZZ4mainE5field
__ZZ4mainE5field:
	.zero	874

	.section	.bss.__ZZ4mainE5input,"aw",@nobits
	.balign	1
	.local	__ZZ4mainE5input
__ZZ4mainE5input:
	.zero	16

	.section	.bss.__ZZ4mainE2ui,"aw",@nobits
	.balign	1
	.local	__ZZ4mainE2ui
__ZZ4mainE2ui:
	.zero	55

	.section	.rodata._.str.423,"a",@progbits
	.balign	1
	.local	_.str.423
_.str.423:
	.asciz	"LBRCE data self-test failed."

	.section	.bss.__ZN12_GLOBAL__N_115graphics_activeE,"aw",@nobits
	.balign	1
	.local	__ZN12_GLOBAL__N_115graphics_activeE
__ZN12_GLOBAL__N_115graphics_activeE:
	.zero	1

	.section	.rodata._.str.1.424,"a",@progbits
	.balign	1
	.local	_.str.1.424
_.str.1.424:
	.asciz	"Offline gains: %lu seconds"

	.section	.rodata._.str.2.425,"a",@progbits
	.balign	1
	.local	_.str.2.425
_.str.2.425:
	.asciz	"Recovered progress from safe save"

	.section	.rodata._.str.3.426,"a",@progbits
	.balign	1
	.local	_.str.3.426
_.str.3.426:
	.asciz	"Autosave failed; backup retained"

	.section	.rodata._.str.4.427,"a",@progbits
	.balign	1
	.local	_.str.4.427
_.str.4.427:
	.asciz	"Save failed; prior copy retained"

	.section	.rodata._.str.5.428,"a",@progbits
	.balign	1
	.local	_.str.5.428
_.str.5.428:
	.asciz	"LBRCE: save failed; backup kept."

	.section	.bss.__ZN12_GLOBAL__N_117rtc_floor_scratchE,"aw",@nobits
	.balign	1
	.local	__ZN12_GLOBAL__N_117rtc_floor_scratchE
__ZN12_GLOBAL__N_117rtc_floor_scratchE:
	.zero	4

	.section	.bss.__ZN12_GLOBAL__N_117candidate_scratchE,"aw",@nobits
	.balign	2
	.local	__ZN12_GLOBAL__N_117candidate_scratchE
__ZN12_GLOBAL__N_117candidate_scratchE:
	.zero	9672

	.section	.rodata.__ZL17SAVE_PRIMARY_NAME,"a",@progbits
	.balign	1
	.local	__ZL17SAVE_PRIMARY_NAME
__ZL17SAVE_PRIMARY_NAME:
	.asciz	"LBCSAVE"

	.section	.rodata.__ZL16SAVE_BACKUP_NAME,"a",@progbits
	.balign	1
	.local	__ZL16SAVE_BACKUP_NAME
__ZL16SAVE_BACKUP_NAME:
	.asciz	"LBCBAK"

	.section	.rodata.__ZL14SAVE_TEMP_NAME,"a",@progbits
	.balign	1
	.local	__ZL14SAVE_TEMP_NAME
__ZL14SAVE_TEMP_NAME:
	.asciz	"LBCTMP"

	.section	.bss.__ZN12_GLOBAL__N_116prepared_scratchE,"aw",@nobits
	.balign	2
	.local	__ZN12_GLOBAL__N_116prepared_scratchE
__ZN12_GLOBAL__N_116prepared_scratchE:
	.zero	2408

	.section	.rodata.__ZZN12_GLOBAL__N_110date_validEhhtE14DAYS_PER_MONTH,"a",@progbits
	.balign	1
	.local	__ZZN12_GLOBAL__N_110date_validEhhtE14DAYS_PER_MONTH
__ZZN12_GLOBAL__N_110date_validEhhtE14DAYS_PER_MONTH:
	.ascii	"\037\034\037\036\037\036\037\037\036\037\036\037"

	.section	.rodata.__ZZN12_GLOBAL__N_120date_time_to_secondsEhhthhhE17DAYS_BEFORE_MONTH,"a",@progbits
	.balign	2
	.local	__ZZN12_GLOBAL__N_120date_time_to_secondsEhhthhhE17DAYS_BEFORE_MONTH
__ZZN12_GLOBAL__N_120date_time_to_secondsEhhthhhE17DAYS_BEFORE_MONTH:
	dw	0                               ; 0x0
	dw	31                              ; 0x1f
	dw	59                              ; 0x3b
	dw	90                              ; 0x5a
	dw	120                             ; 0x78
	dw	151                             ; 0x97
	dw	181                             ; 0xb5
	dw	212                             ; 0xd4
	dw	243                             ; 0xf3
	dw	273                             ; 0x111
	dw	304                             ; 0x130
	dw	334                             ; 0x14e

	.section	.rodata._.str.436,"a",@progbits
	.balign	1
	.local	_.str.436
_.str.436:
	.asciz	"r"

	.section	.bss.__ZN12_GLOBAL__N_114record_scratchE,"aw",@nobits
	.balign	1
	.local	__ZN12_GLOBAL__N_114record_scratchE
__ZN12_GLOBAL__N_114record_scratchE:
	.zero	2433

	.section	.rodata.__ZN12_GLOBAL__N_110SAVE_MAGICE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_110SAVE_MAGICE
__ZN12_GLOBAL__N_110SAVE_MAGICE:
	.ascii	"LWCE"

	.section	.bss.__ZN12_GLOBAL__N_116baseline_scratchE,"aw",@nobits
	.balign	2
	.local	__ZN12_GLOBAL__N_116baseline_scratchE
__ZN12_GLOBAL__N_116baseline_scratchE:
	.zero	2408

	.section	.rodata._.str.1.433,"a",@progbits
	.balign	1
	.local	_.str.1.433
_.str.1.433:
	.asciz	"w"

	.section	.rodata.__ZN12_GLOBAL__N_112ALCHEMY_DEFSE,"a",@progbits
	.balign	2
	.local	__ZN12_GLOBAL__N_112ALCHEMY_DEFSE
__ZN12_GLOBAL__N_112ALCHEMY_DEFSE:
	db	37                              ; 0x25
	.zero	1
	dw	100                             ; 0x64
	db	36                              ; 0x24
	.zero	1
	dw	0                               ; 0x0
	db	38                              ; 0x26
	.zero	1
	dw	1                               ; 0x1
	db	13                              ; 0xd
	.zero	1
	db	36                              ; 0x24
	.zero	1
	dw	25                              ; 0x19
	db	37                              ; 0x25
	.zero	1
	dw	250                             ; 0xfa
	db	39                              ; 0x27
	.zero	1
	dw	50                              ; 0x32
	db	13                              ; 0xd
	.zero	1
	db	39                              ; 0x27
	.zero	1
	dw	500                             ; 0x1f4
	db	38                              ; 0x26
	.zero	1
	dw	10                              ; 0xa
	db	43                              ; 0x2b
	.zero	1
	dw	1                               ; 0x1
	db	23                              ; 0x17
	.zero	1
	db	43                              ; 0x2b
	.zero	1
	dw	25                              ; 0x19
	db	38                              ; 0x26
	.zero	1
	dw	100                             ; 0x64
	db	47                              ; 0x2f
	.zero	1
	dw	10                              ; 0xa
	db	28                              ; 0x1c
	.zero	1

	.section	.rodata.__ZZ21systems_advance_towerR9GameStateE10GEM_LEAVES,"a",@progbits
	.balign	1
	.local	__ZZ21systems_advance_towerR9GameStateE10GEM_LEAVES
__ZZ21systems_advance_towerR9GameStateE10GEM_LEAVES:
	.ascii	">?@ABCD"

	.section	.rodata.__ZN12_GLOBAL__N_113TRADE_OUTPUTSE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_113TRADE_OUTPUTSE
__ZN12_GLOBAL__N_113TRADE_OUTPUTSE:
	.ascii	"$%&'()*+"

	.section	.rodata.__ZN12_GLOBAL__N_112TRADE_INPUTSE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_112TRADE_INPUTSE
__ZN12_GLOBAL__N_112TRADE_INPUTSE:
	.ascii	"\000\001\002\003\005\007\027\030\031\037 %'"

	.section	.rodata._.str.451,"a",@progbits
	.balign	1
	.local	_.str.451
_.str.451:
	.asciz	"Reset complete; save written"

	.section	.rodata.__ZN12_GLOBAL__N_112MENU_ENTRIESE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_112MENU_ENTRIESE
__ZN12_GLOBAL__N_112MENU_ENTRIESE:
	d24	_.str.31.480
	db	2                               ; 0x2
	d24	_.str.32.481
	db	3                               ; 0x3
	d24	_.str.33.482
	db	4                               ; 0x4
	d24	_.str.34.483
	db	5                               ; 0x5
	d24	_.str.35.484
	db	6                               ; 0x6
	d24	_.str.36.485
	db	8                               ; 0x8
	d24	_.str.37.486
	db	9                               ; 0x9
	d24	_.str.38.487
	db	10                              ; 0xa
	d24	_.str.39.488
	db	11                              ; 0xb
	d24	_.str.40.489
	db	12                              ; 0xc
	d24	_.str.41.490
	db	13                              ; 0xd
	d24	_.str.42.491
	db	14                              ; 0xe
	d24	_.str.43.492
	db	15                              ; 0xf
	d24	_.str.44.493
	db	16                              ; 0x10
	d24	_.str.45.494
	db	17                              ; 0x11
	d24	_.str.46.495
	db	18                              ; 0x12
	d24	_.str.47.496
	db	0                               ; 0x0

	.section	.rodata._.str.1.452,"a",@progbits
	.balign	1
	.local	_.str.1.452
_.str.1.452:
	.asciz	"Tool selected"

	.section	.rodata._.str.2.453,"a",@progbits
	.balign	1
	.local	_.str.2.453
_.str.2.453:
	.asciz	"Cannot buy that tool"

	.section	.rodata._.str.3.454,"a",@progbits
	.balign	1
	.local	_.str.3.454
_.str.3.454:
	.asciz	"Area selected"

	.section	.rodata._.str.4.455,"a",@progbits
	.balign	1
	.local	_.str.4.455
_.str.4.455:
	.asciz	"Area is locked or too costly"

	.section	.rodata._.str.5.456,"a",@progbits
	.balign	1
	.local	_.str.5.456
_.str.5.456:
	.asciz	"Upgrade purchased"

	.section	.rodata._.str.6.457,"a",@progbits
	.balign	1
	.local	_.str.6.457
_.str.6.457:
	.asciz	"Cannot buy upgrade"

	.section	.rodata._.str.7.458,"a",@progbits
	.balign	1
	.local	_.str.7.458
_.str.7.458:
	.asciz	"Reset requirement not reached"

	.section	.rodata._.str.8.459,"a",@progbits
	.balign	1
	.local	_.str.8.459
_.str.8.459:
	.asciz	"ULC sacrifice plan updated"

	.section	.rodata._.str.9.460,"a",@progbits
	.balign	1
	.local	_.str.9.460
_.str.9.460:
	.asciz	"First ULC requires all ten families"

	.section	.rodata._.str.10.461,"a",@progbits
	.balign	1
	.local	_.str.10.461
_.str.10.461:
	.asciz	"Less Sacrifices minimum reached"

	.section	.rodata._.str.11.462,"a",@progbits
	.balign	1
	.local	_.str.11.462
_.str.11.462:
	.asciz	"System action completed"

	.section	.rodata._.str.12.463,"a",@progbits
	.balign	1
	.local	_.str.12.463
_.str.12.463:
	.asciz	"Passive system or requirement unmet"

	.section	.rodata._.str.13.464,"a",@progbits
	.balign	1
	.local	_.str.13.464
_.str.13.464:
	.asciz	"Automation upgraded"

	.section	.rodata._.str.14.465,"a",@progbits
	.balign	1
	.local	_.str.14.465
_.str.14.465:
	.asciz	"Pet activated"

	.section	.rodata._.str.15.466,"a",@progbits
	.balign	1
	.local	_.str.15.466
_.str.15.466:
	.asciz	"Cannot buy pet"

	.section	.rodata._.str.16.467,"a",@progbits
	.balign	1
	.local	_.str.16.467
_.str.16.467:
	.asciz	"Crafted a leaf"

	.section	.rodata._.str.17.468,"a",@progbits
	.balign	1
	.local	_.str.17.468
_.str.17.468:
	.asciz	"Crafting needs more cheese"

	.section	.rodata._.str.18.469,"a",@progbits
	.balign	1
	.local	_.str.18.469
_.str.18.469:
	.asciz	"Equipment activated"

	.section	.rodata._.str.19.470,"a",@progbits
	.balign	1
	.local	_.str.19.470
_.str.19.470:
	.asciz	"Cannot equip item"

	.section	.rodata._.str.20.471,"a",@progbits
	.balign	1
	.local	_.str.20.471
_.str.20.471:
	.asciz	"Trade advanced"

	.section	.rodata._.str.21.472,"a",@progbits
	.balign	1
	.local	_.str.21.472
_.str.21.472:
	.asciz	"Trade cannot start"

	.section	.rodata._.str.22.473,"a",@progbits
	.balign	1
	.local	_.str.22.473
_.str.22.473:
	.asciz	"Challenge abandoned; main progress restored"

	.section	.rodata._.str.23.474,"a",@progbits
	.balign	1
	.local	_.str.23.474
_.str.23.474:
	.asciz	"Challenge completed"

	.section	.rodata._.str.24.475,"a",@progbits
	.balign	1
	.local	_.str.24.475
_.str.24.475:
	.asciz	"Goal not reached"

	.section	.rodata._.str.25.476,"a",@progbits
	.balign	1
	.local	_.str.25.476
_.str.25.476:
	.asciz	"Challenge started"

	.section	.rodata._.str.26.477,"a",@progbits
	.balign	1
	.local	_.str.26.477
_.str.26.477:
	.asciz	"Cannot start challenge"

	.section	.rodata._.str.27.478,"a",@progbits
	.balign	1
	.local	_.str.27.478
_.str.27.478:
	.asciz	"Setting changed"

	.section	.rodata._.str.28.479,"a",@progbits
	.balign	1
	.local	_.str.28.479
_.str.28.479:
	.asciz	"Saving progress"

	.section	.rodata._.str.29.520,"a",@progbits
	.balign	1
	.local	_.str.29.520
_.str.29.520:
	.asciz	"Left/right: shop  Enter: buy"

	.section	.rodata._.str.30.534,"a",@progbits
	.balign	1
	.local	_.str.30.534
_.str.30.534:
	.asciz	"Enter: buy automation upgrade"

	.section	.rodata._.str.31.480,"a",@progbits
	.balign	1
	.local	_.str.31.480
_.str.31.480:
	.asciz	"Resource overview"

	.section	.rodata._.str.32.481,"a",@progbits
	.balign	1
	.local	_.str.32.481
_.str.32.481:
	.asciz	"Tools"

	.section	.rodata._.str.33.482,"a",@progbits
	.balign	1
	.local	_.str.33.482
_.str.33.482:
	.asciz	"Areas"

	.section	.rodata._.str.34.483,"a",@progbits
	.balign	1
	.local	_.str.34.483
_.str.34.483:
	.asciz	"Shops"

	.section	.rodata._.str.35.484,"a",@progbits
	.balign	1
	.local	_.str.35.484
_.str.35.484:
	.asciz	"Crunch & resets"

	.section	.rodata._.str.36.485,"a",@progbits
	.balign	1
	.local	_.str.36.485
_.str.36.485:
	.asciz	"System hub"

	.section	.rodata._.str.37.486,"a",@progbits
	.balign	1
	.local	_.str.37.486
_.str.37.486:
	.asciz	"Automation"

	.section	.rodata._.str.38.487,"a",@progbits
	.balign	1
	.local	_.str.38.487
_.str.38.487:
	.asciz	"Pets"

	.section	.rodata._.str.39.488,"a",@progbits
	.balign	1
	.local	_.str.39.488
_.str.39.488:
	.asciz	"Crafting & equipment"

	.section	.rodata._.str.40.489,"a",@progbits
	.balign	1
	.local	_.str.40.489
_.str.40.489:
	.asciz	"Trading"

	.section	.rodata._.str.41.490,"a",@progbits
	.balign	1
	.local	_.str.41.490
_.str.41.490:
	.asciz	"Challenges"

	.section	.rodata._.str.42.491,"a",@progbits
	.balign	1
	.local	_.str.42.491
_.str.42.491:
	.asciz	"Achievements"

	.section	.rodata._.str.43.492,"a",@progbits
	.balign	1
	.local	_.str.43.492
_.str.43.492:
	.asciz	"Statistics"

	.section	.rodata._.str.44.493,"a",@progbits
	.balign	1
	.local	_.str.44.493
_.str.44.493:
	.asciz	"Settings / save"

	.section	.rodata._.str.45.494,"a",@progbits
	.balign	1
	.local	_.str.45.494
_.str.45.494:
	.asciz	"Controls"

	.section	.rodata._.str.46.495,"a",@progbits
	.balign	1
	.local	_.str.46.495
_.str.46.495:
	.asciz	"Credits"

	.section	.rodata._.str.47.496,"a",@progbits
	.balign	1
	.local	_.str.47.496
_.str.47.496:
	.asciz	"Return to field"

	.section	.rodata._.str.48.501,"a",@progbits
	.balign	1
	.local	_.str.48.501
_.str.48.501:
	.asciz	"JOB"

	.section	.rodata._.str.49.502,"a",@progbits
	.balign	1
	.local	_.str.49.502
_.str.49.502:
	.asciz	"%s  Combo x%u"

	.section	.rodata._.str.50.503,"a",@progbits
	.balign	1
	.local	_.str.50.503
_.str.50.503:
	.asciz	"ENTER: menu"

	.section	.rodata._.str.51.504,"a",@progbits
	.balign	1
	.local	_.str.51.504
_.str.51.504:
	.asciz	"Leaf Blower Revolution CE"

	.section	.rodata._.str.52.505,"a",@progbits
	.balign	1
	.local	_.str.52.505
_.str.52.505:
	.asciz	">"

	.section	.rodata._.str.53.506,"a",@progbits
	.balign	1
	.local	_.str.53.506
_.str.53.506:
	.asciz	"Arrows: move  Enter: select"

	.section	.rodata._.str.54.507,"a",@progbits
	.balign	1
	.local	_.str.54.507
_.str.54.507:
	.asciz	"Clear: field"

	.section	.rodata._.str.55.508,"a",@progbits
	.balign	1
	.local	_.str.55.508
_.str.55.508:
	.asciz	"Resources"

	.section	.rodata._RESOURCE_DEFS,"a",@progbits
	.balign	1
	.globl	_RESOURCE_DEFS
_RESOURCE_DEFS:
	d24	_.str.3
	d24	_.str.1.4
	db	3                               ; 0x3
	db	0                               ; 0x0
	d24	_.str.2.5
	d24	_.str.3.6
	db	10                              ; 0xa
	db	0                               ; 0x0
	d24	_.str.4
	d24	_.str.5
	db	7                               ; 0x7
	db	0                               ; 0x0
	d24	_.str.6
	d24	_.str.7
	db	13                              ; 0xd
	db	0                               ; 0x0
	d24	_.str.8
	d24	_.str.9
	db	14                              ; 0xe
	db	0                               ; 0x0
	d24	_.str.10
	d24	_.str.11
	db	5                               ; 0x5
	db	0                               ; 0x0
	d24	_.str.12
	d24	_.str.13
	db	9                               ; 0x9
	db	0                               ; 0x0
	d24	_.str.14
	d24	_.str.15
	db	12                              ; 0xc
	db	0                               ; 0x0
	d24	_.str.16
	d24	_.str.17
	db	2                               ; 0x2
	db	0                               ; 0x0
	d24	_.str.18
	d24	_.str.19
	db	8                               ; 0x8
	db	0                               ; 0x0
	d24	_.str.20
	d24	_.str.21
	db	6                               ; 0x6
	db	0                               ; 0x0
	d24	_.str.22
	d24	_.str.23
	db	1                               ; 0x1
	db	0                               ; 0x0
	d24	_.str.24
	d24	_.str.25
	db	11                              ; 0xb
	db	0                               ; 0x0
	d24	_.str.26
	d24	_.str.27
	db	4                               ; 0x4
	db	0                               ; 0x0
	d24	_.str.28
	d24	_.str.29
	db	7                               ; 0x7
	db	0                               ; 0x0
	d24	_.str.30
	d24	_.str.31
	db	15                              ; 0xf
	db	0                               ; 0x0
	d24	_.str.32
	d24	_.str.33
	db	9                               ; 0x9
	db	0                               ; 0x0
	d24	_.str.34
	d24	_.str.35
	db	14                              ; 0xe
	db	0                               ; 0x0
	d24	_.str.36
	d24	_.str.37
	db	3                               ; 0x3
	db	0                               ; 0x0
	d24	_.str.38
	d24	_.str.39
	db	11                              ; 0xb
	db	0                               ; 0x0
	d24	_.str.40
	d24	_.str.41
	db	8                               ; 0x8
	db	0                               ; 0x0
	d24	_.str.42
	d24	_.str.43
	db	13                              ; 0xd
	db	0                               ; 0x0
	d24	_.str.44
	d24	_.str.45
	db	10                              ; 0xa
	db	0                               ; 0x0
	d24	_.str.46
	d24	_.str.47
	db	10                              ; 0xa
	db	0                               ; 0x0
	d24	_.str.48
	d24	_.str.49
	db	8                               ; 0x8
	db	0                               ; 0x0
	d24	_.str.50
	d24	_.str.51
	db	9                               ; 0x9
	db	0                               ; 0x0
	d24	_.str.52
	d24	_.str.53
	db	10                              ; 0xa
	db	0                               ; 0x0
	d24	_.str.54
	d24	_.str.55
	db	11                              ; 0xb
	db	0                               ; 0x0
	d24	_.str.56
	d24	_.str.57
	db	12                              ; 0xc
	db	0                               ; 0x0
	d24	_.str.58
	d24	_.str.59
	db	13                              ; 0xd
	db	0                               ; 0x0
	d24	_.str.60
	d24	_.str.61
	db	0                               ; 0x0
	db	0                               ; 0x0
	d24	_.str.62
	d24	_.str.63
	db	6                               ; 0x6
	db	0                               ; 0x0
	d24	_.str.64
	d24	_.str.65
	db	8                               ; 0x8
	db	1                               ; 0x1
	d24	_.str.66
	d24	_.str.67
	db	13                              ; 0xd
	db	1                               ; 0x1
	d24	_.str.68
	d24	_.str.69
	db	14                              ; 0xe
	db	1                               ; 0x1
	d24	_.str.70
	d24	_.str.71
	db	12                              ; 0xc
	db	1                               ; 0x1
	d24	_.str.72
	d24	_.str.73
	db	10                              ; 0xa
	db	1                               ; 0x1
	d24	_.str.99.634
	d24	_.str.75
	db	5                               ; 0x5
	db	1                               ; 0x1
	d24	_.str.76
	d24	_.str.77
	db	13                              ; 0xd
	db	1                               ; 0x1
	d24	_.str.78
	d24	_.str.78
	db	4                               ; 0x4
	db	1                               ; 0x1
	d24	_.str.79
	d24	_.str.80
	db	15                              ; 0xf
	db	1                               ; 0x1
	d24	_.str.81
	d24	_.str.82
	db	12                              ; 0xc
	db	1                               ; 0x1
	d24	_.str.83
	d24	_.str.96.631
	db	7                               ; 0x7
	db	1                               ; 0x1
	d24	_.str.85
	d24	_.str.86
	db	6                               ; 0x6
	db	1                               ; 0x1
	d24	_.str.87
	d24	_.str.88
	db	11                              ; 0xb
	db	1                               ; 0x1
	d24	_.str.89
	d24	_.str.90
	db	14                              ; 0xe
	db	1                               ; 0x1
	d24	_.str.91
	d24	_.str.92
	db	5                               ; 0x5
	db	1                               ; 0x1
	d24	_.str.93
	d24	_.str.94
	db	10                              ; 0xa
	db	1                               ; 0x1
	d24	_.str.95
	d24	_.str.95
	db	9                               ; 0x9
	db	1                               ; 0x1
	d24	_.str.96
	d24	_.str.97
	db	13                              ; 0xd
	db	1                               ; 0x1
	d24	_.str.98
	d24	_.str.99
	db	7                               ; 0x7
	db	1                               ; 0x1
	d24	_.str.100
	d24	_.str.101
	db	10                              ; 0xa
	db	1                               ; 0x1
	d24	_.str.102
	d24	_.str.103
	db	6                               ; 0x6
	db	1                               ; 0x1
	d24	_.str.104
	d24	_.str.105
	db	5                               ; 0x5
	db	0                               ; 0x0
	d24	_.str.106
	d24	_.str.107
	db	7                               ; 0x7
	db	1                               ; 0x1
	d24	_.str.108
	d24	_.str.109
	db	12                              ; 0xc
	db	1                               ; 0x1
	d24	_.str.110
	d24	_.str.111
	db	14                              ; 0xe
	db	1                               ; 0x1
	d24	_.str.112
	d24	_.str.113
	db	6                               ; 0x6
	db	1                               ; 0x1
	d24	_.str.114
	d24	_.str.115
	db	12                              ; 0xc
	db	1                               ; 0x1
	d24	_.str.116
	d24	_.str.117
	db	9                               ; 0x9
	db	1                               ; 0x1
	d24	_.str.118
	d24	_.str.119
	db	14                              ; 0xe
	db	1                               ; 0x1
	d24	_.str.120
	d24	_.str.121
	db	13                              ; 0xd
	db	0                               ; 0x0
	d24	_.str.122
	d24	_.str.123
	db	9                               ; 0x9
	db	0                               ; 0x0
	d24	_.str.124
	d24	_.str.125
	db	13                              ; 0xd
	db	0                               ; 0x0
	d24	_.str.126
	d24	_.str.127
	db	11                              ; 0xb
	db	0                               ; 0x0
	d24	_.str.128
	d24	_.str.129
	db	12                              ; 0xc
	db	0                               ; 0x0
	d24	_.str.130
	d24	_.str.131
	db	14                              ; 0xe
	db	0                               ; 0x0
	d24	_.str.132
	d24	_.str.133
	db	8                               ; 0x8
	db	0                               ; 0x0
	d24	_.str.134
	d24	_.str.135
	db	7                               ; 0x7
	db	0                               ; 0x0
	d24	_.str.136
	d24	_.str.137
	db	6                               ; 0x6
	db	0                               ; 0x0
	d24	_.str.138
	d24	_.str.139
	db	15                              ; 0xf
	db	0                               ; 0x0
	d24	_.str.140
	d24	_.str.141
	db	5                               ; 0x5
	db	0                               ; 0x0
	d24	_.str.142
	d24	_.str.143
	db	14                              ; 0xe
	db	0                               ; 0x0
	d24	_.str.144
	d24	_.str.145
	db	11                              ; 0xb
	db	0                               ; 0x0

	.section	.rodata._.str.56.509,"a",@progbits
	.balign	1
	.local	_.str.56.509
_.str.56.509:
	.asciz	"All current balances"

	.section	.rodata._.str.57.510,"a",@progbits
	.balign	1
	.local	_.str.57.510
_.str.57.510:
	.asciz	"Clear: back"

	.section	.rodata._.str.58.511,"a",@progbits
	.balign	1
	.local	_.str.58.511
_.str.58.511:
	.asciz	"Blower tools"

	.section	.rodata._.str.59.514,"a",@progbits
	.balign	1
	.local	_.str.59.514
_.str.59.514:
	.asciz	"%s"

	.section	.rodata._.str.60.512,"a",@progbits
	.balign	1
	.local	_.str.60.512
_.str.60.512:
	.asciz	"EQUIPPED"

	.section	.rodata._.str.61.513,"a",@progbits
	.balign	1
	.local	_.str.61.513
_.str.61.513:
	.asciz	"OWNED"

	.section	.rodata._.str.62.515,"a",@progbits
	.balign	1
	.local	_.str.62.515
_.str.62.515:
	.asciz	"LOCKED"

	.section	.rodata._.str.63.516,"a",@progbits
	.balign	1
	.local	_.str.63.516
_.str.63.516:
	.asciz	"Enter: buy / equip"

	.section	.rodata._.str.64.517,"a",@progbits
	.balign	1
	.local	_.str.64.517
_.str.64.517:
	.asciz	"HERE"

	.section	.rodata._.str.65.518,"a",@progbits
	.balign	1
	.local	_.str.65.518
_.str.65.518:
	.asciz	"OPEN"

	.section	.rodata._.str.66.519,"a",@progbits
	.balign	1
	.local	_.str.66.519
_.str.66.519:
	.asciz	"Enter: unlock / travel"

	.section	.rodata.__ZN12_GLOBAL__N_110SHOP_NAMESE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_110SHOP_NAMESE
__ZN12_GLOBAL__N_110SHOP_NAMESE:
	d24	_.str.70.645
	d24	_.str.71.646
	d24	_.str.72.647
	d24	_.str.73.648
	d24	_.str.74.649
	d24	_.str.75.650
	d24	_.str.37.486
	d24	_.str.76.651
	d24	_.str.77.652

	.section	.rodata._.str.68.643,"a",@progbits
	.balign	1
	.local	_.str.68.643
_.str.68.643:
	.asciz	"L%u %s"

	.section	.rodata._.str.69.644,"a",@progbits
	.balign	1
	.local	_.str.69.644
_.str.69.644:
	.asciz	"No upgrades in this category."

	.section	.rodata._.str.70.645,"a",@progbits
	.balign	1
	.local	_.str.70.645
_.str.70.645:
	.asciz	"Leaf Shop"

	.section	.rodata._.str.71.646,"a",@progbits
	.balign	1
	.local	_.str.71.646
_.str.71.646:
	.asciz	"Gold Shop"

	.section	.rodata._.str.72.647,"a",@progbits
	.balign	1
	.local	_.str.72.647
_.str.72.647:
	.asciz	"Coin Shop"

	.section	.rodata._.str.73.648,"a",@progbits
	.balign	1
	.local	_.str.73.648
_.str.73.648:
	.asciz	"BLC Shop"

	.section	.rodata._.str.74.649,"a",@progbits
	.balign	1
	.local	_.str.74.649
_.str.74.649:
	.asciz	"MLC Shop"

	.section	.rodata._.str.75.650,"a",@progbits
	.balign	1
	.local	_.str.75.650
_.str.75.650:
	.asciz	"ULC Shop"

	.section	.rodata._.str.76.651,"a",@progbits
	.balign	1
	.local	_.str.76.651
_.str.76.651:
	.asciz	"Craft Forge"

	.section	.rodata._.str.77.652,"a",@progbits
	.balign	1
	.local	_.str.77.652
_.str.77.652:
	.asciz	"Galaxy Shop"

	.section	.rodata._.str.78.521,"a",@progbits
	.balign	1
	.local	_.str.78.521
_.str.78.521:
	.asciz	"Crunch & reset layers"

	.section	.rodata.__ZN12_GLOBAL__N_111RESET_NAMESE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_111RESET_NAMESE
__ZN12_GLOBAL__N_111RESET_NAMESE:
	d24	_.str.82.638
	d24	_.str.83.639
	d24	_.str.84.640
	d24	_.str.85.641
	d24	_.str.86.642

	.section	.rodata._.str.79.522,"a",@progbits
	.balign	1
	.local	_.str.79.522
_.str.79.522:
	.asciz	"Review CLEAR/KEEP lists before reset."

	.section	.rodata._.str.80.523,"a",@progbits
	.balign	1
	.local	_.str.80.523
_.str.80.523:
	.asciz	"2nd on ULC opens its sacrifice plan."

	.section	.rodata._.str.81.524,"a",@progbits
	.balign	1
	.local	_.str.81.524
_.str.81.524:
	.asciz	"Enter review  2nd ULC plan"

	.section	.rodata._.str.82.638,"a",@progbits
	.balign	1
	.local	_.str.82.638
_.str.82.638:
	.asciz	"Prestige"

	.section	.rodata._.str.83.639,"a",@progbits
	.balign	1
	.local	_.str.83.639
_.str.83.639:
	.asciz	"Big Leaf Crunch"

	.section	.rodata._.str.84.640,"a",@progbits
	.balign	1
	.local	_.str.84.640
_.str.84.640:
	.asciz	"Mega Leaf Crunch"

	.section	.rodata._.str.85.641,"a",@progbits
	.balign	1
	.local	_.str.85.641
_.str.85.641:
	.asciz	"Ultra Leaf Crunch"

	.section	.rodata._.str.86.642,"a",@progbits
	.balign	1
	.local	_.str.86.642
_.str.86.642:
	.asciz	"Quarkstige"

	.section	.rodata._.str.87.525,"a",@progbits
	.balign	1
	.local	_.str.87.525
_.str.87.525:
	.asciz	"ULC sacrifice plan"

	.section	.rodata.__ZN12_GLOBAL__N_119ULC_SACRIFICE_NAMESE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_119ULC_SACRIFICE_NAMESE
__ZN12_GLOBAL__N_119ULC_SACRIFICE_NAMESE:
	d24	_.str.93.628
	d24	_.str.94.629
	d24	_.str.95.630
	d24	_.str.96.631
	d24	_.str.97.632
	d24	_.str.98.633
	d24	_.str.99.634
	d24	_.str.100.635
	d24	_.str.101.636
	d24	_.str.102.637

	.section	.rodata._.str.88.527,"a",@progbits
	.balign	1
	.local	_.str.88.527
_.str.88.527:
	.asciz	"SACRIFICE"

	.section	.rodata._.str.89.526,"a",@progbits
	.balign	1
	.local	_.str.89.526
_.str.89.526:
	.asciz	"KEEP"

	.section	.rodata._.str.90.528,"a",@progbits
	.balign	1
	.local	_.str.90.528
_.str.90.528:
	.asciz	"First ULC: all 10"

	.section	.rodata._.str.91.529,"a",@progbits
	.balign	1
	.local	_.str.91.529
_.str.91.529:
	.asciz	"%u/10 selected; min %u"

	.section	.rodata._.str.92.530,"a",@progbits
	.balign	1
	.local	_.str.92.530
_.str.92.530:
	.asciz	"Enter: toggle"

	.section	.rodata._.str.93.628,"a",@progbits
	.balign	1
	.local	_.str.93.628
_.str.93.628:
	.asciz	"Borbventures"

	.section	.rodata._.str.94.629,"a",@progbits
	.balign	1
	.local	_.str.94.629
_.str.94.629:
	.asciz	"Cards"

	.section	.rodata._.str.95.630,"a",@progbits
	.balign	1
	.local	_.str.95.630
_.str.95.630:
	.asciz	"Crafted Leaves"

	.section	.rodata._.str.96.631,"a",@progbits
	.balign	1
	.local	_.str.96.631
_.str.96.631:
	.asciz	"Dice"

	.section	.rodata._.str.97.632,"a",@progbits
	.balign	1
	.local	_.str.97.632
_.str.97.632:
	.asciz	"Equipment"

	.section	.rodata._.str.98.633,"a",@progbits
	.balign	1
	.local	_.str.98.633
_.str.98.633:
	.asciz	"Leafscensions"

	.section	.rodata._.str.99.634,"a",@progbits
	.balign	1
	.local	_.str.99.634
_.str.99.634:
	.asciz	"Materials"

	.section	.rodata._.str.100.635,"a",@progbits
	.balign	1
	.local	_.str.100.635
_.str.100.635:
	.asciz	"Mines"

	.section	.rodata._.str.101.636,"a",@progbits
	.balign	1
	.local	_.str.101.636
_.str.101.636:
	.asciz	"Quarkstiges"

	.section	.rodata._.str.102.637,"a",@progbits
	.balign	1
	.local	_.str.102.637
_.str.102.637:
	.asciz	"Relics"

	.section	.rodata._.str.103.531,"a",@progbits
	.balign	1
	.local	_.str.103.531
_.str.103.531:
	.asciz	"Progression systems"

	.section	.rodata._SYSTEM_NAMES,"a",@progbits
	.balign	1
	.globl	_SYSTEM_NAMES
_SYSTEM_NAMES:
	d24	_.str.32.481
	d24	_.str.33.482
	d24	_.str.82.638
	d24	_.str.149
	d24	_.str.150
	d24	_.str.151
	d24	_.str.83.639
	d24	_.str.153
	d24	_.str.154
	d24	_.str.38.487
	d24	_.str.40.489
	d24	_.str.157
	d24	_.str.99.634
	d24	_.str.158
	d24	_.str.159
	d24	_.str.160
	d24	_.str.97.632
	d24	_.str.41.490
	d24	_.str.84.640
	d24	_.str.164
	d24	_.str.93.628
	d24	_.str.94.629
	d24	_.str.96.631
	d24	_.str.167
	d24	_.str.100.635
	d24	_.str.169
	d24	_.str.85.641
	d24	_.str.171
	d24	_.str.172
	d24	_.str.173
	d24	_.str.174
	d24	_.str.175
	d24	_.str.176
	d24	_.str.177
	d24	_.str.178
	d24	_.str.179
	d24	_.str.180
	d24	_.str.181
	d24	_.str.98.633
	d24	_.str.102.637
	d24	_.str.184
	d24	_.str.185
	d24	_.str.186
	d24	_.str.187
	d24	_.str.188
	d24	_.str.189
	d24	_.str.190
	d24	_.str.191
	d24	_.str.192
	d24	_.str.193
	d24	_.str.194
	d24	_.str.195

	.section	.rodata._.str.104.532,"a",@progbits
	.balign	1
	.local	_.str.104.532
_.str.104.532:
	.asciz	"READY"

	.section	.rodata._.str.105.533,"a",@progbits
	.balign	1
	.local	_.str.105.533
_.str.105.533:
	.asciz	"Enter: perform / collect"

	.section	.rodata._.str.106.535,"a",@progbits
	.balign	1
	.local	_.str.106.535
_.str.106.535:
	.asciz	"ACTIVE"

	.section	.rodata._.str.107.536,"a",@progbits
	.balign	1
	.local	_.str.107.536
_.str.107.536:
	.asciz	"Enter: buy / activate"

	.section	.rodata._.str.108.537,"a",@progbits
	.balign	1
	.local	_.str.108.537
_.str.108.537:
	.asciz	"Empty equipment slot %u"

	.section	.rodata._.str.109.538,"a",@progbits
	.balign	1
	.local	_.str.109.538
_.str.109.538:
	.asciz	"--"

	.section	.rodata._.str.110.539,"a",@progbits
	.balign	1
	.local	_.str.110.539
_.str.110.539:
	.asciz	"Tier %u crafted leaf"

	.section	.rodata._.str.111.542,"a",@progbits
	.balign	1
	.local	_.str.111.542
_.str.111.542:
	.asciz	"Q%u L%u%s"

	.section	.rodata._.str.112.540,"a",@progbits
	.balign	1
	.local	_.str.112.540
_.str.112.540:
	.asciz	" E"

	.section	.rodata._.str.113.541,"a",@progbits
	.balign	1
	.local	_.str.113.541
_.str.113.541:
	.zero	1

	.section	.rodata._.str.114.543,"a",@progbits
	.balign	1
	.local	_.str.114.543
_.str.114.543:
	.asciz	"2nd: craft  Enter: equip"

	.section	.rodata._.str.115.544,"a",@progbits
	.balign	1
	.local	_.str.115.544
_.str.115.544:
	.asciz	"Trade slot %u"

	.section	.rodata._.str.117.545,"a",@progbits
	.balign	1
	.local	_.str.117.545
_.str.117.545:
	.asciz	"%s -> %s"

	.section	.rodata._.str.118.546,"a",@progbits
	.balign	1
	.local	_.str.118.546
_.str.118.546:
	.asciz	"%lus"

	.section	.rodata._.str.119.547,"a",@progbits
	.balign	1
	.local	_.str.119.547
_.str.119.547:
	.asciz	"OFFER"

	.section	.rodata._.str.120.548,"a",@progbits
	.balign	1
	.local	_.str.120.548
_.str.120.548:
	.asciz	"Completed trades also award cheese."

	.section	.rodata._.str.121.549,"a",@progbits
	.balign	1
	.local	_.str.121.549
_.str.121.549:
	.asciz	"Enter: refresh / start"

	.section	.rodata._.str.123.550,"a",@progbits
	.balign	1
	.local	_.str.123.550
_.str.123.550:
	.asciz	"COMPLETE"

	.section	.rodata._.str.124.551,"a",@progbits
	.balign	1
	.local	_.str.124.551
_.str.124.551:
	.asciz	"+%u.%u%%"

	.section	.rodata._CHALLENGE_DEFS,"a",@progbits
	.balign	2
	.globl	_CHALLENGE_DEFS
_CHALLENGE_DEFS:
	d24	_.str.380
	d24	_.str.381
	db	2                               ; 0x2
	.zero	1
	dw	1100                            ; 0x44c
	d24	_.str.382
	d24	_.str.383
	db	6                               ; 0x6
	.zero	1
	dw	1150                            ; 0x47e
	d24	_.str.384
	d24	_.str.385
	db	15                              ; 0xf
	.zero	1
	dw	1200                            ; 0x4b0
	d24	_.str.386
	d24	_.str.387
	db	6                               ; 0x6
	.zero	1
	dw	1200                            ; 0x4b0
	d24	_.str.388
	d24	_.str.389
	db	10                              ; 0xa
	.zero	1
	dw	1250                            ; 0x4e2
	d24	_.str.390
	d24	_.str.391
	db	26                              ; 0x1a
	.zero	1
	dw	1500                            ; 0x5dc

	.section	.rodata._.str.125.552,"a",@progbits
	.balign	1
	.local	_.str.125.552
_.str.125.552:
	.asciz	"2nd abandons; main progress restored."

	.section	.rodata._.str.126.553,"a",@progbits
	.balign	1
	.local	_.str.126.553
_.str.126.553:
	.asciz	"Enter: claim"

	.section	.rodata._.str.127.554,"a",@progbits
	.balign	1
	.local	_.str.127.554
_.str.127.554:
	.asciz	"2nd: abandon"

	.section	.rodata._.str.128.555,"a",@progbits
	.balign	1
	.local	_.str.128.555
_.str.128.555:
	.asciz	"Enter: begin challenge"

	.section	.rodata._ACHIEVEMENT_DEFS,"a",@progbits
	.balign	2
	.globl	_ACHIEVEMENT_DEFS
_ACHIEVEMENT_DEFS:
	d24	_.str.392
	db	0                               ; 0x0
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d24	_.str.393
	db	0                               ; 0x0
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.394
	db	0                               ; 0x0
	d32	1000000                         ; 0xf4240
	dw	8                               ; 0x8
	d24	_.str.395
	db	1                               ; 0x1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.396
	db	23                              ; 0x17
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d24	_.str.397
	db	24                              ; 0x18
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.398
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d24	_.str.399
	db	38                              ; 0x26
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	d24	_.str.400
	db	36                              ; 0x24
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d24	_.str.401
	db	12                              ; 0xc
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	d24	_.str.402
	db	33                              ; 0x21
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d24	_.str.403
	db	16                              ; 0x10
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.404
	db	34                              ; 0x22
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d24	_.str.405
	db	40                              ; 0x28
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.406
	db	41                              ; 0x29
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.407
	db	42                              ; 0x2a
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.408
	db	43                              ; 0x2b
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.409
	db	44                              ; 0x2c
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	d24	_.str.410
	db	45                              ; 0x2d
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d24	_.str.411
	db	46                              ; 0x2e
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.412
	db	62                              ; 0x3e
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d24	_.str.413
	db	69                              ; 0x45
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d24	_.str.414
	db	53                              ; 0x35
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.142
	db	72                              ; 0x48
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.415
	db	57                              ; 0x39
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.416
	db	58                              ; 0x3a
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.417
	db	55                              ; 0x37
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.418
	db	56                              ; 0x38
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.419
	db	61                              ; 0x3d
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.420
	db	48                              ; 0x30
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d24	_.str.421
	db	49                              ; 0x31
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d24	_.str.422
	db	60                              ; 0x3c
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2

	.section	.rodata._.str.129.556,"a",@progbits
	.balign	1
	.local	_.str.129.556
_.str.129.556:
	.asciz	"DONE"

	.section	.rodata._.str.130.557,"a",@progbits
	.balign	1
	.local	_.str.130.557
_.str.130.557:
	.asciz	"Each achievement boosts output"

	.section	.rodata._.str.131.558,"a",@progbits
	.balign	1
	.local	_.str.131.558
_.str.131.558:
	.asciz	"Play time: %lu:%02lu:%02lu"

	.section	.rodata._.str.132.559,"a",@progbits
	.balign	1
	.local	_.str.132.559
_.str.132.559:
	.asciz	"Tower floor: %u"

	.section	.rodata._.str.133.560,"a",@progbits
	.balign	1
	.local	_.str.133.560
_.str.133.560:
	.asciz	"Pyramid floor: %u"

	.section	.rodata._.str.134.561,"a",@progbits
	.balign	1
	.local	_.str.134.561
_.str.134.561:
	.asciz	"Mine depth: %u   Fishing: %u"

	.section	.rodata._.str.135.562,"a",@progbits
	.balign	1
	.local	_.str.135.562
_.str.135.562:
	.asciz	"Death book: %u   Galaxy: %u"

	.section	.rodata._.str.136.563,"a",@progbits
	.balign	1
	.local	_.str.136.563
_.str.136.563:
	.asciz	"Systems unlocked: %u/%u"

	.section	.rodata._.str.137.564,"a",@progbits
	.balign	1
	.local	_.str.137.564
_.str.137.564:
	.asciz	"Lifetime totals are in Resources"

	.section	.rodata._.str.138.565,"a",@progbits
	.balign	1
	.local	_.str.138.565
_.str.138.565:
	.asciz	"Settings & save"

	.section	.rodata._.str.139.568,"a",@progbits
	.balign	1
	.local	_.str.139.568
_.str.139.568:
	.asciz	"Autosave every minute"

	.section	.rodata._.str.140.567,"a",@progbits
	.balign	1
	.local	_.str.140.567
_.str.140.567:
	.asciz	"ON"

	.section	.rodata._.str.141.566,"a",@progbits
	.balign	1
	.local	_.str.141.566
_.str.141.566:
	.asciz	"OFF"

	.section	.rodata._.str.142.569,"a",@progbits
	.balign	1
	.local	_.str.142.569
_.str.142.569:
	.asciz	"Reduced motion"

	.section	.rodata._.str.143.570,"a",@progbits
	.balign	1
	.local	_.str.143.570
_.str.143.570:
	.asciz	"Compact number display"

	.section	.rodata._.str.144.571,"a",@progbits
	.balign	1
	.local	_.str.144.571
_.str.144.571:
	.asciz	"Save now"

	.section	.rodata._.str.145.572,"a",@progbits
	.balign	1
	.local	_.str.145.572
_.str.145.572:
	.asciz	"WRITE"

	.section	.rodata._.str.146.573,"a",@progbits
	.balign	1
	.local	_.str.146.573
_.str.146.573:
	.asciz	"Save and exit"

	.section	.rodata._.str.147.574,"a",@progbits
	.balign	1
	.local	_.str.147.574
_.str.147.574:
	.asciz	"EXIT"

	.section	.rodata._.str.148.575,"a",@progbits
	.balign	1
	.local	_.str.148.575
_.str.148.575:
	.asciz	"Enter: toggle / activate"

	.section	.rodata._.str.149.619,"a",@progbits
	.balign	1
	.local	_.str.149.619
_.str.149.619:
	.asciz	"Field: arrows move the blower"

	.section	.rodata._.str.150.620,"a",@progbits
	.balign	1
	.local	_.str.150.620
_.str.150.620:
	.asciz	"Hold 2nd to blow leaves"

	.section	.rodata._.str.151.621,"a",@progbits
	.balign	1
	.local	_.str.151.621
_.str.151.621:
	.asciz	"Enter opens the main menu"

	.section	.rodata._.str.152.622,"a",@progbits
	.balign	1
	.local	_.str.152.622
_.str.152.622:
	.asciz	"Menus: arrows move focus"

	.section	.rodata._.str.153.623,"a",@progbits
	.balign	1
	.local	_.str.153.623
_.str.153.623:
	.asciz	"Enter buys, equips, or activates"

	.section	.rodata._.str.154.624,"a",@progbits
	.balign	1
	.local	_.str.154.624
_.str.154.624:
	.asciz	"Left/right changes shop category"

	.section	.rodata._.str.155.625,"a",@progbits
	.balign	1
	.local	_.str.155.625
_.str.155.625:
	.asciz	"Clear returns; on field it saves/exits"

	.section	.rodata._.str.156.626,"a",@progbits
	.balign	1
	.local	_.str.156.626
_.str.156.626:
	.asciz	"2nd: confirm/craft/ULC plan/abandon"

	.section	.rodata._.str.157.627,"a",@progbits
	.balign	1
	.local	_.str.157.627
_.str.157.627:
	.asciz	"Mode returns directly to the field"

	.section	.rodata.___const._ZN12_GLOBAL__N_113draw_controlsERK9GameState.lines,"a",@progbits
	.balign	1
	.local	___const._ZN12_GLOBAL__N_113draw_controlsERK9GameState.lines
___const._ZN12_GLOBAL__N_113draw_controlsERK9GameState.lines:
	d24	_.str.149.619
	d24	_.str.150.620
	d24	_.str.151.621
	d24	_.str.152.622
	d24	_.str.153.623
	d24	_.str.154.624
	d24	_.str.155.625
	d24	_.str.156.626
	d24	_.str.157.627

	.section	.rodata._.str.158.576,"a",@progbits
	.balign	1
	.local	_.str.158.576
_.str.158.576:
	.asciz	"All actions use visible focus"

	.section	.rodata._.str.159.577,"a",@progbits
	.balign	1
	.local	_.str.159.577
_.str.159.577:
	.asciz	"Credits & licensing"

	.section	.rodata._.str.160.578,"a",@progbits
	.balign	1
	.local	_.str.160.578
_.str.160.578:
	.asciz	"Unofficial calculator fan demake."

	.section	.rodata._.str.161.579,"a",@progbits
	.balign	1
	.local	_.str.161.579
_.str.161.579:
	.asciz	"Original C++ code and procedural artwork."

	.section	.rodata._.str.162.580,"a",@progbits
	.balign	1
	.local	_.str.162.580
_.str.162.580:
	.asciz	"Inspired by Leaf Blower Revolution"

	.section	.rodata._.str.163.581,"a",@progbits
	.balign	1
	.local	_.str.163.581
_.str.163.581:
	.asciz	"by Humble North. No affiliation implied."

	.section	.rodata._.str.164.582,"a",@progbits
	.balign	1
	.local	_.str.164.582
_.str.164.582:
	.asciz	"No original game code, art, music, or"

	.section	.rodata._.str.165.583,"a",@progbits
	.balign	1
	.local	_.str.165.583
_.str.165.583:
	.asciz	"audio is distributed with this release."

	.section	.rodata._.str.166.584,"a",@progbits
	.balign	1
	.local	_.str.166.584
_.str.166.584:
	.asciz	"See LICENSES.md for research attribution."

	.section	.rodata._.str.167.585,"a",@progbits
	.balign	1
	.local	_.str.167.585
_.str.167.585:
	.asciz	"Calculator build: LBRCE"

	.section	.rodata.__ZN12_GLOBAL__N_114RESET_PREVIEWSE,"a",@progbits
	.balign	1
	.local	__ZN12_GLOBAL__N_114RESET_PREVIEWSE
__ZN12_GLOBAL__N_114RESET_PREVIEWSE:
	d24	_.str.174.601
	d24	_.str.175.602
	d24	_.str.176.603
	d24	_.str.177.604
	d24	_.str.174.601
	d24	_.str.178.605
	d24	_.str.179.606
	d24	_.str.177.604
	d24	_.str.180.607
	d24	_.str.181.608
	d24	_.str.182.609
	d24	_.str.183.610
	d24	_.str.184.611
	d24	_.str.185.612
	d24	_.str.186.613
	d24	_.str.187.614
	d24	_.str.188.615
	d24	_.str.189.616
	d24	_.str.190.617
	d24	_.str.191.618

	.section	.rodata._.str.168.586,"a",@progbits
	.balign	1
	.local	_.str.168.586
_.str.168.586:
	.asciz	"CONFIRM RESET"

	.section	.rodata._.str.169.587,"a",@progbits
	.balign	1
	.local	_.str.169.587
_.str.169.587:
	.asciz	"Reward: %s"

	.section	.rodata._.str.170.588,"a",@progbits
	.balign	1
	.local	_.str.170.588
_.str.170.588:
	.asciz	"CLEARS NOW"

	.section	.rodata._.str.171.589,"a",@progbits
	.balign	1
	.local	_.str.171.589
_.str.171.589:
	.asciz	"KEEPS NOW"

	.section	.rodata._.str.172.590,"a",@progbits
	.balign	1
	.local	_.str.172.590
_.str.172.590:
	.asciz	"CURRENT RULE"

	.section	.rodata._.str.173.600,"a",@progbits
	.balign	1
	.local	_.str.173.600
_.str.173.600:
	.asciz	"2nd/Enter: CONFIRM  Clear: cancel"

	.section	.rodata._.str.174.601,"a",@progbits
	.balign	1
	.local	_.str.174.601
_.str.174.601:
	.asciz	"Basic-Sand leaves and all flasks"

	.section	.rodata._.str.175.602,"a",@progbits
	.balign	1
	.local	_.str.175.602
_.str.175.602:
	.asciz	"Leaf + Gold Shops; combo"

	.section	.rodata._.str.176.603,"a",@progbits
	.balign	1
	.local	_.str.176.603
_.str.176.603:
	.asciz	"Coins, Ancient+ and later progress"

	.section	.rodata._.str.177.604,"a",@progbits
	.balign	1
	.local	_.str.177.604
_.str.177.604:
	.asciz	"Areas, tools, systems, equipment"

	.section	.rodata._.str.178.605,"a",@progbits
	.balign	1
	.local	_.str.178.605
_.str.178.605:
	.asciz	"Leaf/Gold/Coin Shops; combo"

	.section	.rodata._.str.179.606,"a",@progbits
	.balign	1
	.local	_.str.179.606
_.str.179.606:
	.asciz	"BLC+, Ancient+ and later progress"

	.section	.rodata._.str.180.607,"a",@progbits
	.balign	1
	.local	_.str.180.607
_.str.180.607:
	.asciz	"Basic-Sand leaves/flasks; areas"

	.section	.rodata._.str.181.608,"a",@progbits
	.balign	1
	.local	_.str.181.608
_.str.181.608:
	.asciz	"Leaf-BLC Shops; Tower; trades"

	.section	.rodata._.str.182.609,"a",@progbits
	.balign	1
	.local	_.str.182.609
_.str.182.609:
	.asciz	"MLC+, Ancient+ and later progress"

	.section	.rodata._.str.183.610,"a",@progbits
	.balign	1
	.local	_.str.183.610
_.str.183.610:
	.asciz	"Tools, pets, equipment, milestones"

	.section	.rodata._.str.184.611,"a",@progbits
	.balign	1
	.local	_.str.184.611
_.str.184.611:
	.asciz	"Coins, BLC, MLC; Leaf-MLC Shops"

	.section	.rodata._.str.185.612,"a",@progbits
	.balign	1
	.local	_.str.185.612
_.str.185.612:
	.asciz	"Areas; Tower/Pyramid; reset groups"

	.section	.rodata._.str.186.613,"a",@progbits
	.balign	1
	.local	_.str.186.613
_.str.186.613:
	.asciz	"ULC, Gems, Curses; unlock records"

	.section	.rodata._.str.187.614,"a",@progbits
	.balign	1
	.local	_.str.187.614
_.str.187.614:
	.asciz	"Harbor/Fishing/Shadow; House"

	.section	.rodata._.str.188.615,"a",@progbits
	.balign	1
	.local	_.str.188.615
_.str.188.615:
	.asciz	"Quarks and Quark Leaves only"

	.section	.rodata._.str.189.616,"a",@progbits
	.balign	1
	.local	_.str.189.616
_.str.189.616:
	.asciz	"Local Quark run balance"

	.section	.rodata._.str.190.617,"a",@progbits
	.balign	1
	.local	_.str.190.617
_.str.190.617:
	.asciz	"All global currencies and areas"

	.section	.rodata._.str.191.618,"a",@progbits
	.balign	1
	.local	_.str.191.618
_.str.191.618:
	.asciz	"Reactor level; all other progress"

	.section	.bss.__ZZN12_GLOBAL__N_118reset_current_ruleERK9GameStatehE4rule,"aw",@nobits
	.balign	1
	.local	__ZZN12_GLOBAL__N_118reset_current_ruleERK9GameStatehE4rule
__ZZN12_GLOBAL__N_118reset_current_ruleERK9GameStatehE4rule:
	.zero	48

	.section	.rodata._.str.192.599,"a",@progbits
	.balign	1
	.local	_.str.192.599
_.str.192.599:
	.asciz	"No preservation choice applies"

	.section	.rodata._.str.193.592,"a",@progbits
	.balign	1
	.local	_.str.193.592
_.str.193.592:
	.asciz	"Coins + printer KEPT: Crunchy Coins"

	.section	.rodata._.str.194.591,"a",@progbits
	.balign	1
	.local	_.str.194.591
_.str.194.591:
	.asciz	"Coins + printer CLEARED"

	.section	.rodata._.str.195.594,"a",@progbits
	.balign	1
	.local	_.str.195.594
_.str.195.594:
	.asciz	"BLC KEPT: Crunchy BLC active"

	.section	.rodata._.str.196.593,"a",@progbits
	.balign	1
	.local	_.str.196.593
_.str.196.593:
	.asciz	"BLC CLEARED: no Crunchy BLC"

	.section	.rodata._.str.197.597,"a",@progbits
	.balign	1
	.local	_.str.197.597
_.str.197.597:
	.asciz	"%u/%u families; areas %s"

	.section	.rodata._.str.198.596,"a",@progbits
	.balign	1
	.local	_.str.198.596
_.str.198.596:
	.asciz	"KEPT"

	.section	.rodata._.str.199.595,"a",@progbits
	.balign	1
	.local	_.str.199.595
_.str.199.595:
	.asciz	"CLEARED"

	.section	.rodata._.str.200.598,"a",@progbits
	.balign	1
	.local	_.str.200.598
_.str.200.598:
	.asciz	"Awards Blobs; Quarkstige advances"

	.section	.rodata._AREA_COUNT,"a",@progbits
	.balign	1
	.globl	_AREA_COUNT
_AREA_COUNT:
	db	78                              ; 0x4e

	.section	.rodata._TOOL_COUNT,"a",@progbits
	.balign	1
	.globl	_TOOL_COUNT
_TOOL_COUNT:
	db	16                              ; 0x10

	.section	.rodata._PET_COUNT,"a",@progbits
	.balign	1
	.globl	_PET_COUNT
_PET_COUNT:
	db	16                              ; 0x10

	.section	.rodata._UPGRADE_COUNT,"a",@progbits
	.balign	1
	.globl	_UPGRADE_COUNT
_UPGRADE_COUNT:
	db	32                              ; 0x20

	.section	.rodata._ACHIEVEMENT_COUNT,"a",@progbits
	.balign	1
	.globl	_ACHIEVEMENT_COUNT
_ACHIEVEMENT_COUNT:
	db	32                              ; 0x20

	.section	.rodata._CHALLENGE_COUNT,"a",@progbits
	.balign	1
	.globl	_CHALLENGE_COUNT
_CHALLENGE_COUNT:
	db	6                               ; 0x6

	.section	.rodata._AREA_DEFS,"a",@progbits
	.balign	2
	.globl	_AREA_DEFS
_AREA_DEFS:
	d24	_.str.196
	db	0                               ; 0x0
	db	0                               ; 0x0
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	db	0                               ; 0x0
	db	11                              ; 0xb
	d24	_.str.197
	db	1                               ; 0x1
	db	23                              ; 0x17
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	1                               ; 0x1
	db	10                              ; 0xa
	d24	_.str.198
	db	2                               ; 0x2
	db	23                              ; 0x17
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	1                               ; 0x1
	db	6                               ; 0x6
	d24	_.str.199
	db	4                               ; 0x4
	db	23                              ; 0x17
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	db	1                               ; 0x1
	db	1                               ; 0x1
	d24	_.str.200
	db	5                               ; 0x5
	db	23                              ; 0x17
	.zero	1
	d32	2500000                         ; 0x2625a0
	dw	3                               ; 0x3
	db	1                               ; 0x1
	db	0                               ; 0x0
	d24	_.str.201
	db	6                               ; 0x6
	db	31                              ; 0x1f
	.zero	1
	d32	2500000                         ; 0x2625a0
	dw	4                               ; 0x4
	db	5                               ; 0x5
	db	5                               ; 0x5
	d24	_.str.202
	db	7                               ; 0x7
	db	32                              ; 0x20
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	6                               ; 0x6
	db	12                              ; 0xc
	d24	_.str.203
	db	8                               ; 0x8
	db	32                              ; 0x20
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	9                               ; 0x9
	db	2                               ; 0x2
	d24	_.str.204
	db	9                               ; 0x9
	db	32                              ; 0x20
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	5                               ; 0x5
	db	12                              ; 0xc
	db	8                               ; 0x8
	d24	_.str.205
	db	10                              ; 0xa
	db	32                              ; 0x20
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	db	12                              ; 0xc
	db	12                              ; 0xc
	d24	_.str.206
	db	11                              ; 0xb
	db	32                              ; 0x20
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	7                               ; 0x7
	db	14                              ; 0xe
	db	1                               ; 0x1
	d24	_.str.207
	db	13                              ; 0xd
	db	32                              ; 0x20
	.zero	1
	d32	1500000                         ; 0x16e360
	dw	8                               ; 0x8
	db	10                              ; 0xa
	db	6                               ; 0x6
	d24	_.str.208
	db	62                              ; 0x3e
	db	32                              ; 0x20
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	9                               ; 0x9
	db	15                              ; 0xf
	db	5                               ; 0x5
	d24	_.str.209
	db	14                              ; 0xe
	db	32                              ; 0x20
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	10                              ; 0xa
	db	18                              ; 0x12
	db	6                               ; 0x6
	d24	_.str.210
	db	15                              ; 0xf
	db	33                              ; 0x21
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	18                              ; 0x12
	db	9                               ; 0x9
	d24	_.str.211
	db	15                              ; 0xf
	db	33                              ; 0x21
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	19                              ; 0x13
	db	9                               ; 0x9
	d24	_.str.212
	db	16                              ; 0x10
	db	33                              ; 0x21
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	db	19                              ; 0x13
	db	4                               ; 0x4
	d24	_.str.213
	db	13                              ; 0xd
	db	38                              ; 0x26
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	2                               ; 0x2
	db	13                              ; 0xd
	db	3                               ; 0x3
	d24	_.str.214
	db	16                              ; 0x10
	db	38                              ; 0x26
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	3                               ; 0x3
	db	13                              ; 0xd
	db	5                               ; 0x5
	d24	_.str.215
	db	37                              ; 0x25
	db	38                              ; 0x26
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	12                              ; 0xc
	db	2                               ; 0x2
	d24	_.str.216
	db	16                              ; 0x10
	db	52                              ; 0x34
	.zero	1
	d32	2500000                         ; 0x2625a0
	dw	2                               ; 0x2
	db	19                              ; 0x13
	db	0                               ; 0x0
	d24	_.str.217
	db	42                              ; 0x2a
	db	38                              ; 0x26
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	2                               ; 0x2
	db	22                              ; 0x16
	db	11                              ; 0xb
	d24	_.str.218
	db	69                              ; 0x45
	db	42                              ; 0x2a
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	22                              ; 0x16
	db	10                              ; 0xa
	d24	_.str.219
	db	55                              ; 0x37
	db	38                              ; 0x26
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	25                              ; 0x19
	db	6                               ; 0x6
	d24	_.str.189
	db	57                              ; 0x39
	db	21                              ; 0x15
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	45                              ; 0x2d
	db	12                              ; 0xc
	d24	_.str.220
	db	0                               ; 0x0
	db	40                              ; 0x28
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	2                               ; 0x2
	db	43                              ; 0x2b
	db	9                               ; 0x9
	d24	_.str.221
	db	0                               ; 0x0
	db	36                              ; 0x24
	.zero	1
	d32	3000000                         ; 0x2dc6c0
	dw	2                               ; 0x2
	db	44                              ; 0x2c
	db	4                               ; 0x4
	d24	_.str.222
	db	18                              ; 0x12
	db	52                              ; 0x34
	.zero	1
	d32	2500000                         ; 0x2625a0
	dw	2                               ; 0x2
	db	31                              ; 0x1f
	db	3                               ; 0x3
	d24	_.str.223
	db	19                              ; 0x13
	db	18                              ; 0x12
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	31                              ; 0x1f
	db	7                               ; 0x7
	d24	_.str.224
	db	17                              ; 0x11
	db	19                              ; 0x13
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	39                              ; 0x27
	db	4                               ; 0x4
	d24	_.str.225
	db	17                              ; 0x11
	db	17                              ; 0x11
	.zero	1
	d32	2500000                         ; 0x2625a0
	dw	6                               ; 0x6
	db	39                              ; 0x27
	db	5                               ; 0x5
	d24	_.str.226
	db	19                              ; 0x13
	db	17                              ; 0x11
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	7                               ; 0x7
	db	33                              ; 0x21
	db	2                               ; 0x2
	d24	_.str.227
	db	20                              ; 0x14
	db	19                              ; 0x13
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	8                               ; 0x8
	db	40                              ; 0x28
	db	10                              ; 0xa
	d24	_.str.228
	db	22                              ; 0x16
	db	47                              ; 0x2f
	.zero	1
	d32	1200000                         ; 0x124f80
	dw	3                               ; 0x3
	db	40                              ; 0x28
	db	12                              ; 0xc
	d24	_.str.229
	db	22                              ; 0x16
	db	47                              ; 0x2f
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	31                              ; 0x1f
	db	1                               ; 0x1
	d24	_.str.230
	db	47                              ; 0x2f
	db	34                              ; 0x22
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	31                              ; 0x1f
	db	10                              ; 0xa
	d24	_.str.231
	db	21                              ; 0x15
	db	47                              ; 0x2f
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	31                              ; 0x1f
	db	13                              ; 0xd
	d24	_.str.232
	db	21                              ; 0x15
	db	47                              ; 0x2f
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	23                              ; 0x17
	db	12                              ; 0xc
	d24	_.str.233
	db	21                              ; 0x15
	db	47                              ; 0x2f
	.zero	1
	d32	1500000                         ; 0x16e360
	dw	4                               ; 0x4
	db	23                              ; 0x17
	db	11                              ; 0xb
	d24	_.str.234
	db	21                              ; 0x15
	db	47                              ; 0x2f
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	4                               ; 0x4
	db	23                              ; 0x17
	db	8                               ; 0x8
	d24	_.str.235
	db	21                              ; 0x15
	db	47                              ; 0x2f
	.zero	1
	d32	2500000                         ; 0x2625a0
	dw	4                               ; 0x4
	db	23                              ; 0x17
	db	13                              ; 0xd
	d24	_.str.236
	db	21                              ; 0x15
	db	47                              ; 0x2f
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	23                              ; 0x17
	db	0                               ; 0x0
	d24	_.str.237
	db	22                              ; 0x16
	db	47                              ; 0x2f
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	db	23                              ; 0x17
	db	5                               ; 0x5
	d24	_.str.238
	db	47                              ; 0x2f
	db	47                              ; 0x2f
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	5                               ; 0x5
	db	40                              ; 0x28
	db	1                               ; 0x1
	d24	_.str.239
	db	47                              ; 0x2f
	db	47                              ; 0x2f
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	db	31                              ; 0x1f
	db	8                               ; 0x8
	d24	_.str.240
	db	53                              ; 0x35
	db	47                              ; 0x2f
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	db	24                              ; 0x18
	db	5                               ; 0x5
	d24	_.str.241
	db	53                              ; 0x35
	db	53                              ; 0x35
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	24                              ; 0x18
	db	4                               ; 0x4
	d24	_.str.242
	db	53                              ; 0x35
	db	54                              ; 0x36
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	24                              ; 0x18
	db	8                               ; 0x8
	d24	_.str.243
	db	53                              ; 0x35
	db	54                              ; 0x36
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	24                              ; 0x18
	db	9                               ; 0x9
	d24	_.str.244
	db	53                              ; 0x35
	db	54                              ; 0x36
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	39                              ; 0x27
	db	8                               ; 0x8
	d24	_.str.245
	db	53                              ; 0x35
	db	54                              ; 0x36
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	31                              ; 0x1f
	db	8                               ; 0x8
	d24	_.str.246
	db	43                              ; 0x2b
	db	54                              ; 0x36
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	db	41                              ; 0x29
	db	13                              ; 0xd
	d24	_.str.247
	db	43                              ; 0x2b
	db	43                              ; 0x2b
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	41                              ; 0x29
	db	13                              ; 0xd
	d24	_.str.185
	db	43                              ; 0x2b
	db	43                              ; 0x2b
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	2                               ; 0x2
	db	41                              ; 0x29
	db	5                               ; 0x5
	d24	_.str.248
	db	71                              ; 0x47
	db	43                              ; 0x2b
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	28                              ; 0x1c
	db	0                               ; 0x0
	d24	_.str.172
	db	72                              ; 0x48
	db	43                              ; 0x2b
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	28                              ; 0x1c
	db	14                              ; 0xe
	d24	_.str.249
	db	43                              ; 0x2b
	db	43                              ; 0x2b
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	28                              ; 0x1c
	db	7                               ; 0x7
	d24	_.str.250
	db	44                              ; 0x2c
	db	43                              ; 0x2b
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	29                              ; 0x1d
	db	1                               ; 0x1
	d24	_.str.251
	db	43                              ; 0x2b
	db	43                              ; 0x2b
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	db	26                              ; 0x1a
	db	15                              ; 0xf
	d24	_.str.252
	db	73                              ; 0x49
	db	47                              ; 0x2f
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	db	29                              ; 0x1d
	db	1                               ; 0x1
	d24	_.str.253
	db	44                              ; 0x2c
	db	44                              ; 0x2c
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	29                              ; 0x1d
	db	12                              ; 0xc
	d24	_.str.254
	db	44                              ; 0x2c
	db	44                              ; 0x2c
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	29                              ; 0x1d
	db	10                              ; 0xa
	d24	_.str.255
	db	44                              ; 0x2c
	db	44                              ; 0x2c
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	29                              ; 0x1d
	db	13                              ; 0xd
	d24	_.str.256
	db	45                              ; 0x2d
	db	44                              ; 0x2c
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	29                              ; 0x1d
	db	6                               ; 0x6
	d24	_.str.257
	db	45                              ; 0x2d
	db	45                              ; 0x2d
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	1                               ; 0x1
	db	42                              ; 0x2a
	db	3                               ; 0x3
	d24	_.str.258
	db	45                              ; 0x2d
	db	45                              ; 0x2d
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	42                              ; 0x2a
	db	5                               ; 0x5
	d24	_.str.174
	db	61                              ; 0x3d
	db	34                              ; 0x22
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	30                              ; 0x1e
	db	13                              ; 0xd
	d24	_.str.259
	db	61                              ; 0x3d
	db	61                              ; 0x3d
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	51                              ; 0x33
	db	5                               ; 0x5
	d24	_.str.260
	db	61                              ; 0x3d
	db	61                              ; 0x3d
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	51                              ; 0x33
	db	1                               ; 0x1
	d24	_.str.261
	db	61                              ; 0x3d
	db	46                              ; 0x2e
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	51                              ; 0x33
	db	13                              ; 0xd
	d24	_.str.262
	db	61                              ; 0x3d
	db	46                              ; 0x2e
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	51                              ; 0x33
	db	5                               ; 0x5
	d24	_.str.263
	db	61                              ; 0x3d
	db	46                              ; 0x2e
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	db	51                              ; 0x33
	db	7                               ; 0x7
	d24	_.str.264
	db	61                              ; 0x3d
	db	46                              ; 0x2e
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	4                               ; 0x4
	db	51                              ; 0x33
	db	14                              ; 0xe
	d24	_.str.265
	db	49                              ; 0x31
	db	49                              ; 0x31
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	50                              ; 0x32
	db	13                              ; 0xd
	d24	_.str.266
	db	60                              ; 0x3c
	db	37                              ; 0x25
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	db	50                              ; 0x32
	db	11                              ; 0xb
	d24	_.str.267
	db	38                              ; 0x26
	db	37                              ; 0x25
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	2                               ; 0x2
	db	50                              ; 0x32
	db	14                              ; 0xe
	d24	_.str.268
	db	60                              ; 0x3c
	db	38                              ; 0x26
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	db	50                              ; 0x32
	db	6                               ; 0x6
	d24	_.str.269
	db	61                              ; 0x3d
	db	60                              ; 0x3c
	.zero	1
	d32	5000000                         ; 0x4c4b40
	dw	3                               ; 0x3
	db	50                              ; 0x32
	db	5                               ; 0x5

	.section	.rodata._TOOL_DEFS,"a",@progbits
	.balign	2
	.globl	_TOOL_DEFS
_TOOL_DEFS:
	d24	_.str.270
	db	0                               ; 0x0
	d32	1000000                         ; 0xf4240
	dw	0                               ; 0x0
	d32	1000                            ; 0x3e8
	db	24                              ; 0x18
	db	0                               ; 0x0
	d24	_.str.271
	db	0                               ; 0x0
	d32	5000000                         ; 0x4c4b40
	dw	2                               ; 0x2
	d32	1400                            ; 0x578
	db	28                              ; 0x1c
	db	0                               ; 0x0
	d24	_.str.272
	db	1                               ; 0x1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d32	1900                            ; 0x76c
	db	34                              ; 0x22
	db	1                               ; 0x1
	d24	_.str.273
	db	1                               ; 0x1
	d32	2500000                         ; 0x2625a0
	dw	4                               ; 0x4
	d32	2600                            ; 0xa28
	db	42                              ; 0x2a
	db	1                               ; 0x1
	d24	_.str.274
	db	2                               ; 0x2
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	d32	3800                            ; 0xed8
	db	50                              ; 0x32
	db	3                               ; 0x3
	d24	_.str.275
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d32	6000                            ; 0x1770
	db	58                              ; 0x3a
	db	6                               ; 0x6
	d24	_.str.276
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	d32	9000                            ; 0x2328
	db	64                              ; 0x40
	db	15                              ; 0xf
	d24	_.str.277
	db	33                              ; 0x21
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d32	14000                           ; 0x36b0
	db	72                              ; 0x48
	db	18                              ; 0x12
	d24	_.str.278
	db	33                              ; 0x21
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	d32	22000                           ; 0x55f0
	db	80                              ; 0x50
	db	19                              ; 0x13
	d24	_.str.279
	db	34                              ; 0x22
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d32	35000                           ; 0x88b8
	db	88                              ; 0x58
	db	26                              ; 0x1a
	d24	_.str.280
	db	45                              ; 0x2d
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d32	55000                           ; 0xd6d8
	db	96                              ; 0x60
	db	29                              ; 0x1d
	d24	_.str.281
	db	54                              ; 0x36
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d32	65000                           ; 0xfde8
	db	90                              ; 0x5a
	db	34                              ; 0x22
	d24	_.str.282
	db	55                              ; 0x37
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d32	72000                           ; 0x11940
	db	100                             ; 0x64
	db	25                              ; 0x19
	d24	_.str.283
	db	58                              ; 0x3a
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d32	82000                           ; 0x14050
	db	104                             ; 0x68
	db	45                              ; 0x2d
	d24	_.str.284
	db	46                              ; 0x2e
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d32	96000                           ; 0x17700
	db	112                             ; 0x70
	db	30                              ; 0x1e
	d24	_.str.285
	db	45                              ; 0x2d
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d32	120000                          ; 0x1d4c0
	db	120                             ; 0x78
	db	31                              ; 0x1f

	.section	.rodata._UPGRADE_DEFS,"a",@progbits
	.balign	2
	.globl	_UPGRADE_DEFS
_UPGRADE_DEFS:
	d24	_.str.286
	d24	_.str.287
	db	0                               ; 0x0
	db	0                               ; 0x0
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	dw	1450                            ; 0x5aa
	dw	100                             ; 0x64
	db	0                               ; 0x0
	db	0                               ; 0x0
	d24	_.str.288
	d24	_.str.289
	db	0                               ; 0x0
	db	0                               ; 0x0
	d32	5000000                         ; 0x4c4b40
	dw	1                               ; 0x1
	dw	1600                            ; 0x640
	dw	20                              ; 0x14
	db	1                               ; 0x1
	db	0                               ; 0x0
	d24	_.str.290
	d24	_.str.291
	db	0                               ; 0x0
	db	0                               ; 0x0
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	1750                            ; 0x6d6
	dw	12                              ; 0xc
	db	2                               ; 0x2
	db	0                               ; 0x0
	d24	_.str.292
	d24	_.str.293
	db	0                               ; 0x0
	db	0                               ; 0x0
	d32	2500000                         ; 0x2625a0
	dw	2                               ; 0x2
	dw	1500                            ; 0x5dc
	dw	50                              ; 0x32
	db	4                               ; 0x4
	db	0                               ; 0x0
	d24	_.str.294
	d24	_.str.295
	db	1                               ; 0x1
	db	1                               ; 0x1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	1800                            ; 0x708
	dw	80                              ; 0x50
	db	3                               ; 0x3
	db	1                               ; 0x1
	d24	_.str.296
	d24	_.str.297
	db	1                               ; 0x1
	db	1                               ; 0x1
	d32	5000000                         ; 0x4c4b40
	dw	2                               ; 0x2
	dw	2000                            ; 0x7d0
	dw	40                              ; 0x28
	db	5                               ; 0x5
	db	1                               ; 0x1
	d24	_.str.298
	d24	_.str.299
	db	2                               ; 0x2
	db	23                              ; 0x17
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	2200                            ; 0x898
	dw	60                              ; 0x3c
	db	7                               ; 0x7
	db	3                               ; 0x3
	d24	_.str.300
	d24	_.str.301
	db	2                               ; 0x2
	db	23                              ; 0x17
	d32	2500000                         ; 0x2625a0
	dw	3                               ; 0x3
	dw	2400                            ; 0x960
	dw	50                              ; 0x32
	db	8                               ; 0x8
	db	4                               ; 0x4
	d24	_.str.302
	d24	_.str.303
	db	2                               ; 0x2
	db	23                              ; 0x17
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	dw	2600                            ; 0xa28
	dw	25                              ; 0x19
	db	9                               ; 0x9
	db	1                               ; 0x1
	d24	_.str.304
	d24	_.str.305
	db	2                               ; 0x2
	db	23                              ; 0x17
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	dw	3000                            ; 0xbb8
	dw	25                              ; 0x19
	db	6                               ; 0x6
	db	2                               ; 0x2
	d24	_.str.306
	d24	_.str.307
	db	3                               ; 0x3
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	dw	10000                           ; 0x2710
	dw	1                               ; 0x1
	db	10                              ; 0xa
	db	6                               ; 0x6
	d24	_.str.308
	d24	_.str.309
	db	3                               ; 0x3
	db	32                              ; 0x20
	d32	5000000                         ; 0x4c4b40
	dw	1                               ; 0x1
	dw	2400                            ; 0x960
	dw	75                              ; 0x4b
	db	11                              ; 0xb
	db	6                               ; 0x6
	d24	_.str.153
	d24	_.str.310
	db	3                               ; 0x3
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	dw	3200                            ; 0xc80
	dw	50                              ; 0x32
	db	12                              ; 0xc
	db	7                               ; 0x7
	d24	_.str.311
	d24	_.str.312
	db	6                               ; 0x6
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	3500                            ; 0xdac
	dw	8                               ; 0x8
	db	13                              ; 0xd
	db	8                               ; 0x8
	d24	_.str.313
	d24	_.str.314
	db	6                               ; 0x6
	db	32                              ; 0x20
	d32	2500000                         ; 0x2625a0
	dw	2                               ; 0x2
	dw	2100                            ; 0x834
	dw	80                              ; 0x50
	db	14                              ; 0xe
	db	8                               ; 0x8
	d24	_.str.315
	d24	_.str.316
	db	3                               ; 0x3
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	dw	2600                            ; 0xa28
	dw	40                              ; 0x28
	db	15                              ; 0xf
	db	10                              ; 0xa
	d24	_.str.76.651
	d24	_.str.318
	db	7                               ; 0x7
	db	36                              ; 0x24
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	2200                            ; 0x898
	dw	100                             ; 0x64
	db	16                              ; 0x10
	db	11                              ; 0xb
	d24	_.str.319
	d24	_.str.320
	db	3                               ; 0x3
	db	32                              ; 0x20
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	dw	2200                            ; 0x898
	dw	100                             ; 0x64
	db	17                              ; 0x11
	db	15                              ; 0xf
	d24	_.str.321
	d24	_.str.322
	db	7                               ; 0x7
	db	38                              ; 0x26
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	2500                            ; 0x9c4
	dw	20                              ; 0x14
	db	18                              ; 0x12
	db	9                               ; 0x9
	d24	_.str.323
	d24	_.str.324
	db	4                               ; 0x4
	db	33                              ; 0x21
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	dw	2300                            ; 0x8fc
	dw	75                              ; 0x4b
	db	19                              ; 0x13
	db	18                              ; 0x12
	d24	_.str.325
	d24	_.str.326
	db	4                               ; 0x4
	db	33                              ; 0x21
	d32	5000000                         ; 0x4c4b40
	dw	1                               ; 0x1
	dw	10000                           ; 0x2710
	dw	1                               ; 0x1
	db	20                              ; 0x14
	db	18                              ; 0x12
	d24	_.str.327
	d24	_.str.328
	db	4                               ; 0x4
	db	33                              ; 0x21
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	dw	2800                            ; 0xaf0
	dw	60                              ; 0x3c
	db	25                              ; 0x19
	db	18                              ; 0x12
	d24	_.str.329
	d24	_.str.330
	db	5                               ; 0x5
	db	34                              ; 0x22
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	dw	2500                            ; 0x9c4
	dw	75                              ; 0x4b
	db	21                              ; 0x15
	db	26                              ; 0x1a
	d24	_.str.331
	d24	_.str.332
	db	5                               ; 0x5
	db	34                              ; 0x22
	d32	5000000                         ; 0x4c4b40
	dw	1                               ; 0x1
	dw	10000                           ; 0x2710
	dw	1                               ; 0x1
	db	22                              ; 0x16
	db	26                              ; 0x1a
	d24	_.str.333
	d24	_.str.334
	db	5                               ; 0x5
	db	34                              ; 0x22
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	dw	3000                            ; 0xbb8
	dw	50                              ; 0x32
	db	23                              ; 0x17
	db	27                              ; 0x1b
	d24	_.str.335
	d24	_.str.336
	db	8                               ; 0x8
	db	45                              ; 0x2d
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	dw	2200                            ; 0x898
	dw	100                             ; 0x64
	db	24                              ; 0x18
	db	29                              ; 0x1d
	d24	_.str.337
	d24	_.str.338
	db	8                               ; 0x8
	db	46                              ; 0x2e
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	dw	2800                            ; 0xaf0
	dw	100                             ; 0x64
	db	25                              ; 0x19
	db	31                              ; 0x1f
	d24	_.str.339
	d24	_.str.340
	db	6                               ; 0x6
	db	23                              ; 0x17
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	dw	2200                            ; 0x898
	dw	50                              ; 0x32
	db	26                              ; 0x1a
	db	32                              ; 0x20
	d24	_.str.341
	d24	_.str.342
	db	7                               ; 0x7
	db	37                              ; 0x25
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	dw	2400                            ; 0x960
	dw	50                              ; 0x32
	db	27                              ; 0x1b
	db	35                              ; 0x23
	d24	_.str.343
	d24	_.str.344
	db	8                               ; 0x8
	db	58                              ; 0x3a
	d32	1000000                         ; 0xf4240
	dw	1                               ; 0x1
	dw	2300                            ; 0x8fc
	dw	50                              ; 0x32
	db	28                              ; 0x1c
	db	45                              ; 0x2d
	d24	_.str.195
	d24	_.str.345
	db	8                               ; 0x8
	db	46                              ; 0x2e
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	dw	2800                            ; 0xaf0
	dw	50                              ; 0x32
	db	29                              ; 0x1d
	db	51                              ; 0x33
	d24	_.str.346
	d24	_.str.347
	db	5                               ; 0x5
	db	34                              ; 0x22
	d32	2500000                         ; 0x2625a0
	dw	2                               ; 0x2
	dw	5000                            ; 0x1388
	dw	3                               ; 0x3
	db	30                              ; 0x1e
	db	26                              ; 0x1a

	.section	.rodata._PET_DEFS,"a",@progbits
	.balign	2
	.globl	_PET_DEFS
_PET_DEFS:
	d24	_.str.348
	d24	_.str.349
	db	14                              ; 0xe
	.zero	1
	dw	1250                            ; 0x4e2
	db	32                              ; 0x20
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	6                               ; 0x6
	d24	_.str.350
	d24	_.str.351
	db	8                               ; 0x8
	.zero	1
	dw	1500                            ; 0x5dc
	db	32                              ; 0x20
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	6                               ; 0x6
	d24	_.str.352
	d24	_.str.353
	db	15                              ; 0xf
	.zero	1
	dw	1300                            ; 0x514
	db	32                              ; 0x20
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	6                               ; 0x6
	d24	_.str.354
	d24	_.str.355
	db	12                              ; 0xc
	.zero	1
	dw	1400                            ; 0x578
	db	32                              ; 0x20
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	6                               ; 0x6
	d24	_.str.356
	d24	_.str.357
	db	17                              ; 0x11
	.zero	1
	dw	1500                            ; 0x5dc
	db	32                              ; 0x20
	.zero	1
	d32	2000000                         ; 0x1e8480
	dw	6                               ; 0x6
	d24	_.str.358
	d24	_.str.359
	db	18                              ; 0x12
	.zero	1
	dw	1200                            ; 0x4b0
	db	38                              ; 0x26
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.360
	d24	_.str.361
	db	15                              ; 0xf
	.zero	1
	dw	1800                            ; 0x708
	db	38                              ; 0x26
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.362
	d24	_.str.363
	db	25                              ; 0x19
	.zero	1
	dw	1500                            ; 0x5dc
	db	34                              ; 0x22
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	d24	_.str.364
	d24	_.str.365
	db	26                              ; 0x1a
	.zero	1
	dw	1400                            ; 0x578
	db	32                              ; 0x20
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	7                               ; 0x7
	d24	_.str.366
	d24	_.str.367
	db	27                              ; 0x1b
	.zero	1
	dw	1400                            ; 0x578
	db	38                              ; 0x26
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4
	d24	_.str.368
	d24	_.str.369
	db	16                              ; 0x10
	.zero	1
	dw	1350                            ; 0x546
	db	37                              ; 0x25
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	d24	_.str.370
	d24	_.str.371
	db	17                              ; 0x11
	.zero	1
	dw	1350                            ; 0x546
	db	56                              ; 0x38
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	2                               ; 0x2
	d24	_.str.372
	d24	_.str.373
	db	25                              ; 0x19
	.zero	1
	dw	1450                            ; 0x5aa
	db	39                              ; 0x27
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	5                               ; 0x5
	d24	_.str.374
	d24	_.str.375
	db	17                              ; 0x11
	.zero	1
	dw	1700                            ; 0x6a4
	db	33                              ; 0x21
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	6                               ; 0x6
	d24	_.str.376
	d24	_.str.377
	db	28                              ; 0x1c
	.zero	1
	dw	1500                            ; 0x5dc
	db	58                              ; 0x3a
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	3                               ; 0x3
	d24	_.str.378
	d24	_.str.379
	db	25                              ; 0x19
	.zero	1
	dw	1500                            ; 0x5dc
	db	55                              ; 0x37
	.zero	1
	d32	1000000                         ; 0xf4240
	dw	4                               ; 0x4

	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.section	".note.GNU-stack","",@progbits
	.extern	_gfx_FillCircle
	.extern	__sremu
	.extern	_llvm.memset.p0.i64
	.extern	__lcmpzero
	.extern	__ladd
	.extern	_llvm.umin.i24
	.extern	__idivu
	.extern	_ti_SetArchiveStatus
	.extern	_llvm.eh.sjlj.lsda
	.extern	__lnot
	.extern	__llcmpzero
	.extern	_memcmp
	.extern	__iremu
	.extern	_gfx_FillTriangle
	.extern	__lshl
	.extern	__sand
	.extern	__lcmpu
	.extern	_llvm.uadd.sat.i32
	.extern	_llvm.eh.sjlj.callsite
	.extern	_gfx_Circle
	.extern	_ti_Write
	.extern	__smulu
	.extern	__ldivu
	.extern	_llvm.smin.i24
	.extern	_gfx_FillRectangle
	.extern	_llvm.lifetime.end.p0
	.extern	__sor
	.extern	_kb_Scan
	.extern	__land
	.extern	_llvm.umax.i32
	.extern	_gfx_GetStringWidth
	.extern	__llor
	.extern	__setflag
	.extern	_os_ClrLCD
	.extern	_llvm.lifetime.start.p0
	.extern	_gfx_SetTextTransparentColor
	.extern	__lshru
	.extern	__lland
	.extern	_llvm.umin.i64
	.extern	_llvm.memcpy.p0.p0.i24
	.extern	_kb_Reset
	.extern	_llvm.eh.sjlj.setup.dispatch
	.extern	_os_DrawStatusBar
	.extern	_gfx_SetTextFGColor
	.extern	_strncpy
	.extern	__lor
	.extern	__sshrs
	.extern	__imulu
	.extern	_delay
	.extern	_gfx_SetDraw
	.extern	__ishl
	.extern	__ishru
	.extern	__Unwind_SjLj_Unregister
	.extern	__lldivu
	.extern	_boot_GetDate
	.extern	_boot_GetTime
	.extern	_llvm.smax.i16
	.extern	__ior
	.extern	__lsub
	.extern	_llvm.usub.sat.i32
	.extern	__llshru
	.extern	_os_PutStrFull
	.extern	_ti_Open
	.extern	__lxor
	.extern	_ti_Delete
	.extern	__iand
	.extern	__lneg
	.extern	_ti_Close
	.extern	_os_HomeUp
	.extern	__sdivu
	.extern	__bshru
	.extern	__snot
	.extern	_llvm.umin.i8
	.extern	_llvm.memset.p0.i24
	.extern	_gfx_End
	.extern	_llvm.frameaddress.p0
	.extern	__lremu
	.extern	_gfx_HorizLine
	.extern	_gfx_SetTextScale
	.extern	__ishru_1
	.extern	__lcmps
	.extern	_gfx_SetTextBGColor
	.extern	__sshru
	.extern	__frameset
	.extern	__llshl
	.extern	__lmulu
	.extern	__ishrs
	.extern	_ti_Rename
	.extern	_ti_IsArchived
	.extern	__llcmpu
	.extern	_llvm.umax.i8
	.extern	_gfx_Line
	.extern	_ti_Read
	.extern	_snprintf
	.extern	_ti_SetGCBehavior
	.extern	_llvm.umax.i16
	.extern	_llvm.stacksave.p0
	.extern	_llvm.umin.i16
	.extern	_llvm.eh.sjlj.functioncontext
	.extern	_ti_GetSize
	.extern	_llvm.umin.i32
	.extern	__llmulu
	.extern	_gfx_FillScreen
	.extern	_gfx_PrintStringXY
	.extern	_gfx_SetColor
	.extern	_llvm.stackrestore.p0
	.extern	_gfx_Begin
	.extern	__bdivu
	.extern	__lladd
	.extern	_gfx_SwapDraw
	.extern	__frameset0
	.extern	__Unwind_SjLj_Register
	.extern	__bshl
