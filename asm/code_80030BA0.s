.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global lbl_80030BA0
lbl_80030BA0:
/* 80030BA0 0002C800  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80030BA4 0002C804  7C 08 02 A6 */	mflr r0
/* 80030BA8 0002C808  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80030BAC 0002C80C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80030BB0 0002C810  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 80030BB4 0002C814  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80030BB8 0002C818  48 19 65 71 */	bl _savegpr_27
/* 80030BBC 0002C81C  3C 00 43 30 */	lis r0, 0x4330
/* 80030BC0 0002C820  7C 7C 1B 78 */	mr r28, r3
/* 80030BC4 0002C824  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80030BC8 0002C828  7C 9B 23 78 */	mr r27, r4
/* 80030BCC 0002C82C  7C BE 2B 78 */	mr r30, r5
/* 80030BD0 0002C830  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80030BD4 0002C834  48 01 3C 75 */	bl func_80044848
/* 80030BD8 0002C838  2C 1B 00 01 */	cmpwi r27, 1
/* 80030BDC 0002C83C  41 82 00 50 */	beq lbl_80030C2C
/* 80030BE0 0002C840  A8 1E 00 00 */	lha r0, 0(r30)
/* 80030BE4 0002C844  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80030BE8 0002C848  41 82 00 0C */	beq lbl_80030BF4
/* 80030BEC 0002C84C  38 60 00 01 */	li r3, 1
/* 80030BF0 0002C850  48 00 04 A8 */	b lbl_80031098
lbl_80030BF4:
/* 80030BF4 0002C854  80 1E 00 04 */	lwz r0, 4(r30)
/* 80030BF8 0002C858  2C 00 00 00 */	cmpwi r0, 0
/* 80030BFC 0002C85C  41 80 00 0C */	blt lbl_80030C08
/* 80030C00 0002C860  2C 00 00 08 */	cmpwi r0, 8
/* 80030C04 0002C864  41 80 00 0C */	blt lbl_80030C10
lbl_80030C08:
/* 80030C08 0002C868  3B E0 00 00 */	li r31, 0
/* 80030C0C 0002C86C  48 00 00 10 */	b lbl_80030C1C
lbl_80030C10:
/* 80030C10 0002C870  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 80030C14 0002C874  7C 63 02 14 */	add r3, r3, r0
/* 80030C18 0002C878  3B E3 07 80 */	addi r31, r3, 0x780
lbl_80030C1C:
/* 80030C1C 0002C87C  2C 1F 00 00 */	cmpwi r31, 0
/* 80030C20 0002C880  40 82 00 14 */	bne lbl_80030C34
/* 80030C24 0002C884  38 60 00 01 */	li r3, 1
/* 80030C28 0002C888  48 00 04 70 */	b lbl_80031098
lbl_80030C2C:
/* 80030C2C 0002C88C  38 60 00 01 */	li r3, 1
/* 80030C30 0002C890  48 00 04 68 */	b lbl_80031098
lbl_80030C34:
/* 80030C34 0002C894  38 1B FF EF */	addi r0, r27, -17
/* 80030C38 0002C898  28 00 00 0F */	cmplwi r0, 0xf
/* 80030C3C 0002C89C  41 81 04 58 */	bgt lbl_80031094
/* 80030C40 0002C8A0  3C 60 80 41 */	lis r3, lbl_8040A008@ha
/* 80030C44 0002C8A4  54 00 10 3A */	slwi r0, r0, 2
/* 80030C48 0002C8A8  38 63 A0 08 */	addi r3, r3, lbl_8040A008@l
/* 80030C4C 0002C8AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80030C50 0002C8B0  7C 69 03 A6 */	mtctr r3
/* 80030C54 0002C8B4  4E 80 04 20 */	bctr
/* 80030C58 0002C8B8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030C5C 0002C8BC  2C 00 00 01 */	cmpwi r0, 1
/* 80030C60 0002C8C0  40 82 00 0C */	bne lbl_80030C6C
/* 80030C64 0002C8C4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80030C68 0002C8C8  48 00 00 28 */	b lbl_80030C90
lbl_80030C6C:
/* 80030C6C 0002C8CC  2C 00 00 02 */	cmpwi r0, 2
/* 80030C70 0002C8D0  40 82 00 18 */	bne lbl_80030C88
/* 80030C74 0002C8D4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80030C78 0002C8D8  FC 00 00 1E */	fctiwz f0, f0
/* 80030C7C 0002C8DC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030C80 0002C8E0  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030C84 0002C8E4  48 00 00 0C */	b lbl_80030C90
lbl_80030C88:
/* 80030C88 0002C8E8  38 7E 00 08 */	addi r3, r30, 8
/* 80030C8C 0002C8EC  48 1F D0 A9 */	bl func_8022DD34
lbl_80030C90:
/* 80030C90 0002C8F0  7C 03 00 D0 */	neg r0, r3
/* 80030C94 0002C8F4  7C 00 1B 78 */	or r0, r0, r3
/* 80030C98 0002C8F8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80030C9C 0002C8FC  98 1F 00 00 */	stb r0, 0(r31)
/* 80030CA0 0002C900  48 00 03 F4 */	b lbl_80031094
/* 80030CA4 0002C904  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030CA8 0002C908  2C 00 00 01 */	cmpwi r0, 1
/* 80030CAC 0002C90C  40 82 00 0C */	bne lbl_80030CB8
/* 80030CB0 0002C910  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80030CB4 0002C914  48 00 00 28 */	b lbl_80030CDC
lbl_80030CB8:
/* 80030CB8 0002C918  2C 00 00 02 */	cmpwi r0, 2
/* 80030CBC 0002C91C  40 82 00 18 */	bne lbl_80030CD4
/* 80030CC0 0002C920  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80030CC4 0002C924  FC 00 00 1E */	fctiwz f0, f0
/* 80030CC8 0002C928  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030CCC 0002C92C  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030CD0 0002C930  48 00 00 0C */	b lbl_80030CDC
lbl_80030CD4:
/* 80030CD4 0002C934  38 7E 00 08 */	addi r3, r30, 8
/* 80030CD8 0002C938  48 1F D0 5D */	bl func_8022DD34
lbl_80030CDC:
/* 80030CDC 0002C93C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80030CE0 0002C940  48 00 03 B4 */	b lbl_80031094
/* 80030CE4 0002C944  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030CE8 0002C948  2C 00 00 01 */	cmpwi r0, 1
/* 80030CEC 0002C94C  40 82 00 20 */	bne lbl_80030D0C
/* 80030CF0 0002C950  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80030CF4 0002C954  C8 22 81 78 */	lfd f1, lbl_80640778-_SDA2_BASE_(r2)
/* 80030CF8 0002C958  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80030CFC 0002C95C  90 01 00 AC */	stw r0, 0xac(r1)
/* 80030D00 0002C960  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80030D04 0002C964  EF E0 08 28 */	fsubs f31, f0, f1
/* 80030D08 0002C968  48 00 00 20 */	b lbl_80030D28
lbl_80030D0C:
/* 80030D0C 0002C96C  2C 00 00 02 */	cmpwi r0, 2
/* 80030D10 0002C970  40 82 00 0C */	bne lbl_80030D1C
/* 80030D14 0002C974  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80030D18 0002C978  48 00 00 0C */	b lbl_80030D24
lbl_80030D1C:
/* 80030D1C 0002C97C  38 7E 00 08 */	addi r3, r30, 8
/* 80030D20 0002C980  48 1F D0 59 */	bl func_8022DD78
lbl_80030D24:
/* 80030D24 0002C984  FF E0 08 90 */	fmr f31, f1
lbl_80030D28:
/* 80030D28 0002C988  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 80030D2C 0002C98C  2C 00 00 01 */	cmpwi r0, 1
/* 80030D30 0002C990  40 82 00 20 */	bne lbl_80030D50
/* 80030D34 0002C994  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80030D38 0002C998  C8 22 81 78 */	lfd f1, lbl_80640778-_SDA2_BASE_(r2)
/* 80030D3C 0002C99C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80030D40 0002C9A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80030D44 0002C9A4  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80030D48 0002C9A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80030D4C 0002C9AC  48 00 00 1C */	b lbl_80030D68
lbl_80030D50:
/* 80030D50 0002C9B0  2C 00 00 02 */	cmpwi r0, 2
/* 80030D54 0002C9B4  40 82 00 0C */	bne lbl_80030D60
/* 80030D58 0002C9B8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80030D5C 0002C9BC  48 00 00 0C */	b lbl_80030D68
lbl_80030D60:
/* 80030D60 0002C9C0  38 7E 00 10 */	addi r3, r30, 0x10
/* 80030D64 0002C9C4  48 1F D0 15 */	bl func_8022DD78
lbl_80030D68:
/* 80030D68 0002C9C8  D3 FF 00 08 */	stfs f31, 8(r31)
/* 80030D6C 0002C9CC  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 80030D70 0002C9D0  48 00 03 24 */	b lbl_80031094
/* 80030D74 0002C9D4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030D78 0002C9D8  2C 00 00 01 */	cmpwi r0, 1
/* 80030D7C 0002C9DC  40 82 00 0C */	bne lbl_80030D88
/* 80030D80 0002C9E0  83 BE 00 0C */	lwz r29, 0xc(r30)
/* 80030D84 0002C9E4  48 00 00 2C */	b lbl_80030DB0
lbl_80030D88:
/* 80030D88 0002C9E8  2C 00 00 02 */	cmpwi r0, 2
/* 80030D8C 0002C9EC  40 82 00 18 */	bne lbl_80030DA4
/* 80030D90 0002C9F0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80030D94 0002C9F4  FC 00 00 1E */	fctiwz f0, f0
/* 80030D98 0002C9F8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030D9C 0002C9FC  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030DA0 0002CA00  48 00 00 0C */	b lbl_80030DAC
lbl_80030DA4:
/* 80030DA4 0002CA04  38 7E 00 08 */	addi r3, r30, 8
/* 80030DA8 0002CA08  48 1F CF 8D */	bl func_8022DD34
lbl_80030DAC:
/* 80030DAC 0002CA0C  7C 7D 1B 78 */	mr r29, r3
lbl_80030DB0:
/* 80030DB0 0002CA10  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 80030DB4 0002CA14  2C 00 00 01 */	cmpwi r0, 1
/* 80030DB8 0002CA18  40 82 00 0C */	bne lbl_80030DC4
/* 80030DBC 0002CA1C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80030DC0 0002CA20  48 00 00 28 */	b lbl_80030DE8
lbl_80030DC4:
/* 80030DC4 0002CA24  2C 00 00 02 */	cmpwi r0, 2
/* 80030DC8 0002CA28  40 82 00 18 */	bne lbl_80030DE0
/* 80030DCC 0002CA2C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80030DD0 0002CA30  FC 00 00 1E */	fctiwz f0, f0
/* 80030DD4 0002CA34  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030DD8 0002CA38  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030DDC 0002CA3C  48 00 00 0C */	b lbl_80030DE8
lbl_80030DE0:
/* 80030DE0 0002CA40  38 7E 00 10 */	addi r3, r30, 0x10
/* 80030DE4 0002CA44  48 1F CF 51 */	bl func_8022DD34
lbl_80030DE8:
/* 80030DE8 0002CA48  7F A0 07 34 */	extsh r0, r29
/* 80030DEC 0002CA4C  7C 63 07 34 */	extsh r3, r3
/* 80030DF0 0002CA50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80030DF4 0002CA54  C8 42 81 78 */	lfd f2, lbl_80640778-_SDA2_BASE_(r2)
/* 80030DF8 0002CA58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80030DFC 0002CA5C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80030E00 0002CA60  90 01 00 AC */	stw r0, 0xac(r1)
/* 80030E04 0002CA64  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80030E08 0002CA68  C8 21 00 A8 */	lfd f1, 0xa8(r1)
/* 80030E0C 0002CA6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80030E10 0002CA70  EC 21 10 28 */	fsubs f1, f1, f2
/* 80030E14 0002CA74  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80030E18 0002CA78  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 80030E1C 0002CA7C  48 00 02 78 */	b lbl_80031094
/* 80030E20 0002CA80  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030E24 0002CA84  2C 00 00 01 */	cmpwi r0, 1
/* 80030E28 0002CA88  40 82 00 0C */	bne lbl_80030E34
/* 80030E2C 0002CA8C  83 BE 00 0C */	lwz r29, 0xc(r30)
/* 80030E30 0002CA90  48 00 00 2C */	b lbl_80030E5C
lbl_80030E34:
/* 80030E34 0002CA94  2C 00 00 02 */	cmpwi r0, 2
/* 80030E38 0002CA98  40 82 00 18 */	bne lbl_80030E50
/* 80030E3C 0002CA9C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80030E40 0002CAA0  FC 00 00 1E */	fctiwz f0, f0
/* 80030E44 0002CAA4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030E48 0002CAA8  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030E4C 0002CAAC  48 00 00 0C */	b lbl_80030E58
lbl_80030E50:
/* 80030E50 0002CAB0  38 7E 00 08 */	addi r3, r30, 8
/* 80030E54 0002CAB4  48 1F CE E1 */	bl func_8022DD34
lbl_80030E58:
/* 80030E58 0002CAB8  7C 7D 1B 78 */	mr r29, r3
lbl_80030E5C:
/* 80030E5C 0002CABC  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 80030E60 0002CAC0  2C 00 00 01 */	cmpwi r0, 1
/* 80030E64 0002CAC4  40 82 00 0C */	bne lbl_80030E70
/* 80030E68 0002CAC8  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80030E6C 0002CACC  48 00 00 2C */	b lbl_80030E98
lbl_80030E70:
/* 80030E70 0002CAD0  2C 00 00 02 */	cmpwi r0, 2
/* 80030E74 0002CAD4  40 82 00 18 */	bne lbl_80030E8C
/* 80030E78 0002CAD8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80030E7C 0002CADC  FC 00 00 1E */	fctiwz f0, f0
/* 80030E80 0002CAE0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030E84 0002CAE4  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030E88 0002CAE8  48 00 00 0C */	b lbl_80030E94
lbl_80030E8C:
/* 80030E8C 0002CAEC  38 7E 00 10 */	addi r3, r30, 0x10
/* 80030E90 0002CAF0  48 1F CE A5 */	bl func_8022DD34
lbl_80030E94:
/* 80030E94 0002CAF4  7C 7C 1B 78 */	mr r28, r3
lbl_80030E98:
/* 80030E98 0002CAF8  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 80030E9C 0002CAFC  2C 00 00 01 */	cmpwi r0, 1
/* 80030EA0 0002CB00  40 82 00 0C */	bne lbl_80030EAC
/* 80030EA4 0002CB04  83 7E 00 1C */	lwz r27, 0x1c(r30)
/* 80030EA8 0002CB08  48 00 00 2C */	b lbl_80030ED4
lbl_80030EAC:
/* 80030EAC 0002CB0C  2C 00 00 02 */	cmpwi r0, 2
/* 80030EB0 0002CB10  40 82 00 18 */	bne lbl_80030EC8
/* 80030EB4 0002CB14  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80030EB8 0002CB18  FC 00 00 1E */	fctiwz f0, f0
/* 80030EBC 0002CB1C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030EC0 0002CB20  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030EC4 0002CB24  48 00 00 0C */	b lbl_80030ED0
lbl_80030EC8:
/* 80030EC8 0002CB28  38 7E 00 18 */	addi r3, r30, 0x18
/* 80030ECC 0002CB2C  48 1F CE 69 */	bl func_8022DD34
lbl_80030ED0:
/* 80030ED0 0002CB30  7C 7B 1B 78 */	mr r27, r3
lbl_80030ED4:
/* 80030ED4 0002CB34  A8 1E 00 20 */	lha r0, 0x20(r30)
/* 80030ED8 0002CB38  2C 00 00 01 */	cmpwi r0, 1
/* 80030EDC 0002CB3C  40 82 00 0C */	bne lbl_80030EE8
/* 80030EE0 0002CB40  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80030EE4 0002CB44  48 00 00 28 */	b lbl_80030F0C
lbl_80030EE8:
/* 80030EE8 0002CB48  2C 00 00 02 */	cmpwi r0, 2
/* 80030EEC 0002CB4C  40 82 00 18 */	bne lbl_80030F04
/* 80030EF0 0002CB50  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80030EF4 0002CB54  FC 00 00 1E */	fctiwz f0, f0
/* 80030EF8 0002CB58  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030EFC 0002CB5C  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030F00 0002CB60  48 00 00 0C */	b lbl_80030F0C
lbl_80030F04:
/* 80030F04 0002CB64  38 7E 00 20 */	addi r3, r30, 0x20
/* 80030F08 0002CB68  48 1F CE 2D */	bl func_8022DD34
lbl_80030F0C:
/* 80030F0C 0002CB6C  57 65 40 2E */	slwi r5, r27, 8
/* 80030F10 0002CB70  57 A4 C0 0E */	slwi r4, r29, 0x18
/* 80030F14 0002CB74  57 80 80 1E */	slwi r0, r28, 0x10
/* 80030F18 0002CB78  7C 63 2B 78 */	or r3, r3, r5
/* 80030F1C 0002CB7C  7C 80 03 78 */	or r0, r4, r0
/* 80030F20 0002CB80  7C 60 03 78 */	or r0, r3, r0
/* 80030F24 0002CB84  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80030F28 0002CB88  48 00 01 6C */	b lbl_80031094
/* 80030F2C 0002CB8C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030F30 0002CB90  2C 00 00 01 */	cmpwi r0, 1
/* 80030F34 0002CB94  40 82 00 0C */	bne lbl_80030F40
/* 80030F38 0002CB98  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 80030F3C 0002CB9C  48 00 00 2C */	b lbl_80030F68
lbl_80030F40:
/* 80030F40 0002CBA0  2C 00 00 02 */	cmpwi r0, 2
/* 80030F44 0002CBA4  40 82 00 18 */	bne lbl_80030F5C
/* 80030F48 0002CBA8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80030F4C 0002CBAC  FC 00 00 1E */	fctiwz f0, f0
/* 80030F50 0002CBB0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030F54 0002CBB4  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030F58 0002CBB8  48 00 00 0C */	b lbl_80030F64
lbl_80030F5C:
/* 80030F5C 0002CBBC  38 7E 00 08 */	addi r3, r30, 8
/* 80030F60 0002CBC0  48 1F CD D5 */	bl func_8022DD34
lbl_80030F64:
/* 80030F64 0002CBC4  7C 7B 1B 78 */	mr r27, r3
lbl_80030F68:
/* 80030F68 0002CBC8  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 80030F6C 0002CBCC  2C 00 00 01 */	cmpwi r0, 1
/* 80030F70 0002CBD0  40 82 00 0C */	bne lbl_80030F7C
/* 80030F74 0002CBD4  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 80030F78 0002CBD8  48 00 00 2C */	b lbl_80030FA4
lbl_80030F7C:
/* 80030F7C 0002CBDC  2C 00 00 02 */	cmpwi r0, 2
/* 80030F80 0002CBE0  40 82 00 18 */	bne lbl_80030F98
/* 80030F84 0002CBE4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80030F88 0002CBE8  FC 00 00 1E */	fctiwz f0, f0
/* 80030F8C 0002CBEC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030F90 0002CBF0  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030F94 0002CBF4  48 00 00 0C */	b lbl_80030FA0
lbl_80030F98:
/* 80030F98 0002CBF8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80030F9C 0002CBFC  48 1F CD 99 */	bl func_8022DD34
lbl_80030FA0:
/* 80030FA0 0002CC00  7C 65 1B 78 */	mr r5, r3
lbl_80030FA4:
/* 80030FA4 0002CC04  7F E3 FB 78 */	mr r3, r31
/* 80030FA8 0002CC08  7F 64 DB 78 */	mr r4, r27
/* 80030FAC 0002CC0C  48 01 3A F1 */	bl func_80044A9C
/* 80030FB0 0002CC10  48 00 00 E4 */	b lbl_80031094
/* 80030FB4 0002CC14  A8 1E 00 08 */	lha r0, 8(r30)
/* 80030FB8 0002CC18  2C 00 00 01 */	cmpwi r0, 1
/* 80030FBC 0002CC1C  40 82 00 0C */	bne lbl_80030FC8
/* 80030FC0 0002CC20  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 80030FC4 0002CC24  48 00 00 2C */	b lbl_80030FF0
lbl_80030FC8:
/* 80030FC8 0002CC28  2C 00 00 02 */	cmpwi r0, 2
/* 80030FCC 0002CC2C  40 82 00 18 */	bne lbl_80030FE4
/* 80030FD0 0002CC30  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80030FD4 0002CC34  FC 00 00 1E */	fctiwz f0, f0
/* 80030FD8 0002CC38  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80030FDC 0002CC3C  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80030FE0 0002CC40  48 00 00 0C */	b lbl_80030FEC
lbl_80030FE4:
/* 80030FE4 0002CC44  38 7E 00 08 */	addi r3, r30, 8
/* 80030FE8 0002CC48  48 1F CD 4D */	bl func_8022DD34
lbl_80030FEC:
/* 80030FEC 0002CC4C  7C 7B 1B 78 */	mr r27, r3
lbl_80030FF0:
/* 80030FF0 0002CC50  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 80030FF4 0002CC54  2C 00 00 01 */	cmpwi r0, 1
/* 80030FF8 0002CC58  40 82 00 0C */	bne lbl_80031004
/* 80030FFC 0002CC5C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80031000 0002CC60  48 00 00 2C */	b lbl_8003102C
lbl_80031004:
/* 80031004 0002CC64  2C 00 00 02 */	cmpwi r0, 2
/* 80031008 0002CC68  40 82 00 18 */	bne lbl_80031020
/* 8003100C 0002CC6C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80031010 0002CC70  FC 00 00 1E */	fctiwz f0, f0
/* 80031014 0002CC74  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80031018 0002CC78  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8003101C 0002CC7C  48 00 00 0C */	b lbl_80031028
lbl_80031020:
/* 80031020 0002CC80  38 7E 00 10 */	addi r3, r30, 0x10
/* 80031024 0002CC84  48 1F CD 11 */	bl func_8022DD34
lbl_80031028:
/* 80031028 0002CC88  7C 64 1B 78 */	mr r4, r3
lbl_8003102C:
/* 8003102C 0002CC8C  7C 04 00 D0 */	neg r0, r4
/* 80031030 0002CC90  7F E3 FB 78 */	mr r3, r31
/* 80031034 0002CC94  7C 00 23 78 */	or r0, r0, r4
/* 80031038 0002CC98  7F 64 DB 78 */	mr r4, r27
/* 8003103C 0002CC9C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80031040 0002CCA0  48 01 3A 4D */	bl Audio_SoundAttributes_SetSoundType
/* 80031044 0002CCA4  48 00 00 50 */	b lbl_80031094
/* 80031048 0002CCA8  A8 1E 00 08 */	lha r0, 8(r30)
/* 8003104C 0002CCAC  2C 00 00 03 */	cmpwi r0, 3
/* 80031050 0002CCB0  40 82 00 0C */	bne lbl_8003105C
/* 80031054 0002CCB4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80031058 0002CCB8  48 00 00 10 */	b lbl_80031068
lbl_8003105C:
/* 8003105C 0002CCBC  38 7E 00 08 */	addi r3, r30, 8
/* 80031060 0002CCC0  38 81 00 58 */	addi r4, r1, 0x58
/* 80031064 0002CCC4  4B FF 73 4D */	bl func_800283B0
lbl_80031068:
/* 80031068 0002CCC8  7C 66 1B 78 */	mr r6, r3
/* 8003106C 0002CCCC  7F 83 E3 78 */	mr r3, r28
/* 80031070 0002CCD0  38 81 00 08 */	addi r4, r1, 8
/* 80031074 0002CCD4  38 FE 00 10 */	addi r7, r30, 0x10
/* 80031078 0002CCD8  38 A0 00 50 */	li r5, 0x50
/* 8003107C 0002CCDC  4B FF 6A D1 */	bl func_80027B4C
/* 80031080 0002CCE0  2C 03 00 00 */	cmpwi r3, 0
/* 80031084 0002CCE4  41 82 00 10 */	beq lbl_80031094
/* 80031088 0002CCE8  7F E3 FB 78 */	mr r3, r31
/* 8003108C 0002CCEC  38 81 00 08 */	addi r4, r1, 8
/* 80031090 0002CCF0  48 01 3A 09 */	bl func_80044A98
lbl_80031094:
/* 80031094 0002CCF4  38 60 00 01 */	li r3, 1
lbl_80031098:
/* 80031098 0002CCF8  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8003109C 0002CCFC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800310A0 0002CD00  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 800310A4 0002CD04  48 19 60 D1 */	bl _restgpr_27
/* 800310A8 0002CD08  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800310AC 0002CD0C  7C 08 03 A6 */	mtlr r0
/* 800310B0 0002CD10  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800310B4 0002CD14  4E 80 00 20 */	blr

.global func_800310B8
func_800310B8:
/* 800310B8 0002CD18  38 A0 00 01 */	li r5, 1
/* 800310BC 0002CD1C  38 6D 97 58 */	addi r3, r13, lbl_8063EA18-_SDA_BASE_
/* 800310C0 0002CD20  38 80 00 04 */	li r4, 4
/* 800310C4 0002CD24  38 00 00 00 */	li r0, 0
/* 800310C8 0002CD28  98 AD 97 58 */	stb r5, lbl_8063EA18-_SDA_BASE_(r13)
/* 800310CC 0002CD2C  B0 83 00 02 */	sth r4, 2(r3)
/* 800310D0 0002CD30  98 03 00 04 */	stb r0, 4(r3)
/* 800310D4 0002CD34  4E 80 00 20 */	blr
