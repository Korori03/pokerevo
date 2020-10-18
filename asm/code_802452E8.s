.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_802452E8
func_802452E8:
/* 802452E8 00240F48  38 8D A5 64 */	addi r4, r13, lbl_8063F824-_SDA_BASE_
/* 802452EC 00240F4C  48 00 23 1C */	b lbl_80247608

.global func_802452F0
func_802452F0:
/* 802452F0 00240F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802452F4 00240F54  7C 08 02 A6 */	mflr r0
/* 802452F8 00240F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802452FC 00240F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80245300 00240F60  93 C1 00 08 */	stw r30, 8(r1)
/* 80245304 00240F64  3B C0 00 00 */	li r30, 0
/* 80245308 00240F68  48 02 94 55 */	bl OSDisableInterrupts
/* 8024530C 00240F6C  80 CD A5 54 */	lwz r6, lbl_8063F814-_SDA_BASE_(r13)
/* 80245310 00240F70  7C 7F 1B 78 */	mr r31, r3
/* 80245314 00240F74  38 80 00 00 */	li r4, 0
/* 80245318 00240F78  38 60 00 01 */	li r3, 1
/* 8024531C 00240F7C  48 00 00 6C */	b lbl_80245388
lbl_80245320:
/* 80245320 00240F80  1C 06 00 2C */	mulli r0, r6, 0x2c
/* 80245324 00240F84  80 AD A5 60 */	lwz r5, lbl_8063F820-_SDA_BASE_(r13)
/* 80245328 00240F88  7C A5 02 14 */	add r5, r5, r0
/* 8024532C 00240F8C  88 05 00 08 */	lbz r0, 8(r5)
/* 80245330 00240F90  2C 00 00 00 */	cmpwi r0, 0
/* 80245334 00240F94  40 82 00 34 */	bne lbl_80245368
/* 80245338 00240F98  90 85 00 00 */	stw r4, 0(r5)
/* 8024533C 00240F9C  7C BE 2B 78 */	mr r30, r5
/* 80245340 00240FA0  90 85 00 04 */	stw r4, 4(r5)
/* 80245344 00240FA4  98 65 00 08 */	stb r3, 8(r5)
/* 80245348 00240FA8  90 85 00 0C */	stw r4, 0xc(r5)
/* 8024534C 00240FAC  90 85 00 10 */	stw r4, 0x10(r5)
/* 80245350 00240FB0  90 85 00 14 */	stw r4, 0x14(r5)
/* 80245354 00240FB4  90 85 00 18 */	stw r4, 0x18(r5)
/* 80245358 00240FB8  90 85 00 1C */	stw r4, 0x1c(r5)
/* 8024535C 00240FBC  90 85 00 20 */	stw r4, 0x20(r5)
/* 80245360 00240FC0  90 85 00 24 */	stw r4, 0x24(r5)
/* 80245364 00240FC4  90 85 00 28 */	stw r4, 0x28(r5)
lbl_80245368:
/* 80245368 00240FC8  80 0D A5 50 */	lwz r0, lbl_8063F810-_SDA_BASE_(r13)
/* 8024536C 00240FCC  38 C6 00 01 */	addi r6, r6, 1
/* 80245370 00240FD0  7C 06 00 40 */	cmplw r6, r0
/* 80245374 00240FD4  41 80 00 08 */	blt lbl_8024537C
/* 80245378 00240FD8  38 C0 00 00 */	li r6, 0
lbl_8024537C:
/* 8024537C 00240FDC  80 0D A5 54 */	lwz r0, lbl_8063F814-_SDA_BASE_(r13)
/* 80245380 00240FE0  7C 06 00 40 */	cmplw r6, r0
/* 80245384 00240FE4  41 82 00 0C */	beq lbl_80245390
lbl_80245388:
/* 80245388 00240FE8  2C 1E 00 00 */	cmpwi r30, 0
/* 8024538C 00240FEC  41 82 FF 94 */	beq lbl_80245320
lbl_80245390:
/* 80245390 00240FF0  90 CD A5 54 */	stw r6, lbl_8063F814-_SDA_BASE_(r13)
/* 80245394 00240FF4  7F C3 F3 78 */	mr r3, r30
/* 80245398 00240FF8  4B FF FF 51 */	bl func_802452E8
/* 8024539C 00240FFC  7F E3 FB 78 */	mr r3, r31
/* 802453A0 00241000  48 02 93 E5 */	bl OSRestoreInterrupts
/* 802453A4 00241004  7F C3 F3 78 */	mr r3, r30
/* 802453A8 00241008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802453AC 0024100C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802453B0 00241010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802453B4 00241014  7C 08 03 A6 */	mtlr r0
/* 802453B8 00241018  38 21 00 10 */	addi r1, r1, 0x10
/* 802453BC 0024101C  4E 80 00 20 */	blr

.global func_802453C0
func_802453C0:
/* 802453C0 00241020  38 8D A5 64 */	addi r4, r13, lbl_8063F824-_SDA_BASE_
/* 802453C4 00241024  48 00 22 B0 */	b lbl_80247674

.global func_802453C8
func_802453C8:
/* 802453C8 00241028  38 8D A5 5C */	addi r4, r13, lbl_8063F81C-_SDA_BASE_
/* 802453CC 0024102C  48 00 22 3C */	b lbl_80247608

.global func_802453D0
func_802453D0:
/* 802453D0 00241030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802453D4 00241034  7C 08 02 A6 */	mflr r0
/* 802453D8 00241038  90 01 00 34 */	stw r0, 0x34(r1)
/* 802453DC 0024103C  39 61 00 30 */	addi r11, r1, 0x30
/* 802453E0 00241040  4B F8 1D 41 */	bl _savegpr_25
/* 802453E4 00241044  7C 79 1B 78 */	mr r25, r3
/* 802453E8 00241048  7C 9A 23 78 */	mr r26, r4
/* 802453EC 0024104C  7C BB 2B 78 */	mr r27, r5
/* 802453F0 00241050  7C DC 33 78 */	mr r28, r6
/* 802453F4 00241054  7C FD 3B 78 */	mr r29, r7
/* 802453F8 00241058  3B C0 00 00 */	li r30, 0
/* 802453FC 0024105C  48 02 93 61 */	bl OSDisableInterrupts
/* 80245400 00241060  80 CD A5 40 */	lwz r6, lbl_8063F800-_SDA_BASE_(r13)
/* 80245404 00241064  7C 7F 1B 78 */	mr r31, r3
/* 80245408 00241068  38 A0 00 00 */	li r5, 0
/* 8024540C 0024106C  38 80 00 01 */	li r4, 1
/* 80245410 00241070  48 00 00 88 */	b lbl_80245498
lbl_80245414:
/* 80245414 00241074  1C 06 00 24 */	mulli r0, r6, 0x24
/* 80245418 00241078  80 6D A5 58 */	lwz r3, lbl_8063F818-_SDA_BASE_(r13)
/* 8024541C 0024107C  7C 63 02 14 */	add r3, r3, r0
/* 80245420 00241080  88 03 00 08 */	lbz r0, 8(r3)
/* 80245424 00241084  2C 00 00 00 */	cmpwi r0, 0
/* 80245428 00241088  40 82 00 44 */	bne lbl_8024546C
/* 8024542C 0024108C  90 A3 00 00 */	stw r5, 0(r3)
/* 80245430 00241090  7C 7E 1B 78 */	mr r30, r3
/* 80245434 00241094  90 A3 00 04 */	stw r5, 4(r3)
/* 80245438 00241098  98 83 00 08 */	stb r4, 8(r3)
/* 8024543C 0024109C  9B 63 00 09 */	stb r27, 9(r3)
/* 80245440 002410A0  9B 83 00 0A */	stb r28, 0xa(r3)
/* 80245444 002410A4  93 23 00 1C */	stw r25, 0x1c(r3)
/* 80245448 002410A8  93 43 00 20 */	stw r26, 0x20(r3)
/* 8024544C 002410AC  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80245450 002410B0  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80245454 002410B4  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80245458 002410B8  80 0D A5 48 */	lwz r0, lbl_8063F808-_SDA_BASE_(r13)
/* 8024545C 002410BC  90 03 00 18 */	stw r0, 0x18(r3)
/* 80245460 002410C0  80 6D A5 48 */	lwz r3, lbl_8063F808-_SDA_BASE_(r13)
/* 80245464 002410C4  38 03 00 01 */	addi r0, r3, 1
/* 80245468 002410C8  90 0D A5 48 */	stw r0, lbl_8063F808-_SDA_BASE_(r13)
lbl_8024546C:
/* 8024546C 002410CC  80 0D A5 3C */	lwz r0, lbl_8063F7FC-_SDA_BASE_(r13)
/* 80245470 002410D0  38 C6 00 01 */	addi r6, r6, 1
/* 80245474 002410D4  7C 06 00 40 */	cmplw r6, r0
/* 80245478 002410D8  41 80 00 08 */	blt lbl_80245480
/* 8024547C 002410DC  38 C0 00 00 */	li r6, 0
lbl_80245480:
/* 80245480 002410E0  80 0D A5 40 */	lwz r0, lbl_8063F800-_SDA_BASE_(r13)
/* 80245484 002410E4  7C 06 00 40 */	cmplw r6, r0
/* 80245488 002410E8  40 82 00 10 */	bne lbl_80245498
/* 8024548C 002410EC  40 82 00 0C */	bne lbl_80245498
/* 80245490 002410F0  38 60 00 00 */	li r3, 0
/* 80245494 002410F4  48 00 00 24 */	b lbl_802454B8
lbl_80245498:
/* 80245498 002410F8  2C 1E 00 00 */	cmpwi r30, 0
/* 8024549C 002410FC  41 82 FF 78 */	beq lbl_80245414
/* 802454A0 00241100  90 CD A5 40 */	stw r6, lbl_8063F800-_SDA_BASE_(r13)
/* 802454A4 00241104  7F C3 F3 78 */	mr r3, r30
/* 802454A8 00241108  4B FF FF 21 */	bl func_802453C8
/* 802454AC 0024110C  7F E3 FB 78 */	mr r3, r31
/* 802454B0 00241110  48 02 92 D5 */	bl OSRestoreInterrupts
/* 802454B4 00241114  7F C3 F3 78 */	mr r3, r30
lbl_802454B8:
/* 802454B8 00241118  39 61 00 30 */	addi r11, r1, 0x30
/* 802454BC 0024111C  4B F8 1C B1 */	bl _restgpr_25
/* 802454C0 00241120  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802454C4 00241124  7C 08 03 A6 */	mtlr r0
/* 802454C8 00241128  38 21 00 30 */	addi r1, r1, 0x30
/* 802454CC 0024112C  4E 80 00 20 */	blr

.global func_802454D0
func_802454D0:
/* 802454D0 00241130  38 8D A5 5C */	addi r4, r13, lbl_8063F81C-_SDA_BASE_
/* 802454D4 00241134  48 00 21 A0 */	b lbl_80247674

.global func_802454D8
func_802454D8:
/* 802454D8 00241138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802454DC 0024113C  7C 08 02 A6 */	mflr r0
/* 802454E0 00241140  90 01 00 24 */	stw r0, 0x24(r1)
/* 802454E4 00241144  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802454E8 00241148  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802454EC 0024114C  7C 9E 23 78 */	mr r30, r4
/* 802454F0 00241150  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802454F4 00241154  7C 7D 1B 78 */	mr r29, r3
/* 802454F8 00241158  48 02 92 65 */	bl OSDisableInterrupts
/* 802454FC 0024115C  83 ED A5 5C */	lwz r31, lbl_8063F81C-_SDA_BASE_(r13)
/* 80245500 00241160  48 00 00 20 */	b lbl_80245520
lbl_80245504:
/* 80245504 00241164  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80245508 00241168  7C 00 E8 40 */	cmplw r0, r29
/* 8024550C 0024116C  40 82 00 10 */	bne lbl_8024551C
/* 80245510 00241170  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80245514 00241174  7C 00 F0 40 */	cmplw r0, r30
/* 80245518 00241178  41 82 00 10 */	beq lbl_80245528
lbl_8024551C:
/* 8024551C 0024117C  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80245520:
/* 80245520 00241180  2C 1F 00 00 */	cmpwi r31, 0
/* 80245524 00241184  40 82 FF E0 */	bne lbl_80245504
lbl_80245528:
/* 80245528 00241188  48 02 92 5D */	bl OSRestoreInterrupts
/* 8024552C 0024118C  7F E3 FB 78 */	mr r3, r31
/* 80245530 00241190  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80245534 00241194  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80245538 00241198  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8024553C 0024119C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80245540 002411A0  7C 08 03 A6 */	mtlr r0
/* 80245544 002411A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80245548 002411A8  4E 80 00 20 */	blr

.global func_8024554C
func_8024554C:
/* 8024554C 002411AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245550 002411B0  7C 08 02 A6 */	mflr r0
/* 80245554 002411B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245558 002411B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024555C 002411BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80245560 002411C0  7C 7E 1B 78 */	mr r30, r3
/* 80245564 002411C4  48 02 91 F9 */	bl OSDisableInterrupts
/* 80245568 002411C8  83 ED A5 5C */	lwz r31, lbl_8063F81C-_SDA_BASE_(r13)
/* 8024556C 002411CC  48 00 00 14 */	b lbl_80245580
lbl_80245570:
/* 80245570 002411D0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80245574 002411D4  7C 00 F0 40 */	cmplw r0, r30
/* 80245578 002411D8  41 82 00 10 */	beq lbl_80245588
/* 8024557C 002411DC  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80245580:
/* 80245580 002411E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80245584 002411E4  40 82 FF EC */	bne lbl_80245570
lbl_80245588:
/* 80245588 002411E8  48 02 91 FD */	bl OSRestoreInterrupts
/* 8024558C 002411EC  7F E3 FB 78 */	mr r3, r31
/* 80245590 002411F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80245594 002411F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80245598 002411F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024559C 002411FC  7C 08 03 A6 */	mtlr r0
/* 802455A0 00241200  38 21 00 10 */	addi r1, r1, 0x10
/* 802455A4 00241204  4E 80 00 20 */	blr

.global func_802455A8
func_802455A8:
/* 802455A8 00241208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802455AC 0024120C  7C 08 02 A6 */	mflr r0
/* 802455B0 00241210  90 01 00 14 */	stw r0, 0x14(r1)
/* 802455B4 00241214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802455B8 00241218  93 C1 00 08 */	stw r30, 8(r1)
/* 802455BC 0024121C  7C 7E 1B 78 */	mr r30, r3
/* 802455C0 00241220  48 02 91 9D */	bl OSDisableInterrupts
/* 802455C4 00241224  83 ED A5 5C */	lwz r31, lbl_8063F81C-_SDA_BASE_(r13)
/* 802455C8 00241228  48 00 00 14 */	b lbl_802455DC
lbl_802455CC:
/* 802455CC 0024122C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802455D0 00241230  7C 00 F0 40 */	cmplw r0, r30
/* 802455D4 00241234  41 82 00 10 */	beq lbl_802455E4
/* 802455D8 00241238  83 FF 00 04 */	lwz r31, 4(r31)
lbl_802455DC:
/* 802455DC 0024123C  2C 1F 00 00 */	cmpwi r31, 0
/* 802455E0 00241240  40 82 FF EC */	bne lbl_802455CC
lbl_802455E4:
/* 802455E4 00241244  48 02 91 A1 */	bl OSRestoreInterrupts
/* 802455E8 00241248  7F E3 FB 78 */	mr r3, r31
/* 802455EC 0024124C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802455F0 00241250  83 C1 00 08 */	lwz r30, 8(r1)
/* 802455F4 00241254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802455F8 00241258  7C 08 03 A6 */	mtlr r0
/* 802455FC 0024125C  38 21 00 10 */	addi r1, r1, 0x10
/* 80245600 00241260  4E 80 00 20 */	blr

.global func_80245604
func_80245604:
/* 80245604 00241264  80 CD A5 5C */	lwz r6, lbl_8063F81C-_SDA_BASE_(r13)
/* 80245608 00241268  38 E0 00 00 */	li r7, 0
/* 8024560C 0024126C  48 00 00 70 */	b lbl_8024567C
lbl_80245610:
/* 80245610 00241270  88 06 00 09 */	lbz r0, 9(r6)
/* 80245614 00241274  28 00 00 01 */	cmplwi r0, 1
/* 80245618 00241278  41 82 00 60 */	beq lbl_80245678
/* 8024561C 0024127C  88 06 00 0A */	lbz r0, 0xa(r6)
/* 80245620 00241280  28 00 00 01 */	cmplwi r0, 1
/* 80245624 00241284  41 82 00 54 */	beq lbl_80245678
/* 80245628 00241288  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8024562C 0024128C  7C 00 18 40 */	cmplw r0, r3
/* 80245630 00241290  41 82 00 48 */	beq lbl_80245678
/* 80245634 00241294  2C 07 00 00 */	cmpwi r7, 0
/* 80245638 00241298  40 82 00 0C */	bne lbl_80245644
/* 8024563C 0024129C  7C C7 33 78 */	mr r7, r6
/* 80245640 002412A0  48 00 00 38 */	b lbl_80245678
lbl_80245644:
/* 80245644 002412A4  80 A7 00 14 */	lwz r5, 0x14(r7)
/* 80245648 002412A8  80 06 00 14 */	lwz r0, 0x14(r6)
/* 8024564C 002412AC  7C 05 00 40 */	cmplw r5, r0
/* 80245650 002412B0  41 80 00 28 */	blt lbl_80245678
/* 80245654 002412B4  2C 04 00 00 */	cmpwi r4, 0
/* 80245658 002412B8  40 82 00 1C */	bne lbl_80245674
/* 8024565C 002412BC  80 A7 00 18 */	lwz r5, 0x18(r7)
/* 80245660 002412C0  80 06 00 18 */	lwz r0, 0x18(r6)
/* 80245664 002412C4  7C 05 00 40 */	cmplw r5, r0
/* 80245668 002412C8  40 80 00 10 */	bge lbl_80245678
/* 8024566C 002412CC  7C C7 33 78 */	mr r7, r6
/* 80245670 002412D0  48 00 00 08 */	b lbl_80245678
lbl_80245674:
/* 80245674 002412D4  7C C7 33 78 */	mr r7, r6
lbl_80245678:
/* 80245678 002412D8  80 C6 00 04 */	lwz r6, 4(r6)
lbl_8024567C:
/* 8024567C 002412DC  2C 06 00 00 */	cmpwi r6, 0
/* 80245680 002412E0  40 82 FF 90 */	bne lbl_80245610
/* 80245684 002412E4  7C E3 3B 78 */	mr r3, r7
/* 80245688 002412E8  4E 80 00 20 */	blr

.global func_8024568C
func_8024568C:
/* 8024568C 002412EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80245690 002412F0  7C 08 02 A6 */	mflr r0
/* 80245694 002412F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80245698 002412F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024569C 002412FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802456A0 00241300  7C BE 2B 78 */	mr r30, r5
/* 802456A4 00241304  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802456A8 00241308  7C 9D 23 78 */	mr r29, r4
/* 802456AC 0024130C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802456B0 00241310  7C 7C 1B 78 */	mr r28, r3
/* 802456B4 00241314  48 02 90 A9 */	bl OSDisableInterrupts
/* 802456B8 00241318  7C 7F 1B 78 */	mr r31, r3
/* 802456BC 0024131C  7F 83 E3 78 */	mr r3, r28
/* 802456C0 00241320  7F A4 EB 78 */	mr r4, r29
/* 802456C4 00241324  4B FF FE 15 */	bl func_802454D8
/* 802456C8 00241328  2C 03 00 00 */	cmpwi r3, 0
/* 802456CC 0024132C  41 82 00 08 */	beq lbl_802456D4
/* 802456D0 00241330  9B C3 00 0A */	stb r30, 0xa(r3)
lbl_802456D4:
/* 802456D4 00241334  7F E3 FB 78 */	mr r3, r31
/* 802456D8 00241338  48 02 90 AD */	bl OSRestoreInterrupts
/* 802456DC 0024133C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802456E0 00241340  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802456E4 00241344  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802456E8 00241348  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802456EC 0024134C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802456F0 00241350  7C 08 03 A6 */	mtlr r0
/* 802456F4 00241354  38 21 00 20 */	addi r1, r1, 0x20
/* 802456F8 00241358  4E 80 00 20 */	blr

.global func_802456FC
func_802456FC:
/* 802456FC 0024135C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245700 00241360  7C 08 02 A6 */	mflr r0
/* 80245704 00241364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245708 00241368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024570C 0024136C  7C 9F 23 78 */	mr r31, r4
/* 80245710 00241370  93 C1 00 08 */	stw r30, 8(r1)
/* 80245714 00241374  7C 7E 1B 78 */	mr r30, r3
/* 80245718 00241378  48 02 90 45 */	bl OSDisableInterrupts
/* 8024571C 0024137C  80 8D A5 5C */	lwz r4, lbl_8063F81C-_SDA_BASE_(r13)
/* 80245720 00241380  48 00 00 18 */	b lbl_80245738
lbl_80245724:
/* 80245724 00241384  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80245728 00241388  7C 00 F0 40 */	cmplw r0, r30
/* 8024572C 0024138C  40 82 00 08 */	bne lbl_80245734
/* 80245730 00241390  9B E4 00 0A */	stb r31, 0xa(r4)
lbl_80245734:
/* 80245734 00241394  80 84 00 04 */	lwz r4, 4(r4)
lbl_80245738:
/* 80245738 00241398  2C 04 00 00 */	cmpwi r4, 0
/* 8024573C 0024139C  40 82 FF E8 */	bne lbl_80245724
/* 80245740 002413A0  48 02 90 45 */	bl OSRestoreInterrupts
/* 80245744 002413A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245748 002413A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024574C 002413AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80245750 002413B0  7C 08 03 A6 */	mtlr r0
/* 80245754 002413B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80245758 002413B8  4E 80 00 20 */	blr

.global func_8024575C
func_8024575C:
/* 8024575C 002413BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245760 002413C0  7C 08 02 A6 */	mflr r0
/* 80245764 002413C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245768 002413C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024576C 002413CC  48 02 49 81 */	bl OSGetMEM2ArenaLo
/* 80245770 002413D0  3F E3 00 80 */	addis r31, r3, 0x80
/* 80245774 002413D4  3C 80 00 80 */	lis r4, 0x80
/* 80245778 002413D8  38 A0 00 04 */	li r5, 4
/* 8024577C 002413DC  4B F9 53 FD */	bl func_801DAB78
/* 80245780 002413E0  2C 03 00 00 */	cmpwi r3, 0
/* 80245784 002413E4  90 6D A5 68 */	stw r3, lbl_8063F828-_SDA_BASE_(r13)
/* 80245788 002413E8  40 82 00 0C */	bne lbl_80245794
/* 8024578C 002413EC  38 60 00 00 */	li r3, 0
/* 80245790 002413F0  48 00 00 18 */	b lbl_802457A8
lbl_80245794:
/* 80245794 002413F4  38 80 00 02 */	li r4, 2
/* 80245798 002413F8  4B F9 54 F9 */	bl func_801DAC90
/* 8024579C 002413FC  7F E3 FB 78 */	mr r3, r31
/* 802457A0 00241400  48 02 49 7D */	bl OSSetMEM2ArenaLo
/* 802457A4 00241404  38 60 00 01 */	li r3, 1
lbl_802457A8:
/* 802457A8 00241408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802457AC 0024140C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802457B0 00241410  7C 08 03 A6 */	mtlr r0
/* 802457B4 00241414  38 21 00 10 */	addi r1, r1, 0x10
/* 802457B8 00241418  4E 80 00 20 */	blr

.global func_802457BC
func_802457BC:
/* 802457BC 0024141C  3C 80 00 80 */	lis r4, 0x80
/* 802457C0 00241420  7C 03 20 50 */	subf r0, r3, r4
/* 802457C4 00241424  7C 83 1B 38 */	orc r3, r4, r3
/* 802457C8 00241428  54 00 F8 7E */	srwi r0, r0, 1
/* 802457CC 0024142C  7C 00 18 50 */	subf r0, r0, r3
/* 802457D0 00241430  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802457D4 00241434  4E 80 00 20 */	blr

.global func_802457D8
func_802457D8:
/* 802457D8 00241438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802457DC 0024143C  7C 08 02 A6 */	mflr r0
/* 802457E0 00241440  90 01 00 24 */	stw r0, 0x24(r1)
/* 802457E4 00241444  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802457E8 00241448  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802457EC 0024144C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802457F0 00241450  7C 7D 1B 78 */	mr r29, r3
/* 802457F4 00241454  48 02 8F 69 */	bl OSDisableInterrupts
/* 802457F8 00241458  7C 7E 1B 78 */	mr r30, r3
/* 802457FC 0024145C  80 6D A5 68 */	lwz r3, lbl_8063F828-_SDA_BASE_(r13)
/* 80245800 00241460  7F A4 EB 78 */	mr r4, r29
/* 80245804 00241464  4B F9 54 91 */	bl func_801DAC94
/* 80245808 00241468  7C 7F 1B 78 */	mr r31, r3
/* 8024580C 0024146C  7F C3 F3 78 */	mr r3, r30
/* 80245810 00241470  48 02 8F 75 */	bl OSRestoreInterrupts
/* 80245814 00241474  2C 1F 00 00 */	cmpwi r31, 0
/* 80245818 00241478  41 82 00 10 */	beq lbl_80245828
/* 8024581C 0024147C  80 0D A5 4C */	lwz r0, lbl_8063F80C-_SDA_BASE_(r13)
/* 80245820 00241480  7C 00 EA 14 */	add r0, r0, r29
/* 80245824 00241484  90 0D A5 4C */	stw r0, lbl_8063F80C-_SDA_BASE_(r13)
lbl_80245828:
/* 80245828 00241488  7F E3 FB 78 */	mr r3, r31
/* 8024582C 0024148C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80245830 00241490  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80245834 00241494  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80245838 00241498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024583C 0024149C  7C 08 03 A6 */	mtlr r0
/* 80245840 002414A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80245844 002414A4  4E 80 00 20 */	blr

.global func_80245848
func_80245848:
/* 80245848 002414A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024584C 002414AC  7C 08 02 A6 */	mflr r0
/* 80245850 002414B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80245854 002414B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80245858 002414B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024585C 002414BC  7C 9E 23 78 */	mr r30, r4
/* 80245860 002414C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80245864 002414C4  7C 7D 1B 78 */	mr r29, r3
/* 80245868 002414C8  48 02 8E F5 */	bl OSDisableInterrupts
/* 8024586C 002414CC  7C 7F 1B 78 */	mr r31, r3
/* 80245870 002414D0  80 6D A5 68 */	lwz r3, lbl_8063F828-_SDA_BASE_(r13)
/* 80245874 002414D4  7F A4 EB 78 */	mr r4, r29
/* 80245878 002414D8  4B F9 54 D1 */	bl func_801DAD48
/* 8024587C 002414DC  7F E3 FB 78 */	mr r3, r31
/* 80245880 002414E0  48 02 8F 05 */	bl OSRestoreInterrupts
/* 80245884 002414E4  80 0D A5 4C */	lwz r0, lbl_8063F80C-_SDA_BASE_(r13)
/* 80245888 002414E8  7C 1E 00 50 */	subf r0, r30, r0
/* 8024588C 002414EC  90 0D A5 4C */	stw r0, lbl_8063F80C-_SDA_BASE_(r13)
/* 80245890 002414F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80245894 002414F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80245898 002414F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8024589C 002414FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802458A0 00241500  7C 08 03 A6 */	mtlr r0
/* 802458A4 00241504  38 21 00 20 */	addi r1, r1, 0x20
/* 802458A8 00241508  4E 80 00 20 */	blr

.global func_802458AC
func_802458AC:
/* 802458AC 0024150C  80 6D A5 4C */	lwz r3, lbl_8063F80C-_SDA_BASE_(r13)
/* 802458B0 00241510  3C 00 00 80 */	lis r0, 0x80
/* 802458B4 00241514  7C 63 00 50 */	subf r3, r3, r0
/* 802458B8 00241518  4E 80 00 20 */	blr

.global func_802458BC
func_802458BC:
/* 802458BC 0024151C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802458C0 00241520  7C 08 02 A6 */	mflr r0
/* 802458C4 00241524  2C 03 00 00 */	cmpwi r3, 0
/* 802458C8 00241528  90 01 00 14 */	stw r0, 0x14(r1)
/* 802458CC 0024152C  38 00 00 00 */	li r0, 0
/* 802458D0 00241530  90 0D A5 5C */	stw r0, lbl_8063F81C-_SDA_BASE_(r13)
/* 802458D4 00241534  90 0D A5 40 */	stw r0, lbl_8063F800-_SDA_BASE_(r13)
/* 802458D8 00241538  90 0D A5 44 */	stw r0, lbl_8063F804-_SDA_BASE_(r13)
/* 802458DC 0024153C  90 0D A5 48 */	stw r0, lbl_8063F808-_SDA_BASE_(r13)
/* 802458E0 00241540  90 0D A5 4C */	stw r0, lbl_8063F80C-_SDA_BASE_(r13)
/* 802458E4 00241544  90 0D A5 64 */	stw r0, lbl_8063F824-_SDA_BASE_(r13)
/* 802458E8 00241548  90 0D A5 54 */	stw r0, lbl_8063F814-_SDA_BASE_(r13)
/* 802458EC 0024154C  40 82 00 08 */	bne lbl_802458F4
/* 802458F0 00241550  3C 60 00 80 */	lis r3, 0x0080001F@ha
lbl_802458F4:
/* 802458F4 00241554  38 03 00 1F */	addi r0, r3, 0x0080001F@l
/* 802458F8 00241558  2C 04 00 00 */	cmpwi r4, 0
/* 802458FC 0024155C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80245900 00241560  90 8D A5 3C */	stw r4, lbl_8063F7FC-_SDA_BASE_(r13)
/* 80245904 00241564  90 6D A5 38 */	stw r3, lbl_8063F7F8-_SDA_BASE_(r13)
/* 80245908 00241568  40 82 00 0C */	bne lbl_80245914
/* 8024590C 0024156C  38 00 02 00 */	li r0, 0x200
/* 80245910 00241570  90 0D A5 3C */	stw r0, lbl_8063F7FC-_SDA_BASE_(r13)
lbl_80245914:
/* 80245914 00241574  38 00 00 80 */	li r0, 0x80
/* 80245918 00241578  90 0D A5 50 */	stw r0, lbl_8063F810-_SDA_BASE_(r13)
/* 8024591C 0024157C  4B FF FE A1 */	bl func_802457BC
/* 80245920 00241580  2C 03 00 00 */	cmpwi r3, 0
/* 80245924 00241584  40 82 00 0C */	bne lbl_80245930
/* 80245928 00241588  38 60 00 00 */	li r3, 0
/* 8024592C 0024158C  48 00 00 C0 */	b lbl_802459EC
lbl_80245930:
/* 80245930 00241590  80 0D A5 3C */	lwz r0, lbl_8063F7FC-_SDA_BASE_(r13)
/* 80245934 00241594  1C 60 00 24 */	mulli r3, r0, 0x24
/* 80245938 00241598  48 00 19 49 */	bl func_80247280
/* 8024593C 0024159C  2C 03 00 00 */	cmpwi r3, 0
/* 80245940 002415A0  90 6D A5 58 */	stw r3, lbl_8063F818-_SDA_BASE_(r13)
/* 80245944 002415A4  40 82 00 0C */	bne lbl_80245950
/* 80245948 002415A8  38 60 00 00 */	li r3, 0
/* 8024594C 002415AC  48 00 00 A0 */	b lbl_802459EC
lbl_80245950:
/* 80245950 002415B0  80 0D A5 50 */	lwz r0, lbl_8063F810-_SDA_BASE_(r13)
/* 80245954 002415B4  1C 60 00 2C */	mulli r3, r0, 0x2c
/* 80245958 002415B8  48 00 19 29 */	bl func_80247280
/* 8024595C 002415BC  2C 03 00 00 */	cmpwi r3, 0
/* 80245960 002415C0  90 6D A5 60 */	stw r3, lbl_8063F820-_SDA_BASE_(r13)
/* 80245964 002415C4  40 82 00 0C */	bne lbl_80245970
/* 80245968 002415C8  38 60 00 00 */	li r3, 0
/* 8024596C 002415CC  48 00 00 80 */	b lbl_802459EC
lbl_80245970:
/* 80245970 002415D0  38 C0 00 00 */	li r6, 0
/* 80245974 002415D4  38 A0 00 00 */	li r5, 0
/* 80245978 002415D8  38 80 00 00 */	li r4, 0
/* 8024597C 002415DC  48 00 00 30 */	b lbl_802459AC
lbl_80245980:
/* 80245980 002415E0  80 0D A5 58 */	lwz r0, lbl_8063F818-_SDA_BASE_(r13)
/* 80245984 002415E4  38 C6 00 01 */	addi r6, r6, 1
/* 80245988 002415E8  7C 60 2A 14 */	add r3, r0, r5
/* 8024598C 002415EC  98 83 00 08 */	stb r4, 8(r3)
/* 80245990 002415F0  80 0D A5 58 */	lwz r0, lbl_8063F818-_SDA_BASE_(r13)
/* 80245994 002415F4  7C 60 2A 14 */	add r3, r0, r5
/* 80245998 002415F8  98 83 00 09 */	stb r4, 9(r3)
/* 8024599C 002415FC  80 0D A5 58 */	lwz r0, lbl_8063F818-_SDA_BASE_(r13)
/* 802459A0 00241600  7C 60 2A 14 */	add r3, r0, r5
/* 802459A4 00241604  38 A5 00 24 */	addi r5, r5, 0x24
/* 802459A8 00241608  98 83 00 0A */	stb r4, 0xa(r3)
lbl_802459AC:
/* 802459AC 0024160C  80 0D A5 3C */	lwz r0, lbl_8063F7FC-_SDA_BASE_(r13)
/* 802459B0 00241610  7C 06 00 40 */	cmplw r6, r0
/* 802459B4 00241614  41 80 FF CC */	blt lbl_80245980
/* 802459B8 00241618  38 C0 00 00 */	li r6, 0
/* 802459BC 0024161C  38 A0 00 00 */	li r5, 0
/* 802459C0 00241620  38 80 00 00 */	li r4, 0
/* 802459C4 00241624  48 00 00 18 */	b lbl_802459DC
lbl_802459C8:
/* 802459C8 00241628  80 0D A5 60 */	lwz r0, lbl_8063F820-_SDA_BASE_(r13)
/* 802459CC 0024162C  38 C6 00 01 */	addi r6, r6, 1
/* 802459D0 00241630  7C 60 2A 14 */	add r3, r0, r5
/* 802459D4 00241634  38 A5 00 2C */	addi r5, r5, 0x2c
/* 802459D8 00241638  98 83 00 08 */	stb r4, 8(r3)
lbl_802459DC:
/* 802459DC 0024163C  80 0D A5 50 */	lwz r0, lbl_8063F810-_SDA_BASE_(r13)
/* 802459E0 00241640  7C 06 00 40 */	cmplw r6, r0
/* 802459E4 00241644  41 80 FF E4 */	blt lbl_802459C8
/* 802459E8 00241648  38 60 00 01 */	li r3, 1
lbl_802459EC:
/* 802459EC 0024164C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802459F0 00241650  7C 08 03 A6 */	mtlr r0
/* 802459F4 00241654  38 21 00 10 */	addi r1, r1, 0x10
/* 802459F8 00241658  4E 80 00 20 */	blr

.global func_802459FC
func_802459FC:
/* 802459FC 0024165C  80 6D A5 44 */	lwz r3, lbl_8063F804-_SDA_BASE_(r13)
/* 80245A00 00241660  38 03 00 01 */	addi r0, r3, 1
/* 80245A04 00241664  90 0D A5 44 */	stw r0, lbl_8063F804-_SDA_BASE_(r13)
/* 80245A08 00241668  4E 80 00 20 */	blr

.global func_80245A0C
func_80245A0C:
/* 80245A0C 0024166C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245A10 00241670  7C 08 02 A6 */	mflr r0
/* 80245A14 00241674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245A18 00241678  4B FF FA C1 */	bl func_802454D8
/* 80245A1C 0024167C  7C 03 00 D0 */	neg r0, r3
/* 80245A20 00241680  7C 00 1B 78 */	or r0, r0, r3
/* 80245A24 00241684  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80245A28 00241688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245A2C 0024168C  7C 08 03 A6 */	mtlr r0
/* 80245A30 00241690  38 21 00 10 */	addi r1, r1, 0x10
/* 80245A34 00241694  4E 80 00 20 */	blr

.global func_80245A38
func_80245A38:
/* 80245A38 00241698  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80245A3C 0024169C  7C 08 02 A6 */	mflr r0
/* 80245A40 002416A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80245A44 002416A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80245A48 002416A8  4B F8 16 C9 */	bl _savegpr_21
/* 80245A4C 002416AC  7C 75 1B 78 */	mr r21, r3
/* 80245A50 002416B0  7C 96 23 78 */	mr r22, r4
/* 80245A54 002416B4  83 A1 00 48 */	lwz r29, 0x48(r1)
/* 80245A58 002416B8  7C B7 2B 78 */	mr r23, r5
/* 80245A5C 002416BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80245A60 002416C0  7C D8 33 78 */	mr r24, r6
/* 80245A64 002416C4  80 95 00 04 */	lwz r4, 4(r21)
/* 80245A68 002416C8  7C F9 3B 78 */	mr r25, r7
/* 80245A6C 002416CC  7D 1A 43 78 */	mr r26, r8
/* 80245A70 002416D0  7D 3B 4B 78 */	mr r27, r9
/* 80245A74 002416D4  7D 5C 53 78 */	mr r28, r10
/* 80245A78 002416D8  4B FF FA 61 */	bl func_802454D8
/* 80245A7C 002416DC  2C 03 00 00 */	cmpwi r3, 0
/* 80245A80 002416E0  7C 7F 1B 78 */	mr r31, r3
/* 80245A84 002416E4  40 82 00 0C */	bne lbl_80245A90
/* 80245A88 002416E8  38 60 00 00 */	li r3, 0
/* 80245A8C 002416EC  48 00 00 A8 */	b lbl_80245B34
lbl_80245A90:
/* 80245A90 002416F0  4B FF F8 61 */	bl func_802452F0
/* 80245A94 002416F4  2C 03 00 00 */	cmpwi r3, 0
/* 80245A98 002416F8  7C 7E 1B 78 */	mr r30, r3
/* 80245A9C 002416FC  40 82 00 0C */	bne lbl_80245AA8
/* 80245AA0 00241700  38 60 00 00 */	li r3, 0
/* 80245AA4 00241704  48 00 00 90 */	b lbl_80245B34
lbl_80245AA8:
/* 80245AA8 00241708  92 A3 00 10 */	stw r21, 0x10(r3)
/* 80245AAC 0024170C  7C 19 C2 14 */	add r0, r25, r24
/* 80245AB0 00241710  92 C3 00 14 */	stw r22, 0x14(r3)
/* 80245AB4 00241714  93 43 00 0C */	stw r26, 0xc(r3)
/* 80245AB8 00241718  93 63 00 18 */	stw r27, 0x18(r3)
/* 80245ABC 0024171C  93 83 00 1C */	stw r28, 0x1c(r3)
/* 80245AC0 00241720  93 A3 00 20 */	stw r29, 0x20(r3)
/* 80245AC4 00241724  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80245AC8 00241728  7C 00 20 40 */	cmplw r0, r4
/* 80245ACC 0024172C  40 81 00 08 */	ble lbl_80245AD4
/* 80245AD0 00241730  7F 19 20 50 */	subf r24, r25, r4
lbl_80245AD4:
/* 80245AD4 00241734  56 E0 06 FF */	clrlwi. r0, r23, 0x1b
/* 80245AD8 00241738  41 82 00 0C */	beq lbl_80245AE4
/* 80245ADC 0024173C  38 60 00 00 */	li r3, 0
/* 80245AE0 00241740  48 00 00 54 */	b lbl_80245B34
lbl_80245AE4:
/* 80245AE4 00241744  57 00 06 FF */	clrlwi. r0, r24, 0x1b
/* 80245AE8 00241748  41 82 00 0C */	beq lbl_80245AF4
/* 80245AEC 0024174C  38 60 00 00 */	li r3, 0
/* 80245AF0 00241750  48 00 00 44 */	b lbl_80245B34
lbl_80245AF4:
/* 80245AF4 00241754  92 E3 00 24 */	stw r23, 0x24(r3)
/* 80245AF8 00241758  7F 05 C3 78 */	mr r5, r24
/* 80245AFC 0024175C  93 03 00 28 */	stw r24, 0x28(r3)
/* 80245B00 00241760  7E E3 BB 78 */	mr r3, r23
/* 80245B04 00241764  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80245B08 00241768  7C 80 CA 14 */	add r4, r0, r25
/* 80245B0C 0024176C  4B F9 54 A1 */	bl func_801DAFAC
/* 80245B10 00241770  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 80245B14 00241774  2C 0C 00 00 */	cmpwi r12, 0
/* 80245B18 00241778  41 82 00 10 */	beq lbl_80245B28
/* 80245B1C 0024177C  7F C3 F3 78 */	mr r3, r30
/* 80245B20 00241780  7D 89 03 A6 */	mtctr r12
/* 80245B24 00241784  4E 80 04 21 */	bctrl
lbl_80245B28:
/* 80245B28 00241788  7F C3 F3 78 */	mr r3, r30
/* 80245B2C 0024178C  4B FF F8 95 */	bl func_802453C0
/* 80245B30 00241790  38 60 00 01 */	li r3, 1
lbl_80245B34:
/* 80245B34 00241794  39 61 00 40 */	addi r11, r1, 0x40
/* 80245B38 00241798  4B F8 16 25 */	bl _restgpr_21
/* 80245B3C 0024179C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80245B40 002417A0  7C 08 03 A6 */	mtlr r0
/* 80245B44 002417A4  38 21 00 40 */	addi r1, r1, 0x40
/* 80245B48 002417A8  4E 80 00 20 */	blr

.global func_80245B4C
func_80245B4C:
/* 80245B4C 002417AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245B50 002417B0  7C 08 02 A6 */	mflr r0
/* 80245B54 002417B4  39 20 00 00 */	li r9, 0
/* 80245B58 002417B8  39 40 00 00 */	li r10, 0
/* 80245B5C 002417BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245B60 002417C0  38 00 00 00 */	li r0, 0
/* 80245B64 002417C4  90 01 00 08 */	stw r0, 8(r1)
/* 80245B68 002417C8  4B FF FE D1 */	bl func_80245A38
/* 80245B6C 002417CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245B70 002417D0  7C 08 03 A6 */	mtlr r0
/* 80245B74 002417D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80245B78 002417D8  4E 80 00 20 */	blr

.global func_80245B7C
func_80245B7C:
/* 80245B7C 002417DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80245B80 002417E0  7C 08 02 A6 */	mflr r0
/* 80245B84 002417E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245B88 002417E8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80245B8C 002417EC  90 01 00 08 */	stw r0, 8(r1)
/* 80245B90 002417F0  4B FF FE A9 */	bl func_80245A38
/* 80245B94 002417F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80245B98 002417F8  7C 08 03 A6 */	mtlr r0
/* 80245B9C 002417FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80245BA0 00241800  4E 80 00 20 */	blr

.global func_80245BA4
func_80245BA4:
/* 80245BA4 00241804  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80245BA8 00241808  7C 08 02 A6 */	mflr r0
/* 80245BAC 0024180C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80245BB0 00241810  39 61 00 30 */	addi r11, r1, 0x30
/* 80245BB4 00241814  4B F8 15 69 */	bl _savegpr_24
/* 80245BB8 00241818  7C 78 1B 78 */	mr r24, r3
/* 80245BBC 0024181C  7C 99 23 78 */	mr r25, r4
/* 80245BC0 00241820  7C BA 2B 78 */	mr r26, r5
/* 80245BC4 00241824  7C DB 33 78 */	mr r27, r6
/* 80245BC8 00241828  7C FC 3B 78 */	mr r28, r7
/* 80245BCC 0024182C  7D 1D 43 78 */	mr r29, r8
/* 80245BD0 00241830  7D 3E 4B 78 */	mr r30, r9
/* 80245BD4 00241834  4B FF F7 1D */	bl func_802452F0
/* 80245BD8 00241838  2C 03 00 00 */	cmpwi r3, 0
/* 80245BDC 0024183C  7C 7F 1B 78 */	mr r31, r3
/* 80245BE0 00241840  40 82 00 0C */	bne lbl_80245BEC
/* 80245BE4 00241844  41 82 00 44 */	beq lbl_80245C28
/* 80245BE8 00241848  48 00 00 40 */	b lbl_80245C28
lbl_80245BEC:
/* 80245BEC 0024184C  93 03 00 10 */	stw r24, 0x10(r3)
/* 80245BF0 00241850  7F 44 D3 78 */	mr r4, r26
/* 80245BF4 00241854  7F 85 E3 78 */	mr r5, r28
/* 80245BF8 00241858  93 23 00 14 */	stw r25, 0x14(r3)
/* 80245BFC 0024185C  93 C3 00 0C */	stw r30, 0xc(r3)
/* 80245C00 00241860  7C 7B EA 14 */	add r3, r27, r29
/* 80245C04 00241864  4B F9 53 A9 */	bl func_801DAFAC
/* 80245C08 00241868  2C 1E 00 00 */	cmpwi r30, 0
/* 80245C0C 0024186C  41 82 00 14 */	beq lbl_80245C20
/* 80245C10 00241870  7F CC F3 78 */	mr r12, r30
/* 80245C14 00241874  7F E3 FB 78 */	mr r3, r31
/* 80245C18 00241878  7D 89 03 A6 */	mtctr r12
/* 80245C1C 0024187C  4E 80 04 21 */	bctrl
lbl_80245C20:
/* 80245C20 00241880  7F E3 FB 78 */	mr r3, r31
/* 80245C24 00241884  4B FF F7 9D */	bl func_802453C0
lbl_80245C28:
/* 80245C28 00241888  39 61 00 30 */	addi r11, r1, 0x30
/* 80245C2C 0024188C  4B F8 15 3D */	bl _restgpr_24
/* 80245C30 00241890  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80245C34 00241894  7C 08 03 A6 */	mtlr r0
/* 80245C38 00241898  38 21 00 30 */	addi r1, r1, 0x30
/* 80245C3C 0024189C  4E 80 00 20 */	blr

.global func_80245C40
func_80245C40:
/* 80245C40 002418A0  38 A0 00 01 */	li r5, 1
/* 80245C44 002418A4  38 6D A5 30 */	addi r3, r13, lbl_8063F7F0-_SDA_BASE_
/* 80245C48 002418A8  38 80 00 04 */	li r4, 4
/* 80245C4C 002418AC  38 00 00 00 */	li r0, 0
/* 80245C50 002418B0  98 AD A5 30 */	stb r5, lbl_8063F7F0-_SDA_BASE_(r13)
/* 80245C54 002418B4  B0 83 00 02 */	sth r4, 2(r3)
/* 80245C58 002418B8  98 03 00 04 */	stb r0, 4(r3)
/* 80245C5C 002418BC  4E 80 00 20 */	blr