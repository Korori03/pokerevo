.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global WUDHidHostCallback
WUDHidHostCallback:
/* 802B9030 002B4C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9034 002B4C94  7C 08 02 A6 */	mflr r0
/* 802B9038 002B4C98  28 03 00 0F */	cmplwi r3, 0xf
/* 802B903C 002B4C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9040 002B4CA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B9044 002B4CA4  3F E0 80 54 */	lis r31, lbl_8053A4E0@ha
/* 802B9048 002B4CA8  3B FF A4 E0 */	addi r31, r31, lbl_8053A4E0@l
/* 802B904C 002B4CAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B9050 002B4CB0  7C 9E 23 78 */	mr r30, r4
/* 802B9054 002B4CB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B9058 002B4CB8  3F A0 80 44 */	lis r29, lbl_8043EEB0@ha
/* 802B905C 002B4CBC  3B BD EE B0 */	addi r29, r29, lbl_8043EEB0@l
/* 802B9060 002B4CC0  41 81 04 9C */	bgt lbl_802B94FC
/* 802B9064 002B4CC4  3C A0 80 44 */	lis r5, lbl_8043F0B0@ha
/* 802B9068 002B4CC8  54 60 10 3A */	slwi r0, r3, 2
/* 802B906C 002B4CCC  38 A5 F0 B0 */	addi r5, r5, lbl_8043F0B0@l
/* 802B9070 002B4CD0  7C A5 00 2E */	lwzx r5, r5, r0
/* 802B9074 002B4CD4  7C A9 03 A6 */	mtctr r5
/* 802B9078 002B4CD8  4E 80 04 20 */	bctr
/* 802B907C 002B4CDC  38 7D 00 00 */	addi r3, r29, 0
/* 802B9080 002B4CE0  4C C6 31 82 */	crclr 6
/* 802B9084 002B4CE4  48 00 04 F9 */	bl WUD_DEBUGPrint
/* 802B9088 002B4CE8  80 1F 07 40 */	lwz r0, 0x740(r31)
/* 802B908C 002B4CEC  60 00 00 01 */	ori r0, r0, 1
/* 802B9090 002B4CF0  90 1F 07 40 */	stw r0, 0x740(r31)
/* 802B9094 002B4CF4  48 00 04 68 */	b lbl_802B94FC
/* 802B9098 002B4CF8  38 7D 00 14 */	addi r3, r29, 0x14
/* 802B909C 002B4CFC  4C C6 31 82 */	crclr 6
/* 802B90A0 002B4D00  48 00 04 DD */	bl WUD_DEBUGPrint
/* 802B90A4 002B4D04  48 00 04 58 */	b lbl_802B94FC
/* 802B90A8 002B4D08  38 7D 00 28 */	addi r3, r29, 0x28
/* 802B90AC 002B4D0C  4C C6 31 82 */	crclr 6
/* 802B90B0 002B4D10  48 00 04 CD */	bl WUD_DEBUGPrint
/* 802B90B4 002B4D14  88 9E 00 07 */	lbz r4, 7(r30)
/* 802B90B8 002B4D18  38 7D 00 3C */	addi r3, r29, 0x3c
/* 802B90BC 002B4D1C  88 BE 00 00 */	lbz r5, 0(r30)
/* 802B90C0 002B4D20  88 DE 00 01 */	lbz r6, 1(r30)
/* 802B90C4 002B4D24  88 FE 00 02 */	lbz r7, 2(r30)
/* 802B90C8 002B4D28  89 1E 00 03 */	lbz r8, 3(r30)
/* 802B90CC 002B4D2C  89 3E 00 04 */	lbz r9, 4(r30)
/* 802B90D0 002B4D30  89 5E 00 05 */	lbz r10, 5(r30)
/* 802B90D4 002B4D34  4C C6 31 82 */	crclr 6
/* 802B90D8 002B4D38  48 00 04 A5 */	bl WUD_DEBUGPrint
/* 802B90DC 002B4D3C  88 9E 00 06 */	lbz r4, 6(r30)
/* 802B90E0 002B4D40  2C 04 00 00 */	cmpwi r4, 0
/* 802B90E4 002B4D44  40 82 01 30 */	bne lbl_802B9214
/* 802B90E8 002B4D48  3F A0 80 54 */	lis r29, lbl_8053B1C8@ha
/* 802B90EC 002B4D4C  7F C4 F3 78 */	mr r4, r30
/* 802B90F0 002B4D50  3B BD B1 C8 */	addi r29, r29, lbl_8053B1C8@l
/* 802B90F4 002B4D54  38 A0 00 06 */	li r5, 6
/* 802B90F8 002B4D58  38 7D 00 40 */	addi r3, r29, 0x40
/* 802B90FC 002B4D5C  4B F1 12 9D */	bl memcmp
/* 802B9100 002B4D60  2C 03 00 00 */	cmpwi r3, 0
/* 802B9104 002B4D64  41 82 00 10 */	beq lbl_802B9114
/* 802B9108 002B4D68  7F C3 F3 78 */	mr r3, r30
/* 802B910C 002B4D6C  4B FF E6 59 */	bl WUDiGetDevInfo
/* 802B9110 002B4D70  7C 7D 1B 78 */	mr r29, r3
lbl_802B9114:
/* 802B9114 002B4D74  88 1D 00 59 */	lbz r0, 0x59(r29)
/* 802B9118 002B4D78  2C 00 00 0C */	cmpwi r0, 0xc
/* 802B911C 002B4D7C  41 82 00 14 */	beq lbl_802B9130
/* 802B9120 002B4D80  40 80 00 24 */	bge lbl_802B9144
/* 802B9124 002B4D84  2C 00 00 02 */	cmpwi r0, 2
/* 802B9128 002B4D88  41 82 00 14 */	beq lbl_802B913C
/* 802B912C 002B4D8C  48 00 00 18 */	b lbl_802B9144
lbl_802B9130:
/* 802B9130 002B4D90  38 00 00 12 */	li r0, 0x12
/* 802B9134 002B4D94  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802B9138 002B4D98  48 00 00 0C */	b lbl_802B9144
lbl_802B913C:
/* 802B913C 002B4D9C  38 00 00 17 */	li r0, 0x17
/* 802B9140 002B4DA0  98 1F 00 0C */	stb r0, 0xc(r31)
lbl_802B9144:
/* 802B9144 002B4DA4  38 00 00 08 */	li r0, 8
/* 802B9148 002B4DA8  7F C3 F3 78 */	mr r3, r30
/* 802B914C 002B4DAC  98 1D 00 59 */	stb r0, 0x59(r29)
/* 802B9150 002B4DB0  88 1E 00 07 */	lbz r0, 7(r30)
/* 802B9154 002B4DB4  98 1D 00 56 */	stb r0, 0x56(r29)
/* 802B9158 002B4DB8  88 9F 06 E4 */	lbz r4, 0x6e4(r31)
/* 802B915C 002B4DBC  38 04 00 01 */	addi r0, r4, 1
/* 802B9160 002B4DC0  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 802B9164 002B4DC4  4B FF E6 01 */	bl WUDiGetDevInfo
/* 802B9168 002B4DC8  2C 03 00 00 */	cmpwi r3, 0
/* 802B916C 002B4DCC  7C 7D 1B 78 */	mr r29, r3
/* 802B9170 002B4DD0  40 82 00 0C */	bne lbl_802B917C
/* 802B9174 002B4DD4  3F A0 80 54 */	lis r29, lbl_8053B1C8@ha
/* 802B9178 002B4DD8  3B BD B1 C8 */	addi r29, r29, lbl_8053B1C8@l
lbl_802B917C:
/* 802B917C 002B4DDC  88 1E 00 07 */	lbz r0, 7(r30)
/* 802B9180 002B4DE0  3C A0 80 54 */	lis r5, lbl_8053B228@ha
/* 802B9184 002B4DE4  3C 80 80 54 */	lis r4, lbl_8053C280@ha
/* 802B9188 002B4DE8  3C 60 80 54 */	lis r3, lbl_8053C2A0@ha
/* 802B918C 002B4DEC  38 DD 00 40 */	addi r6, r29, 0x40
/* 802B9190 002B4DF0  54 00 10 3A */	slwi r0, r0, 2
/* 802B9194 002B4DF4  38 A5 B2 28 */	addi r5, r5, lbl_8053B228@l
/* 802B9198 002B4DF8  38 84 C2 80 */	addi r4, r4, lbl_8053C280@l
/* 802B919C 002B4DFC  7C C5 01 2E */	stwx r6, r5, r0
/* 802B91A0 002B4E00  38 A0 00 00 */	li r5, 0
/* 802B91A4 002B4E04  38 63 C2 A0 */	addi r3, r3, lbl_8053C2A0@l
/* 802B91A8 002B4E08  88 1E 00 07 */	lbz r0, 7(r30)
/* 802B91AC 002B4E0C  54 00 08 3C */	slwi r0, r0, 1
/* 802B91B0 002B4E10  7C A4 03 2E */	sthx r5, r4, r0
/* 802B91B4 002B4E14  88 1E 00 07 */	lbz r0, 7(r30)
/* 802B91B8 002B4E18  54 00 08 3C */	slwi r0, r0, 1
/* 802B91BC 002B4E1C  7C A3 03 2E */	sthx r5, r3, r0
/* 802B91C0 002B4E20  88 1D 00 5B */	lbz r0, 0x5b(r29)
/* 802B91C4 002B4E24  28 00 00 03 */	cmplwi r0, 3
/* 802B91C8 002B4E28  41 82 00 0C */	beq lbl_802B91D4
/* 802B91CC 002B4E2C  28 00 00 01 */	cmplwi r0, 1
/* 802B91D0 002B4E30  40 82 00 10 */	bne lbl_802B91E0
lbl_802B91D4:
/* 802B91D4 002B4E34  7F A3 EB 78 */	mr r3, r29
/* 802B91D8 002B4E38  4B FF E7 25 */	bl WUDiMoveTopSmpDevInfoPtr
/* 802B91DC 002B4E3C  48 00 00 0C */	b lbl_802B91E8
lbl_802B91E0:
/* 802B91E0 002B4E40  7F A3 EB 78 */	mr r3, r29
/* 802B91E4 002B4E44  4B FF EA A1 */	bl WUDiMoveTopStdDevInfoPtr
lbl_802B91E8:
/* 802B91E8 002B4E48  38 7D 00 40 */	addi r3, r29, 0x40
/* 802B91EC 002B4E4C  38 80 00 08 */	li r4, 8
/* 802B91F0 002B4E50  4B FF D8 25 */	bl WUDSetSniffMode
/* 802B91F4 002B4E54  81 9F 06 F0 */	lwz r12, 0x6f0(r31)
/* 802B91F8 002B4E58  2C 0C 00 00 */	cmpwi r12, 0
/* 802B91FC 002B4E5C  41 82 03 00 */	beq lbl_802B94FC
/* 802B9200 002B4E60  88 7E 00 07 */	lbz r3, 7(r30)
/* 802B9204 002B4E64  38 80 00 01 */	li r4, 1
/* 802B9208 002B4E68  7D 89 03 A6 */	mtctr r12
/* 802B920C 002B4E6C  4E 80 04 21 */	bctrl
/* 802B9210 002B4E70  48 00 02 EC */	b lbl_802B94FC
lbl_802B9214:
/* 802B9214 002B4E74  38 7D 00 70 */	addi r3, r29, 0x70
/* 802B9218 002B4E78  4C C6 31 82 */	crclr 6
/* 802B921C 002B4E7C  48 00 03 61 */	bl WUD_DEBUGPrint
/* 802B9220 002B4E80  3F A0 80 54 */	lis r29, lbl_8053B1C8@ha
/* 802B9224 002B4E84  7F C3 F3 78 */	mr r3, r30
/* 802B9228 002B4E88  3B BD B1 C8 */	addi r29, r29, lbl_8053B1C8@l
/* 802B922C 002B4E8C  38 A0 00 06 */	li r5, 6
/* 802B9230 002B4E90  38 9D 00 40 */	addi r4, r29, 0x40
/* 802B9234 002B4E94  4B F1 11 65 */	bl memcmp
/* 802B9238 002B4E98  2C 03 00 00 */	cmpwi r3, 0
/* 802B923C 002B4E9C  40 82 02 C0 */	bne lbl_802B94FC
/* 802B9240 002B4EA0  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 802B9244 002B4EA4  2C 00 00 00 */	cmpwi r0, 0
/* 802B9248 002B4EA8  41 82 02 B4 */	beq lbl_802B94FC
/* 802B924C 002B4EAC  88 1D 00 59 */	lbz r0, 0x59(r29)
/* 802B9250 002B4EB0  28 00 00 02 */	cmplwi r0, 2
/* 802B9254 002B4EB4  40 82 02 A8 */	bne lbl_802B94FC
/* 802B9258 002B4EB8  7F C3 F3 78 */	mr r3, r30
/* 802B925C 002B4EBC  4B FF E5 09 */	bl WUDiGetDevInfo
/* 802B9260 002B4EC0  2C 03 00 00 */	cmpwi r3, 0
/* 802B9264 002B4EC4  41 82 00 24 */	beq lbl_802B9288
/* 802B9268 002B4EC8  88 1E 00 06 */	lbz r0, 6(r30)
/* 802B926C 002B4ECC  28 00 00 0C */	cmplwi r0, 0xc
/* 802B9270 002B4ED0  40 82 00 18 */	bne lbl_802B9288
/* 802B9274 002B4ED4  7F C3 F3 78 */	mr r3, r30
/* 802B9278 002B4ED8  4B FF E3 A9 */	bl WUDiRemoveDevice
/* 802B927C 002B4EDC  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 802B9280 002B4EE0  38 03 FF FF */	addi r0, r3, -1
/* 802B9284 002B4EE4  98 1F 06 E5 */	stb r0, 0x6e5(r31)
lbl_802B9288:
/* 802B9288 002B4EE8  38 00 00 FF */	li r0, 0xff
/* 802B928C 002B4EEC  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802B9290 002B4EF0  48 00 02 6C */	b lbl_802B94FC
/* 802B9294 002B4EF4  38 7D 00 80 */	addi r3, r29, 0x80
/* 802B9298 002B4EF8  4C C6 31 82 */	crclr 6
/* 802B929C 002B4EFC  48 00 02 E1 */	bl WUD_DEBUGPrint
/* 802B92A0 002B4F00  88 9F 06 E4 */	lbz r4, 0x6e4(r31)
/* 802B92A4 002B4F04  38 7D 00 94 */	addi r3, r29, 0x94
/* 802B92A8 002B4F08  38 04 FF FF */	addi r0, r4, -1
/* 802B92AC 002B4F0C  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 802B92B0 002B4F10  88 9E 00 01 */	lbz r4, 1(r30)
/* 802B92B4 002B4F14  88 BE 00 00 */	lbz r5, 0(r30)
/* 802B92B8 002B4F18  4C C6 31 82 */	crclr 6
/* 802B92BC 002B4F1C  48 00 02 C1 */	bl WUD_DEBUGPrint
/* 802B92C0 002B4F20  88 1E 00 01 */	lbz r0, 1(r30)
/* 802B92C4 002B4F24  3C 60 80 54 */	lis r3, lbl_8053B228@ha
/* 802B92C8 002B4F28  38 63 B2 28 */	addi r3, r3, lbl_8053B228@l
/* 802B92CC 002B4F2C  54 00 10 3A */	slwi r0, r0, 2
/* 802B92D0 002B4F30  7C 63 00 2E */	lwzx r3, r3, r0
/* 802B92D4 002B4F34  4B FF E4 91 */	bl WUDiGetDevInfo
/* 802B92D8 002B4F38  2C 03 00 00 */	cmpwi r3, 0
/* 802B92DC 002B4F3C  41 82 00 24 */	beq lbl_802B9300
/* 802B92E0 002B4F40  88 03 00 5B */	lbz r0, 0x5b(r3)
/* 802B92E4 002B4F44  28 00 00 03 */	cmplwi r0, 3
/* 802B92E8 002B4F48  41 82 00 0C */	beq lbl_802B92F4
/* 802B92EC 002B4F4C  28 00 00 01 */	cmplwi r0, 1
/* 802B92F0 002B4F50  40 82 00 0C */	bne lbl_802B92FC
lbl_802B92F4:
/* 802B92F4 002B4F54  4B FF E8 39 */	bl WUDiMoveTopOfDisconnectedSmpDevice
/* 802B92F8 002B4F58  48 00 00 08 */	b lbl_802B9300
lbl_802B92FC:
/* 802B92FC 002B4F5C  4B FF EB B9 */	bl WUDiMoveTopOfDisconnectedStdDevice
lbl_802B9300:
/* 802B9300 002B4F60  88 1E 00 01 */	lbz r0, 1(r30)
/* 802B9304 002B4F64  3C A0 80 54 */	lis r5, lbl_8053B228@ha
/* 802B9308 002B4F68  3C 80 80 54 */	lis r4, lbl_8053C280@ha
/* 802B930C 002B4F6C  81 9F 06 F0 */	lwz r12, 0x6f0(r31)
/* 802B9310 002B4F70  54 00 10 3A */	slwi r0, r0, 2
/* 802B9314 002B4F74  38 A5 B2 28 */	addi r5, r5, lbl_8053B228@l
/* 802B9318 002B4F78  38 C0 00 00 */	li r6, 0
/* 802B931C 002B4F7C  3C 60 80 54 */	lis r3, lbl_8053C2A0@ha
/* 802B9320 002B4F80  7C C5 01 2E */	stwx r6, r5, r0
/* 802B9324 002B4F84  38 84 C2 80 */	addi r4, r4, lbl_8053C280@l
/* 802B9328 002B4F88  2C 0C 00 00 */	cmpwi r12, 0
/* 802B932C 002B4F8C  38 63 C2 A0 */	addi r3, r3, lbl_8053C2A0@l
/* 802B9330 002B4F90  88 1E 00 01 */	lbz r0, 1(r30)
/* 802B9334 002B4F94  54 00 08 3C */	slwi r0, r0, 1
/* 802B9338 002B4F98  7C C4 03 2E */	sthx r6, r4, r0
/* 802B933C 002B4F9C  88 1E 00 01 */	lbz r0, 1(r30)
/* 802B9340 002B4FA0  54 00 08 3C */	slwi r0, r0, 1
/* 802B9344 002B4FA4  7C C3 03 2E */	sthx r6, r3, r0
/* 802B9348 002B4FA8  41 82 01 B4 */	beq lbl_802B94FC
/* 802B934C 002B4FAC  88 7E 00 01 */	lbz r3, 1(r30)
/* 802B9350 002B4FB0  38 80 00 00 */	li r4, 0
/* 802B9354 002B4FB4  7D 89 03 A6 */	mtctr r12
/* 802B9358 002B4FB8  4E 80 04 21 */	bctrl
/* 802B935C 002B4FBC  48 00 01 A0 */	b lbl_802B94FC
/* 802B9360 002B4FC0  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 802B9364 002B4FC4  4C C6 31 82 */	crclr 6
/* 802B9368 002B4FC8  48 00 02 15 */	bl WUD_DEBUGPrint
/* 802B936C 002B4FCC  48 00 01 90 */	b lbl_802B94FC
/* 802B9370 002B4FD0  38 7D 00 CC */	addi r3, r29, 0xcc
/* 802B9374 002B4FD4  4C C6 31 82 */	crclr 6
/* 802B9378 002B4FD8  48 00 02 05 */	bl WUD_DEBUGPrint
/* 802B937C 002B4FDC  48 00 01 80 */	b lbl_802B94FC
/* 802B9380 002B4FE0  38 7D 00 E0 */	addi r3, r29, 0xe0
/* 802B9384 002B4FE4  4C C6 31 82 */	crclr 6
/* 802B9388 002B4FE8  48 00 01 F5 */	bl WUD_DEBUGPrint
/* 802B938C 002B4FEC  48 00 01 70 */	b lbl_802B94FC
/* 802B9390 002B4FF0  38 7D 00 F8 */	addi r3, r29, 0xf8
/* 802B9394 002B4FF4  4C C6 31 82 */	crclr 6
/* 802B9398 002B4FF8  48 00 01 E5 */	bl WUD_DEBUGPrint
/* 802B939C 002B4FFC  48 00 01 60 */	b lbl_802B94FC
/* 802B93A0 002B5000  38 7D 01 10 */	addi r3, r29, 0x110
/* 802B93A4 002B5004  4C C6 31 82 */	crclr 6
/* 802B93A8 002B5008  48 00 01 D5 */	bl WUD_DEBUGPrint
/* 802B93AC 002B500C  48 00 01 50 */	b lbl_802B94FC
/* 802B93B0 002B5010  38 7D 01 28 */	addi r3, r29, 0x128
/* 802B93B4 002B5014  4C C6 31 82 */	crclr 6
/* 802B93B8 002B5018  48 00 01 C5 */	bl WUD_DEBUGPrint
/* 802B93BC 002B501C  48 00 01 40 */	b lbl_802B94FC
/* 802B93C0 002B5020  38 7D 01 40 */	addi r3, r29, 0x140
/* 802B93C4 002B5024  4C C6 31 82 */	crclr 6
/* 802B93C8 002B5028  48 00 01 B5 */	bl WUD_DEBUGPrint
/* 802B93CC 002B502C  48 00 01 30 */	b lbl_802B94FC
/* 802B93D0 002B5030  38 7D 01 58 */	addi r3, r29, 0x158
/* 802B93D4 002B5034  4C C6 31 82 */	crclr 6
/* 802B93D8 002B5038  48 00 01 A5 */	bl WUD_DEBUGPrint
/* 802B93DC 002B503C  88 1E 00 05 */	lbz r0, 5(r30)
/* 802B93E0 002B5040  38 7D 01 6C */	addi r3, r29, 0x16c
/* 802B93E4 002B5044  90 01 00 08 */	stw r0, 8(r1)
/* 802B93E8 002B5048  88 9E 00 06 */	lbz r4, 6(r30)
/* 802B93EC 002B504C  88 BE 00 07 */	lbz r5, 7(r30)
/* 802B93F0 002B5050  88 DE 00 00 */	lbz r6, 0(r30)
/* 802B93F4 002B5054  88 FE 00 01 */	lbz r7, 1(r30)
/* 802B93F8 002B5058  89 1E 00 02 */	lbz r8, 2(r30)
/* 802B93FC 002B505C  89 3E 00 03 */	lbz r9, 3(r30)
/* 802B9400 002B5060  89 5E 00 04 */	lbz r10, 4(r30)
/* 802B9404 002B5064  4C C6 31 82 */	crclr 6
/* 802B9408 002B5068  48 00 01 75 */	bl WUD_DEBUGPrint
/* 802B940C 002B506C  7F C3 F3 78 */	mr r3, r30
/* 802B9410 002B5070  4B FF E3 55 */	bl WUDiGetDevInfo
/* 802B9414 002B5074  88 1E 00 07 */	lbz r0, 7(r30)
/* 802B9418 002B5078  98 03 00 56 */	stb r0, 0x56(r3)
/* 802B941C 002B507C  48 00 00 E0 */	b lbl_802B94FC
/* 802B9420 002B5080  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 802B9424 002B5084  4C C6 31 82 */	crclr 6
/* 802B9428 002B5088  48 00 01 55 */	bl WUD_DEBUGPrint
/* 802B942C 002B508C  88 1E 00 05 */	lbz r0, 5(r30)
/* 802B9430 002B5090  38 7D 01 6C */	addi r3, r29, 0x16c
/* 802B9434 002B5094  90 01 00 08 */	stw r0, 8(r1)
/* 802B9438 002B5098  88 9E 00 06 */	lbz r4, 6(r30)
/* 802B943C 002B509C  88 BE 00 07 */	lbz r5, 7(r30)
/* 802B9440 002B50A0  88 DE 00 00 */	lbz r6, 0(r30)
/* 802B9444 002B50A4  88 FE 00 01 */	lbz r7, 1(r30)
/* 802B9448 002B50A8  89 1E 00 02 */	lbz r8, 2(r30)
/* 802B944C 002B50AC  89 3E 00 03 */	lbz r9, 3(r30)
/* 802B9450 002B50B0  89 5E 00 04 */	lbz r10, 4(r30)
/* 802B9454 002B50B4  4C C6 31 82 */	crclr 6
/* 802B9458 002B50B8  48 00 01 25 */	bl WUD_DEBUGPrint
/* 802B945C 002B50BC  48 00 00 A0 */	b lbl_802B94FC
/* 802B9460 002B50C0  38 7D 01 C0 */	addi r3, r29, 0x1c0
/* 802B9464 002B50C4  4C C6 31 82 */	crclr 6
/* 802B9468 002B50C8  48 00 01 15 */	bl WUD_DEBUGPrint
/* 802B946C 002B50CC  48 00 00 90 */	b lbl_802B94FC
/* 802B9470 002B50D0  A0 04 00 00 */	lhz r0, 0(r4)
/* 802B9474 002B50D4  88 7F 06 E5 */	lbz r3, 0x6e5(r31)
/* 802B9478 002B50D8  B0 1F 07 44 */	sth r0, 0x744(r31)
/* 802B947C 002B50DC  A0 04 00 02 */	lhz r0, 2(r4)
/* 802B9480 002B50E0  B0 1F 07 46 */	sth r0, 0x746(r31)
/* 802B9484 002B50E4  A0 04 00 04 */	lhz r0, 4(r4)
/* 802B9488 002B50E8  7C 03 00 00 */	cmpw r3, r0
/* 802B948C 002B50EC  40 80 00 18 */	bge lbl_802B94A4
/* 802B9490 002B50F0  38 7D 01 D8 */	addi r3, r29, 0x1d8
/* 802B9494 002B50F4  4C C6 31 82 */	crclr 6
/* 802B9498 002B50F8  4B D4 E6 2D */	bl OSReport
/* 802B949C 002B50FC  A0 1E 00 04 */	lhz r0, 4(r30)
/* 802B94A0 002B5100  98 1F 06 E5 */	stb r0, 0x6e5(r31)
lbl_802B94A4:
/* 802B94A4 002B5104  3C A0 80 54 */	lis r5, lbl_8053C280@ha
/* 802B94A8 002B5108  3C 60 80 54 */	lis r3, lbl_8053C2A0@ha
/* 802B94AC 002B510C  7F C6 F3 78 */	mr r6, r30
/* 802B94B0 002B5110  38 E0 00 00 */	li r7, 0
/* 802B94B4 002B5114  38 A5 C2 80 */	addi r5, r5, lbl_8053C280@l
/* 802B94B8 002B5118  38 63 C2 A0 */	addi r3, r3, lbl_8053C2A0@l
/* 802B94BC 002B511C  48 00 00 34 */	b lbl_802B94F0
lbl_802B94C0:
/* 802B94C0 002B5120  88 06 00 06 */	lbz r0, 6(r6)
/* 802B94C4 002B5124  28 00 00 10 */	cmplwi r0, 0x10
/* 802B94C8 002B5128  40 80 00 20 */	bge lbl_802B94E8
/* 802B94CC 002B512C  A0 86 00 08 */	lhz r4, 8(r6)
/* 802B94D0 002B5130  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 802B94D4 002B5134  7C 85 03 2E */	sthx r4, r5, r0
/* 802B94D8 002B5138  88 06 00 06 */	lbz r0, 6(r6)
/* 802B94DC 002B513C  A0 86 00 0A */	lhz r4, 0xa(r6)
/* 802B94E0 002B5140  54 00 08 3C */	slwi r0, r0, 1
/* 802B94E4 002B5144  7C 83 03 2E */	sthx r4, r3, r0
lbl_802B94E8:
/* 802B94E8 002B5148  38 C6 00 06 */	addi r6, r6, 6
/* 802B94EC 002B514C  38 E7 00 01 */	addi r7, r7, 1
lbl_802B94F0:
/* 802B94F0 002B5150  A0 1E 00 04 */	lhz r0, 4(r30)
/* 802B94F4 002B5154  7C 07 00 00 */	cmpw r7, r0
/* 802B94F8 002B5158  41 80 FF C8 */	blt lbl_802B94C0
lbl_802B94FC:
/* 802B94FC 002B515C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9500 002B5160  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B9504 002B5164  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B9508 002B5168  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B950C 002B516C  7C 08 03 A6 */	mtlr r0
/* 802B9510 002B5170  38 21 00 20 */	addi r1, r1, 0x20
/* 802B9514 002B5174  4E 80 00 20 */	blr

.global bta_hh_co_data
bta_hh_co_data:
/* 802B9518 002B5178  28 08 00 03 */	cmplwi r8, 3
/* 802B951C 002B517C  3C C0 80 54 */	lis r6, lbl_8053A4E0@ha
/* 802B9520 002B5180  38 C6 A4 E0 */	addi r6, r6, lbl_8053A4E0@l
/* 802B9524 002B5184  40 82 00 18 */	bne lbl_802B953C
/* 802B9528 002B5188  81 86 06 EC */	lwz r12, 0x6ec(r6)
/* 802B952C 002B518C  2C 0C 00 00 */	cmpwi r12, 0
/* 802B9530 002B5190  4D 82 00 20 */	beqlr
/* 802B9534 002B5194  7D 89 03 A6 */	mtctr r12
/* 802B9538 002B5198  4E 80 04 20 */	bctr
lbl_802B953C:
/* 802B953C 002B519C  3C 60 80 44 */	lis r3, lbl_8043F0F0@ha
/* 802B9540 002B51A0  7D 04 43 78 */	mr r4, r8
/* 802B9544 002B51A4  38 63 F0 F0 */	addi r3, r3, lbl_8043F0F0@l
/* 802B9548 002B51A8  4C C6 31 82 */	crclr 6
/* 802B954C 002B51AC  48 00 00 30 */	b WUD_DEBUGPrint
/* 802B9550 002B51B0  4E 80 00 20 */	blr

.global bta_hh_co_open
bta_hh_co_open:
/* 802B9554 002B51B4  3C 60 80 44 */	lis r3, lbl_8043F108@ha
/* 802B9558 002B51B8  38 63 F1 08 */	addi r3, r3, lbl_8043F108@l
/* 802B955C 002B51BC  4C C6 31 82 */	crclr 6
/* 802B9560 002B51C0  48 00 00 1C */	b WUD_DEBUGPrint

.global bta_hh_co_close
bta_hh_co_close:
/* 802B9564 002B51C4  3C 60 80 44 */	lis r3, lbl_8043F11C@ha
/* 802B9568 002B51C8  38 63 F1 1C */	addi r3, r3, lbl_8043F11C@l
/* 802B956C 002B51CC  4C C6 31 82 */	crclr 6
/* 802B9570 002B51D0  48 00 00 0C */	b WUD_DEBUGPrint

.global bta_dm_co_get_compress_memory
bta_dm_co_get_compress_memory:
/* 802B9574 002B51D4  38 60 00 00 */	li r3, 0
/* 802B9578 002B51D8  4E 80 00 20 */	blr
