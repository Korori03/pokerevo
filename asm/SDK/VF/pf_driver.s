.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFiPFDRV_GetBPBInformation
VFiPFDRV_GetBPBInformation:
/* 803058F4 00301554  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803058F8 00301558  7C 08 02 A6 */	mflr r0
/* 803058FC 0030155C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80305900 00301560  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80305904 00301564  7C 9F 23 78 */	mr r31, r4
/* 80305908 00301568  38 81 00 08 */	addi r4, r1, 8
/* 8030590C 0030156C  48 00 0A 89 */	bl VFipdm_bpb_get_bpb_information
/* 80305910 00301570  2C 03 00 00 */	cmpwi r3, 0
/* 80305914 00301574  41 82 00 0C */	beq lbl_80305920
/* 80305918 00301578  38 60 00 07 */	li r3, 7
/* 8030591C 0030157C  48 00 00 B0 */	b lbl_803059CC
lbl_80305920:
/* 80305920 00301580  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80305924 00301584  38 60 00 00 */	li r3, 0
/* 80305928 00301588  B0 1F 00 00 */	sth r0, 0(r31)
/* 8030592C 0030158C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80305930 00301590  B0 1F 00 02 */	sth r0, 2(r31)
/* 80305934 00301594  A0 01 00 16 */	lhz r0, 0x16(r1)
/* 80305938 00301598  B0 1F 00 04 */	sth r0, 4(r31)
/* 8030593C 0030159C  88 01 00 12 */	lbz r0, 0x12(r1)
/* 80305940 003015A0  98 1F 00 06 */	stb r0, 6(r31)
/* 80305944 003015A4  88 01 00 13 */	lbz r0, 0x13(r1)
/* 80305948 003015A8  98 1F 00 07 */	stb r0, 7(r31)
/* 8030594C 003015AC  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80305950 003015B0  90 1F 00 08 */	stw r0, 8(r31)
/* 80305954 003015B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80305958 003015B8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8030595C 003015BC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80305960 003015C0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80305964 003015C4  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 80305968 003015C8  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 8030596C 003015CC  A0 01 00 52 */	lhz r0, 0x52(r1)
/* 80305970 003015D0  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 80305974 003015D4  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 80305978 003015D8  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 8030597C 003015DC  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 80305980 003015E0  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 80305984 003015E4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80305988 003015E8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8030598C 003015EC  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80305990 003015F0  98 1F 00 20 */	stb r0, 0x20(r31)
/* 80305994 003015F4  88 01 00 5D */	lbz r0, 0x5d(r1)
/* 80305998 003015F8  98 1F 00 21 */	stb r0, 0x21(r31)
/* 8030599C 003015FC  88 01 00 57 */	lbz r0, 0x57(r1)
/* 803059A0 00301600  98 1F 00 22 */	stb r0, 0x22(r31)
/* 803059A4 00301604  A0 01 00 5E */	lhz r0, 0x5e(r1)
/* 803059A8 00301608  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 803059AC 0030160C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 803059B0 00301610  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803059B4 00301614  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803059B8 00301618  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803059BC 0030161C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 803059C0 00301620  90 1F 00 30 */	stw r0, 0x30(r31)
/* 803059C4 00301624  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 803059C8 00301628  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_803059CC:
/* 803059CC 0030162C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803059D0 00301630  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803059D4 00301634  7C 08 03 A6 */	mtlr r0
/* 803059D8 00301638  38 21 00 80 */	addi r1, r1, 0x80
/* 803059DC 0030163C  4E 80 00 20 */	blr

.global VFiPFDRV_GetFSINFOInformation
VFiPFDRV_GetFSINFOInformation:
/* 803059E0 00301640  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803059E4 00301644  7C 08 02 A6 */	mflr r0
/* 803059E8 00301648  38 80 FF FF */	li r4, -1
/* 803059EC 0030164C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803059F0 00301650  38 A1 00 10 */	addi r5, r1, 0x10
/* 803059F4 00301654  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803059F8 00301658  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803059FC 0030165C  7C 7E 1B 78 */	mr r30, r3
/* 80305A00 00301660  48 00 4C B9 */	bl VFiPFCACHE_AllocateDataPage
/* 80305A04 00301664  2C 03 00 00 */	cmpwi r3, 0
/* 80305A08 00301668  41 82 00 08 */	beq lbl_80305A10
/* 80305A0C 0030166C  48 00 01 78 */	b lbl_80305B84
lbl_80305A10:
/* 80305A10 00301670  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305A14 00301674  39 01 00 0C */	addi r8, r1, 0xc
/* 80305A18 00301678  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80305A1C 0030167C  38 C0 00 01 */	li r6, 1
/* 80305A20 00301680  80 84 00 04 */	lwz r4, 4(r4)
/* 80305A24 00301684  A0 BE 00 14 */	lhz r5, 0x14(r30)
/* 80305A28 00301688  A0 FE 00 00 */	lhz r7, 0(r30)
/* 80305A2C 0030168C  48 00 25 AD */	bl VFipdm_part_logical_read
/* 80305A30 00301690  2C 03 00 00 */	cmpwi r3, 0
/* 80305A34 00301694  41 82 00 50 */	beq lbl_80305A84
/* 80305A38 00301698  2C 03 00 15 */	cmpwi r3, 0x15
/* 80305A3C 0030169C  40 82 00 24 */	bne lbl_80305A60
/* 80305A40 003016A0  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80305A44 003016A4  48 00 2D 91 */	bl VFipdm_part_get_driver_error_code
/* 80305A48 003016A8  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80305A4C 003016AC  3B E0 10 00 */	li r31, 0x1000
/* 80305A50 003016B0  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80305A54 003016B4  90 64 00 20 */	stw r3, 0x20(r4)
/* 80305A58 003016B8  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 80305A5C 003016BC  48 00 00 08 */	b lbl_80305A64
lbl_80305A60:
/* 80305A60 003016C0  3B E0 FF FF */	li r31, -1
lbl_80305A64:
/* 80305A64 003016C4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305A68 003016C8  7F C3 F3 78 */	mr r3, r30
/* 80305A6C 003016CC  48 00 4D 51 */	bl VFiPFCACHE_FreeDataPage
/* 80305A70 003016D0  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80305A74 003016D4  38 80 00 01 */	li r4, 1
/* 80305A78 003016D8  48 00 22 89 */	bl VFipdm_part_release_permission
/* 80305A7C 003016DC  7F E3 FB 78 */	mr r3, r31
/* 80305A80 003016E0  48 00 01 04 */	b lbl_80305B84
lbl_80305A84:
/* 80305A84 003016E4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80305A88 003016E8  38 81 00 08 */	addi r4, r1, 8
/* 80305A8C 003016EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80305A90 003016F0  48 00 0F E5 */	bl VFipdm_bpb_check_fsinfo_sector
/* 80305A94 003016F4  2C 03 00 00 */	cmpwi r3, 0
/* 80305A98 003016F8  41 82 00 24 */	beq lbl_80305ABC
/* 80305A9C 003016FC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305AA0 00301700  7F C3 F3 78 */	mr r3, r30
/* 80305AA4 00301704  48 00 4D 19 */	bl VFiPFCACHE_FreeDataPage
/* 80305AA8 00301708  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80305AAC 0030170C  38 80 00 01 */	li r4, 1
/* 80305AB0 00301710  48 00 22 51 */	bl VFipdm_part_release_permission
/* 80305AB4 00301714  38 60 FF FF */	li r3, -1
/* 80305AB8 00301718  48 00 00 CC */	b lbl_80305B84
lbl_80305ABC:
/* 80305ABC 0030171C  80 01 00 08 */	lwz r0, 8(r1)
/* 80305AC0 00301720  2C 00 00 00 */	cmpwi r0, 0
/* 80305AC4 00301724  40 82 00 24 */	bne lbl_80305AE8
/* 80305AC8 00301728  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305ACC 0030172C  7F C3 F3 78 */	mr r3, r30
/* 80305AD0 00301730  48 00 4C ED */	bl VFiPFCACHE_FreeDataPage
/* 80305AD4 00301734  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80305AD8 00301738  38 80 00 01 */	li r4, 1
/* 80305ADC 0030173C  48 00 22 25 */	bl VFipdm_part_release_permission
/* 80305AE0 00301740  38 60 00 07 */	li r3, 7
/* 80305AE4 00301744  48 00 00 A0 */	b lbl_80305B84
lbl_80305AE8:
/* 80305AE8 00301748  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80305AEC 0030174C  38 81 00 18 */	addi r4, r1, 0x18
/* 80305AF0 00301750  80 63 00 04 */	lwz r3, 4(r3)
/* 80305AF4 00301754  48 00 0D D9 */	bl VFipdm_bpb_get_fsinfo_information
/* 80305AF8 00301758  2C 03 00 00 */	cmpwi r3, 0
/* 80305AFC 0030175C  41 82 00 0C */	beq lbl_80305B08
/* 80305B00 00301760  38 00 00 07 */	li r0, 7
/* 80305B04 00301764  48 00 00 48 */	b lbl_80305B4C
lbl_80305B08:
/* 80305B08 00301768  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80305B0C 0030176C  28 04 00 02 */	cmplwi r4, 2
/* 80305B10 00301770  41 80 00 18 */	blt lbl_80305B28
/* 80305B14 00301774  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80305B18 00301778  38 03 00 02 */	addi r0, r3, 2
/* 80305B1C 0030177C  7C 04 00 40 */	cmplw r4, r0
/* 80305B20 00301780  40 80 00 08 */	bge lbl_80305B28
/* 80305B24 00301784  90 9E 00 38 */	stw r4, 0x38(r30)
lbl_80305B28:
/* 80305B28 00301788  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80305B2C 0030178C  28 04 00 02 */	cmplwi r4, 2
/* 80305B30 00301790  41 80 00 18 */	blt lbl_80305B48
/* 80305B34 00301794  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80305B38 00301798  38 03 00 02 */	addi r0, r3, 2
/* 80305B3C 0030179C  7C 04 00 40 */	cmplw r4, r0
/* 80305B40 003017A0  40 80 00 08 */	bge lbl_80305B48
/* 80305B44 003017A4  90 9E 00 3C */	stw r4, 0x3c(r30)
lbl_80305B48:
/* 80305B48 003017A8  38 00 00 00 */	li r0, 0
lbl_80305B4C:
/* 80305B4C 003017AC  2C 00 00 00 */	cmpwi r0, 0
/* 80305B50 003017B0  41 82 00 24 */	beq lbl_80305B74
/* 80305B54 003017B4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305B58 003017B8  7F C3 F3 78 */	mr r3, r30
/* 80305B5C 003017BC  48 00 4C 61 */	bl VFiPFCACHE_FreeDataPage
/* 80305B60 003017C0  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80305B64 003017C4  38 80 00 01 */	li r4, 1
/* 80305B68 003017C8  48 00 21 99 */	bl VFipdm_part_release_permission
/* 80305B6C 003017CC  38 60 FF FF */	li r3, -1
/* 80305B70 003017D0  48 00 00 14 */	b lbl_80305B84
lbl_80305B74:
/* 80305B74 003017D4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305B78 003017D8  7F C3 F3 78 */	mr r3, r30
/* 80305B7C 003017DC  48 00 4C 41 */	bl VFiPFCACHE_FreeDataPage
/* 80305B80 003017E0  38 60 00 00 */	li r3, 0
lbl_80305B84:
/* 80305B84 003017E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80305B88 003017E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80305B8C 003017EC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80305B90 003017F0  7C 08 03 A6 */	mtlr r0
/* 80305B94 003017F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80305B98 003017F8  4E 80 00 20 */	blr

.global VFiPFDRV_StoreFreeCountToFSINFO
VFiPFDRV_StoreFreeCountToFSINFO:
/* 80305B9C 003017FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80305BA0 00301800  7C 08 02 A6 */	mflr r0
/* 80305BA4 00301804  38 80 FF FF */	li r4, -1
/* 80305BA8 00301808  90 01 00 24 */	stw r0, 0x24(r1)
/* 80305BAC 0030180C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80305BB0 00301810  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80305BB4 00301814  7C 7F 1B 78 */	mr r31, r3
/* 80305BB8 00301818  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80305BBC 0030181C  48 00 4A FD */	bl VFiPFCACHE_AllocateDataPage
/* 80305BC0 00301820  2C 03 00 00 */	cmpwi r3, 0
/* 80305BC4 00301824  41 82 00 08 */	beq lbl_80305BCC
/* 80305BC8 00301828  48 00 01 70 */	b lbl_80305D38
lbl_80305BCC:
/* 80305BCC 0030182C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305BD0 00301830  2C 1F 00 00 */	cmpwi r31, 0
/* 80305BD4 00301834  A0 BF 00 14 */	lhz r5, 0x14(r31)
/* 80305BD8 00301838  80 83 00 08 */	lwz r4, 8(r3)
/* 80305BDC 0030183C  40 82 00 0C */	bne lbl_80305BE8
/* 80305BE0 00301840  3B C0 00 0A */	li r30, 0xa
/* 80305BE4 00301844  48 00 00 54 */	b lbl_80305C38
lbl_80305BE8:
/* 80305BE8 00301848  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305BEC 0030184C  39 01 00 08 */	addi r8, r1, 8
/* 80305BF0 00301850  A0 FF 00 00 */	lhz r7, 0(r31)
/* 80305BF4 00301854  38 C0 00 01 */	li r6, 1
/* 80305BF8 00301858  48 00 23 E1 */	bl VFipdm_part_logical_read
/* 80305BFC 0030185C  2C 03 00 00 */	cmpwi r3, 0
/* 80305C00 00301860  41 82 00 34 */	beq lbl_80305C34
/* 80305C04 00301864  2C 03 00 15 */	cmpwi r3, 0x15
/* 80305C08 00301868  40 82 00 24 */	bne lbl_80305C2C
/* 80305C0C 0030186C  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305C10 00301870  48 00 2B C5 */	bl VFipdm_part_get_driver_error_code
/* 80305C14 00301874  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80305C18 00301878  3B C0 10 00 */	li r30, 0x1000
/* 80305C1C 0030187C  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80305C20 00301880  90 64 00 20 */	stw r3, 0x20(r4)
/* 80305C24 00301884  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 80305C28 00301888  48 00 00 10 */	b lbl_80305C38
lbl_80305C2C:
/* 80305C2C 0030188C  3B C0 FF FF */	li r30, -1
/* 80305C30 00301890  48 00 00 08 */	b lbl_80305C38
lbl_80305C34:
/* 80305C34 00301894  3B C0 00 00 */	li r30, 0
lbl_80305C38:
/* 80305C38 00301898  2C 1E 00 00 */	cmpwi r30, 0
/* 80305C3C 0030189C  40 82 00 10 */	bne lbl_80305C4C
/* 80305C40 003018A0  80 01 00 08 */	lwz r0, 8(r1)
/* 80305C44 003018A4  28 00 00 01 */	cmplwi r0, 1
/* 80305C48 003018A8  41 82 00 08 */	beq lbl_80305C50
lbl_80305C4C:
/* 80305C4C 003018AC  3B C0 00 11 */	li r30, 0x11
lbl_80305C50:
/* 80305C50 003018B0  2C 1E 00 00 */	cmpwi r30, 0
/* 80305C54 003018B4  40 82 00 D4 */	bne lbl_80305D28
/* 80305C58 003018B8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305C5C 003018BC  2C 1F 00 00 */	cmpwi r31, 0
/* 80305C60 003018C0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80305C64 003018C4  80 63 00 08 */	lwz r3, 8(r3)
/* 80305C68 003018C8  98 03 01 E8 */	stb r0, 0x1e8(r3)
/* 80305C6C 003018CC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305C70 003018D0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80305C74 003018D4  80 63 00 08 */	lwz r3, 8(r3)
/* 80305C78 003018D8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80305C7C 003018DC  98 03 01 E9 */	stb r0, 0x1e9(r3)
/* 80305C80 003018E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305C84 003018E4  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80305C88 003018E8  80 63 00 08 */	lwz r3, 8(r3)
/* 80305C8C 003018EC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80305C90 003018F0  98 03 01 EA */	stb r0, 0x1ea(r3)
/* 80305C94 003018F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305C98 003018F8  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80305C9C 003018FC  80 63 00 08 */	lwz r3, 8(r3)
/* 80305CA0 00301900  54 00 46 3E */	srwi r0, r0, 0x18
/* 80305CA4 00301904  98 03 01 EB */	stb r0, 0x1eb(r3)
/* 80305CA8 00301908  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305CAC 0030190C  A0 BF 00 14 */	lhz r5, 0x14(r31)
/* 80305CB0 00301910  80 83 00 08 */	lwz r4, 8(r3)
/* 80305CB4 00301914  40 82 00 0C */	bne lbl_80305CC0
/* 80305CB8 00301918  3B C0 00 0A */	li r30, 0xa
/* 80305CBC 0030191C  48 00 00 54 */	b lbl_80305D10
lbl_80305CC0:
/* 80305CC0 00301920  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305CC4 00301924  39 01 00 08 */	addi r8, r1, 8
/* 80305CC8 00301928  A0 FF 00 00 */	lhz r7, 0(r31)
/* 80305CCC 0030192C  38 C0 00 01 */	li r6, 1
/* 80305CD0 00301930  48 00 24 D1 */	bl VFipdm_part_logical_write
/* 80305CD4 00301934  2C 03 00 00 */	cmpwi r3, 0
/* 80305CD8 00301938  41 82 00 34 */	beq lbl_80305D0C
/* 80305CDC 0030193C  2C 03 00 15 */	cmpwi r3, 0x15
/* 80305CE0 00301940  40 82 00 24 */	bne lbl_80305D04
/* 80305CE4 00301944  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305CE8 00301948  48 00 2A ED */	bl VFipdm_part_get_driver_error_code
/* 80305CEC 0030194C  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80305CF0 00301950  3B C0 10 00 */	li r30, 0x1000
/* 80305CF4 00301954  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80305CF8 00301958  90 64 00 20 */	stw r3, 0x20(r4)
/* 80305CFC 0030195C  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 80305D00 00301960  48 00 00 10 */	b lbl_80305D10
lbl_80305D04:
/* 80305D04 00301964  3B C0 FF FF */	li r30, -1
/* 80305D08 00301968  48 00 00 08 */	b lbl_80305D10
lbl_80305D0C:
/* 80305D0C 0030196C  3B C0 00 00 */	li r30, 0
lbl_80305D10:
/* 80305D10 00301970  2C 1E 00 00 */	cmpwi r30, 0
/* 80305D14 00301974  40 82 00 10 */	bne lbl_80305D24
/* 80305D18 00301978  80 01 00 08 */	lwz r0, 8(r1)
/* 80305D1C 0030197C  28 00 00 01 */	cmplwi r0, 1
/* 80305D20 00301980  41 82 00 08 */	beq lbl_80305D28
lbl_80305D24:
/* 80305D24 00301984  3B C0 00 11 */	li r30, 0x11
lbl_80305D28:
/* 80305D28 00301988  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80305D2C 0030198C  7F E3 FB 78 */	mr r3, r31
/* 80305D30 00301990  48 00 4A 8D */	bl VFiPFCACHE_FreeDataPage
/* 80305D34 00301994  7F C3 F3 78 */	mr r3, r30
lbl_80305D38:
/* 80305D38 00301998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80305D3C 0030199C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80305D40 003019A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80305D44 003019A4  7C 08 03 A6 */	mtlr r0
/* 80305D48 003019A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80305D4C 003019AC  4E 80 00 20 */	blr

.global VFiPFDRV_IsInserted
VFiPFDRV_IsInserted:
/* 80305D50 003019B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305D54 003019B4  7C 08 02 A6 */	mflr r0
/* 80305D58 003019B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305D5C 003019BC  38 81 00 08 */	addi r4, r1, 8
/* 80305D60 003019C0  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 80305D64 003019C4  48 00 28 35 */	bl VFipdm_part_check_media_insert
/* 80305D68 003019C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305D6C 003019CC  80 61 00 08 */	lwz r3, 8(r1)
/* 80305D70 003019D0  7C 08 03 A6 */	mtlr r0
/* 80305D74 003019D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80305D78 003019D8  4E 80 00 20 */	blr

.global VFiPFDRV_IsDetected
VFiPFDRV_IsDetected:
/* 80305D7C 003019DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305D80 003019E0  7C 08 02 A6 */	mflr r0
/* 80305D84 003019E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305D88 003019E8  38 81 00 08 */	addi r4, r1, 8
/* 80305D8C 003019EC  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 80305D90 003019F0  48 00 29 19 */	bl VFipdm_part_check_media_detect
/* 80305D94 003019F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305D98 003019F8  80 61 00 08 */	lwz r3, 8(r1)
/* 80305D9C 003019FC  7C 08 03 A6 */	mtlr r0
/* 80305DA0 00301A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80305DA4 00301A04  4E 80 00 20 */	blr

.global VFiPFDRV_IsWProtected
VFiPFDRV_IsWProtected:
/* 80305DA8 00301A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305DAC 00301A0C  7C 08 02 A6 */	mflr r0
/* 80305DB0 00301A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305DB4 00301A14  38 81 00 08 */	addi r4, r1, 8
/* 80305DB8 00301A18  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 80305DBC 00301A1C  48 00 26 CD */	bl VFipdm_part_check_media_write_protect
/* 80305DC0 00301A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305DC4 00301A24  80 61 00 08 */	lwz r3, 8(r1)
/* 80305DC8 00301A28  7C 08 03 A6 */	mtlr r0
/* 80305DCC 00301A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80305DD0 00301A30  4E 80 00 20 */	blr

.global VFiPFDRV_mount
VFiPFDRV_mount:
/* 80305DD4 00301A34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80305DD8 00301A38  7C 08 02 A6 */	mflr r0
/* 80305DDC 00301A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80305DE0 00301A40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80305DE4 00301A44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80305DE8 00301A48  7C 7F 1B 78 */	mr r31, r3
/* 80305DEC 00301A4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80305DF0 00301A50  40 82 00 0C */	bne lbl_80305DFC
/* 80305DF4 00301A54  38 60 00 0A */	li r3, 0xa
/* 80305DF8 00301A58  48 00 01 FC */	b lbl_80305FF4
lbl_80305DFC:
/* 80305DFC 00301A5C  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 80305E00 00301A60  48 00 1D 1D */	bl VFipdm_part_get_permission
/* 80305E04 00301A64  2C 03 00 00 */	cmpwi r3, 0
/* 80305E08 00301A68  41 82 00 34 */	beq lbl_80305E3C
/* 80305E0C 00301A6C  2C 03 00 15 */	cmpwi r3, 0x15
/* 80305E10 00301A70  40 82 00 24 */	bne lbl_80305E34
/* 80305E14 00301A74  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305E18 00301A78  48 00 29 BD */	bl VFipdm_part_get_driver_error_code
/* 80305E1C 00301A7C  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80305E20 00301A80  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80305E24 00301A84  90 64 00 20 */	stw r3, 0x20(r4)
/* 80305E28 00301A88  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 80305E2C 00301A8C  38 60 10 00 */	li r3, 0x1000
/* 80305E30 00301A90  48 00 01 C4 */	b lbl_80305FF4
lbl_80305E34:
/* 80305E34 00301A94  38 60 FF FF */	li r3, -1
/* 80305E38 00301A98  48 00 01 BC */	b lbl_80305FF4
lbl_80305E3C:
/* 80305E3C 00301A9C  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305E40 00301AA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80305E44 00301AA4  48 00 25 25 */	bl VFipdm_part_get_media_information
/* 80305E48 00301AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80305E4C 00301AAC  41 82 00 18 */	beq lbl_80305E64
/* 80305E50 00301AB0  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305E54 00301AB4  38 80 00 01 */	li r4, 1
/* 80305E58 00301AB8  48 00 1E A9 */	bl VFipdm_part_release_permission
/* 80305E5C 00301ABC  38 60 FF FF */	li r3, -1
/* 80305E60 00301AC0  48 00 01 94 */	b lbl_80305FF4
lbl_80305E64:
/* 80305E64 00301AC4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80305E68 00301AC8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80305E6C 00301ACC  41 82 00 18 */	beq lbl_80305E84
/* 80305E70 00301AD0  A0 1F 18 78 */	lhz r0, 0x1878(r31)
/* 80305E74 00301AD4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80305E78 00301AD8  60 00 00 10 */	ori r0, r0, 0x10
/* 80305E7C 00301ADC  B0 1F 18 78 */	sth r0, 0x1878(r31)
/* 80305E80 00301AE0  90 7F 18 94 */	stw r3, 0x1894(r31)
lbl_80305E84:
/* 80305E84 00301AE4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80305E88 00301AE8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80305E8C 00301AEC  41 82 00 10 */	beq lbl_80305E9C
/* 80305E90 00301AF0  A0 1F 18 78 */	lhz r0, 0x1878(r31)
/* 80305E94 00301AF4  60 00 00 20 */	ori r0, r0, 0x20
/* 80305E98 00301AF8  B0 1F 18 78 */	sth r0, 0x1878(r31)
lbl_80305E9C:
/* 80305E9C 00301AFC  7F E3 FB 78 */	mr r3, r31
/* 80305EA0 00301B00  38 A1 00 10 */	addi r5, r1, 0x10
/* 80305EA4 00301B04  38 80 FF FF */	li r4, -1
/* 80305EA8 00301B08  48 00 48 11 */	bl VFiPFCACHE_AllocateDataPage
/* 80305EAC 00301B0C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305EB0 00301B10  39 01 00 0C */	addi r8, r1, 0xc
/* 80305EB4 00301B14  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305EB8 00301B18  38 A0 00 00 */	li r5, 0
/* 80305EBC 00301B1C  80 84 00 04 */	lwz r4, 4(r4)
/* 80305EC0 00301B20  38 C0 00 01 */	li r6, 1
/* 80305EC4 00301B24  38 E0 02 00 */	li r7, 0x200
/* 80305EC8 00301B28  48 00 21 11 */	bl VFipdm_part_logical_read
/* 80305ECC 00301B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80305ED0 00301B30  41 82 00 50 */	beq lbl_80305F20
/* 80305ED4 00301B34  2C 03 00 15 */	cmpwi r3, 0x15
/* 80305ED8 00301B38  40 82 00 24 */	bne lbl_80305EFC
/* 80305EDC 00301B3C  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305EE0 00301B40  48 00 28 F5 */	bl VFipdm_part_get_driver_error_code
/* 80305EE4 00301B44  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80305EE8 00301B48  3B C0 10 00 */	li r30, 0x1000
/* 80305EEC 00301B4C  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80305EF0 00301B50  90 64 00 20 */	stw r3, 0x20(r4)
/* 80305EF4 00301B54  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 80305EF8 00301B58  48 00 00 08 */	b lbl_80305F00
lbl_80305EFC:
/* 80305EFC 00301B5C  3B C0 FF FF */	li r30, -1
lbl_80305F00:
/* 80305F00 00301B60  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305F04 00301B64  7F E3 FB 78 */	mr r3, r31
/* 80305F08 00301B68  48 00 48 B5 */	bl VFiPFCACHE_FreeDataPage
/* 80305F0C 00301B6C  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305F10 00301B70  38 80 00 01 */	li r4, 1
/* 80305F14 00301B74  48 00 1D ED */	bl VFipdm_part_release_permission
/* 80305F18 00301B78  7F C3 F3 78 */	mr r3, r30
/* 80305F1C 00301B7C  48 00 00 D8 */	b lbl_80305FF4
lbl_80305F20:
/* 80305F20 00301B80  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80305F24 00301B84  38 81 00 08 */	addi r4, r1, 8
/* 80305F28 00301B88  80 63 00 04 */	lwz r3, 4(r3)
/* 80305F2C 00301B8C  48 00 0A 01 */	bl VFipdm_bpb_check_boot_sector
/* 80305F30 00301B90  2C 03 00 00 */	cmpwi r3, 0
/* 80305F34 00301B94  41 82 00 24 */	beq lbl_80305F58
/* 80305F38 00301B98  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305F3C 00301B9C  7F E3 FB 78 */	mr r3, r31
/* 80305F40 00301BA0  48 00 48 7D */	bl VFiPFCACHE_FreeDataPage
/* 80305F44 00301BA4  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305F48 00301BA8  38 80 00 01 */	li r4, 1
/* 80305F4C 00301BAC  48 00 1D B5 */	bl VFipdm_part_release_permission
/* 80305F50 00301BB0  38 60 FF FF */	li r3, -1
/* 80305F54 00301BB4  48 00 00 A0 */	b lbl_80305FF4
lbl_80305F58:
/* 80305F58 00301BB8  80 01 00 08 */	lwz r0, 8(r1)
/* 80305F5C 00301BBC  2C 00 00 00 */	cmpwi r0, 0
/* 80305F60 00301BC0  40 82 00 24 */	bne lbl_80305F84
/* 80305F64 00301BC4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305F68 00301BC8  7F E3 FB 78 */	mr r3, r31
/* 80305F6C 00301BCC  48 00 48 51 */	bl VFiPFCACHE_FreeDataPage
/* 80305F70 00301BD0  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305F74 00301BD4  38 80 00 01 */	li r4, 1
/* 80305F78 00301BD8  48 00 1D 89 */	bl VFipdm_part_release_permission
/* 80305F7C 00301BDC  38 60 00 07 */	li r3, 7
/* 80305F80 00301BE0  48 00 00 74 */	b lbl_80305FF4
lbl_80305F84:
/* 80305F84 00301BE4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80305F88 00301BE8  7F E4 FB 78 */	mr r4, r31
/* 80305F8C 00301BEC  80 63 00 04 */	lwz r3, 4(r3)
/* 80305F90 00301BF0  4B FF F9 65 */	bl VFiPFDRV_GetBPBInformation
/* 80305F94 00301BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80305F98 00301BF8  7C 7E 1B 78 */	mr r30, r3
/* 80305F9C 00301BFC  41 82 00 24 */	beq lbl_80305FC0
/* 80305FA0 00301C00  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305FA4 00301C04  7F E3 FB 78 */	mr r3, r31
/* 80305FA8 00301C08  48 00 48 15 */	bl VFiPFCACHE_FreeDataPage
/* 80305FAC 00301C0C  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80305FB0 00301C10  38 80 00 01 */	li r4, 1
/* 80305FB4 00301C14  48 00 1D 4D */	bl VFipdm_part_release_permission
/* 80305FB8 00301C18  7F C3 F3 78 */	mr r3, r30
/* 80305FBC 00301C1C  48 00 00 38 */	b lbl_80305FF4
lbl_80305FC0:
/* 80305FC0 00301C20  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80305FC4 00301C24  7F E3 FB 78 */	mr r3, r31
/* 80305FC8 00301C28  48 00 47 F5 */	bl VFiPFCACHE_FreeDataPage
/* 80305FCC 00301C2C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80305FD0 00301C30  38 60 FF FF */	li r3, -1
/* 80305FD4 00301C34  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80305FD8 00301C38  2C 00 00 02 */	cmpwi r0, 2
/* 80305FDC 00301C3C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80305FE0 00301C40  40 82 00 10 */	bne lbl_80305FF0
/* 80305FE4 00301C44  7F E3 FB 78 */	mr r3, r31
/* 80305FE8 00301C48  4B FF F9 F9 */	bl VFiPFDRV_GetFSINFOInformation
/* 80305FEC 00301C4C  7C 7E 1B 78 */	mr r30, r3
lbl_80305FF0:
/* 80305FF0 00301C50  7F C3 F3 78 */	mr r3, r30
lbl_80305FF4:
/* 80305FF4 00301C54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80305FF8 00301C58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80305FFC 00301C5C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80306000 00301C60  7C 08 03 A6 */	mtlr r0
/* 80306004 00301C64  38 21 00 30 */	addi r1, r1, 0x30
/* 80306008 00301C68  4E 80 00 20 */	blr

.global VFiPFDRV_unmount
VFiPFDRV_unmount:
/* 8030600C 00301C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306010 00301C70  7C 08 02 A6 */	mflr r0
/* 80306014 00301C74  2C 03 00 00 */	cmpwi r3, 0
/* 80306018 00301C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030601C 00301C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80306020 00301C80  7C 7F 1B 78 */	mr r31, r3
/* 80306024 00301C84  40 82 00 0C */	bne lbl_80306030
/* 80306028 00301C88  38 60 00 0A */	li r3, 0xa
/* 8030602C 00301C8C  48 00 00 54 */	b lbl_80306080
lbl_80306030:
/* 80306030 00301C90  38 04 FF FF */	addi r0, r4, -1
/* 80306034 00301C94  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 80306038 00301C98  7C 00 00 34 */	cntlzw r0, r0
/* 8030603C 00301C9C  54 04 D9 7E */	srwi r4, r0, 5
/* 80306040 00301CA0  48 00 1C C1 */	bl VFipdm_part_release_permission
/* 80306044 00301CA4  2C 03 00 00 */	cmpwi r3, 0
/* 80306048 00301CA8  41 82 00 34 */	beq lbl_8030607C
/* 8030604C 00301CAC  2C 03 00 15 */	cmpwi r3, 0x15
/* 80306050 00301CB0  40 82 00 24 */	bne lbl_80306074
/* 80306054 00301CB4  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80306058 00301CB8  48 00 27 7D */	bl VFipdm_part_get_driver_error_code
/* 8030605C 00301CBC  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80306060 00301CC0  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80306064 00301CC4  90 64 00 20 */	stw r3, 0x20(r4)
/* 80306068 00301CC8  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 8030606C 00301CCC  38 60 10 00 */	li r3, 0x1000
/* 80306070 00301CD0  48 00 00 10 */	b lbl_80306080
lbl_80306074:
/* 80306074 00301CD4  38 60 FF FF */	li r3, -1
/* 80306078 00301CD8  48 00 00 08 */	b lbl_80306080
lbl_8030607C:
/* 8030607C 00301CDC  38 60 00 00 */	li r3, 0
lbl_80306080:
/* 80306080 00301CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306084 00301CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80306088 00301CE8  7C 08 03 A6 */	mtlr r0
/* 8030608C 00301CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80306090 00301CF0  4E 80 00 20 */	blr

.global VFiPFDRV_format
VFiPFDRV_format:
/* 80306094 00301CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306098 00301CF8  7C 08 02 A6 */	mflr r0
/* 8030609C 00301CFC  2C 03 00 00 */	cmpwi r3, 0
/* 803060A0 00301D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 803060A4 00301D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803060A8 00301D08  7C 9F 23 78 */	mr r31, r4
/* 803060AC 00301D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 803060B0 00301D10  7C 7E 1B 78 */	mr r30, r3
/* 803060B4 00301D14  40 82 00 0C */	bne lbl_803060C0
/* 803060B8 00301D18  38 60 00 0A */	li r3, 0xa
/* 803060BC 00301D1C  48 00 00 E8 */	b lbl_803061A4
lbl_803060C0:
/* 803060C0 00301D20  A0 03 18 78 */	lhz r0, 0x1878(r3)
/* 803060C4 00301D24  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803060C8 00301D28  40 82 00 44 */	bne lbl_8030610C
/* 803060CC 00301D2C  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803060D0 00301D30  48 00 1A 4D */	bl VFipdm_part_get_permission
/* 803060D4 00301D34  2C 03 00 00 */	cmpwi r3, 0
/* 803060D8 00301D38  41 82 00 34 */	beq lbl_8030610C
/* 803060DC 00301D3C  2C 03 00 15 */	cmpwi r3, 0x15
/* 803060E0 00301D40  40 82 00 24 */	bne lbl_80306104
/* 803060E4 00301D44  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 803060E8 00301D48  48 00 26 ED */	bl VFipdm_part_get_driver_error_code
/* 803060EC 00301D4C  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 803060F0 00301D50  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 803060F4 00301D54  90 64 00 20 */	stw r3, 0x20(r4)
/* 803060F8 00301D58  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 803060FC 00301D5C  38 60 10 00 */	li r3, 0x1000
/* 80306100 00301D60  48 00 00 A4 */	b lbl_803061A4
lbl_80306104:
/* 80306104 00301D64  38 60 FF FF */	li r3, -1
/* 80306108 00301D68  48 00 00 9C */	b lbl_803061A4
lbl_8030610C:
/* 8030610C 00301D6C  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80306110 00301D70  7F E4 FB 78 */	mr r4, r31
/* 80306114 00301D74  48 00 1D 79 */	bl VFipdm_part_format
/* 80306118 00301D78  2C 03 00 00 */	cmpwi r3, 0
/* 8030611C 00301D7C  41 82 00 34 */	beq lbl_80306150
/* 80306120 00301D80  2C 03 00 15 */	cmpwi r3, 0x15
/* 80306124 00301D84  40 82 00 24 */	bne lbl_80306148
/* 80306128 00301D88  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 8030612C 00301D8C  48 00 26 A9 */	bl VFipdm_part_get_driver_error_code
/* 80306130 00301D90  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80306134 00301D94  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80306138 00301D98  90 64 00 20 */	stw r3, 0x20(r4)
/* 8030613C 00301D9C  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 80306140 00301DA0  38 60 10 00 */	li r3, 0x1000
/* 80306144 00301DA4  48 00 00 60 */	b lbl_803061A4
lbl_80306148:
/* 80306148 00301DA8  38 60 FF FF */	li r3, -1
/* 8030614C 00301DAC  48 00 00 58 */	b lbl_803061A4
lbl_80306150:
/* 80306150 00301DB0  A0 1E 18 78 */	lhz r0, 0x1878(r30)
/* 80306154 00301DB4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80306158 00301DB8  40 82 00 48 */	bne lbl_803061A0
/* 8030615C 00301DBC  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 80306160 00301DC0  38 80 00 01 */	li r4, 1
/* 80306164 00301DC4  48 00 1B 9D */	bl VFipdm_part_release_permission
/* 80306168 00301DC8  2C 03 00 00 */	cmpwi r3, 0
/* 8030616C 00301DCC  41 82 00 34 */	beq lbl_803061A0
/* 80306170 00301DD0  2C 03 00 15 */	cmpwi r3, 0x15
/* 80306174 00301DD4  40 82 00 24 */	bne lbl_80306198
/* 80306178 00301DD8  80 7E 18 8C */	lwz r3, 0x188c(r30)
/* 8030617C 00301DDC  48 00 26 59 */	bl VFipdm_part_get_driver_error_code
/* 80306180 00301DE0  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80306184 00301DE4  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80306188 00301DE8  90 64 00 20 */	stw r3, 0x20(r4)
/* 8030618C 00301DEC  90 7E 18 70 */	stw r3, 0x1870(r30)
/* 80306190 00301DF0  38 60 10 00 */	li r3, 0x1000
/* 80306194 00301DF4  48 00 00 10 */	b lbl_803061A4
lbl_80306198:
/* 80306198 00301DF8  38 60 FF FF */	li r3, -1
/* 8030619C 00301DFC  48 00 00 08 */	b lbl_803061A4
lbl_803061A0:
/* 803061A0 00301E00  38 60 00 00 */	li r3, 0
lbl_803061A4:
/* 803061A4 00301E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803061A8 00301E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803061AC 00301E0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803061B0 00301E10  7C 08 03 A6 */	mtlr r0
/* 803061B4 00301E14  38 21 00 10 */	addi r1, r1, 0x10
/* 803061B8 00301E18  4E 80 00 20 */	blr

.global VFiPFDRV_lread
VFiPFDRV_lread:
/* 803061BC 00301E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803061C0 00301E20  7C 08 02 A6 */	mflr r0
/* 803061C4 00301E24  2C 03 00 00 */	cmpwi r3, 0
/* 803061C8 00301E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803061CC 00301E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803061D0 00301E30  7C 7F 1B 78 */	mr r31, r3
/* 803061D4 00301E34  40 82 00 0C */	bne lbl_803061E0
/* 803061D8 00301E38  38 60 00 0A */	li r3, 0xa
/* 803061DC 00301E3C  48 00 00 50 */	b lbl_8030622C
lbl_803061E0:
/* 803061E0 00301E40  7C E8 3B 78 */	mr r8, r7
/* 803061E4 00301E44  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 803061E8 00301E48  A0 FF 00 00 */	lhz r7, 0(r31)
/* 803061EC 00301E4C  48 00 1D ED */	bl VFipdm_part_logical_read
/* 803061F0 00301E50  2C 03 00 00 */	cmpwi r3, 0
/* 803061F4 00301E54  41 82 00 34 */	beq lbl_80306228
/* 803061F8 00301E58  2C 03 00 15 */	cmpwi r3, 0x15
/* 803061FC 00301E5C  40 82 00 24 */	bne lbl_80306220
/* 80306200 00301E60  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80306204 00301E64  48 00 25 D1 */	bl VFipdm_part_get_driver_error_code
/* 80306208 00301E68  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 8030620C 00301E6C  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80306210 00301E70  90 64 00 20 */	stw r3, 0x20(r4)
/* 80306214 00301E74  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 80306218 00301E78  38 60 10 00 */	li r3, 0x1000
/* 8030621C 00301E7C  48 00 00 10 */	b lbl_8030622C
lbl_80306220:
/* 80306220 00301E80  38 60 FF FF */	li r3, -1
/* 80306224 00301E84  48 00 00 08 */	b lbl_8030622C
lbl_80306228:
/* 80306228 00301E88  38 60 00 00 */	li r3, 0
lbl_8030622C:
/* 8030622C 00301E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306230 00301E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80306234 00301E94  7C 08 03 A6 */	mtlr r0
/* 80306238 00301E98  38 21 00 10 */	addi r1, r1, 0x10
/* 8030623C 00301E9C  4E 80 00 20 */	blr

.global VFiPFDRV_lwrite
VFiPFDRV_lwrite:
/* 80306240 00301EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306244 00301EA4  7C 08 02 A6 */	mflr r0
/* 80306248 00301EA8  2C 03 00 00 */	cmpwi r3, 0
/* 8030624C 00301EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306250 00301EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80306254 00301EB4  7C 7F 1B 78 */	mr r31, r3
/* 80306258 00301EB8  40 82 00 0C */	bne lbl_80306264
/* 8030625C 00301EBC  38 60 00 0A */	li r3, 0xa
/* 80306260 00301EC0  48 00 00 50 */	b lbl_803062B0
lbl_80306264:
/* 80306264 00301EC4  7C E8 3B 78 */	mr r8, r7
/* 80306268 00301EC8  80 63 18 8C */	lwz r3, 0x188c(r3)
/* 8030626C 00301ECC  A0 FF 00 00 */	lhz r7, 0(r31)
/* 80306270 00301ED0  48 00 1F 31 */	bl VFipdm_part_logical_write
/* 80306274 00301ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80306278 00301ED8  41 82 00 34 */	beq lbl_803062AC
/* 8030627C 00301EDC  2C 03 00 15 */	cmpwi r3, 0x15
/* 80306280 00301EE0  40 82 00 24 */	bne lbl_803062A4
/* 80306284 00301EE4  80 7F 18 8C */	lwz r3, 0x188c(r31)
/* 80306288 00301EE8  48 00 25 4D */	bl VFipdm_part_get_driver_error_code
/* 8030628C 00301EEC  3C 80 80 58 */	lis r4, lbl_8057F5C8@ha
/* 80306290 00301EF0  38 84 F5 C8 */	addi r4, r4, lbl_8057F5C8@l
/* 80306294 00301EF4  90 64 00 20 */	stw r3, 0x20(r4)
/* 80306298 00301EF8  90 7F 18 70 */	stw r3, 0x1870(r31)
/* 8030629C 00301EFC  38 60 10 00 */	li r3, 0x1000
/* 803062A0 00301F00  48 00 00 10 */	b lbl_803062B0
lbl_803062A4:
/* 803062A4 00301F04  38 60 FF FF */	li r3, -1
/* 803062A8 00301F08  48 00 00 08 */	b lbl_803062B0
lbl_803062AC:
/* 803062AC 00301F0C  38 60 00 00 */	li r3, 0
lbl_803062B0:
/* 803062B0 00301F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803062B4 00301F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803062B8 00301F18  7C 08 03 A6 */	mtlr r0
/* 803062BC 00301F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803062C0 00301F20  4E 80 00 20 */	blr
