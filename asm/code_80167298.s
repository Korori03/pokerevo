.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

func_80167298:
/* 80167298 00162EF8  7C A3 2B 78 */	mr r3, r5
/* 8016729C 00162EFC  4E 80 00 20 */	blr
/* 801672A0 00162F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801672A4 00162F04  7C 08 02 A6 */	mflr r0
/* 801672A8 00162F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 801672AC 00162F0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801672B0 00162F10  3F E0 80 49 */	lis r31, lbl_8048C928@ha
/* 801672B4 00162F14  38 7F C9 28 */	addi r3, r31, lbl_8048C928@l
/* 801672B8 00162F18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801672BC 00162F1C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801672C0 00162F20  7C 9D 23 78 */	mr r29, r4
/* 801672C4 00162F24  80 8D 80 10 */	lwz r4, lbl_8063D2D0-_SDA_BASE_(r13)
/* 801672C8 00162F28  48 06 70 09 */	bl strcpy
/* 801672CC 00162F2C  38 7F C9 28 */	addi r3, r31, -14040
/* 801672D0 00162F30  48 05 F8 95 */	bl strlen
/* 801672D4 00162F34  3B FF C9 28 */	addi r31, r31, -14040
/* 801672D8 00162F38  7F DF 1A 14 */	add r30, r31, r3
/* 801672DC 00162F3C  4B EF 18 C9 */	bl VMBASEIsPageValid
/* 801672E0 00162F40  3C 80 80 42 */	lis r4, lbl_8041F390@ha
/* 801672E4 00162F44  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 801672E8 00162F48  7F C3 F3 78 */	mr r3, r30
/* 801672EC 00162F4C  38 84 F3 90 */	addi r4, r4, lbl_8041F390@l
/* 801672F0 00162F50  4C C6 31 82 */	crclr 6
/* 801672F4 00162F54  48 06 58 09 */	bl sprintf
/* 801672F8 00162F58  7F E3 FB 78 */	mr r3, r31
/* 801672FC 00162F5C  48 05 F8 69 */	bl strlen
/* 80167300 00162F60  7F DF 1A 14 */	add r30, r31, r3
/* 80167304 00162F64  48 18 51 45 */	bl SCGetLanguage
/* 80167308 00162F68  3C 80 80 42 */	lis r4, lbl_8041F39C@ha
/* 8016730C 00162F6C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80167310 00162F70  7F C3 F3 78 */	mr r3, r30
/* 80167314 00162F74  38 84 F3 9C */	addi r4, r4, lbl_8041F39C@l
/* 80167318 00162F78  4C C6 31 82 */	crclr 6
/* 8016731C 00162F7C  48 06 57 E1 */	bl sprintf
/* 80167320 00162F80  7F E3 FB 78 */	mr r3, r31
/* 80167324 00162F84  48 05 F8 41 */	bl strlen
/* 80167328 00162F88  38 63 00 01 */	addi r3, r3, 1
/* 8016732C 00162F8C  7C 03 E8 40 */	cmplw r3, r29
/* 80167330 00162F90  40 81 00 08 */	ble lbl_80167338
/* 80167334 00162F94  7F A3 EB 78 */	mr r3, r29
lbl_80167338:
/* 80167338 00162F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016733C 00162F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80167340 00162FA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80167344 00162FA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80167348 00162FA8  7C 08 03 A6 */	mtlr r0
/* 8016734C 00162FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80167350 00162FB0  4E 80 00 20 */	blr
/* 80167354 00162FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80167358 00162FB8  7C 08 02 A6 */	mflr r0
/* 8016735C 00162FBC  3C 60 80 49 */	lis r3, lbl_8048C928@ha
/* 80167360 00162FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80167364 00162FC4  38 63 C9 28 */	addi r3, r3, lbl_8048C928@l
/* 80167368 00162FC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016736C 00162FCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80167370 00162FD0  7C BE 2B 78 */	mr r30, r5
/* 80167374 00162FD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80167378 00162FD8  7C 9D 23 78 */	mr r29, r4
/* 8016737C 00162FDC  48 05 F7 E9 */	bl strlen
/* 80167380 00162FE0  3B E3 00 01 */	addi r31, r3, 1
/* 80167384 00162FE4  7C 1F F0 40 */	cmplw r31, r30
/* 80167388 00162FE8  40 81 00 08 */	ble lbl_80167390
/* 8016738C 00162FEC  7F DF F3 78 */	mr r31, r30
lbl_80167390:
/* 80167390 00162FF0  3C 80 80 49 */	lis r4, lbl_8048C928@ha
/* 80167394 00162FF4  7F A3 EB 78 */	mr r3, r29
/* 80167398 00162FF8  7F E5 FB 78 */	mr r5, r31
/* 8016739C 00162FFC  38 84 C9 28 */	addi r4, r4, lbl_8048C928@l
/* 801673A0 00163000  4B E9 CC 61 */	bl memcpy
/* 801673A4 00163004  7F E3 FB 78 */	mr r3, r31
/* 801673A8 00163008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801673AC 0016300C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801673B0 00163010  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801673B4 00163014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801673B8 00163018  7C 08 03 A6 */	mtlr r0
/* 801673BC 0016301C  38 21 00 20 */	addi r1, r1, 0x20
/* 801673C0 00163020  4E 80 00 20 */	blr
/* 801673C4 00163024  28 04 00 04 */	cmplwi r4, 4
/* 801673C8 00163028  38 60 00 04 */	li r3, 4
/* 801673CC 0016302C  4C 80 00 20 */	bgelr
/* 801673D0 00163030  7C 83 23 78 */	mr r3, r4
/* 801673D4 00163034  4E 80 00 20 */	blr
/* 801673D8 00163038  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801673DC 0016303C  7C 08 02 A6 */	mflr r0
/* 801673E0 00163040  90 01 00 24 */	stw r0, 0x24(r1)
/* 801673E4 00163044  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801673E8 00163048  7C 9F 23 78 */	mr r31, r4
/* 801673EC 0016304C  48 00 13 E5 */	bl func_801687D0
/* 801673F0 00163050  90 61 00 08 */	stw r3, 8(r1)
/* 801673F4 00163054  7F E3 FB 78 */	mr r3, r31
/* 801673F8 00163058  38 81 00 08 */	addi r4, r1, 8
/* 801673FC 0016305C  38 A0 00 04 */	li r5, 4
/* 80167400 00163060  4B E9 CC 01 */	bl memcpy
/* 80167404 00163064  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80167408 00163068  38 60 00 04 */	li r3, 4
/* 8016740C 0016306C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80167410 00163070  7C 08 03 A6 */	mtlr r0
/* 80167414 00163074  38 21 00 20 */	addi r1, r1, 0x20
/* 80167418 00163078  4E 80 00 20 */	blr
/* 8016741C 0016307C  28 04 00 08 */	cmplwi r4, 8
/* 80167420 00163080  38 60 00 08 */	li r3, 8
/* 80167424 00163084  4C 80 00 20 */	bgelr
/* 80167428 00163088  7C 83 23 78 */	mr r3, r4
/* 8016742C 0016308C  4E 80 00 20 */	blr
/* 80167430 00163090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80167434 00163094  7C 08 02 A6 */	mflr r0
/* 80167438 00163098  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016743C 0016309C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80167440 001630A0  7C 9F 23 78 */	mr r31, r4
/* 80167444 001630A4  48 00 16 B9 */	bl func_80168AFC
/* 80167448 001630A8  90 61 00 08 */	stw r3, 8(r1)
/* 8016744C 001630AC  48 00 16 C1 */	bl func_80168B0C
/* 80167450 001630B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80167454 001630B4  7F E3 FB 78 */	mr r3, r31
/* 80167458 001630B8  38 81 00 08 */	addi r4, r1, 8
/* 8016745C 001630BC  38 A0 00 08 */	li r5, 8
/* 80167460 001630C0  4B E9 CB A1 */	bl memcpy
/* 80167464 001630C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80167468 001630C8  38 60 00 08 */	li r3, 8
/* 8016746C 001630CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80167470 001630D0  7C 08 03 A6 */	mtlr r0
/* 80167474 001630D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80167478 001630D8  4E 80 00 20 */	blr
/* 8016747C 001630DC  28 04 06 EC */	cmplwi r4, 0x6ec
/* 80167480 001630E0  38 60 06 EC */	li r3, 0x6ec
/* 80167484 001630E4  4C 80 00 20 */	bgelr
/* 80167488 001630E8  7C 83 23 78 */	mr r3, r4
/* 8016748C 001630EC  4E 80 00 20 */	blr
/* 80167490 001630F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167494 001630F4  7C 08 02 A6 */	mflr r0
/* 80167498 001630F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016749C 001630FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801674A0 00163100  93 C1 00 08 */	stw r30, 8(r1)
/* 801674A4 00163104  7C 9E 23 78 */	mr r30, r4
/* 801674A8 00163108  48 00 14 F9 */	bl func_801689A0
/* 801674AC 0016310C  7C 7F 1B 78 */	mr r31, r3
/* 801674B0 00163110  48 00 14 F1 */	bl func_801689A0
/* 801674B4 00163114  48 00 16 B9 */	bl func_80168B6C
/* 801674B8 00163118  7F C3 F3 78 */	mr r3, r30
/* 801674BC 0016311C  7F E4 FB 78 */	mr r4, r31
/* 801674C0 00163120  38 A0 06 EC */	li r5, 0x6ec
/* 801674C4 00163124  4B E9 CB 3D */	bl memcpy
/* 801674C8 00163128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801674CC 0016312C  38 60 06 EC */	li r3, 0x6ec
/* 801674D0 00163130  83 C1 00 08 */	lwz r30, 8(r1)
/* 801674D4 00163134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801674D8 00163138  7C 08 03 A6 */	mtlr r0
/* 801674DC 0016313C  38 21 00 10 */	addi r1, r1, 0x10
/* 801674E0 00163140  4E 80 00 20 */	blr
/* 801674E4 00163144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801674E8 00163148  7C 08 02 A6 */	mflr r0
/* 801674EC 0016314C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801674F0 00163150  39 61 00 20 */	addi r11, r1, 0x20
/* 801674F4 00163154  48 05 FC 35 */	bl _savegpr_27
/* 801674F8 00163158  7C 7B 1B 78 */	mr r27, r3
/* 801674FC 0016315C  7C 9C 23 78 */	mr r28, r4
/* 80167500 00163160  7C BD 2B 78 */	mr r29, r5
/* 80167504 00163164  4B FF B6 6D */	bl func_80162B70
/* 80167508 00163168  2C 03 00 01 */	cmpwi r3, 1
/* 8016750C 0016316C  40 82 00 1C */	bne lbl_80167528
/* 80167510 00163170  38 60 00 00 */	li r3, 0
/* 80167514 00163174  48 11 27 F1 */	bl VIEnableDimming
/* 80167518 00163178  80 6D A3 40 */	lwz r3, lbl_8063F600-_SDA_BASE_(r13)
/* 8016751C 0016317C  48 0B D0 6D */	bl func_80224588
/* 80167520 00163180  38 60 00 01 */	li r3, 1
/* 80167524 00163184  48 11 27 E1 */	bl VIEnableDimming
lbl_80167528:
/* 80167528 00163188  3F E0 80 42 */	lis r31, lbl_8041F444@ha
/* 8016752C 0016318C  3B C0 00 00 */	li r30, 0
/* 80167530 00163190  3B FF F4 44 */	addi r31, r31, lbl_8041F444@l
/* 80167534 00163194  48 00 00 5C */	b lbl_80167590
lbl_80167538:
/* 80167538 00163198  80 9F 00 00 */	lwz r4, 0(r31)
/* 8016753C 0016319C  7F 83 E3 78 */	mr r3, r28
/* 80167540 001631A0  48 06 6F 0D */	bl strcmp
/* 80167544 001631A4  2C 03 00 00 */	cmpwi r3, 0
/* 80167548 001631A8  40 82 00 40 */	bne lbl_80167588
/* 8016754C 001631AC  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 80167550 001631B0  3C 60 80 42 */	lis r3, lbl_8041F444@ha
/* 80167554 001631B4  38 63 F4 44 */	addi r3, r3, lbl_8041F444@l
/* 80167558 001631B8  7C 63 02 14 */	add r3, r3, r0
/* 8016755C 001631BC  81 83 00 04 */	lwz r12, 4(r3)
/* 80167560 001631C0  2C 0C 00 00 */	cmpwi r12, 0
/* 80167564 001631C4  41 82 00 1C */	beq lbl_80167580
/* 80167568 001631C8  7F 63 DB 78 */	mr r3, r27
/* 8016756C 001631CC  7F 84 E3 78 */	mr r4, r28
/* 80167570 001631D0  7F A5 EB 78 */	mr r5, r29
/* 80167574 001631D4  7D 89 03 A6 */	mtctr r12
/* 80167578 001631D8  4E 80 04 21 */	bctrl
/* 8016757C 001631DC  48 00 00 24 */	b lbl_801675A0
lbl_80167580:
/* 80167580 001631E0  38 60 FF FF */	li r3, -1
/* 80167584 001631E4  48 00 00 1C */	b lbl_801675A0
lbl_80167588:
/* 80167588 001631E8  3B FF 00 0C */	addi r31, r31, 0xc
/* 8016758C 001631EC  3B DE 00 01 */	addi r30, r30, 1
lbl_80167590:
/* 80167590 001631F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80167594 001631F4  2C 00 00 00 */	cmpwi r0, 0
/* 80167598 001631F8  40 82 FF A0 */	bne lbl_80167538
/* 8016759C 001631FC  38 60 FF FF */	li r3, -1
lbl_801675A0:
/* 801675A0 00163200  39 61 00 20 */	addi r11, r1, 0x20
/* 801675A4 00163204  48 05 FB D1 */	bl _restgpr_27
/* 801675A8 00163208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801675AC 0016320C  7C 08 03 A6 */	mtlr r0
/* 801675B0 00163210  38 21 00 20 */	addi r1, r1, 0x20
/* 801675B4 00163214  4E 80 00 20 */	blr
/* 801675B8 00163218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801675BC 0016321C  7C 08 02 A6 */	mflr r0
/* 801675C0 00163220  90 01 00 24 */	stw r0, 0x24(r1)
/* 801675C4 00163224  39 61 00 20 */	addi r11, r1, 0x20
/* 801675C8 00163228  48 05 FB 5D */	bl _savegpr_26
/* 801675CC 0016322C  3F E0 80 42 */	lis r31, lbl_8041F444@ha
/* 801675D0 00163230  7C 7A 1B 78 */	mr r26, r3
/* 801675D4 00163234  7C 9B 23 78 */	mr r27, r4
/* 801675D8 00163238  7C BC 2B 78 */	mr r28, r5
/* 801675DC 0016323C  7C DD 33 78 */	mr r29, r6
/* 801675E0 00163240  3B FF F4 44 */	addi r31, r31, lbl_8041F444@l
/* 801675E4 00163244  3B C0 00 00 */	li r30, 0
/* 801675E8 00163248  48 00 00 60 */	b lbl_80167648
lbl_801675EC:
/* 801675EC 0016324C  80 9F 00 00 */	lwz r4, 0(r31)
/* 801675F0 00163250  7F 63 DB 78 */	mr r3, r27
/* 801675F4 00163254  48 06 6E 59 */	bl strcmp
/* 801675F8 00163258  2C 03 00 00 */	cmpwi r3, 0
/* 801675FC 0016325C  40 82 00 44 */	bne lbl_80167640
/* 80167600 00163260  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 80167604 00163264  3C 60 80 42 */	lis r3, lbl_8041F444@ha
/* 80167608 00163268  38 63 F4 44 */	addi r3, r3, lbl_8041F444@l
/* 8016760C 0016326C  7C 63 02 14 */	add r3, r3, r0
/* 80167610 00163270  81 83 00 08 */	lwz r12, 8(r3)
/* 80167614 00163274  2C 0C 00 00 */	cmpwi r12, 0
/* 80167618 00163278  41 82 00 20 */	beq lbl_80167638
/* 8016761C 0016327C  7F 43 D3 78 */	mr r3, r26
/* 80167620 00163280  7F 64 DB 78 */	mr r4, r27
/* 80167624 00163284  7F 85 E3 78 */	mr r5, r28
/* 80167628 00163288  7F A6 EB 78 */	mr r6, r29
/* 8016762C 0016328C  7D 89 03 A6 */	mtctr r12
/* 80167630 00163290  4E 80 04 21 */	bctrl
/* 80167634 00163294  48 00 00 24 */	b lbl_80167658
lbl_80167638:
/* 80167638 00163298  38 60 FF FF */	li r3, -1
/* 8016763C 0016329C  48 00 00 1C */	b lbl_80167658
lbl_80167640:
/* 80167640 001632A0  3B FF 00 0C */	addi r31, r31, 0xc
/* 80167644 001632A4  3B DE 00 01 */	addi r30, r30, 1
lbl_80167648:
/* 80167648 001632A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8016764C 001632AC  2C 00 00 00 */	cmpwi r0, 0
/* 80167650 001632B0  40 82 FF 9C */	bne lbl_801675EC
/* 80167654 001632B4  38 60 FF FF */	li r3, -1
lbl_80167658:
/* 80167658 001632B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8016765C 001632BC  48 05 FB 15 */	bl _restgpr_26
/* 80167660 001632C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80167664 001632C4  7C 08 03 A6 */	mtlr r0
/* 80167668 001632C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8016766C 001632CC  4E 80 00 20 */	blr
/* 80167670 001632D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80167674 001632D4  7C 08 02 A6 */	mflr r0
/* 80167678 001632D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8016767C 001632DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80167680 001632E0  48 05 FA A9 */	bl _savegpr_27
/* 80167684 001632E4  3F E0 80 42 */	lis r31, lbl_8041F500@ha
/* 80167688 001632E8  7C 7B 1B 78 */	mr r27, r3
/* 8016768C 001632EC  7C 9C 23 78 */	mr r28, r4
/* 80167690 001632F0  3B A0 00 00 */	li r29, 0
/* 80167694 001632F4  3B FF F5 00 */	addi r31, r31, lbl_8041F500@l
/* 80167698 001632F8  48 00 00 74 */	b lbl_8016770C
lbl_8016769C:
/* 8016769C 001632FC  83 DF 00 00 */	lwz r30, 0(r31)
/* 801676A0 00163300  7F 63 DB 78 */	mr r3, r27
/* 801676A4 00163304  7F C4 F3 78 */	mr r4, r30
/* 801676A8 00163308  48 06 6D A5 */	bl strcmp
/* 801676AC 0016330C  2C 03 00 00 */	cmpwi r3, 0
/* 801676B0 00163310  41 82 00 18 */	beq lbl_801676C8
/* 801676B4 00163314  7F C4 F3 78 */	mr r4, r30
/* 801676B8 00163318  38 6D 83 58 */	addi r3, r13, lbl_8063D618-_SDA_BASE_
/* 801676BC 0016331C  48 06 6D 91 */	bl strcmp
/* 801676C0 00163320  2C 03 00 00 */	cmpwi r3, 0
/* 801676C4 00163324  40 82 00 40 */	bne lbl_80167704
lbl_801676C8:
/* 801676C8 00163328  3C 60 80 42 */	lis r3, lbl_8041F500@ha
/* 801676CC 0016332C  57 A0 20 36 */	slwi r0, r29, 4
/* 801676D0 00163330  38 63 F5 00 */	addi r3, r3, lbl_8041F500@l
/* 801676D4 00163334  7C A3 02 14 */	add r5, r3, r0
/* 801676D8 00163338  81 85 00 04 */	lwz r12, 4(r5)
/* 801676DC 0016333C  2C 0C 00 00 */	cmpwi r12, 0
/* 801676E0 00163340  41 82 00 1C */	beq lbl_801676FC
/* 801676E4 00163344  7F 63 DB 78 */	mr r3, r27
/* 801676E8 00163348  7F 84 E3 78 */	mr r4, r28
/* 801676EC 0016334C  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 801676F0 00163350  7D 89 03 A6 */	mtctr r12
/* 801676F4 00163354  4E 80 04 21 */	bctrl
/* 801676F8 00163358  48 00 00 24 */	b lbl_8016771C
lbl_801676FC:
/* 801676FC 0016335C  38 60 FF FF */	li r3, -1
/* 80167700 00163360  48 00 00 1C */	b lbl_8016771C
lbl_80167704:
/* 80167704 00163364  3B FF 00 10 */	addi r31, r31, 0x10
/* 80167708 00163368  3B BD 00 01 */	addi r29, r29, 1
lbl_8016770C:
/* 8016770C 0016336C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80167710 00163370  2C 00 00 00 */	cmpwi r0, 0
/* 80167714 00163374  40 82 FF 88 */	bne lbl_8016769C
/* 80167718 00163378  38 60 FF FF */	li r3, -1
lbl_8016771C:
/* 8016771C 0016337C  39 61 00 20 */	addi r11, r1, 0x20
/* 80167720 00163380  48 05 FA 55 */	bl _restgpr_27
/* 80167724 00163384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80167728 00163388  7C 08 03 A6 */	mtlr r0
/* 8016772C 0016338C  38 21 00 20 */	addi r1, r1, 0x20
/* 80167730 00163390  4E 80 00 20 */	blr
/* 80167734 00163394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80167738 00163398  7C 08 02 A6 */	mflr r0
/* 8016773C 0016339C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80167740 001633A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80167744 001633A4  48 05 F9 E1 */	bl _savegpr_26
/* 80167748 001633A8  3F E0 80 42 */	lis r31, lbl_8041F500@ha
/* 8016774C 001633AC  7C 7A 1B 78 */	mr r26, r3
/* 80167750 001633B0  7C 9B 23 78 */	mr r27, r4
/* 80167754 001633B4  7C BC 2B 78 */	mr r28, r5
/* 80167758 001633B8  3B FF F5 00 */	addi r31, r31, lbl_8041F500@l
/* 8016775C 001633BC  3B A0 00 00 */	li r29, 0
/* 80167760 001633C0  48 00 00 78 */	b lbl_801677D8
lbl_80167764:
/* 80167764 001633C4  83 DF 00 00 */	lwz r30, 0(r31)
/* 80167768 001633C8  7F 43 D3 78 */	mr r3, r26
/* 8016776C 001633CC  7F C4 F3 78 */	mr r4, r30
/* 80167770 001633D0  48 06 6C DD */	bl strcmp
/* 80167774 001633D4  2C 03 00 00 */	cmpwi r3, 0
/* 80167778 001633D8  41 82 00 18 */	beq lbl_80167790
/* 8016777C 001633DC  7F C4 F3 78 */	mr r4, r30
/* 80167780 001633E0  38 6D 83 58 */	addi r3, r13, lbl_8063D618-_SDA_BASE_
/* 80167784 001633E4  48 06 6C C9 */	bl strcmp
/* 80167788 001633E8  2C 03 00 00 */	cmpwi r3, 0
/* 8016778C 001633EC  40 82 00 44 */	bne lbl_801677D0
lbl_80167790:
/* 80167790 001633F0  3C 60 80 42 */	lis r3, lbl_8041F500@ha
/* 80167794 001633F4  57 A0 20 36 */	slwi r0, r29, 4
/* 80167798 001633F8  38 63 F5 00 */	addi r3, r3, lbl_8041F500@l
/* 8016779C 001633FC  7C C3 02 14 */	add r6, r3, r0
/* 801677A0 00163400  81 86 00 08 */	lwz r12, 8(r6)
/* 801677A4 00163404  2C 0C 00 00 */	cmpwi r12, 0
/* 801677A8 00163408  41 82 00 20 */	beq lbl_801677C8
/* 801677AC 0016340C  7F 43 D3 78 */	mr r3, r26
/* 801677B0 00163410  7F 64 DB 78 */	mr r4, r27
/* 801677B4 00163414  7F 85 E3 78 */	mr r5, r28
/* 801677B8 00163418  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 801677BC 0016341C  7D 89 03 A6 */	mtctr r12
/* 801677C0 00163420  4E 80 04 21 */	bctrl
/* 801677C4 00163424  48 00 00 24 */	b lbl_801677E8
lbl_801677C8:
/* 801677C8 00163428  38 60 FF FF */	li r3, -1
/* 801677CC 0016342C  48 00 00 1C */	b lbl_801677E8
lbl_801677D0:
/* 801677D0 00163430  3B FF 00 10 */	addi r31, r31, 0x10
/* 801677D4 00163434  3B BD 00 01 */	addi r29, r29, 1
lbl_801677D8:
/* 801677D8 00163438  80 1F 00 00 */	lwz r0, 0(r31)
/* 801677DC 0016343C  2C 00 00 00 */	cmpwi r0, 0
/* 801677E0 00163440  40 82 FF 84 */	bne lbl_80167764
/* 801677E4 00163444  38 60 FF FF */	li r3, -1
lbl_801677E8:
/* 801677E8 00163448  39 61 00 20 */	addi r11, r1, 0x20
/* 801677EC 0016344C  48 05 F9 85 */	bl _restgpr_26
/* 801677F0 00163450  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801677F4 00163454  7C 08 03 A6 */	mtlr r0
/* 801677F8 00163458  38 21 00 20 */	addi r1, r1, 0x20
/* 801677FC 0016345C  4E 80 00 20 */	blr

.global func_80167800
func_80167800:
/* 80167800 00163460  38 A0 00 01 */	li r5, 1
/* 80167804 00163464  38 6D 9E 10 */	addi r3, r13, lbl_8063F0D0-_SDA_BASE_
/* 80167808 00163468  38 80 00 04 */	li r4, 4
/* 8016780C 0016346C  38 00 00 00 */	li r0, 0
/* 80167810 00163470  98 AD 9E 10 */	stb r5, lbl_8063F0D0-_SDA_BASE_(r13)
/* 80167814 00163474  B0 83 00 02 */	sth r4, 2(r3)
/* 80167818 00163478  98 03 00 04 */	stb r0, 4(r3)
/* 8016781C 0016347C  4E 80 00 20 */	blr