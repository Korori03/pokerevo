.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global WD_ReceiveNotification
WD_ReceiveNotification:
/* 802EE38C 002E9FEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EE390 002E9FF0  7C 08 02 A6 */	mflr r0
/* 802EE394 002E9FF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EE398 002E9FF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EE39C 002E9FFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EE3A0 002EA000  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EE3A4 002EA004  7C 7D 1B 78 */	mr r29, r3
/* 802EE3A8 002EA008  4B FF F9 B5 */	bl WDi_GetWork
/* 802EE3AC 002EA00C  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE3B0 002EA010  38 80 00 9C */	li r4, 0x9c
/* 802EE3B4 002EA014  38 A0 00 20 */	li r5, 0x20
/* 802EE3B8 002EA018  4B FB 5F 81 */	bl iosAllocAligned
/* 802EE3BC 002EA01C  38 83 00 08 */	addi r4, r3, 8
/* 802EE3C0 002EA020  38 00 00 4A */	li r0, 0x4a
/* 802EE3C4 002EA024  7C 7E 1B 78 */	mr r30, r3
/* 802EE3C8 002EA028  90 83 00 00 */	stw r4, 0(r3)
/* 802EE3CC 002EA02C  38 C3 00 07 */	addi r6, r3, 7
/* 802EE3D0 002EA030  38 BD FF FF */	addi r5, r29, -1
/* 802EE3D4 002EA034  7C 09 03 A6 */	mtctr r0
lbl_802EE3D8:
/* 802EE3D8 002EA038  88 85 00 01 */	lbz r4, 1(r5)
/* 802EE3DC 002EA03C  8C 05 00 02 */	lbzu r0, 2(r5)
/* 802EE3E0 002EA040  98 86 00 01 */	stb r4, 1(r6)
/* 802EE3E4 002EA044  9C 06 00 02 */	stbu r0, 2(r6)
/* 802EE3E8 002EA048  42 00 FF F0 */	bdnz lbl_802EE3D8
/* 802EE3EC 002EA04C  38 00 00 94 */	li r0, 0x94
/* 802EE3F0 002EA050  3C 80 00 01 */	lis r4, 0x00008001@ha
/* 802EE3F4 002EA054  90 03 00 04 */	stw r0, 4(r3)
/* 802EE3F8 002EA058  38 64 80 01 */	addi r3, r4, 0x00008001@l
/* 802EE3FC 002EA05C  7F C6 F3 78 */	mr r6, r30
/* 802EE400 002EA060  38 80 00 00 */	li r4, 0
/* 802EE404 002EA064  38 A0 00 01 */	li r5, 1
/* 802EE408 002EA068  4B FF F9 61 */	bl WDi_Ioctlv
/* 802EE40C 002EA06C  38 00 00 4A */	li r0, 0x4a
/* 802EE410 002EA070  7C 7F 1B 78 */	mr r31, r3
/* 802EE414 002EA074  38 BD FF FF */	addi r5, r29, -1
/* 802EE418 002EA078  38 9E 00 07 */	addi r4, r30, 7
/* 802EE41C 002EA07C  7C 09 03 A6 */	mtctr r0
lbl_802EE420:
/* 802EE420 002EA080  88 64 00 01 */	lbz r3, 1(r4)
/* 802EE424 002EA084  8C 04 00 02 */	lbzu r0, 2(r4)
/* 802EE428 002EA088  98 65 00 01 */	stb r3, 1(r5)
/* 802EE42C 002EA08C  9C 05 00 02 */	stbu r0, 2(r5)
/* 802EE430 002EA090  42 00 FF F0 */	bdnz lbl_802EE420
/* 802EE434 002EA094  4B FF F9 29 */	bl WDi_GetWork
/* 802EE438 002EA098  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE43C 002EA09C  7F C4 F3 78 */	mr r4, r30
/* 802EE440 002EA0A0  4B FB 5E FD */	bl iosFree
/* 802EE444 002EA0A4  7F E3 FB 78 */	mr r3, r31
/* 802EE448 002EA0A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EE44C 002EA0AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EE450 002EA0B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EE454 002EA0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EE458 002EA0B8  7C 08 03 A6 */	mtlr r0
/* 802EE45C 002EA0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802EE460 002EA0C0  4E 80 00 20 */	blr

.global WD_ReceiveFrame
WD_ReceiveFrame:
/* 802EE464 002EA0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EE468 002EA0C8  7C 08 02 A6 */	mflr r0
/* 802EE46C 002EA0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EE470 002EA0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EE474 002EA0D4  7C 9F 23 78 */	mr r31, r4
/* 802EE478 002EA0D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802EE47C 002EA0DC  7C 7E 1B 78 */	mr r30, r3
/* 802EE480 002EA0E0  4B FF F8 DD */	bl WDi_GetWork
/* 802EE484 002EA0E4  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE488 002EA0E8  38 80 00 08 */	li r4, 8
/* 802EE48C 002EA0EC  38 A0 00 20 */	li r5, 0x20
/* 802EE490 002EA0F0  4B FB 5E A9 */	bl iosAllocAligned
/* 802EE494 002EA0F4  93 C3 00 00 */	stw r30, 0(r3)
/* 802EE498 002EA0F8  7C 7E 1B 78 */	mr r30, r3
/* 802EE49C 002EA0FC  3C A0 00 01 */	lis r5, 0x00008000@ha
/* 802EE4A0 002EA100  38 80 00 00 */	li r4, 0
/* 802EE4A4 002EA104  93 E3 00 04 */	stw r31, 4(r3)
/* 802EE4A8 002EA108  38 65 80 00 */	addi r3, r5, 0x00008000@l
/* 802EE4AC 002EA10C  7F C6 F3 78 */	mr r6, r30
/* 802EE4B0 002EA110  38 A0 00 01 */	li r5, 1
/* 802EE4B4 002EA114  4B FF F8 B5 */	bl WDi_Ioctlv
/* 802EE4B8 002EA118  7C 7F 1B 78 */	mr r31, r3
/* 802EE4BC 002EA11C  4B FF F8 A1 */	bl WDi_GetWork
/* 802EE4C0 002EA120  80 63 00 08 */	lwz r3, 8(r3)
/* 802EE4C4 002EA124  7F C4 F3 78 */	mr r4, r30
/* 802EE4C8 002EA128  4B FB 5E 75 */	bl iosFree
/* 802EE4CC 002EA12C  7F E3 FB 78 */	mr r3, r31
/* 802EE4D0 002EA130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EE4D4 002EA134  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EE4D8 002EA138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EE4DC 002EA13C  7C 08 03 A6 */	mtlr r0
/* 802EE4E0 002EA140  38 21 00 10 */	addi r1, r1, 0x10
/* 802EE4E4 002EA144  4E 80 00 20 */	blr