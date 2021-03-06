.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFiPFCLUSTER_UpdateLastAccessCluster
VFiPFCLUSTER_UpdateLastAccessCluster:
/* 8030AD80 003069E0  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 8030AD84 003069E4  2C 06 00 00 */	cmpwi r6, 0
/* 8030AD88 003069E8  40 82 00 1C */	bne lbl_8030ADA4
/* 8030AD8C 003069EC  80 83 00 08 */	lwz r4, 8(r3)
/* 8030AD90 003069F0  38 00 00 00 */	li r0, 0
/* 8030AD94 003069F4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8030AD98 003069F8  80 63 00 08 */	lwz r3, 8(r3)
/* 8030AD9C 003069FC  90 03 00 18 */	stw r0, 0x18(r3)
/* 8030ADA0 00306A00  4E 80 00 20 */	blr
lbl_8030ADA4:
/* 8030ADA4 00306A04  2C 03 00 00 */	cmpwi r3, 0
/* 8030ADA8 00306A08  40 82 00 0C */	bne lbl_8030ADB4
/* 8030ADAC 00306A0C  38 E0 00 00 */	li r7, 0
/* 8030ADB0 00306A10  48 00 00 0C */	b lbl_8030ADBC
lbl_8030ADB4:
/* 8030ADB4 00306A14  80 A3 00 08 */	lwz r5, 8(r3)
/* 8030ADB8 00306A18  80 E5 02 68 */	lwz r7, 0x268(r5)
lbl_8030ADBC:
/* 8030ADBC 00306A1C  A0 A7 00 00 */	lhz r5, 0(r7)
/* 8030ADC0 00306A20  38 05 FF FF */	addi r0, r5, -1
/* 8030ADC4 00306A24  7C C0 00 39 */	and. r0, r6, r0
/* 8030ADC8 00306A28  40 82 00 58 */	bne lbl_8030AE20
/* 8030ADCC 00306A2C  88 A7 00 06 */	lbz r5, 6(r7)
/* 8030ADD0 00306A30  80 C3 00 24 */	lwz r6, 0x24(r3)
/* 8030ADD4 00306A34  38 05 FF FF */	addi r0, r5, -1
/* 8030ADD8 00306A38  7C C0 00 39 */	and. r0, r6, r0
/* 8030ADDC 00306A3C  40 82 00 44 */	bne lbl_8030AE20
/* 8030ADE0 00306A40  2C 06 00 00 */	cmpwi r6, 0
/* 8030ADE4 00306A44  4D 82 00 20 */	beqlr
/* 8030ADE8 00306A48  88 07 00 21 */	lbz r0, 0x21(r7)
/* 8030ADEC 00306A4C  38 C6 FF FF */	addi r6, r6, -1
/* 8030ADF0 00306A50  80 A3 00 08 */	lwz r5, 8(r3)
/* 8030ADF4 00306A54  38 84 FF FF */	addi r4, r4, -1
/* 8030ADF8 00306A58  7C C0 04 30 */	srw r0, r6, r0
/* 8030ADFC 00306A5C  90 05 00 18 */	stw r0, 0x18(r5)
/* 8030AE00 00306A60  80 A7 00 30 */	lwz r5, 0x30(r7)
/* 8030AE04 00306A64  88 07 00 21 */	lbz r0, 0x21(r7)
/* 8030AE08 00306A68  7C 85 20 50 */	subf r4, r5, r4
/* 8030AE0C 00306A6C  80 63 00 08 */	lwz r3, 8(r3)
/* 8030AE10 00306A70  7C 84 04 30 */	srw r4, r4, r0
/* 8030AE14 00306A74  38 04 00 02 */	addi r0, r4, 2
/* 8030AE18 00306A78  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8030AE1C 00306A7C  4E 80 00 20 */	blr
lbl_8030AE20:
/* 8030AE20 00306A80  80 C3 00 24 */	lwz r6, 0x24(r3)
/* 8030AE24 00306A84  88 07 00 21 */	lbz r0, 0x21(r7)
/* 8030AE28 00306A88  80 A3 00 08 */	lwz r5, 8(r3)
/* 8030AE2C 00306A8C  7C C0 04 30 */	srw r0, r6, r0
/* 8030AE30 00306A90  90 05 00 18 */	stw r0, 0x18(r5)
/* 8030AE34 00306A94  80 A7 00 30 */	lwz r5, 0x30(r7)
/* 8030AE38 00306A98  88 07 00 21 */	lbz r0, 0x21(r7)
/* 8030AE3C 00306A9C  7C 85 20 50 */	subf r4, r5, r4
/* 8030AE40 00306AA0  80 63 00 08 */	lwz r3, 8(r3)
/* 8030AE44 00306AA4  7C 84 04 30 */	srw r4, r4, r0
/* 8030AE48 00306AA8  38 04 00 02 */	addi r0, r4, 2
/* 8030AE4C 00306AAC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8030AE50 00306AB0  4E 80 00 20 */	blr

.global VFiPFCLUSTER_AppendCluster
VFiPFCLUSTER_AppendCluster:
/* 8030AE54 00306AB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8030AE58 00306AB8  7C 08 02 A6 */	mflr r0
/* 8030AE5C 00306ABC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8030AE60 00306AC0  39 61 00 40 */	addi r11, r1, 0x40
/* 8030AE64 00306AC4  4B EB C2 C1 */	bl _savegpr_26
/* 8030AE68 00306AC8  3C E0 80 58 */	lis r7, lbl_8057F5C8@ha
/* 8030AE6C 00306ACC  38 00 00 00 */	li r0, 0
/* 8030AE70 00306AD0  38 E7 F5 C8 */	addi r7, r7, lbl_8057F5C8@l
/* 8030AE74 00306AD4  90 05 00 00 */	stw r0, 0(r5)
/* 8030AE78 00306AD8  7C 07 18 40 */	cmplw r7, r3
/* 8030AE7C 00306ADC  7C 7B 1B 78 */	mr r27, r3
/* 8030AE80 00306AE0  7C 9C 23 78 */	mr r28, r4
/* 8030AE84 00306AE4  7C BD 2B 78 */	mr r29, r5
/* 8030AE88 00306AE8  7C DE 33 78 */	mr r30, r6
/* 8030AE8C 00306AEC  41 81 00 14 */	bgt lbl_8030AEA0
/* 8030AE90 00306AF0  3C A7 00 02 */	addis r5, r7, 2
/* 8030AE94 00306AF4  38 05 7F B8 */	addi r0, r5, 0x7fb8
/* 8030AE98 00306AF8  7C 00 18 40 */	cmplw r0, r3
/* 8030AE9C 00306AFC  40 80 00 0C */	bge lbl_8030AEA8
lbl_8030AEA0:
/* 8030AEA0 00306B00  38 60 00 0A */	li r3, 0xa
/* 8030AEA4 00306B04  48 00 01 D4 */	b lbl_8030B078
lbl_8030AEA8:
/* 8030AEA8 00306B08  2F 03 00 00 */	cmpwi cr6, r3, 0
/* 8030AEAC 00306B0C  41 9A 00 34 */	beq cr6, lbl_8030AEE0
/* 8030AEB0 00306B10  83 43 00 08 */	lwz r26, 8(r3)
/* 8030AEB4 00306B14  2C 1A 00 00 */	cmpwi r26, 0
/* 8030AEB8 00306B18  41 82 00 28 */	beq lbl_8030AEE0
/* 8030AEBC 00306B1C  80 03 00 00 */	lwz r0, 0(r3)
/* 8030AEC0 00306B20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8030AEC4 00306B24  41 82 00 1C */	beq lbl_8030AEE0
/* 8030AEC8 00306B28  80 1A 00 00 */	lwz r0, 0(r26)
/* 8030AECC 00306B2C  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 8030AED0 00306B30  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 8030AED4 00306B34  41 86 00 0C */	beq cr1, lbl_8030AEE0
/* 8030AED8 00306B38  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8030AEDC 00306B3C  40 82 00 0C */	bne lbl_8030AEE8
lbl_8030AEE0:
/* 8030AEE0 00306B40  38 60 00 26 */	li r3, 0x26
/* 8030AEE4 00306B44  48 00 01 94 */	b lbl_8030B078
lbl_8030AEE8:
/* 8030AEE8 00306B48  41 86 00 08 */	beq cr1, lbl_8030AEF0
/* 8030AEEC 00306B4C  40 82 00 0C */	bne lbl_8030AEF8
lbl_8030AEF0:
/* 8030AEF0 00306B50  38 60 00 26 */	li r3, 0x26
/* 8030AEF4 00306B54  48 00 01 84 */	b lbl_8030B078
lbl_8030AEF8:
/* 8030AEF8 00306B58  40 9A 00 0C */	bne cr6, lbl_8030AF04
/* 8030AEFC 00306B5C  3B E0 00 00 */	li r31, 0
/* 8030AF00 00306B60  48 00 00 08 */	b lbl_8030AF08
lbl_8030AF04:
/* 8030AF04 00306B64  83 FA 02 68 */	lwz r31, 0x268(r26)
lbl_8030AF08:
/* 8030AF08 00306B68  2C 1F 00 00 */	cmpwi r31, 0
/* 8030AF0C 00306B6C  40 82 00 0C */	bne lbl_8030AF18
/* 8030AF10 00306B70  38 60 00 26 */	li r3, 0x26
/* 8030AF14 00306B74  48 00 01 64 */	b lbl_8030B078
lbl_8030AF18:
/* 8030AF18 00306B78  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8030AF1C 00306B7C  38 A3 00 0C */	addi r5, r3, 0xc
/* 8030AF20 00306B80  81 63 00 20 */	lwz r11, 0x20(r3)
/* 8030AF24 00306B84  38 00 FF FF */	li r0, -1
/* 8030AF28 00306B88  81 43 00 24 */	lwz r10, 0x24(r3)
/* 8030AF2C 00306B8C  81 23 00 28 */	lwz r9, 0x28(r3)
/* 8030AF30 00306B90  81 03 00 0C */	lwz r8, 0xc(r3)
/* 8030AF34 00306B94  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8030AF38 00306B98  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8030AF3C 00306B9C  91 81 00 18 */	stw r12, 0x18(r1)
/* 8030AF40 00306BA0  90 BA 00 34 */	stw r5, 0x34(r26)
/* 8030AF44 00306BA4  90 06 00 00 */	stw r0, 0(r6)
/* 8030AF48 00306BA8  A0 1F 18 7C */	lhz r0, 0x187c(r31)
/* 8030AF4C 00306BAC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8030AF50 00306BB0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8030AF54 00306BB4  91 41 00 20 */	stw r10, 0x20(r1)
/* 8030AF58 00306BB8  91 21 00 24 */	stw r9, 0x24(r1)
/* 8030AF5C 00306BBC  91 01 00 0C */	stw r8, 0xc(r1)
/* 8030AF60 00306BC0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8030AF64 00306BC4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8030AF68 00306BC8  41 82 00 24 */	beq lbl_8030AF8C
/* 8030AF6C 00306BCC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8030AF70 00306BD0  3C 03 00 01 */	addis r0, r3, 1
/* 8030AF74 00306BD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8030AF78 00306BD8  41 82 00 14 */	beq lbl_8030AF8C
/* 8030AF7C 00306BDC  2C 03 00 00 */	cmpwi r3, 0
/* 8030AF80 00306BE0  40 82 00 0C */	bne lbl_8030AF8C
/* 8030AF84 00306BE4  38 60 00 06 */	li r3, 6
/* 8030AF88 00306BE8  48 00 00 F0 */	b lbl_8030B078
lbl_8030AF8C:
/* 8030AF8C 00306BEC  80 BB 00 08 */	lwz r5, 8(r27)
/* 8030AF90 00306BF0  7F 63 DB 78 */	mr r3, r27
/* 8030AF94 00306BF4  80 05 02 64 */	lwz r0, 0x264(r5)
/* 8030AF98 00306BF8  7C 80 22 14 */	add r4, r0, r4
/* 8030AF9C 00306BFC  48 00 8C CD */	bl VFiPFFILE_Cursor_MoveToClusterEnd
/* 8030AFA0 00306C00  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 8030AFA4 00306C04  3C 03 00 01 */	addis r0, r3, 1
/* 8030AFA8 00306C08  28 00 FF FF */	cmplwi r0, 0xffff
/* 8030AFAC 00306C0C  40 82 00 14 */	bne lbl_8030AFC0
/* 8030AFB0 00306C10  38 00 00 00 */	li r0, 0
/* 8030AFB4 00306C14  38 60 00 25 */	li r3, 0x25
/* 8030AFB8 00306C18  90 1D 00 00 */	stw r0, 0(r29)
/* 8030AFBC 00306C1C  48 00 00 BC */	b lbl_8030B078
lbl_8030AFC0:
/* 8030AFC0 00306C20  80 7B 00 08 */	lwz r3, 8(r27)
/* 8030AFC4 00306C24  7F 85 E3 78 */	mr r5, r28
/* 8030AFC8 00306C28  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 8030AFCC 00306C2C  7F C6 F3 78 */	mr r6, r30
/* 8030AFD0 00306C30  38 63 00 04 */	addi r3, r3, 4
/* 8030AFD4 00306C34  38 E1 00 08 */	addi r7, r1, 8
/* 8030AFD8 00306C38  48 00 50 69 */	bl VFiPFFAT_GetSectorAllocated
/* 8030AFDC 00306C3C  2C 03 00 00 */	cmpwi r3, 0
/* 8030AFE0 00306C40  41 82 00 40 */	beq lbl_8030B020
/* 8030AFE4 00306C44  81 21 00 18 */	lwz r9, 0x18(r1)
/* 8030AFE8 00306C48  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 8030AFEC 00306C4C  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 8030AFF0 00306C50  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8030AFF4 00306C54  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8030AFF8 00306C58  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8030AFFC 00306C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B000 00306C60  91 3B 00 1C */	stw r9, 0x1c(r27)
/* 8030B004 00306C64  91 1B 00 20 */	stw r8, 0x20(r27)
/* 8030B008 00306C68  90 FB 00 24 */	stw r7, 0x24(r27)
/* 8030B00C 00306C6C  90 DB 00 28 */	stw r6, 0x28(r27)
/* 8030B010 00306C70  90 BB 00 0C */	stw r5, 0xc(r27)
/* 8030B014 00306C74  90 9B 00 10 */	stw r4, 0x10(r27)
/* 8030B018 00306C78  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8030B01C 00306C7C  48 00 00 5C */	b lbl_8030B078
lbl_8030B020:
/* 8030B020 00306C80  81 01 00 18 */	lwz r8, 0x18(r1)
/* 8030B024 00306C84  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 8030B028 00306C88  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8030B02C 00306C8C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8030B030 00306C90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8030B034 00306C94  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8030B038 00306C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B03C 00306C9C  91 1B 00 1C */	stw r8, 0x1c(r27)
/* 8030B040 00306CA0  90 FB 00 20 */	stw r7, 0x20(r27)
/* 8030B044 00306CA4  90 DB 00 24 */	stw r6, 0x24(r27)
/* 8030B048 00306CA8  90 BB 00 28 */	stw r5, 0x28(r27)
/* 8030B04C 00306CAC  90 9B 00 0C */	stw r4, 0xc(r27)
/* 8030B050 00306CB0  90 7B 00 10 */	stw r3, 0x10(r27)
/* 8030B054 00306CB4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8030B058 00306CB8  80 61 00 08 */	lwz r3, 8(r1)
/* 8030B05C 00306CBC  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 8030B060 00306CC0  7C 60 00 30 */	slw r0, r3, r0
/* 8030B064 00306CC4  7C 1C 00 40 */	cmplw r28, r0
/* 8030B068 00306CC8  40 80 00 08 */	bge lbl_8030B070
/* 8030B06C 00306CCC  7F 80 E3 78 */	mr r0, r28
lbl_8030B070:
/* 8030B070 00306CD0  90 1D 00 00 */	stw r0, 0(r29)
/* 8030B074 00306CD4  38 60 00 00 */	li r3, 0
lbl_8030B078:
/* 8030B078 00306CD8  39 61 00 40 */	addi r11, r1, 0x40
/* 8030B07C 00306CDC  4B EB C0 F5 */	bl _restgpr_26
/* 8030B080 00306CE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030B084 00306CE4  7C 08 03 A6 */	mtlr r0
/* 8030B088 00306CE8  38 21 00 40 */	addi r1, r1, 0x40
/* 8030B08C 00306CEC  4E 80 00 20 */	blr

.global VFiPFCLUSTER_GetAppendSize
VFiPFCLUSTER_GetAppendSize:
/* 8030B090 00306CF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030B094 00306CF4  7C 08 02 A6 */	mflr r0
/* 8030B098 00306CF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030B09C 00306CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8030B0A0 00306D00  4B EB C0 85 */	bl _savegpr_26
/* 8030B0A4 00306D04  3C A0 80 58 */	lis r5, lbl_8057F5C8@ha
/* 8030B0A8 00306D08  38 00 00 00 */	li r0, 0
/* 8030B0AC 00306D0C  38 A5 F5 C8 */	addi r5, r5, lbl_8057F5C8@l
/* 8030B0B0 00306D10  90 04 00 00 */	stw r0, 0(r4)
/* 8030B0B4 00306D14  7C 05 18 40 */	cmplw r5, r3
/* 8030B0B8 00306D18  7C 9F 23 78 */	mr r31, r4
/* 8030B0BC 00306D1C  41 81 00 14 */	bgt lbl_8030B0D0
/* 8030B0C0 00306D20  3C 85 00 02 */	addis r4, r5, 2
/* 8030B0C4 00306D24  38 04 7F B8 */	addi r0, r4, 0x7fb8
/* 8030B0C8 00306D28  7C 00 18 40 */	cmplw r0, r3
/* 8030B0CC 00306D2C  40 80 00 0C */	bge lbl_8030B0D8
lbl_8030B0D0:
/* 8030B0D0 00306D30  38 60 00 0A */	li r3, 0xa
/* 8030B0D4 00306D34  48 00 01 4C */	b lbl_8030B220
lbl_8030B0D8:
/* 8030B0D8 00306D38  2F 03 00 00 */	cmpwi cr6, r3, 0
/* 8030B0DC 00306D3C  41 9A 00 34 */	beq cr6, lbl_8030B110
/* 8030B0E0 00306D40  81 03 00 08 */	lwz r8, 8(r3)
/* 8030B0E4 00306D44  2C 08 00 00 */	cmpwi r8, 0
/* 8030B0E8 00306D48  41 82 00 28 */	beq lbl_8030B110
/* 8030B0EC 00306D4C  80 03 00 00 */	lwz r0, 0(r3)
/* 8030B0F0 00306D50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8030B0F4 00306D54  41 82 00 1C */	beq lbl_8030B110
/* 8030B0F8 00306D58  80 08 00 00 */	lwz r0, 0(r8)
/* 8030B0FC 00306D5C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8030B100 00306D60  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 8030B104 00306D64  41 86 00 0C */	beq cr1, lbl_8030B110
/* 8030B108 00306D68  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8030B10C 00306D6C  40 82 00 0C */	bne lbl_8030B118
lbl_8030B110:
/* 8030B110 00306D70  38 60 00 26 */	li r3, 0x26
/* 8030B114 00306D74  48 00 01 0C */	b lbl_8030B220
lbl_8030B118:
/* 8030B118 00306D78  41 86 00 08 */	beq cr1, lbl_8030B120
/* 8030B11C 00306D7C  40 82 00 0C */	bne lbl_8030B128
lbl_8030B120:
/* 8030B120 00306D80  38 60 00 26 */	li r3, 0x26
/* 8030B124 00306D84  48 00 00 FC */	b lbl_8030B220
lbl_8030B128:
/* 8030B128 00306D88  40 9A 00 0C */	bne cr6, lbl_8030B134
/* 8030B12C 00306D8C  3B A0 00 00 */	li r29, 0
/* 8030B130 00306D90  48 00 00 08 */	b lbl_8030B138
lbl_8030B134:
/* 8030B134 00306D94  83 A8 02 68 */	lwz r29, 0x268(r8)
lbl_8030B138:
/* 8030B138 00306D98  2C 1D 00 00 */	cmpwi r29, 0
/* 8030B13C 00306D9C  40 82 00 0C */	bne lbl_8030B148
/* 8030B140 00306DA0  38 60 00 26 */	li r3, 0x26
/* 8030B144 00306DA4  48 00 00 DC */	b lbl_8030B220
lbl_8030B148:
/* 8030B148 00306DA8  80 88 02 70 */	lwz r4, 0x270(r8)
/* 8030B14C 00306DAC  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8030B150 00306DB0  88 1D 00 21 */	lbz r0, 0x21(r29)
/* 8030B154 00306DB4  2C 04 00 00 */	cmpwi r4, 0
/* 8030B158 00306DB8  7C 7C 00 30 */	slw r28, r3, r0
/* 8030B15C 00306DBC  41 82 00 C0 */	beq lbl_8030B21C
/* 8030B160 00306DC0  80 A8 02 64 */	lwz r5, 0x264(r8)
/* 8030B164 00306DC4  80 E8 00 14 */	lwz r7, 0x14(r8)
/* 8030B168 00306DC8  7C 05 E3 96 */	divwu r0, r5, r28
/* 8030B16C 00306DCC  2C 07 00 00 */	cmpwi r7, 0
/* 8030B170 00306DD0  7C 00 E1 D6 */	mullw r0, r0, r28
/* 8030B174 00306DD4  7C C0 28 50 */	subf r6, r0, r5
/* 8030B178 00306DD8  7C 06 00 D0 */	neg r0, r6
/* 8030B17C 00306DDC  7C 03 33 78 */	or r3, r0, r6
/* 8030B180 00306DE0  7C 06 E0 50 */	subf r0, r6, r28
/* 8030B184 00306DE4  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 8030B188 00306DE8  7C 00 18 38 */	and r0, r0, r3
/* 8030B18C 00306DEC  7F 65 02 14 */	add r27, r5, r0
/* 8030B190 00306DF0  41 82 00 10 */	beq lbl_8030B1A0
/* 8030B194 00306DF4  38 07 00 01 */	addi r0, r7, 1
/* 8030B198 00306DF8  7C 00 E1 D6 */	mullw r0, r0, r28
/* 8030B19C 00306DFC  48 00 00 78 */	b lbl_8030B214
lbl_8030B1A0:
/* 8030B1A0 00306E00  2C 05 00 00 */	cmpwi r5, 0
/* 8030B1A4 00306E04  41 82 00 20 */	beq lbl_8030B1C4
/* 8030B1A8 00306E08  38 68 00 04 */	addi r3, r8, 4
/* 8030B1AC 00306E0C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8030B1B0 00306E10  38 E1 00 0C */	addi r7, r1, 0xc
/* 8030B1B4 00306E14  48 00 5B F9 */	bl VFiPFFAT_TraceClustersChain
/* 8030B1B8 00306E18  2C 03 00 00 */	cmpwi r3, 0
/* 8030B1BC 00306E1C  41 82 00 0C */	beq lbl_8030B1C8
/* 8030B1C0 00306E20  48 00 00 60 */	b lbl_8030B220
lbl_8030B1C4:
/* 8030B1C4 00306E24  90 81 00 0C */	stw r4, 0xc(r1)
lbl_8030B1C8:
/* 8030B1C8 00306E28  7F A3 EB 78 */	mr r3, r29
/* 8030B1CC 00306E2C  48 00 5F 89 */	bl VFiPFFAT_GetValueOfEOC2
/* 8030B1D0 00306E30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8030B1D4 00306E34  7C 7E 1B 78 */	mr r30, r3
/* 8030B1D8 00306E38  3B 40 00 00 */	li r26, 0
/* 8030B1DC 00306E3C  48 00 00 28 */	b lbl_8030B204
lbl_8030B1E0:
/* 8030B1E0 00306E40  7F A3 EB 78 */	mr r3, r29
/* 8030B1E4 00306E44  38 A1 00 08 */	addi r5, r1, 8
/* 8030B1E8 00306E48  3B 5A 00 01 */	addi r26, r26, 1
/* 8030B1EC 00306E4C  48 00 5E 01 */	bl VFiPFFAT_ReadValueToSpecifiedCluster
/* 8030B1F0 00306E50  2C 03 00 00 */	cmpwi r3, 0
/* 8030B1F4 00306E54  41 82 00 08 */	beq lbl_8030B1FC
/* 8030B1F8 00306E58  48 00 00 28 */	b lbl_8030B220
lbl_8030B1FC:
/* 8030B1FC 00306E5C  80 81 00 08 */	lwz r4, 8(r1)
/* 8030B200 00306E60  90 81 00 0C */	stw r4, 0xc(r1)
lbl_8030B204:
/* 8030B204 00306E64  7C 04 F0 40 */	cmplw r4, r30
/* 8030B208 00306E68  40 82 FF D8 */	bne lbl_8030B1E0
/* 8030B20C 00306E6C  7C 1A E1 D6 */	mullw r0, r26, r28
/* 8030B210 00306E70  7C 1B 02 14 */	add r0, r27, r0
lbl_8030B214:
/* 8030B214 00306E74  7C 1B 00 50 */	subf r0, r27, r0
/* 8030B218 00306E78  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030B21C:
/* 8030B21C 00306E7C  38 60 00 00 */	li r3, 0
lbl_8030B220:
/* 8030B220 00306E80  39 61 00 30 */	addi r11, r1, 0x30
/* 8030B224 00306E84  4B EB BF 4D */	bl _restgpr_26
/* 8030B228 00306E88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030B22C 00306E8C  7C 08 03 A6 */	mtlr r0
/* 8030B230 00306E90  38 21 00 30 */	addi r1, r1, 0x30
/* 8030B234 00306E94  4E 80 00 20 */	blr
