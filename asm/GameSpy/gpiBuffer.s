.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global gpiAppendCharToBuffer
gpiAppendCharToBuffer:
/* 8033F31C 0033AF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F320 0033AF80  7C 08 02 A6 */	mflr r0
/* 8033F324 0033AF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F328 0033AF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8033F32C 0033AF8C  4B E8 7D FD */	bl _savegpr_27
/* 8033F330 0033AF90  83 E4 00 08 */	lwz r31, 8(r4)
/* 8033F334 0033AF94  7C 7B 1B 78 */	mr r27, r3
/* 8033F338 0033AF98  83 C4 00 04 */	lwz r30, 4(r4)
/* 8033F33C 0033AF9C  7C 9C 23 78 */	mr r28, r4
/* 8033F340 0033AFA0  80 C4 00 00 */	lwz r6, 0(r4)
/* 8033F344 0033AFA4  7C BD 2B 78 */	mr r29, r5
/* 8033F348 0033AFA8  7C 1E F8 00 */	cmpw r30, r31
/* 8033F34C 0033AFAC  40 82 00 38 */	bne lbl_8033F384
/* 8033F350 0033AFB0  38 9E 40 01 */	addi r4, r30, 0x4001
/* 8033F354 0033AFB4  7C C3 33 78 */	mr r3, r6
/* 8033F358 0033AFB8  3B DE 40 00 */	addi r30, r30, 0x4000
/* 8033F35C 0033AFBC  4B FF 9F C9 */	bl gsirealloc
/* 8033F360 0033AFC0  2C 03 00 00 */	cmpwi r3, 0
/* 8033F364 0033AFC4  7C 66 1B 78 */	mr r6, r3
/* 8033F368 0033AFC8  40 82 00 1C */	bne lbl_8033F384
/* 8033F36C 0033AFCC  3C 80 80 45 */	lis r4, lbl_8044A7A8@ha
/* 8033F370 0033AFD0  7F 63 DB 78 */	mr r3, r27
/* 8033F374 0033AFD4  38 84 A7 A8 */	addi r4, r4, lbl_8044A7A8@l
/* 8033F378 0033AFD8  48 00 90 E1 */	bl gpiSetErrorString
/* 8033F37C 0033AFDC  38 60 00 01 */	li r3, 1
/* 8033F380 0033AFE0  48 00 00 2C */	b lbl_8033F3AC
lbl_8033F384:
/* 8033F384 0033AFE4  7F A6 F9 AE */	stbx r29, r6, r31
/* 8033F388 0033AFE8  7C 9F 32 14 */	add r4, r31, r6
/* 8033F38C 0033AFEC  38 00 00 00 */	li r0, 0
/* 8033F390 0033AFF0  38 60 00 00 */	li r3, 0
/* 8033F394 0033AFF4  98 04 00 01 */	stb r0, 1(r4)
/* 8033F398 0033AFF8  80 9C 00 08 */	lwz r4, 8(r28)
/* 8033F39C 0033AFFC  93 DC 00 04 */	stw r30, 4(r28)
/* 8033F3A0 0033B000  38 04 00 01 */	addi r0, r4, 1
/* 8033F3A4 0033B004  90 1C 00 08 */	stw r0, 8(r28)
/* 8033F3A8 0033B008  90 DC 00 00 */	stw r6, 0(r28)
lbl_8033F3AC:
/* 8033F3AC 0033B00C  39 61 00 20 */	addi r11, r1, 0x20
/* 8033F3B0 0033B010  4B E8 7D C5 */	bl _restgpr_27
/* 8033F3B4 0033B014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F3B8 0033B018  7C 08 03 A6 */	mtlr r0
/* 8033F3BC 0033B01C  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F3C0 0033B020  4E 80 00 20 */	blr

.global gpiAppendStringToBufferLen
gpiAppendStringToBufferLen:
/* 8033F3C4 0033B024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033F3C8 0033B028  7C 08 02 A6 */	mflr r0
/* 8033F3CC 0033B02C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033F3D0 0033B030  39 61 00 30 */	addi r11, r1, 0x30
/* 8033F3D4 0033B034  4B E8 7D 4D */	bl _savegpr_25
/* 8033F3D8 0033B038  2C 05 00 00 */	cmpwi r5, 0
/* 8033F3DC 0033B03C  7C 79 1B 78 */	mr r25, r3
/* 8033F3E0 0033B040  7C 9A 23 78 */	mr r26, r4
/* 8033F3E4 0033B044  7C BB 2B 78 */	mr r27, r5
/* 8033F3E8 0033B048  7C DC 33 78 */	mr r28, r6
/* 8033F3EC 0033B04C  40 82 00 0C */	bne lbl_8033F3F8
/* 8033F3F0 0033B050  38 60 00 00 */	li r3, 0
/* 8033F3F4 0033B054  48 00 00 94 */	b lbl_8033F488
lbl_8033F3F8:
/* 8033F3F8 0033B058  83 E4 00 08 */	lwz r31, 8(r4)
/* 8033F3FC 0033B05C  83 C4 00 04 */	lwz r30, 4(r4)
/* 8033F400 0033B060  83 A4 00 00 */	lwz r29, 0(r4)
/* 8033F404 0033B064  7C 1F F0 50 */	subf r0, r31, r30
/* 8033F408 0033B068  7C 00 30 00 */	cmpw r0, r6
/* 8033F40C 0033B06C  40 80 00 48 */	bge lbl_8033F454
/* 8033F410 0033B070  2C 06 40 00 */	cmpwi r6, 0x4000
/* 8033F414 0033B074  38 00 40 00 */	li r0, 0x4000
/* 8033F418 0033B078  41 80 00 08 */	blt lbl_8033F420
/* 8033F41C 0033B07C  7F 80 E3 78 */	mr r0, r28
lbl_8033F420:
/* 8033F420 0033B080  7F DE 02 14 */	add r30, r30, r0
/* 8033F424 0033B084  7F A3 EB 78 */	mr r3, r29
/* 8033F428 0033B088  38 9E 00 01 */	addi r4, r30, 1
/* 8033F42C 0033B08C  4B FF 9E F9 */	bl gsirealloc
/* 8033F430 0033B090  2C 03 00 00 */	cmpwi r3, 0
/* 8033F434 0033B094  7C 7D 1B 78 */	mr r29, r3
/* 8033F438 0033B098  40 82 00 1C */	bne lbl_8033F454
/* 8033F43C 0033B09C  3C 80 80 45 */	lis r4, lbl_8044A7A8@ha
/* 8033F440 0033B0A0  7F 23 CB 78 */	mr r3, r25
/* 8033F444 0033B0A4  38 84 A7 A8 */	addi r4, r4, lbl_8044A7A8@l
/* 8033F448 0033B0A8  48 00 90 11 */	bl gpiSetErrorString
/* 8033F44C 0033B0AC  38 60 00 01 */	li r3, 1
/* 8033F450 0033B0B0  48 00 00 38 */	b lbl_8033F488
lbl_8033F454:
/* 8033F454 0033B0B4  7F 64 DB 78 */	mr r4, r27
/* 8033F458 0033B0B8  7F 85 E3 78 */	mr r5, r28
/* 8033F45C 0033B0BC  7C 7D FA 14 */	add r3, r29, r31
/* 8033F460 0033B0C0  4B CC 4B A1 */	bl memcpy
/* 8033F464 0033B0C4  7C 1F E2 14 */	add r0, r31, r28
/* 8033F468 0033B0C8  38 60 00 00 */	li r3, 0
/* 8033F46C 0033B0CC  7C 7D 01 AE */	stbx r3, r29, r0
/* 8033F470 0033B0D0  38 60 00 00 */	li r3, 0
/* 8033F474 0033B0D4  80 1A 00 08 */	lwz r0, 8(r26)
/* 8033F478 0033B0D8  93 DA 00 04 */	stw r30, 4(r26)
/* 8033F47C 0033B0DC  7C 00 E2 14 */	add r0, r0, r28
/* 8033F480 0033B0E0  90 1A 00 08 */	stw r0, 8(r26)
/* 8033F484 0033B0E4  93 BA 00 00 */	stw r29, 0(r26)
lbl_8033F488:
/* 8033F488 0033B0E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8033F48C 0033B0EC  4B E8 7C E1 */	bl func_801C716C
/* 8033F490 0033B0F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033F494 0033B0F4  7C 08 03 A6 */	mtlr r0
/* 8033F498 0033B0F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8033F49C 0033B0FC  4E 80 00 20 */	blr

.global gpiAppendStringToBuffer
gpiAppendStringToBuffer:
/* 8033F4A0 0033B100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F4A4 0033B104  7C 08 02 A6 */	mflr r0
/* 8033F4A8 0033B108  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F4AC 0033B10C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F4B0 0033B110  7C BF 2B 78 */	mr r31, r5
/* 8033F4B4 0033B114  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F4B8 0033B118  7C 9E 23 78 */	mr r30, r4
/* 8033F4BC 0033B11C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F4C0 0033B120  7C 7D 1B 78 */	mr r29, r3
/* 8033F4C4 0033B124  7F E3 FB 78 */	mr r3, r31
/* 8033F4C8 0033B128  4B E8 76 9D */	bl strlen
/* 8033F4CC 0033B12C  7C 66 1B 78 */	mr r6, r3
/* 8033F4D0 0033B130  7F A3 EB 78 */	mr r3, r29
/* 8033F4D4 0033B134  7F C4 F3 78 */	mr r4, r30
/* 8033F4D8 0033B138  7F E5 FB 78 */	mr r5, r31
/* 8033F4DC 0033B13C  4B FF FE E9 */	bl gpiAppendStringToBufferLen
/* 8033F4E0 0033B140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F4E4 0033B144  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F4E8 0033B148  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F4EC 0033B14C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F4F0 0033B150  7C 08 03 A6 */	mtlr r0
/* 8033F4F4 0033B154  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F4F8 0033B158  4E 80 00 20 */	blr

.global gpiAppendIntToBuffer
gpiAppendIntToBuffer:
/* 8033F4FC 0033B15C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F500 0033B160  7C 08 02 A6 */	mflr r0
/* 8033F504 0033B164  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F508 0033B168  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F50C 0033B16C  7C 9F 23 78 */	mr r31, r4
/* 8033F510 0033B170  38 8D 8F D8 */	addi r4, r13, lbl_8063E298-_SDA_BASE_
/* 8033F514 0033B174  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F518 0033B178  7C 7E 1B 78 */	mr r30, r3
/* 8033F51C 0033B17C  38 61 00 08 */	addi r3, r1, 8
/* 8033F520 0033B180  4C C6 31 82 */	crclr 6
/* 8033F524 0033B184  4B E8 D5 D9 */	bl func_801CCAFC
/* 8033F528 0033B188  38 61 00 08 */	addi r3, r1, 8
/* 8033F52C 0033B18C  4B E8 76 39 */	bl strlen
/* 8033F530 0033B190  7C 66 1B 78 */	mr r6, r3
/* 8033F534 0033B194  7F C3 F3 78 */	mr r3, r30
/* 8033F538 0033B198  7F E4 FB 78 */	mr r4, r31
/* 8033F53C 0033B19C  38 A1 00 08 */	addi r5, r1, 8
/* 8033F540 0033B1A0  4B FF FE 85 */	bl gpiAppendStringToBufferLen
/* 8033F544 0033B1A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F548 0033B1A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F54C 0033B1AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F550 0033B1B0  7C 08 03 A6 */	mtlr r0
/* 8033F554 0033B1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F558 0033B1B8  4E 80 00 20 */	blr

.global gpiSendData
gpiSendData:
/* 8033F55C 0033B1BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F560 0033B1C0  7C 08 02 A6 */	mflr r0
/* 8033F564 0033B1C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F568 0033B1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8033F56C 0033B1CC  4B E8 7B BD */	bl _savegpr_27
/* 8033F570 0033B1D0  7C 9C 23 78 */	mr r28, r4
/* 8033F574 0033B1D4  7C 7B 1B 78 */	mr r27, r3
/* 8033F578 0033B1D8  7C A4 2B 78 */	mr r4, r5
/* 8033F57C 0033B1DC  7C C5 33 78 */	mr r5, r6
/* 8033F580 0033B1E0  7C FD 3B 78 */	mr r29, r7
/* 8033F584 0033B1E4  7D 1E 43 78 */	mr r30, r8
/* 8033F588 0033B1E8  7D 3F 4B 78 */	mr r31, r9
/* 8033F58C 0033B1EC  7F 83 E3 78 */	mr r3, r28
/* 8033F590 0033B1F0  38 C0 00 00 */	li r6, 0
/* 8033F594 0033B1F4  4B FF 88 CD */	bl send
/* 8033F598 0033B1F8  2C 03 FF FF */	cmpwi r3, -1
/* 8033F59C 0033B1FC  40 82 00 80 */	bne lbl_8033F61C
/* 8033F5A0 0033B200  7F 83 E3 78 */	mr r3, r28
/* 8033F5A4 0033B204  4B FF 8A 05 */	bl GOAGetLastError
/* 8033F5A8 0033B208  2C 03 FF FA */	cmpwi r3, -6
/* 8033F5AC 0033B20C  41 82 00 60 */	beq lbl_8033F60C
/* 8033F5B0 0033B210  2C 03 FF E6 */	cmpwi r3, -26
/* 8033F5B4 0033B214  41 82 00 58 */	beq lbl_8033F60C
/* 8033F5B8 0033B218  2C 03 FF B4 */	cmpwi r3, -76
/* 8033F5BC 0033B21C  41 82 00 50 */	beq lbl_8033F60C
/* 8033F5C0 0033B220  88 1F 00 00 */	lbz r0, 0(r31)
/* 8033F5C4 0033B224  2C 00 00 50 */	cmpwi r0, 0x50
/* 8033F5C8 0033B228  40 82 00 18 */	bne lbl_8033F5E0
/* 8033F5CC 0033B22C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8033F5D0 0033B230  2C 00 00 52 */	cmpwi r0, 0x52
/* 8033F5D4 0033B234  40 82 00 0C */	bne lbl_8033F5E0
/* 8033F5D8 0033B238  38 60 00 03 */	li r3, 3
/* 8033F5DC 0033B23C  48 00 00 6C */	b lbl_8033F648
lbl_8033F5E0:
/* 8033F5E0 0033B240  3C A0 80 45 */	lis r5, lbl_8044A7B8@ha
/* 8033F5E4 0033B244  7F 63 DB 78 */	mr r3, r27
/* 8033F5E8 0033B248  38 A5 A7 B8 */	addi r5, r5, lbl_8044A7B8@l
/* 8033F5EC 0033B24C  38 80 00 05 */	li r4, 5
/* 8033F5F0 0033B250  48 00 8E 19 */	bl gpiSetError
/* 8033F5F4 0033B254  7F 63 DB 78 */	mr r3, r27
/* 8033F5F8 0033B258  38 80 00 03 */	li r4, 3
/* 8033F5FC 0033B25C  38 A0 00 00 */	li r5, 0
/* 8033F600 0033B260  48 00 06 69 */	bl gpiCallErrorCallback
/* 8033F604 0033B264  38 60 00 03 */	li r3, 3
/* 8033F608 0033B268  48 00 00 40 */	b lbl_8033F648
lbl_8033F60C:
/* 8033F60C 0033B26C  38 00 00 00 */	li r0, 0
/* 8033F610 0033B270  90 1E 00 00 */	stw r0, 0(r30)
/* 8033F614 0033B274  90 1D 00 00 */	stw r0, 0(r29)
/* 8033F618 0033B278  48 00 00 2C */	b lbl_8033F644
lbl_8033F61C:
/* 8033F61C 0033B27C  2C 03 00 00 */	cmpwi r3, 0
/* 8033F620 0033B280  40 82 00 18 */	bne lbl_8033F638
/* 8033F624 0033B284  38 60 00 00 */	li r3, 0
/* 8033F628 0033B288  38 00 00 01 */	li r0, 1
/* 8033F62C 0033B28C  90 7E 00 00 */	stw r3, 0(r30)
/* 8033F630 0033B290  90 1D 00 00 */	stw r0, 0(r29)
/* 8033F634 0033B294  48 00 00 10 */	b lbl_8033F644
lbl_8033F638:
/* 8033F638 0033B298  90 7E 00 00 */	stw r3, 0(r30)
/* 8033F63C 0033B29C  38 00 00 00 */	li r0, 0
/* 8033F640 0033B2A0  90 1D 00 00 */	stw r0, 0(r29)
lbl_8033F644:
/* 8033F644 0033B2A4  38 60 00 00 */	li r3, 0
lbl_8033F648:
/* 8033F648 0033B2A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8033F64C 0033B2AC  4B E8 7B 29 */	bl _restgpr_27
/* 8033F650 0033B2B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F654 0033B2B4  7C 08 03 A6 */	mtlr r0
/* 8033F658 0033B2B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F65C 0033B2BC  4E 80 00 20 */	blr

.global gpiSendOrBufferChar
gpiSendOrBufferChar:
/* 8033F660 0033B2C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F664 0033B2C4  7C 08 02 A6 */	mflr r0
/* 8033F668 0033B2C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F66C 0033B2CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F670 0033B2D0  7C 9F 23 78 */	mr r31, r4
/* 8033F674 0033B2D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F678 0033B2D8  7C 7E 1B 78 */	mr r30, r3
/* 8033F67C 0033B2DC  98 A1 00 08 */	stb r5, 8(r1)
/* 8033F680 0033B2E0  80 64 00 38 */	lwz r3, 0x38(r4)
/* 8033F684 0033B2E4  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8033F688 0033B2E8  7C 03 00 51 */	subf. r0, r3, r0
/* 8033F68C 0033B2EC  40 82 00 54 */	bne lbl_8033F6E0
/* 8033F690 0033B2F0  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 8033F694 0033B2F4  4B FF 68 55 */	bl ArrayLength
/* 8033F698 0033B2F8  2C 03 00 00 */	cmpwi r3, 0
/* 8033F69C 0033B2FC  40 82 00 44 */	bne lbl_8033F6E0
/* 8033F6A0 0033B300  80 9F 00 08 */	lwz r4, 8(r31)
/* 8033F6A4 0033B304  7F C3 F3 78 */	mr r3, r30
/* 8033F6A8 0033B308  38 A1 00 08 */	addi r5, r1, 8
/* 8033F6AC 0033B30C  38 E1 00 10 */	addi r7, r1, 0x10
/* 8033F6B0 0033B310  39 01 00 0C */	addi r8, r1, 0xc
/* 8033F6B4 0033B314  38 C0 00 01 */	li r6, 1
/* 8033F6B8 0033B318  39 2D 8F DC */	addi r9, r13, lbl_8063E29C-_SDA_BASE_
/* 8033F6BC 0033B31C  4B FF FE A1 */	bl gpiSendData
/* 8033F6C0 0033B320  2C 03 00 00 */	cmpwi r3, 0
/* 8033F6C4 0033B324  41 82 00 08 */	beq lbl_8033F6CC
/* 8033F6C8 0033B328  48 00 00 2C */	b lbl_8033F6F4
lbl_8033F6CC:
/* 8033F6CC 0033B32C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033F6D0 0033B330  2C 00 00 00 */	cmpwi r0, 0
/* 8033F6D4 0033B334  41 82 00 0C */	beq lbl_8033F6E0
/* 8033F6D8 0033B338  38 60 00 00 */	li r3, 0
/* 8033F6DC 0033B33C  48 00 00 18 */	b lbl_8033F6F4
lbl_8033F6E0:
/* 8033F6E0 0033B340  88 01 00 08 */	lbz r0, 8(r1)
/* 8033F6E4 0033B344  7F C3 F3 78 */	mr r3, r30
/* 8033F6E8 0033B348  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8033F6EC 0033B34C  7C 05 07 74 */	extsb r5, r0
/* 8033F6F0 0033B350  4B FF FC 2D */	bl gpiAppendCharToBuffer
lbl_8033F6F4:
/* 8033F6F4 0033B354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F6F8 0033B358  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F6FC 0033B35C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F700 0033B360  7C 08 03 A6 */	mtlr r0
/* 8033F704 0033B364  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F708 0033B368  4E 80 00 20 */	blr

.global gpiSendOrBufferStringLen
gpiSendOrBufferStringLen:
/* 8033F70C 0033B36C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033F710 0033B370  7C 08 02 A6 */	mflr r0
/* 8033F714 0033B374  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033F718 0033B378  39 61 00 30 */	addi r11, r1, 0x30
/* 8033F71C 0033B37C  4B E8 7A 0D */	bl _savegpr_27
/* 8033F720 0033B380  2C 06 00 00 */	cmpwi r6, 0
/* 8033F724 0033B384  7C DE 33 78 */	mr r30, r6
/* 8033F728 0033B388  7C 7B 1B 78 */	mr r27, r3
/* 8033F72C 0033B38C  7C 9C 23 78 */	mr r28, r4
/* 8033F730 0033B390  7C BD 2B 78 */	mr r29, r5
/* 8033F734 0033B394  3B E0 00 00 */	li r31, 0
/* 8033F738 0033B398  40 82 00 0C */	bne lbl_8033F744
/* 8033F73C 0033B39C  38 60 00 00 */	li r3, 0
/* 8033F740 0033B3A0  48 00 00 A0 */	b lbl_8033F7E0
lbl_8033F744:
/* 8033F744 0033B3A4  80 64 00 38 */	lwz r3, 0x38(r4)
/* 8033F748 0033B3A8  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8033F74C 0033B3AC  7C 03 00 51 */	subf. r0, r3, r0
/* 8033F750 0033B3B0  40 82 00 64 */	bne lbl_8033F7B4
/* 8033F754 0033B3B4  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 8033F758 0033B3B8  4B FF 67 91 */	bl ArrayLength
/* 8033F75C 0033B3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8033F760 0033B3C0  40 82 00 54 */	bne lbl_8033F7B4
lbl_8033F764:
/* 8033F764 0033B3C4  80 9C 00 08 */	lwz r4, 8(r28)
/* 8033F768 0033B3C8  7F 63 DB 78 */	mr r3, r27
/* 8033F76C 0033B3CC  7F C6 F3 78 */	mr r6, r30
/* 8033F770 0033B3D0  7C BD FA 14 */	add r5, r29, r31
/* 8033F774 0033B3D4  38 E1 00 0C */	addi r7, r1, 0xc
/* 8033F778 0033B3D8  39 01 00 08 */	addi r8, r1, 8
/* 8033F77C 0033B3DC  39 2D 8F DC */	addi r9, r13, lbl_8063E29C-_SDA_BASE_
/* 8033F780 0033B3E0  4B FF FD DD */	bl gpiSendData
/* 8033F784 0033B3E4  2C 03 00 00 */	cmpwi r3, 0
/* 8033F788 0033B3E8  41 82 00 08 */	beq lbl_8033F790
/* 8033F78C 0033B3EC  48 00 00 54 */	b lbl_8033F7E0
lbl_8033F790:
/* 8033F790 0033B3F0  80 01 00 08 */	lwz r0, 8(r1)
/* 8033F794 0033B3F4  2C 00 00 00 */	cmpwi r0, 0
/* 8033F798 0033B3F8  41 82 00 0C */	beq lbl_8033F7A4
/* 8033F79C 0033B3FC  7F FF 02 14 */	add r31, r31, r0
/* 8033F7A0 0033B400  7F C0 F0 50 */	subf r30, r0, r30
lbl_8033F7A4:
/* 8033F7A4 0033B404  2C 00 00 00 */	cmpwi r0, 0
/* 8033F7A8 0033B408  41 82 00 0C */	beq lbl_8033F7B4
/* 8033F7AC 0033B40C  2C 1E 00 00 */	cmpwi r30, 0
/* 8033F7B0 0033B410  40 82 FF B4 */	bne lbl_8033F764
lbl_8033F7B4:
/* 8033F7B4 0033B414  2C 1E 00 00 */	cmpwi r30, 0
/* 8033F7B8 0033B418  41 82 00 24 */	beq lbl_8033F7DC
/* 8033F7BC 0033B41C  7F 63 DB 78 */	mr r3, r27
/* 8033F7C0 0033B420  7F C6 F3 78 */	mr r6, r30
/* 8033F7C4 0033B424  38 9C 00 2C */	addi r4, r28, 0x2c
/* 8033F7C8 0033B428  7C BD FA 14 */	add r5, r29, r31
/* 8033F7CC 0033B42C  4B FF FB F9 */	bl gpiAppendStringToBufferLen
/* 8033F7D0 0033B430  2C 03 00 00 */	cmpwi r3, 0
/* 8033F7D4 0033B434  41 82 00 08 */	beq lbl_8033F7DC
/* 8033F7D8 0033B438  48 00 00 08 */	b lbl_8033F7E0
lbl_8033F7DC:
/* 8033F7DC 0033B43C  38 60 00 00 */	li r3, 0
lbl_8033F7E0:
/* 8033F7E0 0033B440  39 61 00 30 */	addi r11, r1, 0x30
/* 8033F7E4 0033B444  4B E8 79 91 */	bl _restgpr_27
/* 8033F7E8 0033B448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033F7EC 0033B44C  7C 08 03 A6 */	mtlr r0
/* 8033F7F0 0033B450  38 21 00 30 */	addi r1, r1, 0x30
/* 8033F7F4 0033B454  4E 80 00 20 */	blr

.global func_8033F7F8
func_8033F7F8:
/* 8033F7F8 0033B458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F7FC 0033B45C  7C 08 02 A6 */	mflr r0
/* 8033F800 0033B460  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F804 0033B464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F808 0033B468  7C BF 2B 78 */	mr r31, r5
/* 8033F80C 0033B46C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F810 0033B470  7C 9E 23 78 */	mr r30, r4
/* 8033F814 0033B474  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F818 0033B478  7C 7D 1B 78 */	mr r29, r3
/* 8033F81C 0033B47C  7F E3 FB 78 */	mr r3, r31
/* 8033F820 0033B480  4B E8 73 45 */	bl strlen
/* 8033F824 0033B484  7C 66 1B 78 */	mr r6, r3
/* 8033F828 0033B488  7F A3 EB 78 */	mr r3, r29
/* 8033F82C 0033B48C  7F C4 F3 78 */	mr r4, r30
/* 8033F830 0033B490  7F E5 FB 78 */	mr r5, r31
/* 8033F834 0033B494  4B FF FE D9 */	bl gpiSendOrBufferStringLen
/* 8033F838 0033B498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F83C 0033B49C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F840 0033B4A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F844 0033B4A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F848 0033B4A8  7C 08 03 A6 */	mtlr r0
/* 8033F84C 0033B4AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F850 0033B4B0  4E 80 00 20 */	blr

.global gpiRecvToBuffer
gpiRecvToBuffer:
/* 8033F854 0033B4B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033F858 0033B4B8  7C 08 02 A6 */	mflr r0
/* 8033F85C 0033B4BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8033F860 0033B4C0  39 61 00 40 */	addi r11, r1, 0x40
/* 8033F864 0033B4C4  4B E8 78 A5 */	bl _savegpr_19
/* 8033F868 0033B4C8  83 85 00 00 */	lwz r28, 0(r5)
/* 8033F86C 0033B4CC  7C 73 1B 78 */	mr r19, r3
/* 8033F870 0033B4D0  83 65 00 08 */	lwz r27, 8(r5)
/* 8033F874 0033B4D4  7C 94 23 78 */	mr r20, r4
/* 8033F878 0033B4D8  83 45 00 04 */	lwz r26, 4(r5)
/* 8033F87C 0033B4DC  7C B5 2B 78 */	mr r21, r5
/* 8033F880 0033B4E0  7C D6 33 78 */	mr r22, r6
/* 8033F884 0033B4E4  7C F7 3B 78 */	mr r23, r7
/* 8033F888 0033B4E8  3B 20 00 00 */	li r25, 0
/* 8033F88C 0033B4EC  3B 00 00 00 */	li r24, 0
/* 8033F890 0033B4F0  3B C0 00 00 */	li r30, 0
/* 8033F894 0033B4F4  3F E0 00 02 */	lis r31, 2
lbl_8033F898:
/* 8033F898 0033B4F8  38 9B 40 00 */	addi r4, r27, 0x4000
/* 8033F89C 0033B4FC  7C 04 D0 00 */	cmpw r4, r26
/* 8033F8A0 0033B500  40 81 00 38 */	ble lbl_8033F8D8
/* 8033F8A4 0033B504  7C 9A 23 78 */	mr r26, r4
/* 8033F8A8 0033B508  7F 83 E3 78 */	mr r3, r28
/* 8033F8AC 0033B50C  38 84 00 01 */	addi r4, r4, 1
/* 8033F8B0 0033B510  4B FF 9A 75 */	bl gsirealloc
/* 8033F8B4 0033B514  2C 03 00 00 */	cmpwi r3, 0
/* 8033F8B8 0033B518  7C 7C 1B 78 */	mr r28, r3
/* 8033F8BC 0033B51C  40 82 00 1C */	bne lbl_8033F8D8
/* 8033F8C0 0033B520  3C 80 80 45 */	lis r4, lbl_8044A7A8@ha
/* 8033F8C4 0033B524  7E 63 9B 78 */	mr r3, r19
/* 8033F8C8 0033B528  38 84 A7 A8 */	addi r4, r4, lbl_8044A7A8@l
/* 8033F8CC 0033B52C  48 00 8B 8D */	bl gpiSetErrorString
/* 8033F8D0 0033B530  38 60 00 01 */	li r3, 1
/* 8033F8D4 0033B534  48 00 00 A8 */	b lbl_8033F97C
lbl_8033F8D8:
/* 8033F8D8 0033B538  7E 83 A3 78 */	mr r3, r20
/* 8033F8DC 0033B53C  7C 9C DA 14 */	add r4, r28, r27
/* 8033F8E0 0033B540  7C BB D0 50 */	subf r5, r27, r26
/* 8033F8E4 0033B544  38 C0 00 00 */	li r6, 0
/* 8033F8E8 0033B548  4B FF 84 E9 */	bl recv
/* 8033F8EC 0033B54C  2C 03 FF FF */	cmpwi r3, -1
/* 8033F8F0 0033B550  7C 7D 1B 78 */	mr r29, r3
/* 8033F8F4 0033B554  40 82 00 3C */	bne lbl_8033F930
/* 8033F8F8 0033B558  7E 83 A3 78 */	mr r3, r20
/* 8033F8FC 0033B55C  4B FF 86 AD */	bl GOAGetLastError
/* 8033F900 0033B560  2C 03 FF FA */	cmpwi r3, -6
/* 8033F904 0033B564  41 82 00 44 */	beq lbl_8033F948
/* 8033F908 0033B568  2C 03 FF E6 */	cmpwi r3, -26
/* 8033F90C 0033B56C  41 82 00 3C */	beq lbl_8033F948
/* 8033F910 0033B570  2C 03 FF B4 */	cmpwi r3, -76
/* 8033F914 0033B574  41 82 00 34 */	beq lbl_8033F948
/* 8033F918 0033B578  3C 80 80 45 */	lis r4, lbl_8044A7E0@ha
/* 8033F91C 0033B57C  7E 63 9B 78 */	mr r3, r19
/* 8033F920 0033B580  38 84 A7 E0 */	addi r4, r4, lbl_8044A7E0@l
/* 8033F924 0033B584  48 00 8B 35 */	bl gpiSetErrorString
/* 8033F928 0033B588  38 60 00 03 */	li r3, 3
/* 8033F92C 0033B58C  48 00 00 50 */	b lbl_8033F97C
lbl_8033F930:
/* 8033F930 0033B590  2C 03 00 00 */	cmpwi r3, 0
/* 8033F934 0033B594  40 82 00 0C */	bne lbl_8033F940
/* 8033F938 0033B598  3B 00 00 01 */	li r24, 1
/* 8033F93C 0033B59C  48 00 00 0C */	b lbl_8033F948
lbl_8033F940:
/* 8033F940 0033B5A0  7F 7B 1A 14 */	add r27, r27, r3
/* 8033F944 0033B5A4  7F 39 1A 14 */	add r25, r25, r3
lbl_8033F948:
/* 8033F948 0033B5A8  2C 1D 00 00 */	cmpwi r29, 0
/* 8033F94C 0033B5AC  7F DC D9 AE */	stbx r30, r28, r27
/* 8033F950 0033B5B0  41 80 00 14 */	blt lbl_8033F964
/* 8033F954 0033B5B4  2C 18 00 00 */	cmpwi r24, 0
/* 8033F958 0033B5B8  40 82 00 0C */	bne lbl_8033F964
/* 8033F95C 0033B5BC  7C 19 F8 00 */	cmpw r25, r31
/* 8033F960 0033B5C0  41 80 FF 38 */	blt lbl_8033F898
lbl_8033F964:
/* 8033F964 0033B5C4  93 95 00 00 */	stw r28, 0(r21)
/* 8033F968 0033B5C8  38 60 00 00 */	li r3, 0
/* 8033F96C 0033B5CC  93 75 00 08 */	stw r27, 8(r21)
/* 8033F970 0033B5D0  93 55 00 04 */	stw r26, 4(r21)
/* 8033F974 0033B5D4  93 36 00 00 */	stw r25, 0(r22)
/* 8033F978 0033B5D8  93 17 00 00 */	stw r24, 0(r23)
lbl_8033F97C:
/* 8033F97C 0033B5DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8033F980 0033B5E0  4B E8 77 D5 */	bl func_801C7154
/* 8033F984 0033B5E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033F988 0033B5E8  7C 08 03 A6 */	mtlr r0
/* 8033F98C 0033B5EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8033F990 0033B5F0  4E 80 00 20 */	blr

.global gpiSendFromBuffer
gpiSendFromBuffer:
/* 8033F994 0033B5F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033F998 0033B5F8  7C 08 02 A6 */	mflr r0
/* 8033F99C 0033B5FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8033F9A0 0033B600  39 61 00 40 */	addi r11, r1, 0x40
/* 8033F9A4 0033B604  4B E8 77 6D */	bl _savegpr_21
/* 8033F9A8 0033B608  83 65 00 08 */	lwz r27, 8(r5)
/* 8033F9AC 0033B60C  7C 75 1B 78 */	mr r21, r3
/* 8033F9B0 0033B610  83 85 00 0C */	lwz r28, 0xc(r5)
/* 8033F9B4 0033B614  7C 96 23 78 */	mr r22, r4
/* 8033F9B8 0033B618  83 A5 00 00 */	lwz r29, 0(r5)
/* 8033F9BC 0033B61C  7C B7 2B 78 */	mr r23, r5
/* 8033F9C0 0033B620  7F DC D8 51 */	subf. r30, r28, r27
/* 8033F9C4 0033B624  7C D8 33 78 */	mr r24, r6
/* 8033F9C8 0033B628  7C F9 3B 78 */	mr r25, r7
/* 8033F9CC 0033B62C  7D 1A 43 78 */	mr r26, r8
/* 8033F9D0 0033B630  3B E0 00 00 */	li r31, 0
/* 8033F9D4 0033B634  40 82 00 0C */	bne lbl_8033F9E0
/* 8033F9D8 0033B638  38 60 00 00 */	li r3, 0
/* 8033F9DC 0033B63C  48 00 00 A0 */	b lbl_8033FA7C
lbl_8033F9E0:
/* 8033F9E0 0033B640  7C 1C FA 14 */	add r0, r28, r31
/* 8033F9E4 0033B644  7E A3 AB 78 */	mr r3, r21
/* 8033F9E8 0033B648  7E C4 B3 78 */	mr r4, r22
/* 8033F9EC 0033B64C  7F C6 F3 78 */	mr r6, r30
/* 8033F9F0 0033B650  7F 49 D3 78 */	mr r9, r26
/* 8033F9F4 0033B654  7C BD 02 14 */	add r5, r29, r0
/* 8033F9F8 0033B658  38 E1 00 0C */	addi r7, r1, 0xc
/* 8033F9FC 0033B65C  39 01 00 08 */	addi r8, r1, 8
/* 8033FA00 0033B660  4B FF FB 5D */	bl gpiSendData
/* 8033FA04 0033B664  2C 03 00 00 */	cmpwi r3, 0
/* 8033FA08 0033B668  41 82 00 08 */	beq lbl_8033FA10
/* 8033FA0C 0033B66C  48 00 00 70 */	b lbl_8033FA7C
lbl_8033FA10:
/* 8033FA10 0033B670  80 01 00 08 */	lwz r0, 8(r1)
/* 8033FA14 0033B674  2C 00 00 00 */	cmpwi r0, 0
/* 8033FA18 0033B678  41 82 00 0C */	beq lbl_8033FA24
/* 8033FA1C 0033B67C  7F FF 02 14 */	add r31, r31, r0
/* 8033FA20 0033B680  7F C0 F0 50 */	subf r30, r0, r30
lbl_8033FA24:
/* 8033FA24 0033B684  2C 00 00 00 */	cmpwi r0, 0
/* 8033FA28 0033B688  41 82 00 0C */	beq lbl_8033FA34
/* 8033FA2C 0033B68C  2C 1E 00 00 */	cmpwi r30, 0
/* 8033FA30 0033B690  40 82 FF B0 */	bne lbl_8033F9E0
lbl_8033FA34:
/* 8033FA34 0033B694  2C 19 00 00 */	cmpwi r25, 0
/* 8033FA38 0033B698  41 82 00 24 */	beq lbl_8033FA5C
/* 8033FA3C 0033B69C  2C 1F 00 00 */	cmpwi r31, 0
/* 8033FA40 0033B6A0  40 81 00 20 */	ble lbl_8033FA60
/* 8033FA44 0033B6A4  7F A3 EB 78 */	mr r3, r29
/* 8033FA48 0033B6A8  7C 9D FA 14 */	add r4, r29, r31
/* 8033FA4C 0033B6AC  38 BE 00 01 */	addi r5, r30, 1
/* 8033FA50 0033B6B0  4B E8 A8 25 */	bl memmove
/* 8033FA54 0033B6B4  7F 7F D8 50 */	subf r27, r31, r27
/* 8033FA58 0033B6B8  48 00 00 08 */	b lbl_8033FA60
lbl_8033FA5C:
/* 8033FA5C 0033B6BC  7F 9C FA 14 */	add r28, r28, r31
lbl_8033FA60:
/* 8033FA60 0033B6C0  2C 18 00 00 */	cmpwi r24, 0
/* 8033FA64 0033B6C4  93 77 00 08 */	stw r27, 8(r23)
/* 8033FA68 0033B6C8  93 97 00 0C */	stw r28, 0xc(r23)
/* 8033FA6C 0033B6CC  41 82 00 0C */	beq lbl_8033FA78
/* 8033FA70 0033B6D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033FA74 0033B6D4  90 18 00 00 */	stw r0, 0(r24)
lbl_8033FA78:
/* 8033FA78 0033B6D8  38 60 00 00 */	li r3, 0
lbl_8033FA7C:
/* 8033FA7C 0033B6DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8033FA80 0033B6E0  4B E8 76 DD */	bl func_801C715C
/* 8033FA84 0033B6E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033FA88 0033B6E8  7C 08 03 A6 */	mtlr r0
/* 8033FA8C 0033B6EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8033FA90 0033B6F0  4E 80 00 20 */	blr

.global gpiReadMessageFromBuffer
gpiReadMessageFromBuffer:
/* 8033FA94 0033B6F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033FA98 0033B6F8  7C 08 02 A6 */	mflr r0
/* 8033FA9C 0033B6FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033FAA0 0033B700  39 61 00 30 */	addi r11, r1, 0x30
/* 8033FAA4 0033B704  4B E8 76 81 */	bl _savegpr_26
/* 8033FAA8 0033B708  3B A0 00 00 */	li r29, 0
/* 8033FAAC 0033B70C  7C 9F 23 78 */	mr r31, r4
/* 8033FAB0 0033B710  93 A5 00 00 */	stw r29, 0(r5)
/* 8033FAB4 0033B714  7C BA 2B 78 */	mr r26, r5
/* 8033FAB8 0033B718  7C DB 33 78 */	mr r27, r6
/* 8033FABC 0033B71C  7C FC 3B 78 */	mr r28, r7
/* 8033FAC0 0033B720  80 04 00 08 */	lwz r0, 8(r4)
/* 8033FAC4 0033B724  2C 00 00 05 */	cmpwi r0, 5
/* 8033FAC8 0033B728  40 80 00 0C */	bge lbl_8033FAD4
/* 8033FACC 0033B72C  38 60 00 00 */	li r3, 0
/* 8033FAD0 0033B730  48 00 01 00 */	b lbl_8033FBD0
lbl_8033FAD4:
/* 8033FAD4 0033B734  80 64 00 00 */	lwz r3, 0(r4)
/* 8033FAD8 0033B738  38 80 00 0A */	li r4, 0xa
/* 8033FADC 0033B73C  4B E8 EA CD */	bl func_801CE5A8
/* 8033FAE0 0033B740  2C 03 00 00 */	cmpwi r3, 0
/* 8033FAE4 0033B744  7C 7E 1B 78 */	mr r30, r3
/* 8033FAE8 0033B748  41 82 00 E4 */	beq lbl_8033FBCC
/* 8033FAEC 0033B74C  38 8D 8F E0 */	addi r4, r13, lbl_8063E2A0-_SDA_BASE_
/* 8033FAF0 0033B750  38 A0 00 05 */	li r5, 5
/* 8033FAF4 0033B754  38 63 FF FB */	addi r3, r3, -5
/* 8033FAF8 0033B758  4B E8 EA 71 */	bl func_801CE568
/* 8033FAFC 0033B75C  2C 03 00 00 */	cmpwi r3, 0
/* 8033FB00 0033B760  41 82 00 0C */	beq lbl_8033FB0C
/* 8033FB04 0033B764  38 60 00 03 */	li r3, 3
/* 8033FB08 0033B768  48 00 00 C8 */	b lbl_8033FBD0
lbl_8033FB0C:
/* 8033FB0C 0033B76C  9B BE 00 00 */	stb r29, 0(r30)
/* 8033FB10 0033B770  38 A1 00 08 */	addi r5, r1, 8
/* 8033FB14 0033B774  38 8D 8F E8 */	addi r4, r13, lbl_8063E2A8-_SDA_BASE_
/* 8033FB18 0033B778  38 C0 00 10 */	li r6, 0x10
/* 8033FB1C 0033B77C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8033FB20 0033B780  48 00 85 6D */	bl gpiValueForKey
/* 8033FB24 0033B784  2C 03 00 00 */	cmpwi r3, 0
/* 8033FB28 0033B788  40 82 00 0C */	bne lbl_8033FB34
/* 8033FB2C 0033B78C  38 60 00 03 */	li r3, 3
/* 8033FB30 0033B790  48 00 00 A0 */	b lbl_8033FBD0
lbl_8033FB34:
/* 8033FB34 0033B794  38 61 00 08 */	addi r3, r1, 8
/* 8033FB38 0033B798  4B E9 0B D5 */	bl func_801D070C
/* 8033FB3C 0033B79C  90 7B 00 00 */	stw r3, 0(r27)
/* 8033FB40 0033B7A0  38 A1 00 08 */	addi r5, r1, 8
/* 8033FB44 0033B7A4  38 8D 8F EC */	addi r4, r13, lbl_8063E2AC-_SDA_BASE_
/* 8033FB48 0033B7A8  38 C0 00 10 */	li r6, 0x10
/* 8033FB4C 0033B7AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8033FB50 0033B7B0  48 00 85 3D */	bl gpiValueForKey
/* 8033FB54 0033B7B4  2C 03 00 00 */	cmpwi r3, 0
/* 8033FB58 0033B7B8  40 82 00 0C */	bne lbl_8033FB64
/* 8033FB5C 0033B7BC  38 60 00 03 */	li r3, 3
/* 8033FB60 0033B7C0  48 00 00 70 */	b lbl_8033FBD0
lbl_8033FB64:
/* 8033FB64 0033B7C4  38 61 00 08 */	addi r3, r1, 8
/* 8033FB68 0033B7C8  4B E9 0B A5 */	bl func_801D070C
/* 8033FB6C 0033B7CC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8033FB70 0033B7D0  80 BF 00 08 */	lwz r5, 8(r31)
/* 8033FB74 0033B7D4  7C 00 F0 50 */	subf r0, r0, r30
/* 8033FB78 0033B7D8  7C 83 02 14 */	add r4, r3, r0
/* 8033FB7C 0033B7DC  38 04 00 01 */	addi r0, r4, 1
/* 8033FB80 0033B7E0  7C 05 00 00 */	cmpw r5, r0
/* 8033FB84 0033B7E4  40 81 00 40 */	ble lbl_8033FBC4
/* 8033FB88 0033B7E8  7C 83 F2 14 */	add r4, r3, r30
/* 8033FB8C 0033B7EC  88 04 00 01 */	lbz r0, 1(r4)
/* 8033FB90 0033B7F0  7C 00 07 75 */	extsb. r0, r0
/* 8033FB94 0033B7F4  41 82 00 0C */	beq lbl_8033FBA0
/* 8033FB98 0033B7F8  38 60 00 03 */	li r3, 3
/* 8033FB9C 0033B7FC  48 00 00 34 */	b lbl_8033FBD0
lbl_8033FBA0:
/* 8033FBA0 0033B800  38 1E 00 01 */	addi r0, r30, 1
/* 8033FBA4 0033B804  90 1A 00 00 */	stw r0, 0(r26)
/* 8033FBA8 0033B808  90 7C 00 00 */	stw r3, 0(r28)
/* 8033FBAC 0033B80C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8033FBB0 0033B810  7C 00 F0 50 */	subf r0, r0, r30
/* 8033FBB4 0033B814  7C 63 02 14 */	add r3, r3, r0
/* 8033FBB8 0033B818  38 03 00 02 */	addi r0, r3, 2
/* 8033FBBC 0033B81C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8033FBC0 0033B820  48 00 00 0C */	b lbl_8033FBCC
lbl_8033FBC4:
/* 8033FBC4 0033B824  38 00 00 0A */	li r0, 0xa
/* 8033FBC8 0033B828  98 1E 00 00 */	stb r0, 0(r30)
lbl_8033FBCC:
/* 8033FBCC 0033B82C  38 60 00 00 */	li r3, 0
lbl_8033FBD0:
/* 8033FBD0 0033B830  39 61 00 30 */	addi r11, r1, 0x30
/* 8033FBD4 0033B834  4B E8 75 9D */	bl func_801C7170
/* 8033FBD8 0033B838  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033FBDC 0033B83C  7C 08 03 A6 */	mtlr r0
/* 8033FBE0 0033B840  38 21 00 30 */	addi r1, r1, 0x30
/* 8033FBE4 0033B844  4E 80 00 20 */	blr

.global gpiClipBufferToPosition
gpiClipBufferToPosition:
/* 8033FBE8 0033B848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033FBEC 0033B84C  7C 08 02 A6 */	mflr r0
/* 8033FBF0 0033B850  2C 04 00 00 */	cmpwi r4, 0
/* 8033FBF4 0033B854  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033FBF8 0033B858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033FBFC 0033B85C  7C 9F 23 78 */	mr r31, r4
/* 8033FC00 0033B860  41 82 00 1C */	beq lbl_8033FC1C
/* 8033FC04 0033B864  80 64 00 00 */	lwz r3, 0(r4)
/* 8033FC08 0033B868  2C 03 00 00 */	cmpwi r3, 0
/* 8033FC0C 0033B86C  41 82 00 10 */	beq lbl_8033FC1C
/* 8033FC10 0033B870  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 8033FC14 0033B874  2C 06 00 00 */	cmpwi r6, 0
/* 8033FC18 0033B878  40 82 00 0C */	bne lbl_8033FC24
lbl_8033FC1C:
/* 8033FC1C 0033B87C  38 60 00 00 */	li r3, 0
/* 8033FC20 0033B880  48 00 00 34 */	b lbl_8033FC54
lbl_8033FC24:
/* 8033FC24 0033B884  80 04 00 08 */	lwz r0, 8(r4)
/* 8033FC28 0033B888  7C A6 00 51 */	subf. r5, r6, r0
/* 8033FC2C 0033B88C  90 A4 00 08 */	stw r5, 8(r4)
/* 8033FC30 0033B890  41 82 00 0C */	beq lbl_8033FC3C
/* 8033FC34 0033B894  7C 83 32 14 */	add r4, r3, r6
/* 8033FC38 0033B898  4B E8 A6 3D */	bl memmove
lbl_8033FC3C:
/* 8033FC3C 0033B89C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8033FC40 0033B8A0  38 A0 00 00 */	li r5, 0
/* 8033FC44 0033B8A4  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033FC48 0033B8A8  38 60 00 00 */	li r3, 0
/* 8033FC4C 0033B8AC  7C A4 01 AE */	stbx r5, r4, r0
/* 8033FC50 0033B8B0  90 BF 00 0C */	stw r5, 0xc(r31)
lbl_8033FC54:
/* 8033FC54 0033B8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033FC58 0033B8B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033FC5C 0033B8BC  7C 08 03 A6 */	mtlr r0
/* 8033FC60 0033B8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8033FC64 0033B8C4  4E 80 00 20 */	blr