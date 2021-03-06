.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global PlayRecordAlarmCallback
PlayRecordAlarmCallback:
/* 8027380C 0026F46C  38 60 00 00 */	li r3, 0
/* 80273810 0026F470  38 80 00 00 */	li r4, 0
/* 80273814 0026F474  48 00 00 04 */	b PlayRecordCallback

.global PlayRecordCallback
PlayRecordCallback:
/* 80273818 0026F478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027381C 0026F47C  7C 08 02 A6 */	mflr r0
/* 80273820 0026F480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80273824 0026F484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80273828 0026F488  3F E0 80 51 */	lis r31, lbl_805152A0@ha
/* 8027382C 0026F48C  3B FF 52 A0 */	addi r31, r31, lbl_805152A0@l
/* 80273830 0026F490  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80273834 0026F494  3B C0 00 00 */	li r30, 0
/* 80273838 0026F498  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027383C 0026F49C  80 0D A8 70 */	lwz r0, lbl_8063FB30-_SDA_BASE_(r13)
/* 80273840 0026F4A0  90 6D A8 7C */	stw r3, lbl_8063FB3C-_SDA_BASE_(r13)
/* 80273844 0026F4A4  2C 00 00 00 */	cmpwi r0, 0
/* 80273848 0026F4A8  41 82 00 10 */	beq lbl_80273858
/* 8027384C 0026F4AC  38 00 00 01 */	li r0, 1
/* 80273850 0026F4B0  90 0D A8 74 */	stw r0, lbl_8063FB34-_SDA_BASE_(r13)
/* 80273854 0026F4B4  48 00 04 58 */	b lbl_80273CAC
lbl_80273858:
/* 80273858 0026F4B8  80 0D A8 78 */	lwz r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 8027385C 0026F4BC  2C 00 00 00 */	cmpwi r0, 0
/* 80273860 0026F4C0  40 82 02 18 */	bne lbl_80273A78
/* 80273864 0026F4C4  80 0D 87 F0 */	lwz r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273868 0026F4C8  28 00 00 06 */	cmplwi r0, 6
/* 8027386C 0026F4CC  41 81 01 F8 */	bgt lbl_80273A64
/* 80273870 0026F4D0  3C 80 80 43 */	lis r4, lbl_80433D5C@ha
/* 80273874 0026F4D4  54 00 10 3A */	slwi r0, r0, 2
/* 80273878 0026F4D8  38 84 3D 5C */	addi r4, r4, lbl_80433D5C@l
/* 8027387C 0026F4DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80273880 0026F4E0  7C 89 03 A6 */	mtctr r4
/* 80273884 0026F4E4  4E 80 04 20 */	bctr
/* 80273888 0026F4E8  38 00 00 01 */	li r0, 1
/* 8027388C 0026F4EC  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273890 0026F4F0  48 00 01 E8 */	b lbl_80273A78
/* 80273894 0026F4F4  2C 03 FF F6 */	cmpwi r3, -10
/* 80273898 0026F4F8  40 82 00 38 */	bne lbl_802738D0
/* 8027389C 0026F4FC  38 00 00 01 */	li r0, 1
/* 802738A0 0026F500  38 7F 00 80 */	addi r3, r31, 0x80
/* 802738A4 0026F504  90 0D A8 78 */	stw r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 802738A8 0026F508  4B FF 5E 7D */	bl OSCreateAlarm
/* 802738AC 0026F50C  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 802738B0 0026F510  3C E0 80 27 */	lis r7, PlayRecordAlarmCallback@ha
/* 802738B4 0026F514  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 802738B8 0026F518  38 7F 00 80 */	addi r3, r31, 0x80
/* 802738BC 0026F51C  38 E7 38 0C */	addi r7, r7, PlayRecordAlarmCallback@l
/* 802738C0 0026F520  38 A0 00 00 */	li r5, 0
/* 802738C4 0026F524  54 06 F0 BE */	srwi r6, r0, 2
/* 802738C8 0026F528  4B FF 60 BD */	bl OSSetAlarm
/* 802738CC 0026F52C  48 00 03 E0 */	b lbl_80273CAC
lbl_802738D0:
/* 802738D0 0026F530  2C 03 00 00 */	cmpwi r3, 0
/* 802738D4 0026F534  40 82 00 28 */	bne lbl_802738FC
/* 802738D8 0026F538  80 0D A8 68 */	lwz r0, lbl_8063FB28-_SDA_BASE_(r13)
/* 802738DC 0026F53C  2C 00 00 00 */	cmpwi r0, 0
/* 802738E0 0026F540  40 82 00 10 */	bne lbl_802738F0
/* 802738E4 0026F544  38 00 00 02 */	li r0, 2
/* 802738E8 0026F548  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 802738EC 0026F54C  48 00 01 8C */	b lbl_80273A78
lbl_802738F0:
/* 802738F0 0026F550  38 00 00 04 */	li r0, 4
/* 802738F4 0026F554  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 802738F8 0026F558  48 00 01 80 */	b lbl_80273A78
lbl_802738FC:
/* 802738FC 0026F55C  38 60 00 01 */	li r3, 1
/* 80273900 0026F560  38 00 00 07 */	li r0, 7
/* 80273904 0026F564  90 6D A8 6C */	stw r3, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273908 0026F568  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 8027390C 0026F56C  48 00 03 A0 */	b lbl_80273CAC
/* 80273910 0026F570  28 03 00 80 */	cmplwi r3, 0x80
/* 80273914 0026F574  40 82 00 2C */	bne lbl_80273940
/* 80273918 0026F578  38 9F 00 00 */	addi r4, r31, 0
/* 8027391C 0026F57C  38 A0 00 01 */	li r5, 1
/* 80273920 0026F580  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80273924 0026F584  38 00 00 03 */	li r0, 3
/* 80273928 0026F588  80 84 00 64 */	lwz r4, 0x64(r4)
/* 8027392C 0026F58C  90 AD A8 68 */	stw r5, lbl_8063FB28-_SDA_BASE_(r13)
/* 80273930 0026F590  90 8D A8 84 */	stw r4, lbl_8063FB44-_SDA_BASE_(r13)
/* 80273934 0026F594  90 6D A8 80 */	stw r3, lbl_8063FB40-_SDA_BASE_(r13)
/* 80273938 0026F598  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 8027393C 0026F59C  48 00 01 3C */	b lbl_80273A78
lbl_80273940:
/* 80273940 0026F5A0  38 60 00 01 */	li r3, 1
/* 80273944 0026F5A4  38 00 00 06 */	li r0, 6
/* 80273948 0026F5A8  90 6D A8 6C */	stw r3, lbl_8063FB2C-_SDA_BASE_(r13)
/* 8027394C 0026F5AC  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273950 0026F5B0  48 00 01 28 */	b lbl_80273A78
/* 80273954 0026F5B4  2C 03 00 00 */	cmpwi r3, 0
/* 80273958 0026F5B8  40 82 00 10 */	bne lbl_80273968
/* 8027395C 0026F5BC  38 00 00 04 */	li r0, 4
/* 80273960 0026F5C0  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273964 0026F5C4  48 00 01 14 */	b lbl_80273A78
lbl_80273968:
/* 80273968 0026F5C8  38 60 00 01 */	li r3, 1
/* 8027396C 0026F5CC  38 00 00 06 */	li r0, 6
/* 80273970 0026F5D0  90 6D A8 6C */	stw r3, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273974 0026F5D4  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273978 0026F5D8  48 00 01 00 */	b lbl_80273A78
/* 8027397C 0026F5DC  38 00 00 05 */	li r0, 5
/* 80273980 0026F5E0  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273984 0026F5E4  48 00 00 F4 */	b lbl_80273A78
/* 80273988 0026F5E8  28 03 00 80 */	cmplwi r3, 0x80
/* 8027398C 0026F5EC  40 82 00 70 */	bne lbl_802739FC
/* 80273990 0026F5F0  4B FF EE 29 */	bl OSGetTime
/* 80273994 0026F5F4  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 80273998 0026F5F8  81 0D A8 84 */	lwz r8, lbl_8063FB44-_SDA_BASE_(r13)
/* 8027399C 0026F5FC  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 802739A0 0026F600  38 A0 01 2C */	li r5, 0x12c
/* 802739A4 0026F604  81 2D A8 80 */	lwz r9, lbl_8063FB40-_SDA_BASE_(r13)
/* 802739A8 0026F608  7D 08 20 10 */	subfc r8, r8, r4
/* 802739AC 0026F60C  54 07 F0 BE */	srwi r7, r0, 2
/* 802739B0 0026F610  38 C0 00 00 */	li r6, 0
/* 802739B4 0026F614  7C 69 19 10 */	subfe r3, r9, r3
/* 802739B8 0026F618  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 802739BC 0026F61C  7C 07 28 16 */	mulhwu r0, r7, r5
/* 802739C0 0026F620  7C 66 29 D6 */	mullw r3, r6, r5
/* 802739C4 0026F624  7C 00 1A 14 */	add r0, r0, r3
/* 802739C8 0026F628  1C A7 01 2C */	mulli r5, r7, 0x12c
/* 802739CC 0026F62C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802739D0 0026F630  7C 68 28 10 */	subfc r3, r8, r5
/* 802739D4 0026F634  7C 84 01 10 */	subfe r4, r4, r0
/* 802739D8 0026F638  7C 80 01 10 */	subfe r4, r0, r0
/* 802739DC 0026F63C  7C 84 00 D1 */	neg. r4, r4
/* 802739E0 0026F640  41 82 00 10 */	beq lbl_802739F0
/* 802739E4 0026F644  38 00 00 06 */	li r0, 6
/* 802739E8 0026F648  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 802739EC 0026F64C  48 00 00 8C */	b lbl_80273A78
lbl_802739F0:
/* 802739F0 0026F650  38 00 00 03 */	li r0, 3
/* 802739F4 0026F654  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 802739F8 0026F658  48 00 00 80 */	b lbl_80273A78
lbl_802739FC:
/* 802739FC 0026F65C  38 60 00 01 */	li r3, 1
/* 80273A00 0026F660  38 00 00 06 */	li r0, 6
/* 80273A04 0026F664  90 6D A8 6C */	stw r3, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273A08 0026F668  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273A0C 0026F66C  48 00 00 6C */	b lbl_80273A78
/* 80273A10 0026F670  80 0D A8 6C */	lwz r0, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273A14 0026F674  2C 00 00 00 */	cmpwi r0, 0
/* 80273A18 0026F678  41 82 00 10 */	beq lbl_80273A28
/* 80273A1C 0026F67C  38 00 00 07 */	li r0, 7
/* 80273A20 0026F680  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273A24 0026F684  48 00 02 88 */	b lbl_80273CAC
lbl_80273A28:
/* 80273A28 0026F688  2C 03 00 00 */	cmpwi r3, 0
/* 80273A2C 0026F68C  40 82 00 24 */	bne lbl_80273A50
/* 80273A30 0026F690  38 9F 00 00 */	addi r4, r31, 0
/* 80273A34 0026F694  38 00 00 01 */	li r0, 1
/* 80273A38 0026F698  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80273A3C 0026F69C  80 84 00 64 */	lwz r4, 0x64(r4)
/* 80273A40 0026F6A0  90 6D A8 80 */	stw r3, lbl_8063FB40-_SDA_BASE_(r13)
/* 80273A44 0026F6A4  90 8D A8 84 */	stw r4, lbl_8063FB44-_SDA_BASE_(r13)
/* 80273A48 0026F6A8  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273A4C 0026F6AC  48 00 00 2C */	b lbl_80273A78
lbl_80273A50:
/* 80273A50 0026F6B0  38 60 00 07 */	li r3, 7
/* 80273A54 0026F6B4  38 00 00 01 */	li r0, 1
/* 80273A58 0026F6B8  90 6D 87 F0 */	stw r3, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273A5C 0026F6BC  90 0D A8 6C */	stw r0, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273A60 0026F6C0  48 00 02 4C */	b lbl_80273CAC
lbl_80273A64:
/* 80273A64 0026F6C4  38 60 00 07 */	li r3, 7
/* 80273A68 0026F6C8  38 00 00 01 */	li r0, 1
/* 80273A6C 0026F6CC  90 6D 87 F0 */	stw r3, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273A70 0026F6D0  90 0D A8 6C */	stw r0, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273A74 0026F6D4  48 00 02 38 */	b lbl_80273CAC
lbl_80273A78:
/* 80273A78 0026F6D8  80 0D 87 F0 */	lwz r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273A7C 0026F6DC  3B A0 00 00 */	li r29, 0
/* 80273A80 0026F6E0  93 AD A8 78 */	stw r29, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273A84 0026F6E4  2C 00 00 04 */	cmpwi r0, 4
/* 80273A88 0026F6E8  41 82 00 A0 */	beq lbl_80273B28
/* 80273A8C 0026F6EC  40 80 00 1C */	bge lbl_80273AA8
/* 80273A90 0026F6F0  2C 00 00 02 */	cmpwi r0, 2
/* 80273A94 0026F6F4  41 82 00 4C */	beq lbl_80273AE0
/* 80273A98 0026F6F8  40 80 00 6C */	bge lbl_80273B04
/* 80273A9C 0026F6FC  2C 00 00 01 */	cmpwi r0, 1
/* 80273AA0 0026F700  40 80 00 18 */	bge lbl_80273AB8
/* 80273AA4 0026F704  48 00 01 30 */	b lbl_80273BD4
lbl_80273AA8:
/* 80273AA8 0026F708  2C 00 00 06 */	cmpwi r0, 6
/* 80273AAC 0026F70C  41 82 01 10 */	beq lbl_80273BBC
/* 80273AB0 0026F710  40 80 01 24 */	bge lbl_80273BD4
/* 80273AB4 0026F714  48 00 00 B0 */	b lbl_80273B64
lbl_80273AB8:
/* 80273AB8 0026F718  3C 60 80 43 */	lis r3, lbl_80433D30@ha
/* 80273ABC 0026F71C  3C C0 80 27 */	lis r6, PlayRecordCallback@ha
/* 80273AC0 0026F720  38 63 3D 30 */	addi r3, r3, lbl_80433D30@l
/* 80273AC4 0026F724  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 80273AC8 0026F728  38 C6 38 18 */	addi r6, r6, PlayRecordCallback@l
/* 80273ACC 0026F72C  38 FF 01 40 */	addi r7, r31, 0x140
/* 80273AD0 0026F730  38 A0 00 03 */	li r5, 3
/* 80273AD4 0026F734  48 07 4A 4D */	bl NANDOpenAsync
/* 80273AD8 0026F738  7C 7E 1B 78 */	mr r30, r3
/* 80273ADC 0026F73C  48 00 00 F8 */	b lbl_80273BD4
lbl_80273AE0:
/* 80273AE0 0026F740  3C C0 80 27 */	lis r6, PlayRecordCallback@ha
/* 80273AE4 0026F744  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80273AE8 0026F748  38 9F 00 00 */	addi r4, r31, 0
/* 80273AEC 0026F74C  38 FF 01 40 */	addi r7, r31, 0x140
/* 80273AF0 0026F750  38 C6 38 18 */	addi r6, r6, PlayRecordCallback@l
/* 80273AF4 0026F754  38 A0 00 80 */	li r5, 0x80
/* 80273AF8 0026F758  48 07 3E 31 */	bl NANDReadAsync
/* 80273AFC 0026F75C  7C 7E 1B 78 */	mr r30, r3
/* 80273B00 0026F760  48 00 00 D4 */	b lbl_80273BD4
lbl_80273B04:
/* 80273B04 0026F764  3C C0 80 27 */	lis r6, PlayRecordCallback@ha
/* 80273B08 0026F768  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80273B0C 0026F76C  38 C6 38 18 */	addi r6, r6, PlayRecordCallback@l
/* 80273B10 0026F770  38 FF 01 40 */	addi r7, r31, 0x140
/* 80273B14 0026F774  38 80 00 00 */	li r4, 0
/* 80273B18 0026F778  38 A0 00 00 */	li r5, 0
/* 80273B1C 0026F77C  48 07 40 05 */	bl NANDSeekAsync
/* 80273B20 0026F780  7C 7E 1B 78 */	mr r30, r3
/* 80273B24 0026F784  48 00 00 B0 */	b lbl_80273BD4
lbl_80273B28:
/* 80273B28 0026F788  38 7F 00 80 */	addi r3, r31, 0x80
/* 80273B2C 0026F78C  4B FF 5B F9 */	bl OSCreateAlarm
/* 80273B30 0026F790  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80273B34 0026F794  38 00 00 3C */	li r0, 0x3c
/* 80273B38 0026F798  80 63 00 F8 */	lwz r3, 0x800000F8@l(r3)
/* 80273B3C 0026F79C  3C E0 80 27 */	lis r7, PlayRecordAlarmCallback@ha
/* 80273B40 0026F7A0  7C 9D 01 D6 */	mullw r4, r29, r0
/* 80273B44 0026F7A4  54 65 F0 BE */	srwi r5, r3, 2
/* 80273B48 0026F7A8  38 7F 00 80 */	addi r3, r31, 0x80
/* 80273B4C 0026F7AC  38 E7 38 0C */	addi r7, r7, PlayRecordAlarmCallback@l
/* 80273B50 0026F7B0  7C 05 00 16 */	mulhwu r0, r5, r0
/* 80273B54 0026F7B4  1C C5 00 3C */	mulli r6, r5, 0x3c
/* 80273B58 0026F7B8  7C A0 22 14 */	add r5, r0, r4
/* 80273B5C 0026F7BC  4B FF 5E 29 */	bl OSSetAlarm
/* 80273B60 0026F7C0  48 00 00 74 */	b lbl_80273BD4
lbl_80273B64:
/* 80273B64 0026F7C4  4B FF EC 55 */	bl OSGetTime
/* 80273B68 0026F7C8  38 BF 00 00 */	addi r5, r31, 0
/* 80273B6C 0026F7CC  38 00 00 1F */	li r0, 0x1f
/* 80273B70 0026F7D0  90 85 00 64 */	stw r4, 0x64(r5)
/* 80273B74 0026F7D4  38 C5 00 04 */	addi r6, r5, 4
/* 80273B78 0026F7D8  38 80 00 00 */	li r4, 0
/* 80273B7C 0026F7DC  90 65 00 60 */	stw r3, 0x60(r5)
/* 80273B80 0026F7E0  7C 09 03 A6 */	mtctr r0
lbl_80273B84:
/* 80273B84 0026F7E4  80 06 00 00 */	lwz r0, 0(r6)
/* 80273B88 0026F7E8  38 C6 00 04 */	addi r6, r6, 4
/* 80273B8C 0026F7EC  7C 84 02 14 */	add r4, r4, r0
/* 80273B90 0026F7F0  42 00 FF F4 */	bdnz lbl_80273B84
/* 80273B94 0026F7F4  3C C0 80 27 */	lis r6, PlayRecordCallback@ha
/* 80273B98 0026F7F8  90 9F 00 00 */	stw r4, 0(r31)
/* 80273B9C 0026F7FC  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80273BA0 0026F800  38 9F 00 00 */	addi r4, r31, 0
/* 80273BA4 0026F804  38 C6 38 18 */	addi r6, r6, PlayRecordCallback@l
/* 80273BA8 0026F808  38 FF 01 40 */	addi r7, r31, 0x140
/* 80273BAC 0026F80C  38 A0 00 80 */	li r5, 0x80
/* 80273BB0 0026F810  48 07 3E 59 */	bl NANDWriteAsync
/* 80273BB4 0026F814  7C 7E 1B 78 */	mr r30, r3
/* 80273BB8 0026F818  48 00 00 1C */	b lbl_80273BD4
lbl_80273BBC:
/* 80273BBC 0026F81C  3C 80 80 27 */	lis r4, PlayRecordCallback@ha
/* 80273BC0 0026F820  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80273BC4 0026F824  38 84 38 18 */	addi r4, r4, PlayRecordCallback@l
/* 80273BC8 0026F828  38 BF 01 40 */	addi r5, r31, 0x140
/* 80273BCC 0026F82C  48 07 4B 29 */	bl NANDCloseAsync
/* 80273BD0 0026F830  7C 7E 1B 78 */	mr r30, r3
lbl_80273BD4:
/* 80273BD4 0026F834  2C 1E 00 00 */	cmpwi r30, 0
/* 80273BD8 0026F838  41 82 00 D0 */	beq lbl_80273CA8
/* 80273BDC 0026F83C  2C 1E FF FD */	cmpwi r30, -3
/* 80273BE0 0026F840  40 82 00 38 */	bne lbl_80273C18
/* 80273BE4 0026F844  38 7F 00 80 */	addi r3, r31, 0x80
/* 80273BE8 0026F848  4B FF 5B 3D */	bl OSCreateAlarm
/* 80273BEC 0026F84C  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80273BF0 0026F850  3C E0 80 27 */	lis r7, PlayRecordAlarmCallback@ha
/* 80273BF4 0026F854  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 80273BF8 0026F858  38 7F 00 80 */	addi r3, r31, 0x80
/* 80273BFC 0026F85C  38 E7 38 0C */	addi r7, r7, PlayRecordAlarmCallback@l
/* 80273C00 0026F860  38 A0 00 00 */	li r5, 0
/* 80273C04 0026F864  54 06 F0 BE */	srwi r6, r0, 2
/* 80273C08 0026F868  4B FF 5D 7D */	bl OSSetAlarm
/* 80273C0C 0026F86C  38 00 00 01 */	li r0, 1
/* 80273C10 0026F870  90 0D A8 78 */	stw r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273C14 0026F874  48 00 00 94 */	b lbl_80273CA8
lbl_80273C18:
/* 80273C18 0026F878  80 0D 87 F0 */	lwz r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273C1C 0026F87C  38 60 00 01 */	li r3, 1
/* 80273C20 0026F880  90 6D A8 6C */	stw r3, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273C24 0026F884  2C 00 00 04 */	cmpwi r0, 4
/* 80273C28 0026F888  41 82 00 78 */	beq lbl_80273CA0
/* 80273C2C 0026F88C  40 80 00 10 */	bge lbl_80273C3C
/* 80273C30 0026F890  2C 00 00 02 */	cmpwi r0, 2
/* 80273C34 0026F894  40 80 00 10 */	bge lbl_80273C44
/* 80273C38 0026F898  48 00 00 68 */	b lbl_80273CA0
lbl_80273C3C:
/* 80273C3C 0026F89C  2C 00 00 06 */	cmpwi r0, 6
/* 80273C40 0026F8A0  40 80 00 60 */	bge lbl_80273CA0
lbl_80273C44:
/* 80273C44 0026F8A4  38 00 00 06 */	li r0, 6
/* 80273C48 0026F8A8  3C 80 80 27 */	lis r4, PlayRecordCallback@ha
/* 80273C4C 0026F8AC  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273C50 0026F8B0  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80273C54 0026F8B4  38 84 38 18 */	addi r4, r4, PlayRecordCallback@l
/* 80273C58 0026F8B8  38 BF 01 40 */	addi r5, r31, 0x140
/* 80273C5C 0026F8BC  48 07 4A 99 */	bl NANDCloseAsync
/* 80273C60 0026F8C0  2C 03 FF FD */	cmpwi r3, -3
/* 80273C64 0026F8C4  7C 7E 1B 78 */	mr r30, r3
/* 80273C68 0026F8C8  40 82 00 40 */	bne lbl_80273CA8
/* 80273C6C 0026F8CC  38 00 00 01 */	li r0, 1
/* 80273C70 0026F8D0  38 7F 00 80 */	addi r3, r31, 0x80
/* 80273C74 0026F8D4  90 0D A8 78 */	stw r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273C78 0026F8D8  4B FF 5A AD */	bl OSCreateAlarm
/* 80273C7C 0026F8DC  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80273C80 0026F8E0  3C E0 80 27 */	lis r7, PlayRecordAlarmCallback@ha
/* 80273C84 0026F8E4  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 80273C88 0026F8E8  38 7F 00 80 */	addi r3, r31, 0x80
/* 80273C8C 0026F8EC  38 E7 38 0C */	addi r7, r7, PlayRecordAlarmCallback@l
/* 80273C90 0026F8F0  38 A0 00 00 */	li r5, 0
/* 80273C94 0026F8F4  54 06 F0 BE */	srwi r6, r0, 2
/* 80273C98 0026F8F8  4B FF 5C ED */	bl OSSetAlarm
/* 80273C9C 0026F8FC  48 00 00 0C */	b lbl_80273CA8
lbl_80273CA0:
/* 80273CA0 0026F900  38 00 00 07 */	li r0, 7
/* 80273CA4 0026F904  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
lbl_80273CA8:
/* 80273CA8 0026F908  93 CD A8 7C */	stw r30, lbl_8063FB3C-_SDA_BASE_(r13)
lbl_80273CAC:
/* 80273CAC 0026F90C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80273CB0 0026F910  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80273CB4 0026F914  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80273CB8 0026F918  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80273CBC 0026F91C  7C 08 03 A6 */	mtlr r0
/* 80273CC0 0026F920  38 21 00 20 */	addi r1, r1, 0x20
/* 80273CC4 0026F924  4E 80 00 20 */	blr

.global __OSStartPlayRecord
__OSStartPlayRecord:
/* 80273CC8 0026F928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80273CCC 0026F92C  7C 08 02 A6 */	mflr r0
/* 80273CD0 0026F930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80273CD4 0026F934  48 07 59 71 */	bl NANDInit
/* 80273CD8 0026F938  2C 03 00 00 */	cmpwi r3, 0
/* 80273CDC 0026F93C  40 82 00 30 */	bne lbl_80273D0C
/* 80273CE0 0026F940  38 00 00 00 */	li r0, 0
/* 80273CE4 0026F944  38 60 00 00 */	li r3, 0
/* 80273CE8 0026F948  90 0D A8 70 */	stw r0, lbl_8063FB30-_SDA_BASE_(r13)
/* 80273CEC 0026F94C  38 80 00 00 */	li r4, 0
/* 80273CF0 0026F950  90 0D A8 68 */	stw r0, lbl_8063FB28-_SDA_BASE_(r13)
/* 80273CF4 0026F954  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273CF8 0026F958  90 0D A8 6C */	stw r0, lbl_8063FB2C-_SDA_BASE_(r13)
/* 80273CFC 0026F95C  90 0D A8 78 */	stw r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273D00 0026F960  90 0D A8 74 */	stw r0, lbl_8063FB34-_SDA_BASE_(r13)
/* 80273D04 0026F964  90 0D A8 7C */	stw r0, lbl_8063FB3C-_SDA_BASE_(r13)
/* 80273D08 0026F968  4B FF FB 11 */	bl PlayRecordCallback
lbl_80273D0C:
/* 80273D0C 0026F96C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80273D10 0026F970  7C 08 03 A6 */	mtlr r0
/* 80273D14 0026F974  38 21 00 10 */	addi r1, r1, 0x10
/* 80273D18 0026F978  4E 80 00 20 */	blr

.global __OSStopPlayRecord
__OSStopPlayRecord:
/* 80273D1C 0026F97C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80273D20 0026F980  7C 08 02 A6 */	mflr r0
/* 80273D24 0026F984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80273D28 0026F988  39 61 00 20 */	addi r11, r1, 0x20
/* 80273D2C 0026F98C  4B F5 33 F9 */	bl _savegpr_26
/* 80273D30 0026F990  3F A0 80 51 */	lis r29, lbl_805152A0@ha
/* 80273D34 0026F994  3B BD 52 A0 */	addi r29, r29, lbl_805152A0@l
/* 80273D38 0026F998  4B FF AA 25 */	bl OSDisableInterrupts
/* 80273D3C 0026F99C  80 0D 87 F0 */	lwz r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273D40 0026F9A0  38 80 00 01 */	li r4, 1
/* 80273D44 0026F9A4  90 8D A8 70 */	stw r4, lbl_8063FB30-_SDA_BASE_(r13)
/* 80273D48 0026F9A8  7C 7A 1B 78 */	mr r26, r3
/* 80273D4C 0026F9AC  2C 00 00 07 */	cmpwi r0, 7
/* 80273D50 0026F9B0  41 82 00 1C */	beq lbl_80273D6C
/* 80273D54 0026F9B4  2C 00 00 00 */	cmpwi r0, 0
/* 80273D58 0026F9B8  41 82 00 14 */	beq lbl_80273D6C
/* 80273D5C 0026F9BC  2C 00 00 09 */	cmpwi r0, 9
/* 80273D60 0026F9C0  41 82 00 0C */	beq lbl_80273D6C
/* 80273D64 0026F9C4  2C 00 00 08 */	cmpwi r0, 8
/* 80273D68 0026F9C8  40 82 00 10 */	bne lbl_80273D78
lbl_80273D6C:
/* 80273D6C 0026F9CC  7F 43 D3 78 */	mr r3, r26
/* 80273D70 0026F9D0  4B FF AA 15 */	bl OSRestoreInterrupts
/* 80273D74 0026F9D4  48 00 01 70 */	b lbl_80273EE4
lbl_80273D78:
/* 80273D78 0026F9D8  2C 00 00 04 */	cmpwi r0, 4
/* 80273D7C 0026F9DC  40 82 00 64 */	bne lbl_80273DE0
/* 80273D80 0026F9E0  38 7D 00 80 */	addi r3, r29, 0x80
/* 80273D84 0026F9E4  4B FF 5C F5 */	bl OSCancelAlarm
/* 80273D88 0026F9E8  7F 43 D3 78 */	mr r3, r26
/* 80273D8C 0026F9EC  4B FF A9 F9 */	bl OSRestoreInterrupts
/* 80273D90 0026F9F0  4B FF EA 29 */	bl OSGetTime
/* 80273D94 0026F9F4  38 BD 00 00 */	addi r5, r29, 0
/* 80273D98 0026F9F8  38 00 00 1F */	li r0, 0x1f
/* 80273D9C 0026F9FC  90 85 00 64 */	stw r4, 0x64(r5)
/* 80273DA0 0026FA00  38 C5 00 04 */	addi r6, r5, 4
/* 80273DA4 0026FA04  38 80 00 00 */	li r4, 0
/* 80273DA8 0026FA08  90 65 00 60 */	stw r3, 0x60(r5)
/* 80273DAC 0026FA0C  7C 09 03 A6 */	mtctr r0
lbl_80273DB0:
/* 80273DB0 0026FA10  80 06 00 00 */	lwz r0, 0(r6)
/* 80273DB4 0026FA14  38 C6 00 04 */	addi r6, r6, 4
/* 80273DB8 0026FA18  7C 84 02 14 */	add r4, r4, r0
/* 80273DBC 0026FA1C  42 00 FF F4 */	bdnz lbl_80273DB0
/* 80273DC0 0026FA20  90 9D 00 00 */	stw r4, 0(r29)
/* 80273DC4 0026FA24  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80273DC8 0026FA28  38 9D 00 00 */	addi r4, r29, 0
/* 80273DCC 0026FA2C  38 A0 00 80 */	li r5, 0x80
/* 80273DD0 0026FA30  48 07 3B D1 */	bl NANDWrite
/* 80273DD4 0026FA34  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80273DD8 0026FA38  48 07 48 B1 */	bl NANDClose
/* 80273DDC 0026FA3C  48 00 01 08 */	b lbl_80273EE4
lbl_80273DE0:
/* 80273DE0 0026FA40  80 0D A8 78 */	lwz r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273DE4 0026FA44  2C 00 00 00 */	cmpwi r0, 0
/* 80273DE8 0026FA48  41 82 00 18 */	beq lbl_80273E00
/* 80273DEC 0026FA4C  38 7D 00 80 */	addi r3, r29, 0x80
/* 80273DF0 0026FA50  4B FF 5C 89 */	bl OSCancelAlarm
/* 80273DF4 0026FA54  7F 43 D3 78 */	mr r3, r26
/* 80273DF8 0026FA58  4B FF A9 8D */	bl OSRestoreInterrupts
/* 80273DFC 0026FA5C  48 00 00 78 */	b lbl_80273E74
lbl_80273E00:
/* 80273E00 0026FA60  4B FF A9 85 */	bl OSRestoreInterrupts
/* 80273E04 0026FA64  4B FF E9 B5 */	bl OSGetTime
/* 80273E08 0026FA68  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 80273E0C 0026FA6C  38 00 00 00 */	li r0, 0
/* 80273E10 0026FA70  7C 9E 23 78 */	mr r30, r4
/* 80273E14 0026FA74  7C 7F 1B 78 */	mr r31, r3
/* 80273E18 0026FA78  3B 45 4D D3 */	addi r26, r5, 0x10624DD3@l
/* 80273E1C 0026FA7C  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 80273E20 0026FA80  3F 60 80 00 */	lis r27, 0x8000
lbl_80273E24:
/* 80273E24 0026FA84  80 0D A8 74 */	lwz r0, lbl_8063FB34-_SDA_BASE_(r13)
/* 80273E28 0026FA88  2C 00 00 00 */	cmpwi r0, 0
/* 80273E2C 0026FA8C  40 82 00 48 */	bne lbl_80273E74
/* 80273E30 0026FA90  4B FF E9 89 */	bl OSGetTime
/* 80273E34 0026FA94  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 80273E38 0026FA98  7C 9E 20 10 */	subfc r4, r30, r4
/* 80273E3C 0026FA9C  7C 7F 19 10 */	subfe r3, r31, r3
/* 80273E40 0026FAA0  54 00 F0 BE */	srwi r0, r0, 2
/* 80273E44 0026FAA4  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 80273E48 0026FAA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80273E4C 0026FAAC  54 00 D1 BE */	srwi r0, r0, 6
/* 80273E50 0026FAB0  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 80273E54 0026FAB4  7C 04 00 10 */	subfc r0, r4, r0
/* 80273E58 0026FAB8  7C 63 E1 10 */	subfe r3, r3, r28
/* 80273E5C 0026FABC  7C 7C E1 10 */	subfe r3, r28, r28
/* 80273E60 0026FAC0  7C 63 00 D1 */	neg. r3, r3
/* 80273E64 0026FAC4  41 82 FF C0 */	beq lbl_80273E24
/* 80273E68 0026FAC8  38 00 00 08 */	li r0, 8
/* 80273E6C 0026FACC  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273E70 0026FAD0  48 00 00 7C */	b lbl_80273EEC
lbl_80273E74:
/* 80273E74 0026FAD4  80 0D 87 F0 */	lwz r0, lbl_8063DAB0-_SDA_BASE_(r13)
/* 80273E78 0026FAD8  2C 00 00 04 */	cmpwi r0, 4
/* 80273E7C 0026FADC  41 82 00 68 */	beq lbl_80273EE4
/* 80273E80 0026FAE0  40 80 00 14 */	bge lbl_80273E94
/* 80273E84 0026FAE4  2C 00 00 01 */	cmpwi r0, 1
/* 80273E88 0026FAE8  41 82 00 24 */	beq lbl_80273EAC
/* 80273E8C 0026FAEC  40 80 00 14 */	bge lbl_80273EA0
/* 80273E90 0026FAF0  48 00 00 54 */	b lbl_80273EE4
lbl_80273E94:
/* 80273E94 0026FAF4  2C 00 00 06 */	cmpwi r0, 6
/* 80273E98 0026FAF8  41 82 00 38 */	beq lbl_80273ED0
/* 80273E9C 0026FAFC  40 80 00 48 */	bge lbl_80273EE4
lbl_80273EA0:
/* 80273EA0 0026FB00  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80273EA4 0026FB04  48 07 47 E5 */	bl NANDClose
/* 80273EA8 0026FB08  48 00 00 3C */	b lbl_80273EE4
lbl_80273EAC:
/* 80273EAC 0026FB0C  80 0D A8 7C */	lwz r0, lbl_8063FB3C-_SDA_BASE_(r13)
/* 80273EB0 0026FB10  2C 00 00 00 */	cmpwi r0, 0
/* 80273EB4 0026FB14  40 82 00 30 */	bne lbl_80273EE4
/* 80273EB8 0026FB18  80 0D A8 78 */	lwz r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273EBC 0026FB1C  2C 00 00 00 */	cmpwi r0, 0
/* 80273EC0 0026FB20  40 82 00 24 */	bne lbl_80273EE4
/* 80273EC4 0026FB24  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80273EC8 0026FB28  48 07 47 C1 */	bl NANDClose
/* 80273ECC 0026FB2C  48 00 00 18 */	b lbl_80273EE4
lbl_80273ED0:
/* 80273ED0 0026FB30  80 0D A8 78 */	lwz r0, lbl_8063FB38-_SDA_BASE_(r13)
/* 80273ED4 0026FB34  2C 00 00 00 */	cmpwi r0, 0
/* 80273ED8 0026FB38  41 82 00 0C */	beq lbl_80273EE4
/* 80273EDC 0026FB3C  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80273EE0 0026FB40  48 07 47 A9 */	bl NANDClose
lbl_80273EE4:
/* 80273EE4 0026FB44  38 00 00 09 */	li r0, 9
/* 80273EE8 0026FB48  90 0D 87 F0 */	stw r0, lbl_8063DAB0-_SDA_BASE_(r13)
lbl_80273EEC:
/* 80273EEC 0026FB4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80273EF0 0026FB50  4B F5 32 81 */	bl _restgpr_26
/* 80273EF4 0026FB54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80273EF8 0026FB58  7C 08 03 A6 */	mtlr r0
/* 80273EFC 0026FB5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80273F00 0026FB60  4E 80 00 20 */	blr
