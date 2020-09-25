.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_803711A8
func_803711A8:
/* 803711A8 0036CE08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803711AC 0036CE0C  7C 08 02 A6 */	mflr r0
/* 803711B0 0036CE10  3C A0 80 45 */	lis r5, lbl_8044CA88@ha
/* 803711B4 0036CE14  3D 40 80 40 */	lis r10, lbl_80400004@ha
/* 803711B8 0036CE18  90 01 00 34 */	stw r0, 0x34(r1)
/* 803711BC 0036CE1C  38 00 00 00 */	li r0, 0
/* 803711C0 0036CE20  38 A5 CA 88 */	addi r5, r5, lbl_8044CA88@l
/* 803711C4 0036CE24  38 81 00 08 */	addi r4, r1, 8
/* 803711C8 0036CE28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803711CC 0036CE2C  7C 7F 1B 78 */	mr r31, r3
/* 803711D0 0036CE30  90 03 00 04 */	stw r0, 4(r3)
/* 803711D4 0036CE34  90 03 00 08 */	stw r0, 8(r3)
/* 803711D8 0036CE38  90 A3 00 00 */	stw r5, 0(r3)
/* 803711DC 0036CE3C  98 03 00 0C */	stb r0, 0xc(r3)
/* 803711E0 0036CE40  90 03 00 10 */	stw r0, 0x10(r3)
/* 803711E4 0036CE44  90 03 00 14 */	stw r0, 0x14(r3)
/* 803711E8 0036CE48  85 2A 28 C8 */	lwzu r9, 0x28c8(r10)
/* 803711EC 0036CE4C  81 0A 00 04 */	lwz r8, lbl_80400004@l(r10)
/* 803711F0 0036CE50  80 EA 00 08 */	lwz r7, 8(r10)
/* 803711F4 0036CE54  80 CA 00 0C */	lwz r6, 0xc(r10)
/* 803711F8 0036CE58  80 AA 00 10 */	lwz r5, 0x10(r10)
/* 803711FC 0036CE5C  80 0A 00 14 */	lwz r0, 0x14(r10)
/* 80371200 0036CE60  91 21 00 08 */	stw r9, 8(r1)
/* 80371204 0036CE64  91 01 00 0C */	stw r8, 0xc(r1)
/* 80371208 0036CE68  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8037120C 0036CE6C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80371210 0036CE70  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80371214 0036CE74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80371218 0036CE78  48 00 01 59 */	bl func_80371370
/* 8037121C 0036CE7C  7F E3 FB 78 */	mr r3, r31
/* 80371220 0036CE80  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80371224 0036CE84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80371228 0036CE88  7C 08 03 A6 */	mtlr r0
/* 8037122C 0036CE8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80371230 0036CE90  4E 80 00 20 */	blr

.global func_80371234
func_80371234:
/* 80371234 0036CE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371238 0036CE98  7C 08 02 A6 */	mflr r0
/* 8037123C 0036CE9C  38 63 00 30 */	addi r3, r3, 0x30
/* 80371240 0036CEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371244 0036CEA4  4B F2 12 1D */	bl func_80292460
/* 80371248 0036CEA8  38 03 00 87 */	addi r0, r3, 0x87
/* 8037124C 0036CEAC  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80371250 0036CEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371254 0036CEB4  7C 08 03 A6 */	mtlr r0
/* 80371258 0036CEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037125C 0036CEBC  4E 80 00 20 */	blr
/* 80371260 0036CEC0  38 63 00 0C */	addi r3, r3, 0xc
/* 80371264 0036CEC4  4B FF B4 80 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
/* 80371268 0036CEC8  38 63 00 0C */	addi r3, r3, 0xc
/* 8037126C 0036CECC  4B FF B4 C0 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
/* 80371270 0036CED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371274 0036CED4  7C 08 02 A6 */	mflr r0
/* 80371278 0036CED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037127C 0036CEDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371280 0036CEE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80371284 0036CEE4  7C 7E 1B 78 */	mr r30, r3
/* 80371288 0036CEE8  38 63 00 30 */	addi r3, r3, 0x30
/* 8037128C 0036CEEC  4B F2 11 D5 */	bl func_80292460
/* 80371290 0036CEF0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80371294 0036CEF4  38 03 00 87 */	addi r0, r3, 0x87
/* 80371298 0036CEF8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8037129C 0036CEFC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 803712A0 0036CF00  7C 04 00 50 */	subf r0, r4, r0
/* 803712A4 0036CF04  7C 03 00 40 */	cmplw r3, r0
/* 803712A8 0036CF08  40 81 00 0C */	ble lbl_803712B4
/* 803712AC 0036CF0C  38 60 00 00 */	li r3, 0
/* 803712B0 0036CF10  48 00 00 54 */	b lbl_80371304
lbl_803712B4:
/* 803712B4 0036CF14  38 7E 00 0C */	addi r3, r30, 0xc
/* 803712B8 0036CF18  38 81 00 0C */	addi r4, r1, 0xc
/* 803712BC 0036CF1C  38 A1 00 08 */	addi r5, r1, 8
/* 803712C0 0036CF20  4B FF B4 81 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 803712C4 0036CF24  38 00 00 00 */	li r0, 0
/* 803712C8 0036CF28  38 7E 00 30 */	addi r3, r30, 0x30
/* 803712CC 0036CF2C  90 0D B1 EC */	stw r0, lbl_806404AC-_SDA_BASE_(r13)
/* 803712D0 0036CF30  4B F2 11 9D */	bl func_8029246C
/* 803712D4 0036CF34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803712D8 0036CF38  7C 7F 1B 78 */	mr r31, r3
/* 803712DC 0036CF3C  80 A1 00 08 */	lwz r5, 8(r1)
/* 803712E0 0036CF40  38 7E 00 0C */	addi r3, r30, 0xc
/* 803712E4 0036CF44  4B FF B4 A9 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 803712E8 0036CF48  38 7E 00 30 */	addi r3, r30, 0x30
/* 803712EC 0036CF4C  4B F2 11 75 */	bl func_80292460
/* 803712F0 0036CF50  7C 1F 00 D0 */	neg r0, r31
/* 803712F4 0036CF54  38 60 00 01 */	li r3, 1
/* 803712F8 0036CF58  7C 00 FB 78 */	or r0, r0, r31
/* 803712FC 0036CF5C  98 7E 00 0C */	stb r3, 0xc(r30)
/* 80371300 0036CF60  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80371304:
/* 80371304 0036CF64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371308 0036CF68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037130C 0036CF6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80371310 0036CF70  7C 08 03 A6 */	mtlr r0
/* 80371314 0036CF74  38 21 00 20 */	addi r1, r1, 0x20
/* 80371318 0036CF78  4E 80 00 20 */	blr
/* 8037131C 0036CF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371320 0036CF80  7C 08 02 A6 */	mflr r0
/* 80371324 0036CF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371328 0036CF88  38 00 00 00 */	li r0, 0
/* 8037132C 0036CF8C  38 81 00 0C */	addi r4, r1, 0xc
/* 80371330 0036CF90  38 A1 00 08 */	addi r5, r1, 8
/* 80371334 0036CF94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371338 0036CF98  7C 7F 1B 78 */	mr r31, r3
/* 8037133C 0036CF9C  9C 03 00 0C */	stbu r0, 0xc(r3)
/* 80371340 0036CFA0  4B FF B4 01 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80371344 0036CFA4  38 7F 00 30 */	addi r3, r31, 0x30
/* 80371348 0036CFA8  4B F2 11 C9 */	bl func_80292510
/* 8037134C 0036CFAC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80371350 0036CFB0  38 7F 00 0C */	addi r3, r31, 0xc
/* 80371354 0036CFB4  80 A1 00 08 */	lwz r5, 8(r1)
/* 80371358 0036CFB8  4B FF B4 35 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 8037135C 0036CFBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371360 0036CFC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80371364 0036CFC4  7C 08 03 A6 */	mtlr r0
/* 80371368 0036CFC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037136C 0036CFCC  4E 80 00 20 */	blr

.global func_80371370
func_80371370:
/* 80371370 0036CFD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371374 0036CFD4  7C 08 02 A6 */	mflr r0
/* 80371378 0036CFD8  C0 A4 00 00 */	lfs f5, 0(r4)
/* 8037137C 0036CFDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371380 0036CFE0  C0 C2 A6 38 */	lfs f6, lbl_80642C38-_SDA2_BASE_(r2)
/* 80371384 0036CFE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371388 0036CFE8  C0 84 00 04 */	lfs f4, 4(r4)
/* 8037138C 0036CFEC  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 80371390 0036CFF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80371394 0036CFF4  7C 7E 1B 78 */	mr r30, r3
/* 80371398 0036CFF8  C0 64 00 08 */	lfs f3, 8(r4)
/* 8037139C 0036CFFC  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 803713A0 0036D000  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 803713A4 0036D004  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 803713A8 0036D008  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 803713AC 0036D00C  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 803713B0 0036D010  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 803713B4 0036D014  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 803713B8 0036D018  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 803713BC 0036D01C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 803713C0 0036D020  40 81 00 08 */	ble lbl_803713C8
/* 803713C4 0036D024  48 00 00 18 */	b lbl_803713DC
lbl_803713C8:
/* 803713C8 0036D028  C0 C2 A6 3C */	lfs f6, lbl_80642C3C-_SDA2_BASE_(r2)
/* 803713CC 0036D02C  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 803713D0 0036D030  40 80 00 08 */	bge lbl_803713D8
/* 803713D4 0036D034  48 00 00 08 */	b lbl_803713DC
lbl_803713D8:
/* 803713D8 0036D038  FC C0 28 90 */	fmr f6, f5
lbl_803713DC:
/* 803713DC 0036D03C  C0 04 00 04 */	lfs f0, 4(r4)
/* 803713E0 0036D040  C0 22 A6 40 */	lfs f1, lbl_80642C40-_SDA2_BASE_(r2)
/* 803713E4 0036D044  D0 C3 01 B8 */	stfs f6, 0x1b8(r3)
/* 803713E8 0036D048  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803713EC 0036D04C  40 81 00 08 */	ble lbl_803713F4
/* 803713F0 0036D050  48 00 00 18 */	b lbl_80371408
lbl_803713F4:
/* 803713F4 0036D054  C0 22 A6 3C */	lfs f1, lbl_80642C3C-_SDA2_BASE_(r2)
/* 803713F8 0036D058  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803713FC 0036D05C  40 80 00 08 */	bge lbl_80371404
/* 80371400 0036D060  48 00 00 08 */	b lbl_80371408
lbl_80371404:
/* 80371404 0036D064  FC 20 00 90 */	fmr f1, f0
lbl_80371408:
/* 80371408 0036D068  C0 04 00 08 */	lfs f0, 8(r4)
/* 8037140C 0036D06C  C0 42 A6 44 */	lfs f2, lbl_80642C44-_SDA2_BASE_(r2)
/* 80371410 0036D070  D0 23 01 B0 */	stfs f1, 0x1b0(r3)
/* 80371414 0036D074  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371418 0036D078  40 81 00 08 */	ble lbl_80371420
/* 8037141C 0036D07C  48 00 00 18 */	b lbl_80371434
lbl_80371420:
/* 80371420 0036D080  C0 42 A6 3C */	lfs f2, lbl_80642C3C-_SDA2_BASE_(r2)
/* 80371424 0036D084  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371428 0036D088  40 80 00 08 */	bge lbl_80371430
/* 8037142C 0036D08C  48 00 00 08 */	b lbl_80371434
lbl_80371430:
/* 80371430 0036D090  FC 40 00 90 */	fmr f2, f0
lbl_80371434:
/* 80371434 0036D094  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80371438 0036D098  C0 22 A6 44 */	lfs f1, lbl_80642C44-_SDA2_BASE_(r2)
/* 8037143C 0036D09C  D0 43 01 A8 */	stfs f2, 0x1a8(r3)
/* 80371440 0036D0A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80371444 0036D0A4  40 81 00 08 */	ble lbl_8037144C
/* 80371448 0036D0A8  48 00 00 18 */	b lbl_80371460
lbl_8037144C:
/* 8037144C 0036D0AC  C0 22 A6 3C */	lfs f1, lbl_80642C3C-_SDA2_BASE_(r2)
/* 80371450 0036D0B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80371454 0036D0B4  40 80 00 08 */	bge lbl_8037145C
/* 80371458 0036D0B8  48 00 00 08 */	b lbl_80371460
lbl_8037145C:
/* 8037145C 0036D0BC  FC 20 00 90 */	fmr f1, f0
lbl_80371460:
/* 80371460 0036D0C0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80371464 0036D0C4  C0 42 A6 44 */	lfs f2, lbl_80642C44-_SDA2_BASE_(r2)
/* 80371468 0036D0C8  D0 23 01 B4 */	stfs f1, 0x1b4(r3)
/* 8037146C 0036D0CC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371470 0036D0D0  40 81 00 08 */	ble lbl_80371478
/* 80371474 0036D0D4  48 00 00 18 */	b lbl_8037148C
lbl_80371478:
/* 80371478 0036D0D8  C0 42 A6 3C */	lfs f2, lbl_80642C3C-_SDA2_BASE_(r2)
/* 8037147C 0036D0DC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371480 0036D0E0  40 80 00 08 */	bge lbl_80371488
/* 80371484 0036D0E4  48 00 00 08 */	b lbl_8037148C
lbl_80371488:
/* 80371488 0036D0E8  FC 40 00 90 */	fmr f2, f0
lbl_8037148C:
/* 8037148C 0036D0EC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80371490 0036D0F0  C0 22 A6 44 */	lfs f1, lbl_80642C44-_SDA2_BASE_(r2)
/* 80371494 0036D0F4  D0 43 01 BC */	stfs f2, 0x1bc(r3)
/* 80371498 0036D0F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8037149C 0036D0FC  40 81 00 08 */	ble lbl_803714A4
/* 803714A0 0036D100  48 00 00 18 */	b lbl_803714B8
lbl_803714A4:
/* 803714A4 0036D104  C0 22 A6 3C */	lfs f1, lbl_80642C3C-_SDA2_BASE_(r2)
/* 803714A8 0036D108  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803714AC 0036D10C  40 80 00 08 */	bge lbl_803714B4
/* 803714B0 0036D110  48 00 00 08 */	b lbl_803714B8
lbl_803714B4:
/* 803714B4 0036D114  FC 20 00 90 */	fmr f1, f0
lbl_803714B8:
/* 803714B8 0036D118  88 03 00 0C */	lbz r0, 0xc(r3)
/* 803714BC 0036D11C  D0 23 01 AC */	stfs f1, 0x1ac(r3)
/* 803714C0 0036D120  2C 00 00 00 */	cmpwi r0, 0
/* 803714C4 0036D124  40 82 00 0C */	bne lbl_803714D0
/* 803714C8 0036D128  38 60 00 01 */	li r3, 1
/* 803714CC 0036D12C  48 00 00 68 */	b lbl_80371534
lbl_803714D0:
/* 803714D0 0036D130  38 63 00 30 */	addi r3, r3, 0x30
/* 803714D4 0036D134  4B F2 0F 8D */	bl func_80292460
/* 803714D8 0036D138  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 803714DC 0036D13C  38 03 00 87 */	addi r0, r3, 0x87
/* 803714E0 0036D140  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803714E4 0036D144  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 803714E8 0036D148  7C 04 00 50 */	subf r0, r4, r0
/* 803714EC 0036D14C  7C 03 00 40 */	cmplw r3, r0
/* 803714F0 0036D150  40 81 00 0C */	ble lbl_803714FC
/* 803714F4 0036D154  38 60 00 00 */	li r3, 0
/* 803714F8 0036D158  48 00 00 3C */	b lbl_80371534
lbl_803714FC:
/* 803714FC 0036D15C  38 7E 00 0C */	addi r3, r30, 0xc
/* 80371500 0036D160  38 81 00 0C */	addi r4, r1, 0xc
/* 80371504 0036D164  38 A1 00 08 */	addi r5, r1, 8
/* 80371508 0036D168  4B FF B2 39 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 8037150C 0036D16C  38 7E 00 30 */	addi r3, r30, 0x30
/* 80371510 0036D170  4B F2 10 25 */	bl func_80292534
/* 80371514 0036D174  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80371518 0036D178  7C 7F 1B 78 */	mr r31, r3
/* 8037151C 0036D17C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80371520 0036D180  38 7E 00 0C */	addi r3, r30, 0xc
/* 80371524 0036D184  4B FF B2 69 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80371528 0036D188  7C 1F 00 D0 */	neg r0, r31
/* 8037152C 0036D18C  7C 00 FB 78 */	or r0, r0, r31
/* 80371530 0036D190  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80371534:
/* 80371534 0036D194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371538 0036D198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037153C 0036D19C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80371540 0036D1A0  7C 08 03 A6 */	mtlr r0
/* 80371544 0036D1A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80371548 0036D1A8  4E 80 00 20 */	blr
/* 8037154C 0036D1AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371550 0036D1B0  7C 08 02 A6 */	mflr r0
/* 80371554 0036D1B4  7C 64 1B 78 */	mr r4, r3
/* 80371558 0036D1B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037155C 0036D1BC  38 61 00 08 */	addi r3, r1, 8
/* 80371560 0036D1C0  38 84 00 30 */	addi r4, r4, 0x30
/* 80371564 0036D1C4  80 05 00 00 */	lwz r0, 0(r5)
/* 80371568 0036D1C8  90 01 00 08 */	stw r0, 8(r1)
/* 8037156C 0036D1CC  80 05 00 04 */	lwz r0, 4(r5)
/* 80371570 0036D1D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80371574 0036D1D4  80 05 00 08 */	lwz r0, 8(r5)
/* 80371578 0036D1D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8037157C 0036D1DC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80371580 0036D1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371584 0036D1E4  4B F2 10 15 */	bl func_80292598
/* 80371588 0036D1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037158C 0036D1EC  7C 08 03 A6 */	mtlr r0
/* 80371590 0036D1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80371594 0036D1F4  4E 80 00 20 */	blr

.global func_80371598
func_80371598:
/* 80371598 0036D1F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037159C 0036D1FC  7C 08 02 A6 */	mflr r0
/* 803715A0 0036D200  3C A0 80 45 */	lis r5, lbl_8044CAA8@ha
/* 803715A4 0036D204  3D 20 80 40 */	lis r9, lbl_80400004@ha
/* 803715A8 0036D208  90 01 00 34 */	stw r0, 0x34(r1)
/* 803715AC 0036D20C  38 00 00 00 */	li r0, 0
/* 803715B0 0036D210  38 A5 CA A8 */	addi r5, r5, lbl_8044CAA8@l
/* 803715B4 0036D214  38 81 00 08 */	addi r4, r1, 8
/* 803715B8 0036D218  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803715BC 0036D21C  7C 7F 1B 78 */	mr r31, r3
/* 803715C0 0036D220  90 03 00 04 */	stw r0, 4(r3)
/* 803715C4 0036D224  90 03 00 08 */	stw r0, 8(r3)
/* 803715C8 0036D228  90 A3 00 00 */	stw r5, 0(r3)
/* 803715CC 0036D22C  98 03 00 0C */	stb r0, 0xc(r3)
/* 803715D0 0036D230  90 03 00 10 */	stw r0, 0x10(r3)
/* 803715D4 0036D234  90 03 00 14 */	stw r0, 0x14(r3)
/* 803715D8 0036D238  85 09 28 E0 */	lwzu r8, 0x28e0(r9)
/* 803715DC 0036D23C  80 E9 00 04 */	lwz r7, lbl_80400004@l(r9)
/* 803715E0 0036D240  80 C9 00 08 */	lwz r6, 8(r9)
/* 803715E4 0036D244  80 A9 00 0C */	lwz r5, 0xc(r9)
/* 803715E8 0036D248  80 09 00 10 */	lwz r0, 0x10(r9)
/* 803715EC 0036D24C  91 01 00 08 */	stw r8, 8(r1)
/* 803715F0 0036D250  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803715F4 0036D254  90 C1 00 10 */	stw r6, 0x10(r1)
/* 803715F8 0036D258  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803715FC 0036D25C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80371600 0036D260  48 00 01 59 */	bl func_80371758
/* 80371604 0036D264  7F E3 FB 78 */	mr r3, r31
/* 80371608 0036D268  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037160C 0036D26C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80371610 0036D270  7C 08 03 A6 */	mtlr r0
/* 80371614 0036D274  38 21 00 30 */	addi r1, r1, 0x30
/* 80371618 0036D278  4E 80 00 20 */	blr

.global func_8037161C
func_8037161C:
/* 8037161C 0036D27C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371620 0036D280  7C 08 02 A6 */	mflr r0
/* 80371624 0036D284  38 63 00 2C */	addi r3, r3, 0x2c
/* 80371628 0036D288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037162C 0036D28C  4B F2 35 31 */	bl func_80294B5C
/* 80371630 0036D290  38 03 00 87 */	addi r0, r3, 0x87
/* 80371634 0036D294  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80371638 0036D298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037163C 0036D29C  7C 08 03 A6 */	mtlr r0
/* 80371640 0036D2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80371644 0036D2A4  4E 80 00 20 */	blr
/* 80371648 0036D2A8  38 63 00 0C */	addi r3, r3, 0xc
/* 8037164C 0036D2AC  4B FF B0 98 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl
/* 80371650 0036D2B0  38 63 00 0C */	addi r3, r3, 0xc
/* 80371654 0036D2B4  4B FF B0 D8 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv
/* 80371658 0036D2B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037165C 0036D2BC  7C 08 02 A6 */	mflr r0
/* 80371660 0036D2C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371664 0036D2C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371668 0036D2C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037166C 0036D2CC  7C 7E 1B 78 */	mr r30, r3
/* 80371670 0036D2D0  38 63 00 2C */	addi r3, r3, 0x2c
/* 80371674 0036D2D4  4B F2 34 E9 */	bl func_80294B5C
/* 80371678 0036D2D8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8037167C 0036D2DC  38 03 00 87 */	addi r0, r3, 0x87
/* 80371680 0036D2E0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80371684 0036D2E4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80371688 0036D2E8  7C 04 00 50 */	subf r0, r4, r0
/* 8037168C 0036D2EC  7C 03 00 40 */	cmplw r3, r0
/* 80371690 0036D2F0  40 81 00 0C */	ble lbl_8037169C
/* 80371694 0036D2F4  38 60 00 00 */	li r3, 0
/* 80371698 0036D2F8  48 00 00 54 */	b lbl_803716EC
lbl_8037169C:
/* 8037169C 0036D2FC  38 7E 00 0C */	addi r3, r30, 0xc
/* 803716A0 0036D300  38 81 00 0C */	addi r4, r1, 0xc
/* 803716A4 0036D304  38 A1 00 08 */	addi r5, r1, 8
/* 803716A8 0036D308  4B FF B0 99 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 803716AC 0036D30C  38 00 00 00 */	li r0, 0
/* 803716B0 0036D310  38 7E 00 2C */	addi r3, r30, 0x2c
/* 803716B4 0036D314  90 0D B1 EC */	stw r0, lbl_806404AC-_SDA_BASE_(r13)
/* 803716B8 0036D318  4B F2 34 B1 */	bl func_80294B68
/* 803716BC 0036D31C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803716C0 0036D320  7C 7F 1B 78 */	mr r31, r3
/* 803716C4 0036D324  80 A1 00 08 */	lwz r5, 8(r1)
/* 803716C8 0036D328  38 7E 00 0C */	addi r3, r30, 0xc
/* 803716CC 0036D32C  4B FF B0 C1 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 803716D0 0036D330  38 7E 00 2C */	addi r3, r30, 0x2c
/* 803716D4 0036D334  4B F2 34 89 */	bl func_80294B5C
/* 803716D8 0036D338  7C 1F 00 D0 */	neg r0, r31
/* 803716DC 0036D33C  38 60 00 01 */	li r3, 1
/* 803716E0 0036D340  7C 00 FB 78 */	or r0, r0, r31
/* 803716E4 0036D344  98 7E 00 0C */	stb r3, 0xc(r30)
/* 803716E8 0036D348  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_803716EC:
/* 803716EC 0036D34C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803716F0 0036D350  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803716F4 0036D354  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803716F8 0036D358  7C 08 03 A6 */	mtlr r0
/* 803716FC 0036D35C  38 21 00 20 */	addi r1, r1, 0x20
/* 80371700 0036D360  4E 80 00 20 */	blr
/* 80371704 0036D364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371708 0036D368  7C 08 02 A6 */	mflr r0
/* 8037170C 0036D36C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371710 0036D370  38 00 00 00 */	li r0, 0
/* 80371714 0036D374  38 81 00 0C */	addi r4, r1, 0xc
/* 80371718 0036D378  38 A1 00 08 */	addi r5, r1, 8
/* 8037171C 0036D37C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371720 0036D380  7C 7F 1B 78 */	mr r31, r3
/* 80371724 0036D384  9C 03 00 0C */	stbu r0, 0xc(r3)
/* 80371728 0036D388  4B FF B0 19 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 8037172C 0036D38C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80371730 0036D390  4B F2 34 95 */	bl func_80294BC4
/* 80371734 0036D394  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80371738 0036D398  38 7F 00 0C */	addi r3, r31, 0xc
/* 8037173C 0036D39C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80371740 0036D3A0  4B FF B0 4D */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80371744 0036D3A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371748 0036D3A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037174C 0036D3AC  7C 08 03 A6 */	mtlr r0
/* 80371750 0036D3B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80371754 0036D3B4  4E 80 00 20 */	blr

.global func_80371758
func_80371758:
/* 80371758 0036D3B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037175C 0036D3BC  7C 08 02 A6 */	mflr r0
/* 80371760 0036D3C0  C0 84 00 00 */	lfs f4, 0(r4)
/* 80371764 0036D3C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371768 0036D3C8  C0 A2 A6 48 */	lfs f5, lbl_80642C48-_SDA2_BASE_(r2)
/* 8037176C 0036D3CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371770 0036D3D0  C0 64 00 04 */	lfs f3, 4(r4)
/* 80371774 0036D3D4  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 80371778 0036D3D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037177C 0036D3DC  7C 7E 1B 78 */	mr r30, r3
/* 80371780 0036D3E0  C0 44 00 08 */	lfs f2, 8(r4)
/* 80371784 0036D3E4  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80371788 0036D3E8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8037178C 0036D3EC  D0 83 00 18 */	stfs f4, 0x18(r3)
/* 80371790 0036D3F0  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 80371794 0036D3F4  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80371798 0036D3F8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8037179C 0036D3FC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 803717A0 0036D400  40 81 00 08 */	ble lbl_803717A8
/* 803717A4 0036D404  48 00 00 18 */	b lbl_803717BC
lbl_803717A8:
/* 803717A8 0036D408  C0 A2 A6 4C */	lfs f5, lbl_80642C4C-_SDA2_BASE_(r2)
/* 803717AC 0036D40C  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 803717B0 0036D410  40 80 00 08 */	bge lbl_803717B8
/* 803717B4 0036D414  48 00 00 08 */	b lbl_803717BC
lbl_803717B8:
/* 803717B8 0036D418  FC A0 20 90 */	fmr f5, f4
lbl_803717BC:
/* 803717BC 0036D41C  C0 04 00 04 */	lfs f0, 4(r4)
/* 803717C0 0036D420  C0 22 A6 50 */	lfs f1, lbl_80642C50-_SDA2_BASE_(r2)
/* 803717C4 0036D424  D0 A3 01 24 */	stfs f5, 0x124(r3)
/* 803717C8 0036D428  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803717CC 0036D42C  40 81 00 08 */	ble lbl_803717D4
/* 803717D0 0036D430  48 00 00 18 */	b lbl_803717E8
lbl_803717D4:
/* 803717D4 0036D434  C0 22 A6 4C */	lfs f1, lbl_80642C4C-_SDA2_BASE_(r2)
/* 803717D8 0036D438  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803717DC 0036D43C  40 80 00 08 */	bge lbl_803717E4
/* 803717E0 0036D440  48 00 00 08 */	b lbl_803717E8
lbl_803717E4:
/* 803717E4 0036D444  FC 20 00 90 */	fmr f1, f0
lbl_803717E8:
/* 803717E8 0036D448  C0 04 00 08 */	lfs f0, 8(r4)
/* 803717EC 0036D44C  C0 42 A6 54 */	lfs f2, lbl_80642C54-_SDA2_BASE_(r2)
/* 803717F0 0036D450  D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 803717F4 0036D454  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803717F8 0036D458  40 81 00 08 */	ble lbl_80371800
/* 803717FC 0036D45C  48 00 00 18 */	b lbl_80371814
lbl_80371800:
/* 80371800 0036D460  C0 42 A6 4C */	lfs f2, lbl_80642C4C-_SDA2_BASE_(r2)
/* 80371804 0036D464  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371808 0036D468  40 80 00 08 */	bge lbl_80371810
/* 8037180C 0036D46C  48 00 00 08 */	b lbl_80371814
lbl_80371810:
/* 80371810 0036D470  FC 40 00 90 */	fmr f2, f0
lbl_80371814:
/* 80371814 0036D474  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80371818 0036D478  C0 22 A6 54 */	lfs f1, lbl_80642C54-_SDA2_BASE_(r2)
/* 8037181C 0036D47C  D0 43 01 14 */	stfs f2, 0x114(r3)
/* 80371820 0036D480  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80371824 0036D484  40 81 00 08 */	ble lbl_8037182C
/* 80371828 0036D488  48 00 00 18 */	b lbl_80371840
lbl_8037182C:
/* 8037182C 0036D48C  C0 22 A6 4C */	lfs f1, lbl_80642C4C-_SDA2_BASE_(r2)
/* 80371830 0036D490  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80371834 0036D494  40 80 00 08 */	bge lbl_8037183C
/* 80371838 0036D498  48 00 00 08 */	b lbl_80371840
lbl_8037183C:
/* 8037183C 0036D49C  FC 20 00 90 */	fmr f1, f0
lbl_80371840:
/* 80371840 0036D4A0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80371844 0036D4A4  C0 42 A6 54 */	lfs f2, lbl_80642C54-_SDA2_BASE_(r2)
/* 80371848 0036D4A8  D0 23 01 20 */	stfs f1, 0x120(r3)
/* 8037184C 0036D4AC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371850 0036D4B0  40 81 00 08 */	ble lbl_80371858
/* 80371854 0036D4B4  48 00 00 18 */	b lbl_8037186C
lbl_80371858:
/* 80371858 0036D4B8  C0 42 A6 4C */	lfs f2, lbl_80642C4C-_SDA2_BASE_(r2)
/* 8037185C 0036D4BC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80371860 0036D4C0  40 80 00 08 */	bge lbl_80371868
/* 80371864 0036D4C4  48 00 00 08 */	b lbl_8037186C
lbl_80371868:
/* 80371868 0036D4C8  FC 40 00 90 */	fmr f2, f0
lbl_8037186C:
/* 8037186C 0036D4CC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80371870 0036D4D0  D0 43 01 18 */	stfs f2, 0x118(r3)
/* 80371874 0036D4D4  2C 00 00 00 */	cmpwi r0, 0
/* 80371878 0036D4D8  40 82 00 0C */	bne lbl_80371884
/* 8037187C 0036D4DC  38 60 00 01 */	li r3, 1
/* 80371880 0036D4E0  48 00 00 68 */	b lbl_803718E8
lbl_80371884:
/* 80371884 0036D4E4  38 63 00 2C */	addi r3, r3, 0x2c
/* 80371888 0036D4E8  4B F2 32 D5 */	bl func_80294B5C
/* 8037188C 0036D4EC  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80371890 0036D4F0  38 03 00 87 */	addi r0, r3, 0x87
/* 80371894 0036D4F4  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80371898 0036D4F8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8037189C 0036D4FC  7C 04 00 50 */	subf r0, r4, r0
/* 803718A0 0036D500  7C 03 00 40 */	cmplw r3, r0
/* 803718A4 0036D504  40 81 00 0C */	ble lbl_803718B0
/* 803718A8 0036D508  38 60 00 00 */	li r3, 0
/* 803718AC 0036D50C  48 00 00 3C */	b lbl_803718E8
lbl_803718B0:
/* 803718B0 0036D510  38 7E 00 0C */	addi r3, r30, 0xc
/* 803718B4 0036D514  38 81 00 0C */	addi r4, r1, 0xc
/* 803718B8 0036D518  38 A1 00 08 */	addi r5, r1, 8
/* 803718BC 0036D51C  4B FF AE 85 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 803718C0 0036D520  38 7E 00 2C */	addi r3, r30, 0x2c
/* 803718C4 0036D524  4B F2 33 25 */	bl func_80294BE8
/* 803718C8 0036D528  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803718CC 0036D52C  7C 7F 1B 78 */	mr r31, r3
/* 803718D0 0036D530  80 A1 00 08 */	lwz r5, 8(r1)
/* 803718D4 0036D534  38 7E 00 0C */	addi r3, r30, 0xc
/* 803718D8 0036D538  4B FF AE B5 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 803718DC 0036D53C  7C 1F 00 D0 */	neg r0, r31
/* 803718E0 0036D540  7C 00 FB 78 */	or r0, r0, r31
/* 803718E4 0036D544  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_803718E8:
/* 803718E8 0036D548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803718EC 0036D54C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803718F0 0036D550  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803718F4 0036D554  7C 08 03 A6 */	mtlr r0
/* 803718F8 0036D558  38 21 00 20 */	addi r1, r1, 0x20
/* 803718FC 0036D55C  4E 80 00 20 */	blr
/* 80371900 0036D560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371904 0036D564  7C 08 02 A6 */	mflr r0
/* 80371908 0036D568  7C 64 1B 78 */	mr r4, r3
/* 8037190C 0036D56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371910 0036D570  38 61 00 08 */	addi r3, r1, 8
/* 80371914 0036D574  38 84 00 2C */	addi r4, r4, 0x2c
/* 80371918 0036D578  80 05 00 00 */	lwz r0, 0(r5)
/* 8037191C 0036D57C  90 01 00 08 */	stw r0, 8(r1)
/* 80371920 0036D580  80 05 00 04 */	lwz r0, 4(r5)
/* 80371924 0036D584  90 01 00 0C */	stw r0, 0xc(r1)
/* 80371928 0036D588  80 05 00 08 */	lwz r0, 8(r5)
/* 8037192C 0036D58C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80371930 0036D590  4B F2 33 15 */	bl func_80294C44
/* 80371934 0036D594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371938 0036D598  7C 08 03 A6 */	mtlr r0
/* 8037193C 0036D59C  38 21 00 20 */	addi r1, r1, 0x20
/* 80371940 0036D5A0  4E 80 00 20 */	blr