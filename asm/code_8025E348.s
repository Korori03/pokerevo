.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8025E348
func_8025E348:
/* 8025E348 00259FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E34C 00259FAC  7C 08 02 A6 */	mflr r0
/* 8025E350 00259FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E354 00259FB4  48 01 44 65 */	bl OSGetTime
/* 8025E358 00259FB8  90 8D A6 EC */	stw r4, lbl_8063F9AC-_SDA_BASE_(r13)
/* 8025E35C 00259FBC  90 6D A6 E8 */	stw r3, lbl_8063F9A8-_SDA_BASE_(r13)
/* 8025E360 00259FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E364 00259FC4  7C 08 03 A6 */	mtlr r0
/* 8025E368 00259FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E36C 00259FCC  4E 80 00 20 */	blr

.global func_8025E370
func_8025E370:
/* 8025E370 00259FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E374 00259FD4  7C 08 02 A6 */	mflr r0
/* 8025E378 00259FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E37C 00259FDC  48 01 44 3D */	bl OSGetTime
/* 8025E380 00259FE0  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8025E384 00259FE4  81 0D A6 EC */	lwz r8, lbl_8063F9AC-_SDA_BASE_(r13)
/* 8025E388 00259FE8  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 8025E38C 00259FEC  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 8025E390 00259FF0  38 C5 4D D3 */	addi r6, r5, 0x10624DD3@l
/* 8025E394 00259FF4  80 ED A6 E8 */	lwz r7, lbl_8063F9A8-_SDA_BASE_(r13)
/* 8025E398 00259FF8  54 00 F0 BE */	srwi r0, r0, 2
/* 8025E39C 00259FFC  7C 88 20 10 */	subfc r4, r8, r4
/* 8025E3A0 0025A000  7C 06 00 16 */	mulhwu r0, r6, r0
/* 8025E3A4 0025A004  38 A0 00 00 */	li r5, 0
/* 8025E3A8 0025A008  7C 67 19 10 */	subfe r3, r7, r3
/* 8025E3AC 0025A00C  54 06 D1 BE */	srwi r6, r0, 6
/* 8025E3B0 0025A010  4B F6 8E C9 */	bl __div2i
/* 8025E3B4 0025A014  38 C0 00 64 */	li r6, 0x64
/* 8025E3B8 0025A018  38 A0 00 00 */	li r5, 0
/* 8025E3BC 0025A01C  4B F6 8E BD */	bl __div2i
/* 8025E3C0 0025A020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E3C4 0025A024  7C 83 23 78 */	mr r3, r4
/* 8025E3C8 0025A028  7C 08 03 A6 */	mtlr r0
/* 8025E3CC 0025A02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E3D0 0025A030  4E 80 00 20 */	blr

.global func_8025E3D4
func_8025E3D4:
/* 8025E3D4 0025A034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E3D8 0025A038  7C 08 02 A6 */	mflr r0
/* 8025E3DC 0025A03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E3E0 0025A040  48 01 43 D9 */	bl OSGetTime
/* 8025E3E4 0025A044  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8025E3E8 0025A048  38 A0 00 00 */	li r5, 0
/* 8025E3EC 0025A04C  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 8025E3F0 0025A050  54 06 F0 BE */	srwi r6, r0, 2
/* 8025E3F4 0025A054  4B F6 8E 85 */	bl __div2i
/* 8025E3F8 0025A058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E3FC 0025A05C  7C 83 23 78 */	mr r3, r4
/* 8025E400 0025A060  7C 08 03 A6 */	mtlr r0
/* 8025E404 0025A064  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E408 0025A068  4E 80 00 20 */	blr

.global func_8025E40C
func_8025E40C:
/* 8025E40C 0025A06C  90 6D A6 F0 */	stw r3, lbl_8063F9B0-_SDA_BASE_(r13)
/* 8025E410 0025A070  4E 80 00 20 */	blr

.global func_8025E414
func_8025E414:
/* 8025E414 0025A074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E418 0025A078  7C 08 02 A6 */	mflr r0
/* 8025E41C 0025A07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E420 0025A080  7C 80 23 78 */	mr r0, r4
/* 8025E424 0025A084  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8025E428 0025A088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E42C 0025A08C  93 C1 00 08 */	stw r30, 8(r1)
/* 8025E430 0025A090  7C 7E 1B 78 */	mr r30, r3
/* 8025E434 0025A094  7F C4 F3 78 */	mr r4, r30
/* 8025E438 0025A098  80 6D A6 F0 */	lwz r3, lbl_8063F9B0-_SDA_BASE_(r13)
/* 8025E43C 0025A09C  4B F7 C8 CD */	bl func_801DAD08
/* 8025E440 0025A0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8025E444 0025A0A4  7C 7F 1B 78 */	mr r31, r3
/* 8025E448 0025A0A8  41 82 00 10 */	beq lbl_8025E458
/* 8025E44C 0025A0AC  7F C5 F3 78 */	mr r5, r30
/* 8025E450 0025A0B0  38 80 00 00 */	li r4, 0
/* 8025E454 0025A0B4  4B DA 5C B1 */	bl memset
lbl_8025E458:
/* 8025E458 0025A0B8  7F E3 FB 78 */	mr r3, r31
/* 8025E45C 0025A0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E460 0025A0C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025E464 0025A0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E468 0025A0C8  7C 08 03 A6 */	mtlr r0
/* 8025E46C 0025A0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E470 0025A0D0  4E 80 00 20 */	blr

.global func_8025E474
func_8025E474:
/* 8025E474 0025A0D4  38 80 00 20 */	li r4, 0x20
/* 8025E478 0025A0D8  4B FF FF 9C */	b func_8025E414

.global func_8025E47C
func_8025E47C:
/* 8025E47C 0025A0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E480 0025A0E0  7C 08 02 A6 */	mflr r0
/* 8025E484 0025A0E4  38 80 00 20 */	li r4, 0x20
/* 8025E488 0025A0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E48C 0025A0EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E490 0025A0F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8025E494 0025A0F4  7C 7E 1B 78 */	mr r30, r3
/* 8025E498 0025A0F8  38 63 00 20 */	addi r3, r3, 0x20
/* 8025E49C 0025A0FC  4B FF FF 79 */	bl func_8025E414
/* 8025E4A0 0025A100  2C 03 00 00 */	cmpwi r3, 0
/* 8025E4A4 0025A104  7C 7F 1B 78 */	mr r31, r3
/* 8025E4A8 0025A108  41 82 00 0C */	beq lbl_8025E4B4
/* 8025E4AC 0025A10C  38 9E 00 20 */	addi r4, r30, 0x20
/* 8025E4B0 0025A110  48 00 C1 A5 */	bl DCFlushRange
lbl_8025E4B4:
/* 8025E4B4 0025A114  7F E3 FB 78 */	mr r3, r31
/* 8025E4B8 0025A118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E4BC 0025A11C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025E4C0 0025A120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E4C4 0025A124  7C 08 03 A6 */	mtlr r0
/* 8025E4C8 0025A128  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E4CC 0025A12C  4E 80 00 20 */	blr

.global func_8025E4D0
func_8025E4D0:
/* 8025E4D0 0025A130  2C 03 00 00 */	cmpwi r3, 0
/* 8025E4D4 0025A134  7C 64 1B 78 */	mr r4, r3
/* 8025E4D8 0025A138  4D 82 00 20 */	beqlr
/* 8025E4DC 0025A13C  80 6D A6 F0 */	lwz r3, lbl_8063F9B0-_SDA_BASE_(r13)
/* 8025E4E0 0025A140  4B F7 C8 68 */	b func_801DAD48
/* 8025E4E4 0025A144  4E 80 00 20 */	blr

.global func_8025E4E8
func_8025E4E8:
/* 8025E4E8 0025A148  80 8D A6 F4 */	lwz r4, lbl_8063F9B4-_SDA_BASE_(r13)
/* 8025E4EC 0025A14C  3C 60 80 50 */	lis r3, lbl_80502AF8@ha
/* 8025E4F0 0025A150  38 63 2A F8 */	addi r3, r3, lbl_80502AF8@l
/* 8025E4F4 0025A154  38 04 00 01 */	addi r0, r4, 1
/* 8025E4F8 0025A158  54 84 40 2E */	slwi r4, r4, 8
/* 8025E4FC 0025A15C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8025E500 0025A160  90 0D A6 F4 */	stw r0, lbl_8063F9B4-_SDA_BASE_(r13)
/* 8025E504 0025A164  7C 63 22 14 */	add r3, r3, r4
/* 8025E508 0025A168  4D 80 00 20 */	bltlr
/* 8025E50C 0025A16C  38 00 00 00 */	li r0, 0
/* 8025E510 0025A170  90 0D A6 F4 */	stw r0, lbl_8063F9B4-_SDA_BASE_(r13)
/* 8025E514 0025A174  4E 80 00 20 */	blr

.global func_8025E518
func_8025E518:
/* 8025E518 0025A178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025E51C 0025A17C  7C 08 02 A6 */	mflr r0
/* 8025E520 0025A180  2C 03 FF 06 */	cmpwi r3, -250
/* 8025E524 0025A184  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025E528 0025A188  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025E52C 0025A18C  3F E0 80 42 */	lis r31, lbl_804255C8@ha
/* 8025E530 0025A190  3B FF 55 C8 */	addi r31, r31, lbl_804255C8@l
/* 8025E534 0025A194  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025E538 0025A198  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025E53C 0025A19C  7C 7D 1B 78 */	mr r29, r3
/* 8025E540 0025A1A0  41 82 00 D8 */	beq lbl_8025E618
/* 8025E544 0025A1A4  40 80 00 74 */	bge lbl_8025E5B8
/* 8025E548 0025A1A8  3C 80 80 01 */	lis r4, 0x80008005@ha
/* 8025E54C 0025A1AC  38 04 80 05 */	addi r0, r4, 0x80008005@l
/* 8025E550 0025A1B0  7C 03 00 00 */	cmpw r3, r0
/* 8025E554 0025A1B4  41 82 01 24 */	beq lbl_8025E678
/* 8025E558 0025A1B8  40 80 00 38 */	bge lbl_8025E590
/* 8025E55C 0025A1BC  38 04 80 02 */	addi r0, r4, -32766
/* 8025E560 0025A1C0  7C 03 00 00 */	cmpw r3, r0
/* 8025E564 0025A1C4  41 82 00 FC */	beq lbl_8025E660
/* 8025E568 0025A1C8  40 80 00 18 */	bge lbl_8025E580
/* 8025E56C 0025A1CC  38 04 80 00 */	addi r0, r4, -32768
/* 8025E570 0025A1D0  7C 03 00 00 */	cmpw r3, r0
/* 8025E574 0025A1D4  41 82 00 DC */	beq lbl_8025E650
/* 8025E578 0025A1D8  40 80 00 E0 */	bge lbl_8025E658
/* 8025E57C 0025A1DC  48 00 01 0C */	b lbl_8025E688
lbl_8025E580:
/* 8025E580 0025A1E0  38 04 80 04 */	addi r0, r4, -32764
/* 8025E584 0025A1E4  7C 03 00 00 */	cmpw r3, r0
/* 8025E588 0025A1E8  40 80 00 E8 */	bge lbl_8025E670
/* 8025E58C 0025A1EC  48 00 00 DC */	b lbl_8025E668
lbl_8025E590:
/* 8025E590 0025A1F0  2C 03 FF 00 */	cmpwi r3, -256
/* 8025E594 0025A1F4  41 82 00 74 */	beq lbl_8025E608
/* 8025E598 0025A1F8  40 80 00 14 */	bge lbl_8025E5AC
/* 8025E59C 0025A1FC  38 04 80 07 */	addi r0, r4, -32761
/* 8025E5A0 0025A200  7C 03 00 00 */	cmpw r3, r0
/* 8025E5A4 0025A204  40 80 00 E4 */	bge lbl_8025E688
/* 8025E5A8 0025A208  48 00 00 D8 */	b lbl_8025E680
lbl_8025E5AC:
/* 8025E5AC 0025A20C  2C 03 FF 02 */	cmpwi r3, -254
/* 8025E5B0 0025A210  40 80 00 D8 */	bge lbl_8025E688
/* 8025E5B4 0025A214  48 00 00 5C */	b lbl_8025E610
lbl_8025E5B8:
/* 8025E5B8 0025A218  2C 03 FF 14 */	cmpwi r3, -236
/* 8025E5BC 0025A21C  41 82 00 84 */	beq lbl_8025E640
/* 8025E5C0 0025A220  40 80 00 28 */	bge lbl_8025E5E8
/* 8025E5C4 0025A224  2C 03 FF 11 */	cmpwi r3, -239
/* 8025E5C8 0025A228  41 82 00 60 */	beq lbl_8025E628
/* 8025E5CC 0025A22C  40 80 00 10 */	bge lbl_8025E5DC
/* 8025E5D0 0025A230  2C 03 FF 10 */	cmpwi r3, -240
/* 8025E5D4 0025A234  40 80 00 4C */	bge lbl_8025E620
/* 8025E5D8 0025A238  48 00 00 B0 */	b lbl_8025E688
lbl_8025E5DC:
/* 8025E5DC 0025A23C  2C 03 FF 13 */	cmpwi r3, -237
/* 8025E5E0 0025A240  40 80 00 58 */	bge lbl_8025E638
/* 8025E5E4 0025A244  48 00 00 4C */	b lbl_8025E630
lbl_8025E5E8:
/* 8025E5E8 0025A248  2C 03 00 00 */	cmpwi r3, 0
/* 8025E5EC 0025A24C  41 82 00 14 */	beq lbl_8025E600
/* 8025E5F0 0025A250  40 80 00 98 */	bge lbl_8025E688
/* 8025E5F4 0025A254  2C 03 FF FF */	cmpwi r3, -1
/* 8025E5F8 0025A258  40 80 00 50 */	bge lbl_8025E648
/* 8025E5FC 0025A25C  48 00 00 8C */	b lbl_8025E688
lbl_8025E600:
/* 8025E600 0025A260  38 7F 00 00 */	addi r3, r31, 0
/* 8025E604 0025A264  48 00 00 A0 */	b lbl_8025E6A4
lbl_8025E608:
/* 8025E608 0025A268  38 7F 00 10 */	addi r3, r31, 0x10
/* 8025E60C 0025A26C  48 00 00 98 */	b lbl_8025E6A4
lbl_8025E610:
/* 8025E610 0025A270  38 7F 00 24 */	addi r3, r31, 0x24
/* 8025E614 0025A274  48 00 00 90 */	b lbl_8025E6A4
lbl_8025E618:
/* 8025E618 0025A278  38 7F 00 40 */	addi r3, r31, 0x40
/* 8025E61C 0025A27C  48 00 00 88 */	b lbl_8025E6A4
lbl_8025E620:
/* 8025E620 0025A280  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8025E624 0025A284  48 00 00 80 */	b lbl_8025E6A4
lbl_8025E628:
/* 8025E628 0025A288  38 7F 00 78 */	addi r3, r31, 0x78
/* 8025E62C 0025A28C  48 00 00 78 */	b lbl_8025E6A4
lbl_8025E630:
/* 8025E630 0025A290  38 7F 00 98 */	addi r3, r31, 0x98
/* 8025E634 0025A294  48 00 00 70 */	b lbl_8025E6A4
lbl_8025E638:
/* 8025E638 0025A298  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8025E63C 0025A29C  48 00 00 68 */	b lbl_8025E6A4
lbl_8025E640:
/* 8025E640 0025A2A0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8025E644 0025A2A4  48 00 00 60 */	b lbl_8025E6A4
lbl_8025E648:
/* 8025E648 0025A2A8  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 8025E64C 0025A2AC  48 00 00 58 */	b lbl_8025E6A4
lbl_8025E650:
/* 8025E650 0025A2B0  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 8025E654 0025A2B4  48 00 00 50 */	b lbl_8025E6A4
lbl_8025E658:
/* 8025E658 0025A2B8  38 7F 01 04 */	addi r3, r31, 0x104
/* 8025E65C 0025A2BC  48 00 00 48 */	b lbl_8025E6A4
lbl_8025E660:
/* 8025E660 0025A2C0  38 7F 01 24 */	addi r3, r31, 0x124
/* 8025E664 0025A2C4  48 00 00 40 */	b lbl_8025E6A4
lbl_8025E668:
/* 8025E668 0025A2C8  38 7F 01 48 */	addi r3, r31, 0x148
/* 8025E66C 0025A2CC  48 00 00 38 */	b lbl_8025E6A4
lbl_8025E670:
/* 8025E670 0025A2D0  38 7F 01 60 */	addi r3, r31, 0x160
/* 8025E674 0025A2D4  48 00 00 30 */	b lbl_8025E6A4
lbl_8025E678:
/* 8025E678 0025A2D8  38 7F 01 88 */	addi r3, r31, 0x188
/* 8025E67C 0025A2DC  48 00 00 28 */	b lbl_8025E6A4
lbl_8025E680:
/* 8025E680 0025A2E0  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 8025E684 0025A2E4  48 00 00 20 */	b lbl_8025E6A4
lbl_8025E688:
/* 8025E688 0025A2E8  4B FF FE 61 */	bl func_8025E4E8
/* 8025E68C 0025A2EC  7C 7E 1B 78 */	mr r30, r3
/* 8025E690 0025A2F0  7F A5 EB 78 */	mr r5, r29
/* 8025E694 0025A2F4  38 9F 01 BC */	addi r4, r31, 0x1bc
/* 8025E698 0025A2F8  4C C6 31 82 */	crclr 6
/* 8025E69C 0025A2FC  4B F6 E4 61 */	bl sprintf
/* 8025E6A0 0025A300  7F C3 F3 78 */	mr r3, r30
lbl_8025E6A4:
/* 8025E6A4 0025A304  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025E6A8 0025A308  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025E6AC 0025A30C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025E6B0 0025A310  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025E6B4 0025A314  7C 08 03 A6 */	mtlr r0
/* 8025E6B8 0025A318  38 21 00 20 */	addi r1, r1, 0x20
/* 8025E6BC 0025A31C  4E 80 00 20 */	blr

.global lbl_8025E6C0
lbl_8025E6C0:
/* 8025E6C0 0025A320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025E6C4 0025A324  7C 08 02 A6 */	mflr r0
/* 8025E6C8 0025A328  3C A0 40 00 */	lis r5, 0x4000
/* 8025E6CC 0025A32C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025E6D0 0025A330  7C 03 28 40 */	cmplw r3, r5
/* 8025E6D4 0025A334  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025E6D8 0025A338  3F E0 80 42 */	lis r31, lbl_804255C8@ha
/* 8025E6DC 0025A33C  3B FF 55 C8 */	addi r31, r31, lbl_804255C8@l
/* 8025E6E0 0025A340  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025E6E4 0025A344  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025E6E8 0025A348  7C 7D 1B 78 */	mr r29, r3
/* 8025E6EC 0025A34C  41 80 00 7C */	blt lbl_8025E768
/* 8025E6F0 0025A350  3C 80 40 01 */	lis r4, 0x4000FFFF@ha
/* 8025E6F4 0025A354  38 04 FF FF */	addi r0, r4, 0x4000FFFF@l
/* 8025E6F8 0025A358  7C 03 00 40 */	cmplw r3, r0
/* 8025E6FC 0025A35C  41 81 00 6C */	bgt lbl_8025E768
/* 8025E700 0025A360  38 05 00 3C */	addi r0, r5, 0x3c
/* 8025E704 0025A364  7C 03 00 00 */	cmpw r3, r0
/* 8025E708 0025A368  41 82 00 38 */	beq lbl_8025E740
/* 8025E70C 0025A36C  40 80 00 14 */	bge lbl_8025E720
/* 8025E710 0025A370  38 05 00 36 */	addi r0, r5, 0x36
/* 8025E714 0025A374  7C 03 00 00 */	cmpw r3, r0
/* 8025E718 0025A378  41 82 00 18 */	beq lbl_8025E730
/* 8025E71C 0025A37C  48 00 00 2C */	b lbl_8025E748
lbl_8025E720:
/* 8025E720 0025A380  38 05 00 3E */	addi r0, r5, 0x3e
/* 8025E724 0025A384  7C 03 00 00 */	cmpw r3, r0
/* 8025E728 0025A388  40 80 00 20 */	bge lbl_8025E748
/* 8025E72C 0025A38C  48 00 00 0C */	b lbl_8025E738
lbl_8025E730:
/* 8025E730 0025A390  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 8025E734 0025A394  48 00 00 3C */	b lbl_8025E770
lbl_8025E738:
/* 8025E738 0025A398  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 8025E73C 0025A39C  48 00 00 34 */	b lbl_8025E770
lbl_8025E740:
/* 8025E740 0025A3A0  38 7F 02 04 */	addi r3, r31, 0x204
/* 8025E744 0025A3A4  48 00 00 2C */	b lbl_8025E770
lbl_8025E748:
/* 8025E748 0025A3A8  4B FF FD A1 */	bl func_8025E4E8
/* 8025E74C 0025A3AC  7C 7E 1B 78 */	mr r30, r3
/* 8025E750 0025A3B0  7F A5 EB 78 */	mr r5, r29
/* 8025E754 0025A3B4  38 9F 02 18 */	addi r4, r31, 0x218
/* 8025E758 0025A3B8  4C C6 31 82 */	crclr 6
/* 8025E75C 0025A3BC  4B F6 E3 A1 */	bl sprintf
/* 8025E760 0025A3C0  7F C3 F3 78 */	mr r3, r30
/* 8025E764 0025A3C4  48 00 00 0C */	b lbl_8025E770
lbl_8025E768:
/* 8025E768 0025A3C8  7F A3 EB 78 */	mr r3, r29
/* 8025E76C 0025A3CC  4B FF FD AD */	bl func_8025E518
lbl_8025E770:
/* 8025E770 0025A3D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025E774 0025A3D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025E778 0025A3D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025E77C 0025A3DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025E780 0025A3E0  7C 08 03 A6 */	mtlr r0
/* 8025E784 0025A3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8025E788 0025A3E8  4E 80 00 20 */	blr

.global func_8025E78C
func_8025E78C:
/* 8025E78C 0025A3EC  38 04 00 01 */	addi r0, r4, 1
/* 8025E790 0025A3F0  38 A0 00 00 */	li r5, 0
/* 8025E794 0025A3F4  54 00 F8 7E */	srwi r0, r0, 1
/* 8025E798 0025A3F8  7C 09 03 A6 */	mtctr r0
/* 8025E79C 0025A3FC  2C 04 00 00 */	cmpwi r4, 0
/* 8025E7A0 0025A400  40 81 00 2C */	ble lbl_8025E7CC
lbl_8025E7A4:
/* 8025E7A4 0025A404  A0 83 00 00 */	lhz r4, 0(r3)
/* 8025E7A8 0025A408  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8025E7AC 0025A40C  38 63 00 02 */	addi r3, r3, 2
/* 8025E7B0 0025A410  7C A5 22 14 */	add r5, r5, r4
/* 8025E7B4 0025A414  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 8025E7B8 0025A418  7C 00 20 40 */	cmplw r0, r4
/* 8025E7BC 0025A41C  40 81 00 0C */	ble lbl_8025E7C8
/* 8025E7C0 0025A420  38 04 00 01 */	addi r0, r4, 1
/* 8025E7C4 0025A424  54 05 04 3E */	clrlwi r5, r0, 0x10
lbl_8025E7C8:
/* 8025E7C8 0025A428  42 00 FF DC */	bdnz lbl_8025E7A4
lbl_8025E7CC:
/* 8025E7CC 0025A42C  7C A0 28 F8 */	nor r0, r5, r5
/* 8025E7D0 0025A430  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8025E7D4 0025A434  4E 80 00 20 */	blr

.global func_8025E7D8
func_8025E7D8:
/* 8025E7D8 0025A438  7C 66 1B 78 */	mr r6, r3
/* 8025E7DC 0025A43C  7C A9 03 A6 */	mtctr r5
/* 8025E7E0 0025A440  2C 05 00 00 */	cmpwi r5, 0
/* 8025E7E4 0025A444  40 81 00 20 */	ble lbl_8025E804
lbl_8025E7E8:
/* 8025E7E8 0025A448  A0 04 00 00 */	lhz r0, 0(r4)
/* 8025E7EC 0025A44C  38 84 00 02 */	addi r4, r4, 2
/* 8025E7F0 0025A450  2C 00 00 00 */	cmpwi r0, 0
/* 8025E7F4 0025A454  B0 03 00 00 */	sth r0, 0(r3)
/* 8025E7F8 0025A458  38 63 00 02 */	addi r3, r3, 2
/* 8025E7FC 0025A45C  41 82 00 08 */	beq lbl_8025E804
/* 8025E800 0025A460  42 00 FF E8 */	bdnz lbl_8025E7E8
lbl_8025E804:
/* 8025E804 0025A464  7C C3 33 78 */	mr r3, r6
/* 8025E808 0025A468  4E 80 00 20 */	blr

.global func_8025E80C
func_8025E80C:
/* 8025E80C 0025A46C  7C A9 03 A6 */	mtctr r5
/* 8025E810 0025A470  2C 05 00 00 */	cmpwi r5, 0
/* 8025E814 0025A474  40 81 00 30 */	ble lbl_8025E844
lbl_8025E818:
/* 8025E818 0025A478  A0 04 00 00 */	lhz r0, 0(r4)
/* 8025E81C 0025A47C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8025E820 0025A480  7C 05 00 40 */	cmplw r5, r0
/* 8025E824 0025A484  41 82 00 0C */	beq lbl_8025E830
/* 8025E828 0025A488  7C 60 28 50 */	subf r3, r0, r5
/* 8025E82C 0025A48C  4E 80 00 20 */	blr
lbl_8025E830:
/* 8025E830 0025A490  2C 05 00 00 */	cmpwi r5, 0
/* 8025E834 0025A494  38 63 00 02 */	addi r3, r3, 2
/* 8025E838 0025A498  41 82 00 0C */	beq lbl_8025E844
/* 8025E83C 0025A49C  38 84 00 02 */	addi r4, r4, 2
/* 8025E840 0025A4A0  42 00 FF D8 */	bdnz lbl_8025E818
lbl_8025E844:
/* 8025E844 0025A4A4  38 60 00 00 */	li r3, 0
/* 8025E848 0025A4A8  4E 80 00 20 */	blr

.global func_8025E84C
func_8025E84C:
/* 8025E84C 0025A4AC  38 A0 00 01 */	li r5, 1
/* 8025E850 0025A4B0  38 6D A6 E0 */	addi r3, r13, lbl_8063F9A0-_SDA_BASE_
/* 8025E854 0025A4B4  38 80 00 04 */	li r4, 4
/* 8025E858 0025A4B8  38 00 00 00 */	li r0, 0
/* 8025E85C 0025A4BC  98 AD A6 E0 */	stb r5, lbl_8063F9A0-_SDA_BASE_(r13)
/* 8025E860 0025A4C0  B0 83 00 02 */	sth r4, 2(r3)
/* 8025E864 0025A4C4  98 03 00 04 */	stb r0, 4(r3)
/* 8025E868 0025A4C8  4E 80 00 20 */	blr
