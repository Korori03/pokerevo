.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80236704
func_80236704:
/* 80236704 00232364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80236708 00232368  7C 08 02 A6 */	mflr r0
/* 8023670C 0023236C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80236710 00232370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80236714 00232374  7C 9F 23 78 */	mr r31, r4
/* 80236718 00232378  93 C1 00 08 */	stw r30, 8(r1)
/* 8023671C 0023237C  7C 7E 1B 78 */	mr r30, r3
/* 80236720 00232380  1C 64 00 94 */	mulli r3, r4, 0x94
/* 80236724 00232384  4B FA 46 75 */	bl func_801DAD98
/* 80236728 00232388  38 1F FF FF */	addi r0, r31, -1
/* 8023672C 0023238C  90 7E 00 00 */	stw r3, 0(r30)
/* 80236730 00232390  1C 00 00 94 */	mulli r0, r0, 0x94
/* 80236734 00232394  90 7E 00 04 */	stw r3, 4(r30)
/* 80236738 00232398  7C 03 02 14 */	add r0, r3, r0
/* 8023673C 0023239C  38 63 00 04 */	addi r3, r3, 4
/* 80236740 002323A0  90 1E 00 08 */	stw r0, 8(r30)
/* 80236744 002323A4  48 04 57 E9 */	bl PSMTXIdentity
/* 80236748 002323A8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8023674C 002323AC  7F C3 F3 78 */	mr r3, r30
/* 80236750 002323B0  80 04 00 00 */	lwz r0, 0(r4)
/* 80236754 002323B4  60 00 00 07 */	ori r0, r0, 7
/* 80236758 002323B8  90 04 00 00 */	stw r0, 0(r4)
/* 8023675C 002323BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236760 002323C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80236764 002323C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236768 002323C8  7C 08 03 A6 */	mtlr r0
/* 8023676C 002323CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80236770 002323D0  4E 80 00 20 */	blr

.global func_80236774
func_80236774:
/* 80236774 002323D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80236778 002323D8  7C 08 02 A6 */	mflr r0
/* 8023677C 002323DC  2C 03 00 00 */	cmpwi r3, 0
/* 80236780 002323E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80236784 002323E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80236788 002323E8  7C 9F 23 78 */	mr r31, r4
/* 8023678C 002323EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80236790 002323F0  7C 7E 1B 78 */	mr r30, r3
/* 80236794 002323F4  41 82 00 24 */	beq lbl_802367B8
/* 80236798 002323F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8023679C 002323FC  2C 03 00 00 */	cmpwi r3, 0
/* 802367A0 00232400  41 82 00 08 */	beq lbl_802367A8
/* 802367A4 00232404  4B FA 47 01 */	bl func_801DAEA4
lbl_802367A8:
/* 802367A8 00232408  2C 1F 00 00 */	cmpwi r31, 0
/* 802367AC 0023240C  40 81 00 0C */	ble lbl_802367B8
/* 802367B0 00232410  7F C3 F3 78 */	mr r3, r30
/* 802367B4 00232414  4B FA 43 05 */	bl __dl__FPv
lbl_802367B8:
/* 802367B8 00232418  7F C3 F3 78 */	mr r3, r30
/* 802367BC 0023241C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802367C0 00232420  83 C1 00 08 */	lwz r30, 8(r1)
/* 802367C4 00232424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802367C8 00232428  7C 08 03 A6 */	mtlr r0
/* 802367CC 0023242C  38 21 00 10 */	addi r1, r1, 0x10
/* 802367D0 00232430  4E 80 00 20 */	blr

.global func_802367D4
func_802367D4:
/* 802367D4 00232434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802367D8 00232438  7C 08 02 A6 */	mflr r0
/* 802367DC 0023243C  2C 04 00 00 */	cmpwi r4, 0
/* 802367E0 00232440  90 01 00 14 */	stw r0, 0x14(r1)
/* 802367E4 00232444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802367E8 00232448  7C 7F 1B 78 */	mr r31, r3
/* 802367EC 0023244C  80 A3 00 04 */	lwz r5, 4(r3)
/* 802367F0 00232450  38 A5 00 94 */	addi r5, r5, 0x94
/* 802367F4 00232454  90 A3 00 04 */	stw r5, 4(r3)
/* 802367F8 00232458  40 82 00 40 */	bne lbl_80236838
/* 802367FC 0023245C  38 65 FF 70 */	addi r3, r5, -144
/* 80236800 00232460  38 85 00 04 */	addi r4, r5, 4
/* 80236804 00232464  48 04 57 55 */	bl PSMTXCopy
/* 80236808 00232468  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023680C 0023246C  80 03 FF 6C */	lwz r0, -0x94(r3)
/* 80236810 00232470  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80236814 00232474  41 82 00 14 */	beq lbl_80236828
/* 80236818 00232478  80 03 00 00 */	lwz r0, 0(r3)
/* 8023681C 0023247C  60 00 00 08 */	ori r0, r0, 8
/* 80236820 00232480  90 03 00 00 */	stw r0, 0(r3)
/* 80236824 00232484  48 00 00 30 */	b lbl_80236854
lbl_80236828:
/* 80236828 00232488  80 03 00 00 */	lwz r0, 0(r3)
/* 8023682C 0023248C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80236830 00232490  90 03 00 00 */	stw r0, 0(r3)
/* 80236834 00232494  48 00 00 20 */	b lbl_80236854
lbl_80236838:
/* 80236838 00232498  7C 83 23 78 */	mr r3, r4
/* 8023683C 0023249C  38 85 00 04 */	addi r4, r5, 4
/* 80236840 002324A0  48 04 57 19 */	bl PSMTXCopy
/* 80236844 002324A4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80236848 002324A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8023684C 002324AC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80236850 002324B0  90 03 00 00 */	stw r0, 0(r3)
lbl_80236854:
/* 80236854 002324B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80236858 002324B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8023685C 002324BC  60 00 00 07 */	ori r0, r0, 7
/* 80236860 002324C0  90 03 00 00 */	stw r0, 0(r3)
/* 80236864 002324C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236868 002324C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023686C 002324CC  7C 08 03 A6 */	mtlr r0
/* 80236870 002324D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80236874 002324D4  4E 80 00 20 */	blr

.global func_80236878
func_80236878:
/* 80236878 002324D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8023687C 002324DC  7C 08 02 A6 */	mflr r0
/* 80236880 002324E0  2C 04 00 00 */	cmpwi r4, 0
/* 80236884 002324E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80236888 002324E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8023688C 002324EC  7C 7F 1B 78 */	mr r31, r3
/* 80236890 002324F0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80236894 002324F4  38 A5 00 94 */	addi r5, r5, 0x94
/* 80236898 002324F8  90 A3 00 04 */	stw r5, 4(r3)
/* 8023689C 002324FC  40 82 00 40 */	bne lbl_802368DC
/* 802368A0 00232500  38 65 FF 70 */	addi r3, r5, -144
/* 802368A4 00232504  38 85 00 04 */	addi r4, r5, 4
/* 802368A8 00232508  48 04 56 B1 */	bl PSMTXCopy
/* 802368AC 0023250C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802368B0 00232510  80 03 FF 6C */	lwz r0, -0x94(r3)
/* 802368B4 00232514  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 802368B8 00232518  41 82 00 14 */	beq lbl_802368CC
/* 802368BC 0023251C  80 03 00 00 */	lwz r0, 0(r3)
/* 802368C0 00232520  60 00 00 08 */	ori r0, r0, 8
/* 802368C4 00232524  90 03 00 00 */	stw r0, 0(r3)
/* 802368C8 00232528  48 00 00 40 */	b lbl_80236908
lbl_802368CC:
/* 802368CC 0023252C  80 03 00 00 */	lwz r0, 0(r3)
/* 802368D0 00232530  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 802368D4 00232534  90 03 00 00 */	stw r0, 0(r3)
/* 802368D8 00232538  48 00 00 30 */	b lbl_80236908
lbl_802368DC:
/* 802368DC 0023253C  38 65 FF 70 */	addi r3, r5, -144
/* 802368E0 00232540  38 A1 00 08 */	addi r5, r1, 8
/* 802368E4 00232544  48 04 56 A9 */	bl PSMTXConcat
/* 802368E8 00232548  80 9F 00 04 */	lwz r4, 4(r31)
/* 802368EC 0023254C  38 61 00 08 */	addi r3, r1, 8
/* 802368F0 00232550  38 84 00 04 */	addi r4, r4, 4
/* 802368F4 00232554  48 04 56 65 */	bl PSMTXCopy
/* 802368F8 00232558  80 7F 00 04 */	lwz r3, 4(r31)
/* 802368FC 0023255C  80 03 00 00 */	lwz r0, 0(r3)
/* 80236900 00232560  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80236904 00232564  90 03 00 00 */	stw r0, 0(r3)
lbl_80236908:
/* 80236908 00232568  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023690C 0023256C  80 03 00 00 */	lwz r0, 0(r3)
/* 80236910 00232570  60 00 00 07 */	ori r0, r0, 7
/* 80236914 00232574  90 03 00 00 */	stw r0, 0(r3)
/* 80236918 00232578  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8023691C 0023257C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80236920 00232580  7C 08 03 A6 */	mtlr r0
/* 80236924 00232584  38 21 00 40 */	addi r1, r1, 0x40
/* 80236928 00232588  4E 80 00 20 */	blr

.global func_8023692C
func_8023692C:
/* 8023692C 0023258C  38 A0 00 01 */	li r5, 1
/* 80236930 00232590  38 6D A4 20 */	addi r3, r13, lbl_8063F6E0-_SDA_BASE_
/* 80236934 00232594  38 80 00 04 */	li r4, 4
/* 80236938 00232598  38 00 00 00 */	li r0, 0
/* 8023693C 0023259C  98 AD A4 20 */	stb r5, lbl_8063F6E0-_SDA_BASE_(r13)
/* 80236940 002325A0  B0 83 00 02 */	sth r4, 2(r3)
/* 80236944 002325A4  98 03 00 04 */	stb r0, 4(r3)
/* 80236948 002325A8  4E 80 00 20 */	blr