.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global CircleBufferReadBytes
CircleBufferReadBytes:
/* 801D9CB0 001D5910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9CB4 001D5914  7C 08 02 A6 */	mflr r0
/* 801D9CB8 001D5918  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9CBC 001D591C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D9CC0 001D5920  7C BF 2B 78 */	mr r31, r5
/* 801D9CC4 001D5924  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9CC8 001D5928  7C 7E 1B 78 */	mr r30, r3
/* 801D9CCC 001D592C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D9CD0 001D5930  93 81 00 10 */	stw r28, 0x10(r1)
/* 801D9CD4 001D5934  7C 9C 23 78 */	mr r28, r4
/* 801D9CD8 001D5938  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801D9CDC 001D593C  7C 1F 00 40 */	cmplw r31, r0
/* 801D9CE0 001D5940  40 81 00 0C */	ble lbl_801D9CEC
/* 801D9CE4 001D5944  38 60 FF FF */	li r3, -1
/* 801D9CE8 001D5948  48 00 00 B0 */	b lbl_801D9D98
lbl_801D9CEC:
/* 801D9CEC 001D594C  38 7E 00 18 */	addi r3, r30, 0x18
/* 801D9CF0 001D5950  48 00 02 4D */	bl MWEnterCriticalSection
/* 801D9CF4 001D5954  80 7E 00 08 */	lwz r3, 8(r30)
/* 801D9CF8 001D5958  80 9E 00 00 */	lwz r4, 0(r30)
/* 801D9CFC 001D595C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801D9D00 001D5960  7C 63 20 50 */	subf r3, r3, r4
/* 801D9D04 001D5964  7F A3 00 50 */	subf r29, r3, r0
/* 801D9D08 001D5968  7C 1F E8 40 */	cmplw r31, r29
/* 801D9D0C 001D596C  40 80 00 20 */	bge lbl_801D9D2C
/* 801D9D10 001D5970  7F 83 E3 78 */	mr r3, r28
/* 801D9D14 001D5974  7F E5 FB 78 */	mr r5, r31
/* 801D9D18 001D5978  4B E2 A2 E9 */	bl memcpy
/* 801D9D1C 001D597C  80 1E 00 00 */	lwz r0, 0(r30)
/* 801D9D20 001D5980  7C 00 FA 14 */	add r0, r0, r31
/* 801D9D24 001D5984  90 1E 00 00 */	stw r0, 0(r30)
/* 801D9D28 001D5988  48 00 00 30 */	b lbl_801D9D58
lbl_801D9D2C:
/* 801D9D2C 001D598C  7F 83 E3 78 */	mr r3, r28
/* 801D9D30 001D5990  7F A5 EB 78 */	mr r5, r29
/* 801D9D34 001D5994  4B E2 A2 CD */	bl memcpy
/* 801D9D38 001D5998  80 9E 00 08 */	lwz r4, 8(r30)
/* 801D9D3C 001D599C  7C 7C EA 14 */	add r3, r28, r29
/* 801D9D40 001D59A0  7C BD F8 50 */	subf r5, r29, r31
/* 801D9D44 001D59A4  4B E2 A2 BD */	bl memcpy
/* 801D9D48 001D59A8  80 1E 00 08 */	lwz r0, 8(r30)
/* 801D9D4C 001D59AC  7C 00 FA 14 */	add r0, r0, r31
/* 801D9D50 001D59B0  7C 1D 00 50 */	subf r0, r29, r0
/* 801D9D54 001D59B4  90 1E 00 00 */	stw r0, 0(r30)
lbl_801D9D58:
/* 801D9D58 001D59B8  80 9E 00 08 */	lwz r4, 8(r30)
/* 801D9D5C 001D59BC  80 1E 00 00 */	lwz r0, 0(r30)
/* 801D9D60 001D59C0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801D9D64 001D59C4  7C 04 00 50 */	subf r0, r4, r0
/* 801D9D68 001D59C8  7C 03 00 40 */	cmplw r3, r0
/* 801D9D6C 001D59CC  40 82 00 08 */	bne lbl_801D9D74
/* 801D9D70 001D59D0  90 9E 00 00 */	stw r4, 0(r30)
lbl_801D9D74:
/* 801D9D74 001D59D4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801D9D78 001D59D8  38 7E 00 18 */	addi r3, r30, 0x18
/* 801D9D7C 001D59DC  7C 00 FA 14 */	add r0, r0, r31
/* 801D9D80 001D59E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801D9D84 001D59E4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801D9D88 001D59E8  7C 1F 00 50 */	subf r0, r31, r0
/* 801D9D8C 001D59EC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 801D9D90 001D59F0  48 00 01 89 */	bl MWExitCriticalSection
/* 801D9D94 001D59F4  38 60 00 00 */	li r3, 0
lbl_801D9D98:
/* 801D9D98 001D59F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9D9C 001D59FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9DA0 001D5A00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D9DA4 001D5A04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D9DA8 001D5A08  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801D9DAC 001D5A0C  7C 08 03 A6 */	mtlr r0
/* 801D9DB0 001D5A10  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9DB4 001D5A14  4E 80 00 20 */	blr

.global CircleBufferWriteBytes
CircleBufferWriteBytes:
/* 801D9DB8 001D5A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D9DBC 001D5A1C  7C 08 02 A6 */	mflr r0
/* 801D9DC0 001D5A20  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D9DC4 001D5A24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D9DC8 001D5A28  7C BF 2B 78 */	mr r31, r5
/* 801D9DCC 001D5A2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D9DD0 001D5A30  7C 7E 1B 78 */	mr r30, r3
/* 801D9DD4 001D5A34  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D9DD8 001D5A38  93 81 00 10 */	stw r28, 0x10(r1)
/* 801D9DDC 001D5A3C  7C 9C 23 78 */	mr r28, r4
/* 801D9DE0 001D5A40  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801D9DE4 001D5A44  7C 1F 00 40 */	cmplw r31, r0
/* 801D9DE8 001D5A48  40 81 00 0C */	ble lbl_801D9DF4
/* 801D9DEC 001D5A4C  38 60 FF FF */	li r3, -1
/* 801D9DF0 001D5A50  48 00 00 B0 */	b lbl_801D9EA0
lbl_801D9DF4:
/* 801D9DF4 001D5A54  38 7E 00 18 */	addi r3, r30, 0x18
/* 801D9DF8 001D5A58  48 00 01 45 */	bl MWEnterCriticalSection
/* 801D9DFC 001D5A5C  80 9E 00 08 */	lwz r4, 8(r30)
/* 801D9E00 001D5A60  80 7E 00 04 */	lwz r3, 4(r30)
/* 801D9E04 001D5A64  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801D9E08 001D5A68  7C 84 18 50 */	subf r4, r4, r3
/* 801D9E0C 001D5A6C  7F A4 00 50 */	subf r29, r4, r0
/* 801D9E10 001D5A70  7C 1D F8 40 */	cmplw r29, r31
/* 801D9E14 001D5A74  41 80 00 20 */	blt lbl_801D9E34
/* 801D9E18 001D5A78  7F 84 E3 78 */	mr r4, r28
/* 801D9E1C 001D5A7C  7F E5 FB 78 */	mr r5, r31
/* 801D9E20 001D5A80  4B E2 A1 E1 */	bl memcpy
/* 801D9E24 001D5A84  80 1E 00 04 */	lwz r0, 4(r30)
/* 801D9E28 001D5A88  7C 00 FA 14 */	add r0, r0, r31
/* 801D9E2C 001D5A8C  90 1E 00 04 */	stw r0, 4(r30)
/* 801D9E30 001D5A90  48 00 00 30 */	b lbl_801D9E60
lbl_801D9E34:
/* 801D9E34 001D5A94  7F 84 E3 78 */	mr r4, r28
/* 801D9E38 001D5A98  7F A5 EB 78 */	mr r5, r29
/* 801D9E3C 001D5A9C  4B E2 A1 C5 */	bl memcpy
/* 801D9E40 001D5AA0  80 7E 00 08 */	lwz r3, 8(r30)
/* 801D9E44 001D5AA4  7C 9C EA 14 */	add r4, r28, r29
/* 801D9E48 001D5AA8  7C BD F8 50 */	subf r5, r29, r31
/* 801D9E4C 001D5AAC  4B E2 A1 B5 */	bl memcpy
/* 801D9E50 001D5AB0  80 1E 00 08 */	lwz r0, 8(r30)
/* 801D9E54 001D5AB4  7C 00 FA 14 */	add r0, r0, r31
/* 801D9E58 001D5AB8  7C 1D 00 50 */	subf r0, r29, r0
/* 801D9E5C 001D5ABC  90 1E 00 04 */	stw r0, 4(r30)
lbl_801D9E60:
/* 801D9E60 001D5AC0  80 9E 00 08 */	lwz r4, 8(r30)
/* 801D9E64 001D5AC4  80 1E 00 04 */	lwz r0, 4(r30)
/* 801D9E68 001D5AC8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801D9E6C 001D5ACC  7C 04 00 50 */	subf r0, r4, r0
/* 801D9E70 001D5AD0  7C 03 00 40 */	cmplw r3, r0
/* 801D9E74 001D5AD4  40 82 00 08 */	bne lbl_801D9E7C
/* 801D9E78 001D5AD8  90 9E 00 04 */	stw r4, 4(r30)
lbl_801D9E7C:
/* 801D9E7C 001D5ADC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801D9E80 001D5AE0  38 7E 00 18 */	addi r3, r30, 0x18
/* 801D9E84 001D5AE4  7C 1F 00 50 */	subf r0, r31, r0
/* 801D9E88 001D5AE8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801D9E8C 001D5AEC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801D9E90 001D5AF0  7C 00 FA 14 */	add r0, r0, r31
/* 801D9E94 001D5AF4  90 1E 00 10 */	stw r0, 0x10(r30)
/* 801D9E98 001D5AF8  48 00 00 81 */	bl MWExitCriticalSection
/* 801D9E9C 001D5AFC  38 60 00 00 */	li r3, 0
lbl_801D9EA0:
/* 801D9EA0 001D5B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D9EA4 001D5B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D9EA8 001D5B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D9EAC 001D5B0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D9EB0 001D5B10  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801D9EB4 001D5B14  7C 08 03 A6 */	mtlr r0
/* 801D9EB8 001D5B18  38 21 00 20 */	addi r1, r1, 0x20
/* 801D9EBC 001D5B1C  4E 80 00 20 */	blr

.global CircleBufferInitialize
CircleBufferInitialize:
/* 801D9EC0 001D5B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9EC4 001D5B24  7C 08 02 A6 */	mflr r0
/* 801D9EC8 001D5B28  7C 66 1B 78 */	mr r6, r3
/* 801D9ECC 001D5B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9ED0 001D5B30  38 00 00 00 */	li r0, 0
/* 801D9ED4 001D5B34  90 83 00 08 */	stw r4, 8(r3)
/* 801D9ED8 001D5B38  38 66 00 18 */	addi r3, r6, 0x18
/* 801D9EDC 001D5B3C  90 A6 00 0C */	stw r5, 0xc(r6)
/* 801D9EE0 001D5B40  80 86 00 08 */	lwz r4, 8(r6)
/* 801D9EE4 001D5B44  90 86 00 00 */	stw r4, 0(r6)
/* 801D9EE8 001D5B48  80 86 00 08 */	lwz r4, 8(r6)
/* 801D9EEC 001D5B4C  90 86 00 04 */	stw r4, 4(r6)
/* 801D9EF0 001D5B50  90 06 00 10 */	stw r0, 0x10(r6)
/* 801D9EF4 001D5B54  80 06 00 0C */	lwz r0, 0xc(r6)
/* 801D9EF8 001D5B58  90 06 00 14 */	stw r0, 0x14(r6)
/* 801D9EFC 001D5B5C  48 00 00 71 */	bl MWInitializeCriticalSection
/* 801D9F00 001D5B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9F04 001D5B64  7C 08 03 A6 */	mtlr r0
/* 801D9F08 001D5B68  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9F0C 001D5B6C  4E 80 00 20 */	blr

.global CBGetBytesAvailableForRead
CBGetBytesAvailableForRead:
/* 801D9F10 001D5B70  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801D9F14 001D5B74  4E 80 00 20 */	blr
