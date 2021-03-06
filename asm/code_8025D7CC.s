.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8025D7CC
func_8025D7CC:
/* 8025D7CC 0025942C  7C A4 2A 14 */	add r5, r4, r5
/* 8025D7D0 00259430  38 00 00 00 */	li r0, 0
/* 8025D7D4 00259434  90 83 00 00 */	stw r4, 0(r3)
/* 8025D7D8 00259438  90 A3 00 04 */	stw r5, 4(r3)
/* 8025D7DC 0025943C  90 83 00 08 */	stw r4, 8(r3)
/* 8025D7E0 00259440  90 83 00 0C */	stw r4, 0xc(r3)
/* 8025D7E4 00259444  90 83 00 10 */	stw r4, 0x10(r3)
/* 8025D7E8 00259448  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8025D7EC 0025944C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8025D7F0 00259450  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8025D7F4 00259454  4E 80 00 20 */	blr

.global func_8025D7F8
func_8025D7F8:
/* 8025D7F8 00259458  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8025D7FC 0025945C  4E 80 00 20 */	blr

.global lbl_8025D800
lbl_8025D800:
/* 8025D800 00259460  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8025D804 00259464  4E 80 00 20 */	blr

.global func_8025D808
func_8025D808:
/* 8025D808 00259468  2C 04 00 00 */	cmpwi r4, 0
/* 8025D80C 0025946C  40 82 00 0C */	bne lbl_8025D818
/* 8025D810 00259470  38 60 00 00 */	li r3, 0
/* 8025D814 00259474  4E 80 00 20 */	blr
lbl_8025D818:
/* 8025D818 00259478  38 04 00 01 */	addi r0, r4, 1
/* 8025D81C 0025947C  81 03 00 08 */	lwz r8, 8(r3)
/* 8025D820 00259480  54 06 04 3C */	rlwinm r6, r0, 0, 0x10, 0x1e
/* 8025D824 00259484  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8025D828 00259488  38 06 00 08 */	addi r0, r6, 8
/* 8025D82C 0025948C  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 8025D830 00259490  7C 04 40 40 */	cmplw r4, r8
/* 8025D834 00259494  38 07 00 07 */	addi r0, r7, 7
/* 8025D838 00259498  7C CA 33 78 */	mr r10, r6
/* 8025D83C 0025949C  7C 00 1E 70 */	srawi r0, r0, 3
/* 8025D840 002594A0  7C 00 01 94 */	addze r0, r0
/* 8025D844 002594A4  54 06 1C 38 */	rlwinm r6, r0, 3, 0x10, 0x1c
/* 8025D848 002594A8  40 81 00 CC */	ble lbl_8025D914
/* 8025D84C 002594AC  80 03 00 04 */	lwz r0, 4(r3)
/* 8025D850 002594B0  7C 04 00 50 */	subf r0, r4, r0
/* 8025D854 002594B4  7C 00 30 40 */	cmplw r0, r6
/* 8025D858 002594B8  41 80 00 54 */	blt lbl_8025D8AC
/* 8025D85C 002594BC  38 E0 00 77 */	li r7, 0x77
/* 8025D860 002594C0  38 00 00 00 */	li r0, 0
/* 8025D864 002594C4  98 E4 00 00 */	stb r7, 0(r4)
/* 8025D868 002594C8  98 A4 00 01 */	stb r5, 1(r4)
/* 8025D86C 002594CC  B0 C4 00 02 */	sth r6, 2(r4)
/* 8025D870 002594D0  B1 44 00 04 */	sth r10, 4(r4)
/* 8025D874 002594D4  B0 04 00 06 */	sth r0, 6(r4)
/* 8025D878 002594D8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8025D87C 002594DC  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 8025D880 002594E0  7C 00 32 14 */	add r0, r0, r6
/* 8025D884 002594E4  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8025D888 002594E8  38 C7 00 01 */	addi r6, r7, 1
/* 8025D88C 002594EC  90 03 00 10 */	stw r0, 0x10(r3)
/* 8025D890 002594F0  38 05 00 01 */	addi r0, r5, 1
/* 8025D894 002594F4  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8025D898 002594F8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8025D89C 002594FC  A0 04 00 06 */	lhz r0, 6(r4)
/* 8025D8A0 00259500  7C 64 02 14 */	add r3, r4, r0
/* 8025D8A4 00259504  38 63 00 08 */	addi r3, r3, 8
/* 8025D8A8 00259508  4E 80 00 20 */	blr
lbl_8025D8AC:
/* 8025D8AC 0025950C  81 23 00 00 */	lwz r9, 0(r3)
/* 8025D8B0 00259510  7C 09 40 50 */	subf r0, r9, r8
/* 8025D8B4 00259514  7C 00 30 40 */	cmplw r0, r6
/* 8025D8B8 00259518  41 80 01 3C */	blt lbl_8025D9F4
/* 8025D8BC 0025951C  38 80 00 77 */	li r4, 0x77
/* 8025D8C0 00259520  38 00 00 00 */	li r0, 0
/* 8025D8C4 00259524  98 89 00 00 */	stb r4, 0(r9)
/* 8025D8C8 00259528  98 A9 00 01 */	stb r5, 1(r9)
/* 8025D8CC 0025952C  B0 C9 00 02 */	sth r6, 2(r9)
/* 8025D8D0 00259530  B1 49 00 04 */	sth r10, 4(r9)
/* 8025D8D4 00259534  B0 09 00 06 */	sth r0, 6(r9)
/* 8025D8D8 00259538  80 03 00 00 */	lwz r0, 0(r3)
/* 8025D8DC 0025953C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8025D8E0 00259540  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8025D8E4 00259544  7C C0 32 14 */	add r6, r0, r6
/* 8025D8E8 00259548  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8025D8EC 0025954C  38 A5 00 01 */	addi r5, r5, 1
/* 8025D8F0 00259550  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8025D8F4 00259554  38 04 00 01 */	addi r0, r4, 1
/* 8025D8F8 00259558  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8025D8FC 0025955C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8025D900 00259560  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8025D904 00259564  A0 09 00 06 */	lhz r0, 6(r9)
/* 8025D908 00259568  7C 69 02 14 */	add r3, r9, r0
/* 8025D90C 0025956C  38 63 00 08 */	addi r3, r3, 8
/* 8025D910 00259570  4E 80 00 20 */	blr
lbl_8025D914:
/* 8025D914 00259574  40 80 00 60 */	bge lbl_8025D974
/* 8025D918 00259578  7C 04 40 50 */	subf r0, r4, r8
/* 8025D91C 0025957C  7C 00 30 40 */	cmplw r0, r6
/* 8025D920 00259580  41 80 00 D4 */	blt lbl_8025D9F4
/* 8025D924 00259584  38 E0 00 77 */	li r7, 0x77
/* 8025D928 00259588  38 00 00 00 */	li r0, 0
/* 8025D92C 0025958C  98 E4 00 00 */	stb r7, 0(r4)
/* 8025D930 00259590  98 A4 00 01 */	stb r5, 1(r4)
/* 8025D934 00259594  B0 C4 00 02 */	sth r6, 2(r4)
/* 8025D938 00259598  B1 44 00 04 */	sth r10, 4(r4)
/* 8025D93C 0025959C  B0 04 00 06 */	sth r0, 6(r4)
/* 8025D940 002595A0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8025D944 002595A4  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 8025D948 002595A8  7C 00 32 14 */	add r0, r0, r6
/* 8025D94C 002595AC  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8025D950 002595B0  38 C7 00 01 */	addi r6, r7, 1
/* 8025D954 002595B4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8025D958 002595B8  38 05 00 01 */	addi r0, r5, 1
/* 8025D95C 002595BC  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8025D960 002595C0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8025D964 002595C4  A0 04 00 06 */	lhz r0, 6(r4)
/* 8025D968 002595C8  7C 64 02 14 */	add r3, r4, r0
/* 8025D96C 002595CC  38 63 00 08 */	addi r3, r3, 8
/* 8025D970 002595D0  4E 80 00 20 */	blr
lbl_8025D974:
/* 8025D974 002595D4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8025D978 002595D8  2C 00 00 00 */	cmpwi r0, 0
/* 8025D97C 002595DC  40 82 00 78 */	bne lbl_8025D9F4
/* 8025D980 002595E0  81 23 00 00 */	lwz r9, 0(r3)
/* 8025D984 002595E4  80 03 00 04 */	lwz r0, 4(r3)
/* 8025D988 002595E8  7C 09 00 50 */	subf r0, r9, r0
/* 8025D98C 002595EC  7C 00 30 40 */	cmplw r0, r6
/* 8025D990 002595F0  41 80 00 64 */	blt lbl_8025D9F4
/* 8025D994 002595F4  38 80 00 77 */	li r4, 0x77
/* 8025D998 002595F8  38 00 00 00 */	li r0, 0
/* 8025D99C 002595FC  98 89 00 00 */	stb r4, 0(r9)
/* 8025D9A0 00259600  98 A9 00 01 */	stb r5, 1(r9)
/* 8025D9A4 00259604  B0 C9 00 02 */	sth r6, 2(r9)
/* 8025D9A8 00259608  B1 49 00 04 */	sth r10, 4(r9)
/* 8025D9AC 0025960C  B0 09 00 06 */	sth r0, 6(r9)
/* 8025D9B0 00259610  81 03 00 00 */	lwz r8, 0(r3)
/* 8025D9B4 00259614  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8025D9B8 00259618  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8025D9BC 0025961C  7C C8 32 14 */	add r6, r8, r6
/* 8025D9C0 00259620  80 E3 00 04 */	lwz r7, 4(r3)
/* 8025D9C4 00259624  38 A5 00 01 */	addi r5, r5, 1
/* 8025D9C8 00259628  38 04 00 01 */	addi r0, r4, 1
/* 8025D9CC 0025962C  91 03 00 08 */	stw r8, 8(r3)
/* 8025D9D0 00259630  91 03 00 0C */	stw r8, 0xc(r3)
/* 8025D9D4 00259634  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8025D9D8 00259638  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8025D9DC 0025963C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8025D9E0 00259640  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8025D9E4 00259644  A0 09 00 06 */	lhz r0, 6(r9)
/* 8025D9E8 00259648  7C 69 02 14 */	add r3, r9, r0
/* 8025D9EC 0025964C  38 63 00 08 */	addi r3, r3, 8
/* 8025D9F0 00259650  4E 80 00 20 */	blr
lbl_8025D9F4:
/* 8025D9F4 00259654  38 60 00 00 */	li r3, 0
/* 8025D9F8 00259658  4E 80 00 20 */	blr

.global func_8025D9FC
func_8025D9FC:
/* 8025D9FC 0025965C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025DA00 00259660  7C 08 02 A6 */	mflr r0
/* 8025DA04 00259664  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025DA08 00259668  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025DA0C 0025966C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025DA10 00259670  7C BE 2B 78 */	mr r30, r5
/* 8025DA14 00259674  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025DA18 00259678  7C 9D 23 78 */	mr r29, r4
/* 8025DA1C 0025967C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8025DA20 00259680  2C 00 00 00 */	cmpwi r0, 0
/* 8025DA24 00259684  40 82 00 0C */	bne lbl_8025DA30
/* 8025DA28 00259688  38 60 00 00 */	li r3, 0
/* 8025DA2C 0025968C  48 00 00 68 */	b lbl_8025DA94
lbl_8025DA30:
/* 8025DA30 00259690  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8025DA34 00259694  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8025DA38 00259698  7C 04 00 40 */	cmplw r4, r0
/* 8025DA3C 0025969C  41 80 00 0C */	blt lbl_8025DA48
/* 8025DA40 002596A0  80 03 00 00 */	lwz r0, 0(r3)
/* 8025DA44 002596A4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8025DA48:
/* 8025DA48 002596A8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8025DA4C 002596AC  88 9F 00 00 */	lbz r4, 0(r31)
/* 8025DA50 002596B0  28 04 00 77 */	cmplwi r4, 0x77
/* 8025DA54 002596B4  41 82 00 14 */	beq lbl_8025DA68
/* 8025DA58 002596B8  3C 60 80 42 */	lis r3, lbl_80425550@ha
/* 8025DA5C 002596BC  38 63 55 50 */	addi r3, r3, lbl_80425550@l
/* 8025DA60 002596C0  4C C6 31 82 */	crclr 6
/* 8025DA64 002596C4  4B DA A0 61 */	bl OSReport
lbl_8025DA68:
/* 8025DA68 002596C8  2C 1D 00 00 */	cmpwi r29, 0
/* 8025DA6C 002596CC  41 82 00 0C */	beq lbl_8025DA78
/* 8025DA70 002596D0  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8025DA74 002596D4  B0 1D 00 00 */	sth r0, 0(r29)
lbl_8025DA78:
/* 8025DA78 002596D8  2C 1E 00 00 */	cmpwi r30, 0
/* 8025DA7C 002596DC  41 82 00 0C */	beq lbl_8025DA88
/* 8025DA80 002596E0  88 1F 00 01 */	lbz r0, 1(r31)
/* 8025DA84 002596E4  98 1E 00 00 */	stb r0, 0(r30)
lbl_8025DA88:
/* 8025DA88 002596E8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8025DA8C 002596EC  7C 7F 02 14 */	add r3, r31, r0
/* 8025DA90 002596F0  38 63 00 08 */	addi r3, r3, 8
lbl_8025DA94:
/* 8025DA94 002596F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025DA98 002596F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025DA9C 002596FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025DAA0 00259700  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025DAA4 00259704  7C 08 03 A6 */	mtlr r0
/* 8025DAA8 00259708  38 21 00 20 */	addi r1, r1, 0x20
/* 8025DAAC 0025970C  4E 80 00 20 */	blr

.global func_8025DAB0
func_8025DAB0:
/* 8025DAB0 00259710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025DAB4 00259714  7C 08 02 A6 */	mflr r0
/* 8025DAB8 00259718  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025DABC 0025971C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025DAC0 00259720  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025DAC4 00259724  7C BE 2B 78 */	mr r30, r5
/* 8025DAC8 00259728  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025DACC 0025972C  7C 9D 23 78 */	mr r29, r4
/* 8025DAD0 00259730  93 81 00 10 */	stw r28, 0x10(r1)
/* 8025DAD4 00259734  7C 7C 1B 78 */	mr r28, r3
/* 8025DAD8 00259738  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8025DADC 0025973C  2C 00 00 00 */	cmpwi r0, 0
/* 8025DAE0 00259740  40 82 00 0C */	bne lbl_8025DAEC
/* 8025DAE4 00259744  38 60 00 00 */	li r3, 0
/* 8025DAE8 00259748  48 00 00 98 */	b lbl_8025DB80
lbl_8025DAEC:
/* 8025DAEC 0025974C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8025DAF0 00259750  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8025DAF4 00259754  7C 04 00 40 */	cmplw r4, r0
/* 8025DAF8 00259758  41 80 00 0C */	blt lbl_8025DB04
/* 8025DAFC 0025975C  80 03 00 00 */	lwz r0, 0(r3)
/* 8025DB00 00259760  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8025DB04:
/* 8025DB04 00259764  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8025DB08 00259768  88 9F 00 00 */	lbz r4, 0(r31)
/* 8025DB0C 0025976C  28 04 00 77 */	cmplwi r4, 0x77
/* 8025DB10 00259770  41 82 00 14 */	beq lbl_8025DB24
/* 8025DB14 00259774  3C 60 80 42 */	lis r3, lbl_8042556C@ha
/* 8025DB18 00259778  38 63 55 6C */	addi r3, r3, lbl_8042556C@l
/* 8025DB1C 0025977C  4C C6 31 82 */	crclr 6
/* 8025DB20 00259780  4B DA 9F A5 */	bl OSReport
lbl_8025DB24:
/* 8025DB24 00259784  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8025DB28 00259788  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8025DB2C 0025978C  7C 7F 1A 14 */	add r3, r31, r3
/* 8025DB30 00259790  7C 03 00 40 */	cmplw r3, r0
/* 8025DB34 00259794  41 80 00 10 */	blt lbl_8025DB44
/* 8025DB38 00259798  80 1C 00 00 */	lwz r0, 0(r28)
/* 8025DB3C 0025979C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8025DB40 002597A0  48 00 00 08 */	b lbl_8025DB48
lbl_8025DB44:
/* 8025DB44 002597A4  90 7C 00 0C */	stw r3, 0xc(r28)
lbl_8025DB48:
/* 8025DB48 002597A8  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8025DB4C 002597AC  2C 1D 00 00 */	cmpwi r29, 0
/* 8025DB50 002597B0  38 03 FF FF */	addi r0, r3, -1
/* 8025DB54 002597B4  90 1C 00 18 */	stw r0, 0x18(r28)
/* 8025DB58 002597B8  41 82 00 0C */	beq lbl_8025DB64
/* 8025DB5C 002597BC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8025DB60 002597C0  B0 1D 00 00 */	sth r0, 0(r29)
lbl_8025DB64:
/* 8025DB64 002597C4  2C 1E 00 00 */	cmpwi r30, 0
/* 8025DB68 002597C8  41 82 00 0C */	beq lbl_8025DB74
/* 8025DB6C 002597CC  88 1F 00 01 */	lbz r0, 1(r31)
/* 8025DB70 002597D0  98 1E 00 00 */	stb r0, 0(r30)
lbl_8025DB74:
/* 8025DB74 002597D4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8025DB78 002597D8  7C 7F 02 14 */	add r3, r31, r0
/* 8025DB7C 002597DC  38 63 00 08 */	addi r3, r3, 8
lbl_8025DB80:
/* 8025DB80 002597E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025DB84 002597E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025DB88 002597E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025DB8C 002597EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025DB90 002597F0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8025DB94 002597F4  7C 08 03 A6 */	mtlr r0
/* 8025DB98 002597F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025DB9C 002597FC  4E 80 00 20 */	blr

.global func_8025DBA0
func_8025DBA0:
/* 8025DBA0 00259800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025DBA4 00259804  7C 08 02 A6 */	mflr r0
/* 8025DBA8 00259808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025DBAC 0025980C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025DBB0 00259810  7C 7F 1B 78 */	mr r31, r3
/* 8025DBB4 00259814  93 C1 00 08 */	stw r30, 8(r1)
/* 8025DBB8 00259818  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8025DBBC 0025981C  2C 00 00 00 */	cmpwi r0, 0
/* 8025DBC0 00259820  40 82 00 0C */	bne lbl_8025DBCC
/* 8025DBC4 00259824  38 60 FF FF */	li r3, -1
/* 8025DBC8 00259828  48 00 00 C0 */	b lbl_8025DC88
lbl_8025DBCC:
/* 8025DBCC 0025982C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8025DBD0 00259830  88 9E 00 00 */	lbz r4, 0(r30)
/* 8025DBD4 00259834  28 04 00 77 */	cmplwi r4, 0x77
/* 8025DBD8 00259838  41 82 00 14 */	beq lbl_8025DBEC
/* 8025DBDC 0025983C  3C 60 80 42 */	lis r3, lbl_80425588@ha
/* 8025DBE0 00259840  38 63 55 88 */	addi r3, r3, lbl_80425588@l
/* 8025DBE4 00259844  4C C6 31 82 */	crclr 6
/* 8025DBE8 00259848  4B DA 9E DD */	bl OSReport
lbl_8025DBEC:
/* 8025DBEC 0025984C  38 00 00 00 */	li r0, 0
/* 8025DBF0 00259850  98 1E 00 00 */	stb r0, 0(r30)
/* 8025DBF4 00259854  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8025DBF8 00259858  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8025DBFC 0025985C  A0 9E 00 02 */	lhz r4, 2(r30)
/* 8025DC00 00259860  7C 03 00 00 */	cmpw r3, r0
/* 8025DC04 00259864  7C 7E 22 14 */	add r3, r30, r4
/* 8025DC08 00259868  40 82 00 4C */	bne lbl_8025DC54
/* 8025DC0C 0025986C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8025DC10 00259870  7C 03 00 40 */	cmplw r3, r0
/* 8025DC14 00259874  41 80 00 1C */	blt lbl_8025DC30
/* 8025DC18 00259878  80 7F 00 00 */	lwz r3, 0(r31)
/* 8025DC1C 0025987C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8025DC20 00259880  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8025DC24 00259884  90 7F 00 08 */	stw r3, 8(r31)
/* 8025DC28 00259888  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8025DC2C 0025988C  48 00 00 0C */	b lbl_8025DC38
lbl_8025DC30:
/* 8025DC30 00259890  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8025DC34 00259894  90 7F 00 08 */	stw r3, 8(r31)
lbl_8025DC38:
/* 8025DC38 00259898  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8025DC3C 0025989C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8025DC40 002598A0  38 84 FF FF */	addi r4, r4, -1
/* 8025DC44 002598A4  38 03 FF FF */	addi r0, r3, -1
/* 8025DC48 002598A8  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8025DC4C 002598AC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8025DC50 002598B0  48 00 00 34 */	b lbl_8025DC84
lbl_8025DC54:
/* 8025DC54 002598B4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8025DC58 002598B8  7C 03 00 40 */	cmplw r3, r0
/* 8025DC5C 002598BC  41 80 00 18 */	blt lbl_8025DC74
/* 8025DC60 002598C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8025DC64 002598C4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8025DC68 002598C8  90 7F 00 08 */	stw r3, 8(r31)
/* 8025DC6C 002598CC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8025DC70 002598D0  48 00 00 08 */	b lbl_8025DC78
lbl_8025DC74:
/* 8025DC74 002598D4  90 7F 00 08 */	stw r3, 8(r31)
lbl_8025DC78:
/* 8025DC78 002598D8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8025DC7C 002598DC  38 03 FF FF */	addi r0, r3, -1
/* 8025DC80 002598E0  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8025DC84:
/* 8025DC84 002598E4  38 60 00 00 */	li r3, 0
lbl_8025DC88:
/* 8025DC88 002598E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025DC8C 002598EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025DC90 002598F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025DC94 002598F4  7C 08 03 A6 */	mtlr r0
/* 8025DC98 002598F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8025DC9C 002598FC  4E 80 00 20 */	blr

.global func_8025DCA0
func_8025DCA0:
/* 8025DCA0 00259900  38 A0 00 01 */	li r5, 1
/* 8025DCA4 00259904  38 6D A6 C0 */	addi r3, r13, lbl_8063F980-_SDA_BASE_
/* 8025DCA8 00259908  38 80 00 04 */	li r4, 4
/* 8025DCAC 0025990C  38 00 00 00 */	li r0, 0
/* 8025DCB0 00259910  98 AD A6 C0 */	stb r5, lbl_8063F980-_SDA_BASE_(r13)
/* 8025DCB4 00259914  B0 83 00 02 */	sth r4, 2(r3)
/* 8025DCB8 00259918  98 03 00 04 */	stb r0, 4(r3)
/* 8025DCBC 0025991C  4E 80 00 20 */	blr
