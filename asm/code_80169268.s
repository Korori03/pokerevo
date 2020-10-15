.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80169268
func_80169268:
/* 80169268 00164EC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016926C 00164ECC  7C 08 02 A6 */	mflr r0
/* 80169270 00164ED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80169274 00164ED4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80169278 00164ED8  3F E0 80 49 */	lis r31, lbl_8048CB90@ha
/* 8016927C 00164EDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80169280 00164EE0  7C 9E 23 78 */	mr r30, r4
/* 80169284 00164EE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80169288 00164EE8  7C 7D 1B 78 */	mr r29, r3
/* 8016928C 00164EEC  38 7F CB 90 */	addi r3, r31, lbl_8048CB90@l
/* 80169290 00164EF0  48 10 66 B9 */	bl OSLockMutex
/* 80169294 00164EF4  80 8D 9E 80 */	lwz r4, lbl_8063F140-_SDA_BASE_(r13)
/* 80169298 00164EF8  2C 04 00 00 */	cmpwi r4, 0
/* 8016929C 00164EFC  40 82 00 80 */	bne lbl_8016931C
/* 801692A0 00164F00  80 0D 9E 88 */	lwz r0, lbl_8063F148-_SDA_BASE_(r13)
/* 801692A4 00164F04  7C 1E 00 40 */	cmplw r30, r0
/* 801692A8 00164F08  40 81 00 14 */	ble lbl_801692BC
/* 801692AC 00164F0C  38 7F CB 90 */	addi r3, r31, -13424
/* 801692B0 00164F10  48 10 67 75 */	bl OSUnlockMutex
/* 801692B4 00164F14  38 60 FF FF */	li r3, -1
/* 801692B8 00164F18  48 00 00 DC */	b lbl_80169394
lbl_801692BC:
/* 801692BC 00164F1C  3C 60 50 42 */	lis r3, 0x50425243@ha
/* 801692C0 00164F20  81 0D 9E 84 */	lwz r8, lbl_8063F144-_SDA_BASE_(r13)
/* 801692C4 00164F24  38 E3 52 43 */	addi r7, r3, 0x50425243@l
/* 801692C8 00164F28  38 1E 00 03 */	addi r0, r30, 3
/* 801692CC 00164F2C  90 E8 00 00 */	stw r7, 0(r8)
/* 801692D0 00164F30  38 60 00 01 */	li r3, 1
/* 801692D4 00164F34  38 C0 00 00 */	li r6, 0
/* 801692D8 00164F38  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 801692DC 00164F3C  90 68 00 04 */	stw r3, 4(r8)
/* 801692E0 00164F40  7F A4 EB 78 */	mr r4, r29
/* 801692E4 00164F44  7F C5 F3 78 */	mr r5, r30
/* 801692E8 00164F48  38 68 00 14 */	addi r3, r8, 0x14
/* 801692EC 00164F4C  90 C8 00 08 */	stw r6, 8(r8)
/* 801692F0 00164F50  90 E8 00 0C */	stw r7, 0xc(r8)
/* 801692F4 00164F54  90 08 00 10 */	stw r0, 0x10(r8)
/* 801692F8 00164F58  4B E9 AD 09 */	bl memcpy
/* 801692FC 00164F5C  38 1E 00 02 */	addi r0, r30, 2
/* 80169300 00164F60  38 7F CB 90 */	addi r3, r31, -13424
/* 80169304 00164F64  54 04 07 FA */	rlwinm r4, r0, 0, 0x1f, 0x1d
/* 80169308 00164F68  38 04 00 14 */	addi r0, r4, 0x14
/* 8016930C 00164F6C  90 0D 9E 80 */	stw r0, lbl_8063F140-_SDA_BASE_(r13)
/* 80169310 00164F70  48 10 67 15 */	bl OSUnlockMutex
/* 80169314 00164F74  38 60 00 00 */	li r3, 0
/* 80169318 00164F78  48 00 00 7C */	b lbl_80169394
lbl_8016931C:
/* 8016931C 00164F7C  80 0D 9E 88 */	lwz r0, lbl_8063F148-_SDA_BASE_(r13)
/* 80169320 00164F80  38 7E 00 08 */	addi r3, r30, 8
/* 80169324 00164F84  7C 04 00 50 */	subf r0, r4, r0
/* 80169328 00164F88  7C 03 00 40 */	cmplw r3, r0
/* 8016932C 00164F8C  40 81 00 14 */	ble lbl_80169340
/* 80169330 00164F90  38 7F CB 90 */	addi r3, r31, -13424
/* 80169334 00164F94  48 10 66 F1 */	bl OSUnlockMutex
/* 80169338 00164F98  38 60 FF FF */	li r3, -1
/* 8016933C 00164F9C  48 00 00 58 */	b lbl_80169394
lbl_80169340:
/* 80169340 00164FA0  80 CD 9E 84 */	lwz r6, lbl_8063F144-_SDA_BASE_(r13)
/* 80169344 00164FA4  3C 60 50 42 */	lis r3, 0x50425243@ha
/* 80169348 00164FA8  38 03 52 43 */	addi r0, r3, 0x50425243@l
/* 8016934C 00164FAC  7F A4 EB 78 */	mr r4, r29
/* 80169350 00164FB0  80 66 00 04 */	lwz r3, 4(r6)
/* 80169354 00164FB4  7F C5 F3 78 */	mr r5, r30
/* 80169358 00164FB8  38 63 00 01 */	addi r3, r3, 1
/* 8016935C 00164FBC  90 66 00 04 */	stw r3, 4(r6)
/* 80169360 00164FC0  80 6D 9E 80 */	lwz r3, lbl_8063F140-_SDA_BASE_(r13)
/* 80169364 00164FC4  7C 06 19 6E */	stwux r0, r6, r3
/* 80169368 00164FC8  93 C6 00 04 */	stw r30, 4(r6)
/* 8016936C 00164FCC  38 66 00 08 */	addi r3, r6, 8
/* 80169370 00164FD0  4B E9 AC 91 */	bl memcpy
/* 80169374 00164FD4  38 1E 00 0B */	addi r0, r30, 0xb
/* 80169378 00164FD8  80 8D 9E 80 */	lwz r4, lbl_8063F140-_SDA_BASE_(r13)
/* 8016937C 00164FDC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80169380 00164FE0  38 7F CB 90 */	addi r3, r31, -13424
/* 80169384 00164FE4  7C 04 02 14 */	add r0, r4, r0
/* 80169388 00164FE8  90 0D 9E 80 */	stw r0, lbl_8063F140-_SDA_BASE_(r13)
/* 8016938C 00164FEC  48 10 66 99 */	bl OSUnlockMutex
/* 80169390 00164FF0  38 60 00 00 */	li r3, 0
lbl_80169394:
/* 80169394 00164FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80169398 00164FF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016939C 00164FFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801693A0 00165000  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801693A4 00165004  7C 08 03 A6 */	mtlr r0
/* 801693A8 00165008  38 21 00 20 */	addi r1, r1, 0x20
/* 801693AC 0016500C  4E 80 00 20 */	blr

.global func_801693B0
func_801693B0:
/* 801693B0 00165010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801693B4 00165014  7C 08 02 A6 */	mflr r0
/* 801693B8 00165018  90 01 00 24 */	stw r0, 0x24(r1)
/* 801693BC 0016501C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801693C0 00165020  3F E0 80 49 */	lis r31, lbl_8048CB90@ha
/* 801693C4 00165024  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801693C8 00165028  7C 7E 1B 78 */	mr r30, r3
/* 801693CC 0016502C  38 7F CB 90 */	addi r3, r31, lbl_8048CB90@l
/* 801693D0 00165030  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801693D4 00165034  7C 9D 23 78 */	mr r29, r4
/* 801693D8 00165038  48 10 67 81 */	bl OSTryLockMutex
/* 801693DC 0016503C  2C 03 00 00 */	cmpwi r3, 0
/* 801693E0 00165040  40 82 00 0C */	bne lbl_801693EC
/* 801693E4 00165044  38 7F CB 90 */	addi r3, r31, -13424
/* 801693E8 00165048  48 10 65 61 */	bl OSLockMutex
lbl_801693EC:
/* 801693EC 0016504C  3C 60 80 49 */	lis r3, lbl_8048CBA8@ha
/* 801693F0 00165050  38 63 CB A8 */	addi r3, r3, lbl_8048CBA8@l
/* 801693F4 00165054  4B FF A2 21 */	bl func_80163614
/* 801693F8 00165058  80 CD 9E 80 */	lwz r6, lbl_8063F140-_SDA_BASE_(r13)
/* 801693FC 0016505C  2C 06 00 00 */	cmpwi r6, 0
/* 80169400 00165060  40 82 00 14 */	bne lbl_80169414
/* 80169404 00165064  3C 60 80 49 */	lis r3, lbl_8048CB90@ha
/* 80169408 00165068  38 63 CB 90 */	addi r3, r3, lbl_8048CB90@l
/* 8016940C 0016506C  48 10 66 19 */	bl OSUnlockMutex
/* 80169410 00165070  48 00 00 74 */	b lbl_80169484
lbl_80169414:
/* 80169414 00165074  2C 1D 00 00 */	cmpwi r29, 0
/* 80169418 00165078  40 82 00 20 */	bne lbl_80169438
/* 8016941C 0016507C  3C 80 80 42 */	lis r4, lbl_8041F738@ha
/* 80169420 00165080  80 AD 9E 84 */	lwz r5, lbl_8063F144-_SDA_BASE_(r13)
/* 80169424 00165084  7F C3 F3 78 */	mr r3, r30
/* 80169428 00165088  38 84 F7 38 */	addi r4, r4, lbl_8041F738@l
/* 8016942C 0016508C  4B FF B3 69 */	bl func_80164794
/* 80169430 00165090  3B A0 01 2C */	li r29, 0x12c
/* 80169434 00165094  48 00 00 08 */	b lbl_8016943C
lbl_80169438:
/* 80169438 00165098  38 60 FF FB */	li r3, -5
lbl_8016943C:
/* 8016943C 0016509C  2C 03 00 00 */	cmpwi r3, 0
/* 80169440 001650A0  40 82 00 10 */	bne lbl_80169450
/* 80169444 001650A4  38 00 00 00 */	li r0, 0
/* 80169448 001650A8  90 0D 9E 80 */	stw r0, lbl_8063F140-_SDA_BASE_(r13)
/* 8016944C 001650AC  48 00 00 2C */	b lbl_80169478
lbl_80169450:
/* 80169450 001650B0  2C 03 FF FB */	cmpwi r3, -5
/* 80169454 001650B4  40 82 00 24 */	bne lbl_80169478
/* 80169458 001650B8  3C 60 80 49 */	lis r3, lbl_8048CBA8@ha
/* 8016945C 001650BC  3C A0 80 17 */	lis r5, func_801693B0@ha
/* 80169460 001650C0  7F A4 EB 78 */	mr r4, r29
/* 80169464 001650C4  7F C6 F3 78 */	mr r6, r30
/* 80169468 001650C8  38 63 CB A8 */	addi r3, r3, lbl_8048CBA8@l
/* 8016946C 001650CC  38 A5 93 B0 */	addi r5, r5, func_801693B0@l
/* 80169470 001650D0  38 E0 00 00 */	li r7, 0
/* 80169474 001650D4  4B FF A1 19 */	bl func_8016358C
lbl_80169478:
/* 80169478 001650D8  3C 60 80 49 */	lis r3, lbl_8048CB90@ha
/* 8016947C 001650DC  38 63 CB 90 */	addi r3, r3, lbl_8048CB90@l
/* 80169480 001650E0  48 10 65 A5 */	bl OSUnlockMutex
lbl_80169484:
/* 80169484 001650E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80169488 001650E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016948C 001650EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80169490 001650F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80169494 001650F4  7C 08 03 A6 */	mtlr r0
/* 80169498 001650F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8016949C 001650FC  4E 80 00 20 */	blr

.global func_801694A0
func_801694A0:
/* 801694A0 00165100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801694A4 00165104  7C 08 02 A6 */	mflr r0
/* 801694A8 00165108  90 01 00 14 */	stw r0, 0x14(r1)
/* 801694AC 0016510C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801694B0 00165110  80 0D 9E 84 */	lwz r0, lbl_8063F144-_SDA_BASE_(r13)
/* 801694B4 00165114  2C 00 00 00 */	cmpwi r0, 0
/* 801694B8 00165118  40 82 00 2C */	bne lbl_801694E4
/* 801694BC 0016511C  48 0F 4B 15 */	bl func_8025DFD0
/* 801694C0 00165120  3F E0 00 01 */	lis r31, 0x00008000@ha
/* 801694C4 00165124  38 9F 80 00 */	addi r4, r31, 0x00008000@l
/* 801694C8 00165128  48 0F 4A F9 */	bl func_8025DFC0
/* 801694CC 0016512C  38 1F 80 00 */	addi r0, r31, -32768
/* 801694D0 00165130  90 6D 9E 84 */	stw r3, lbl_8063F144-_SDA_BASE_(r13)
/* 801694D4 00165134  3C 60 80 49 */	lis r3, lbl_8048CB90@ha
/* 801694D8 00165138  90 0D 9E 88 */	stw r0, lbl_8063F148-_SDA_BASE_(r13)
/* 801694DC 0016513C  38 63 CB 90 */	addi r3, r3, lbl_8048CB90@l
/* 801694E0 00165140  48 10 64 31 */	bl OSInitMutex
lbl_801694E4:
/* 801694E4 00165144  38 00 00 00 */	li r0, 0
/* 801694E8 00165148  3C 60 80 49 */	lis r3, lbl_8048CBA8@ha
/* 801694EC 0016514C  90 0D 9E 80 */	stw r0, lbl_8063F140-_SDA_BASE_(r13)
/* 801694F0 00165150  38 63 CB A8 */	addi r3, r3, lbl_8048CBA8@l
/* 801694F4 00165154  4B FF A0 8D */	bl func_80163580
/* 801694F8 00165158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801694FC 0016515C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80169500 00165160  7C 08 03 A6 */	mtlr r0
/* 80169504 00165164  38 21 00 10 */	addi r1, r1, 0x10
/* 80169508 00165168  4E 80 00 20 */	blr

.global func_8016950C
func_8016950C:
/* 8016950C 0016516C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80169510 00165170  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80169514 00165174  38 05 00 03 */	addi r0, r5, 3
/* 80169518 00165178  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8016951C 0016517C  54 06 00 3A */	rlwinm r6, r0, 0, 0, 0x1d
/* 80169520 00165180  38 04 00 03 */	addi r0, r4, 3
/* 80169524 00165184  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80169528 00165188  38 A5 00 03 */	addi r5, r5, 3
/* 8016952C 0016518C  38 E6 00 30 */	addi r7, r6, 0x30
/* 80169530 00165190  54 06 00 3A */	rlwinm r6, r0, 0, 0, 0x1d
/* 80169534 00165194  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80169538 00165198  38 84 00 03 */	addi r4, r4, 3
/* 8016953C 0016519C  54 A5 00 3A */	rlwinm r5, r5, 0, 0, 0x1d
/* 80169540 001651A0  38 03 00 03 */	addi r0, r3, 3
/* 80169544 001651A4  7C E7 32 14 */	add r7, r7, r6
/* 80169548 001651A8  54 83 00 3A */	rlwinm r3, r4, 0, 0, 0x1d
/* 8016954C 001651AC  7C E7 2A 14 */	add r7, r7, r5
/* 80169550 001651B0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80169554 001651B4  7C E7 1A 14 */	add r7, r7, r3
/* 80169558 001651B8  7C 67 02 14 */	add r3, r7, r0
/* 8016955C 001651BC  4E 80 00 20 */	blr

.global func_80169560
func_80169560:
/* 80169560 001651C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80169564 001651C4  7C 08 02 A6 */	mflr r0
/* 80169568 001651C8  38 A0 00 30 */	li r5, 0x30
/* 8016956C 001651CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80169570 001651D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80169574 001651D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80169578 001651D8  7C 9E 23 78 */	mr r30, r4
/* 8016957C 001651DC  38 80 00 00 */	li r4, 0
/* 80169580 001651E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80169584 001651E4  7C 7D 1B 78 */	mr r29, r3
/* 80169588 001651E8  7F C3 F3 78 */	mr r3, r30
/* 8016958C 001651EC  4B E9 AB 79 */	bl memset
/* 80169590 001651F0  80 1D 00 00 */	lwz r0, 0(r29)
/* 80169594 001651F4  3B FE 00 30 */	addi r31, r30, 0x30
/* 80169598 001651F8  7F E3 FB 78 */	mr r3, r31
/* 8016959C 001651FC  90 1E 00 00 */	stw r0, 0(r30)
/* 801695A0 00165200  88 1D 00 04 */	lbz r0, 4(r29)
/* 801695A4 00165204  98 1E 00 04 */	stb r0, 4(r30)
/* 801695A8 00165208  88 1D 00 05 */	lbz r0, 5(r29)
/* 801695AC 0016520C  98 1E 00 05 */	stb r0, 5(r30)
/* 801695B0 00165210  88 1D 00 06 */	lbz r0, 6(r29)
/* 801695B4 00165214  98 1E 00 06 */	stb r0, 6(r30)
/* 801695B8 00165218  88 1D 00 07 */	lbz r0, 7(r29)
/* 801695BC 0016521C  98 1E 00 07 */	stb r0, 7(r30)
/* 801695C0 00165220  80 9D 00 08 */	lwz r4, 8(r29)
/* 801695C4 00165224  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 801695C8 00165228  4B E9 AA 39 */	bl memcpy
/* 801695CC 0016522C  7C 1E F8 50 */	subf r0, r30, r31
/* 801695D0 00165230  90 1E 00 08 */	stw r0, 8(r30)
/* 801695D4 00165234  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 801695D8 00165238  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801695DC 0016523C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801695E0 00165240  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 801695E4 00165244  38 03 00 03 */	addi r0, r3, 3
/* 801695E8 00165248  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 801695EC 0016524C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 801695F0 00165250  7F FF 02 14 */	add r31, r31, r0
/* 801695F4 00165254  7F E3 FB 78 */	mr r3, r31
/* 801695F8 00165258  4B E9 AA 09 */	bl memcpy
/* 801695FC 0016525C  7C 1E F8 50 */	subf r0, r30, r31
/* 80169600 00165260  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80169604 00165264  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80169608 00165268  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8016960C 0016526C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80169610 00165270  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 80169614 00165274  38 03 00 03 */	addi r0, r3, 3
/* 80169618 00165278  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 8016961C 0016527C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80169620 00165280  7F FF 02 14 */	add r31, r31, r0
/* 80169624 00165284  7F E3 FB 78 */	mr r3, r31
/* 80169628 00165288  4B E9 A9 D9 */	bl memcpy
/* 8016962C 0016528C  7C 1E F8 50 */	subf r0, r30, r31
/* 80169630 00165290  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80169634 00165294  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80169638 00165298  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8016963C 0016529C  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80169640 001652A0  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 80169644 001652A4  38 03 00 03 */	addi r0, r3, 3
/* 80169648 001652A8  80 BD 00 24 */	lwz r5, 0x24(r29)
/* 8016964C 001652AC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80169650 001652B0  7F FF 02 14 */	add r31, r31, r0
/* 80169654 001652B4  7F E3 FB 78 */	mr r3, r31
/* 80169658 001652B8  4B E9 A9 A9 */	bl memcpy
/* 8016965C 001652BC  7C 1E F8 50 */	subf r0, r30, r31
/* 80169660 001652C0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80169664 001652C4  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 80169668 001652C8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8016966C 001652CC  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80169670 001652D0  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 80169674 001652D4  38 03 00 03 */	addi r0, r3, 3
/* 80169678 001652D8  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 8016967C 001652DC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80169680 001652E0  7F FF 02 14 */	add r31, r31, r0
/* 80169684 001652E4  7F E3 FB 78 */	mr r3, r31
/* 80169688 001652E8  4B E9 A9 79 */	bl memcpy
/* 8016968C 001652EC  7C 1E F8 50 */	subf r0, r30, r31
/* 80169690 001652F0  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80169694 001652F4  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80169698 001652F8  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8016969C 001652FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801696A0 00165300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801696A4 00165304  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801696A8 00165308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801696AC 0016530C  7C 08 03 A6 */	mtlr r0
/* 801696B0 00165310  38 21 00 20 */	addi r1, r1, 0x20
/* 801696B4 00165314  4E 80 00 20 */	blr

.global lbl_801696B8
lbl_801696B8:
/* 801696B8 00165318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801696BC 0016531C  7C 08 02 A6 */	mflr r0
/* 801696C0 00165320  90 01 00 24 */	stw r0, 0x24(r1)
/* 801696C4 00165324  39 61 00 20 */	addi r11, r1, 0x20
/* 801696C8 00165328  48 05 DA 61 */	bl _savegpr_27
/* 801696CC 0016532C  7C 9B 23 78 */	mr r27, r4
/* 801696D0 00165330  7C BC 2B 78 */	mr r28, r5
/* 801696D4 00165334  4B FF E3 5D */	bl func_80167A30
/* 801696D8 00165338  2C 03 00 00 */	cmpwi r3, 0
/* 801696DC 0016533C  7C 7E 1B 78 */	mr r30, r3
/* 801696E0 00165340  40 80 00 0C */	bge lbl_801696EC
/* 801696E4 00165344  38 60 FF FF */	li r3, -1
/* 801696E8 00165348  48 00 00 8C */	b lbl_80169774
lbl_801696EC:
/* 801696EC 0016534C  4B FF B5 19 */	bl func_80164C04
/* 801696F0 00165350  2C 03 00 00 */	cmpwi r3, 0
/* 801696F4 00165354  40 82 00 0C */	bne lbl_80169700
/* 801696F8 00165358  38 60 FF FE */	li r3, -2
/* 801696FC 0016535C  48 00 00 78 */	b lbl_80169774
lbl_80169700:
/* 80169700 00165360  7F 63 DB 78 */	mr r3, r27
/* 80169704 00165364  4B FF FE 09 */	bl func_8016950C
/* 80169708 00165368  7C 7F 1B 78 */	mr r31, r3
/* 8016970C 0016536C  48 0F 48 C5 */	bl func_8025DFD0
/* 80169710 00165370  7F E4 FB 78 */	mr r4, r31
/* 80169714 00165374  48 0F 48 AD */	bl func_8025DFC0
/* 80169718 00165378  2C 03 00 00 */	cmpwi r3, 0
/* 8016971C 0016537C  7C 7D 1B 78 */	mr r29, r3
/* 80169720 00165380  40 82 00 0C */	bne lbl_8016972C
/* 80169724 00165384  38 60 FF FF */	li r3, -1
/* 80169728 00165388  48 00 00 4C */	b lbl_80169774
lbl_8016972C:
/* 8016972C 0016538C  7F 63 DB 78 */	mr r3, r27
/* 80169730 00165390  7F A4 EB 78 */	mr r4, r29
/* 80169734 00165394  4B FF FE 2D */	bl func_80169560
/* 80169738 00165398  7F A3 EB 78 */	mr r3, r29
/* 8016973C 0016539C  7F E4 FB 78 */	mr r4, r31
/* 80169740 001653A0  4B FF FB 29 */	bl func_80169268
/* 80169744 001653A4  7C 7F 1B 78 */	mr r31, r3
/* 80169748 001653A8  48 0F 48 89 */	bl func_8025DFD0
/* 8016974C 001653AC  7F A4 EB 78 */	mr r4, r29
/* 80169750 001653B0  48 0F 48 79 */	bl func_8025DFC8
/* 80169754 001653B4  2C 1F 00 00 */	cmpwi r31, 0
/* 80169758 001653B8  41 82 00 0C */	beq lbl_80169764
/* 8016975C 001653BC  38 60 FF FF */	li r3, -1
/* 80169760 001653C0  48 00 00 14 */	b lbl_80169774
lbl_80169764:
/* 80169764 001653C4  7F C3 F3 78 */	mr r3, r30
/* 80169768 001653C8  7F 84 E3 78 */	mr r4, r28
/* 8016976C 001653CC  4B FF FC 45 */	bl func_801693B0
/* 80169770 001653D0  38 60 00 00 */	li r3, 0
lbl_80169774:
/* 80169774 001653D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80169778 001653D8  48 05 D9 FD */	bl _restgpr_27
/* 8016977C 001653DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80169780 001653E0  7C 08 03 A6 */	mtlr r0
/* 80169784 001653E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80169788 001653E8  4E 80 00 20 */	blr

.global func_8016978C
func_8016978C:
/* 8016978C 001653EC  38 A0 00 01 */	li r5, 1
/* 80169790 001653F0  38 6D 9E 78 */	addi r3, r13, lbl_8063F138-_SDA_BASE_
/* 80169794 001653F4  38 80 00 04 */	li r4, 4
/* 80169798 001653F8  38 00 00 00 */	li r0, 0
/* 8016979C 001653FC  98 AD 9E 78 */	stb r5, lbl_8063F138-_SDA_BASE_(r13)
/* 801697A0 00165400  B0 83 00 02 */	sth r4, 2(r3)
/* 801697A4 00165404  98 03 00 04 */	stb r0, 4(r3)
/* 801697A8 00165408  4E 80 00 20 */	blr