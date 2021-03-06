.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GXSetMisc
GXSetMisc:
/* 80280618 0027C278  2C 03 00 02 */	cmpwi r3, 2
/* 8028061C 0027C27C  41 82 00 58 */	beq lbl_80280674
/* 80280620 0027C280  40 80 00 14 */	bge lbl_80280634
/* 80280624 0027C284  2C 03 00 00 */	cmpwi r3, 0
/* 80280628 0027C288  4D 82 00 20 */	beqlr
/* 8028062C 0027C28C  40 80 00 14 */	bge lbl_80280640
/* 80280630 0027C290  4E 80 00 20 */	blr
lbl_80280634:
/* 80280634 0027C294  2C 03 00 04 */	cmpwi r3, 4
/* 80280638 0027C298  4C 80 00 20 */	bgelr
/* 8028063C 0027C29C  48 00 00 50 */	b lbl_8028068C
lbl_80280640:
/* 80280640 0027C2A0  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 80280644 0027C2A4  80 A2 A0 D0 */	lwz r5, lbl_806426D0-_SDA2_BASE_(r2)
/* 80280648 0027C2A8  B0 85 00 04 */	sth r4, 4(r5)
/* 8028064C 0027C2AC  7C 03 00 34 */	cntlzw r3, r0
/* 80280650 0027C2B0  38 00 00 01 */	li r0, 1
/* 80280654 0027C2B4  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 80280658 0027C2B8  B0 65 00 00 */	sth r3, 0(r5)
/* 8028065C 0027C2BC  B0 05 00 02 */	sth r0, 2(r5)
/* 80280660 0027C2C0  4D 82 00 20 */	beqlr
/* 80280664 0027C2C4  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 80280668 0027C2C8  60 00 00 08 */	ori r0, r0, 8
/* 8028066C 0027C2CC  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 80280670 0027C2D0  4E 80 00 20 */	blr
lbl_80280674:
/* 80280674 0027C2D4  7C 04 00 D0 */	neg r0, r4
/* 80280678 0027C2D8  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 8028067C 0027C2DC  7C 00 23 78 */	or r0, r0, r4
/* 80280680 0027C2E0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80280684 0027C2E4  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 80280688 0027C2E8  4E 80 00 20 */	blr
lbl_8028068C:
/* 8028068C 0027C2EC  7C 04 00 D0 */	neg r0, r4
/* 80280690 0027C2F0  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 80280694 0027C2F4  7C 00 23 78 */	or r0, r0, r4
/* 80280698 0027C2F8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8028069C 0027C2FC  98 03 05 FA */	stb r0, 0x5fa(r3)
/* 802806A0 0027C300  4E 80 00 20 */	blr

.global GXFlush
GXFlush:
/* 802806A4 0027C304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802806A8 0027C308  7C 08 02 A6 */	mflr r0
/* 802806AC 0027C30C  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 802806B0 0027C310  90 01 00 14 */	stw r0, 0x14(r1)
/* 802806B4 0027C314  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 802806B8 0027C318  2C 00 00 00 */	cmpwi r0, 0
/* 802806BC 0027C31C  41 82 00 08 */	beq lbl_802806C4
/* 802806C0 0027C320  48 00 08 11 */	bl __GXSetDirtyState
lbl_802806C4:
/* 802806C4 0027C324  38 00 00 00 */	li r0, 0
/* 802806C8 0027C328  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802806CC 0027C32C  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 802806D0 0027C330  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806D4 0027C334  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806D8 0027C338  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806DC 0027C33C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806E0 0027C340  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806E4 0027C344  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806E8 0027C348  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802806EC 0027C34C  4B FE 7B 75 */	bl PPCSync
/* 802806F0 0027C350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802806F4 0027C354  7C 08 03 A6 */	mtlr r0
/* 802806F8 0027C358  38 21 00 10 */	addi r1, r1, 0x10
/* 802806FC 0027C35C  4E 80 00 20 */	blr

.global GXResetWriteGatherPipe
GXResetWriteGatherPipe:
/* 80280700 0027C360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280704 0027C364  7C 08 02 A6 */	mflr r0
/* 80280708 0027C368  90 01 00 14 */	stw r0, 0x14(r1)
lbl_8028070C:
/* 8028070C 0027C36C  4B FE 7B F9 */	bl PPCMfwpar
/* 80280710 0027C370  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80280714 0027C374  40 82 FF F8 */	bne lbl_8028070C
/* 80280718 0027C378  3C 60 0C 01 */	lis r3, 0x0C008000@ha
/* 8028071C 0027C37C  38 63 80 00 */	addi r3, r3, 0x0C008000@l
/* 80280720 0027C380  4B FE 7B F1 */	bl PPCMtwpar
/* 80280724 0027C384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280728 0027C388  7C 08 03 A6 */	mtlr r0
/* 8028072C 0027C38C  38 21 00 10 */	addi r1, r1, 0x10
/* 80280730 0027C390  4E 80 00 20 */	blr

.global __GXAbort
__GXAbort:
/* 80280734 0027C394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80280738 0027C398  7C 08 02 A6 */	mflr r0
/* 8028073C 0027C39C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80280740 0027C3A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80280744 0027C3A4  4B F4 69 E5 */	bl _savegpr_27
/* 80280748 0027C3A8  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 8028074C 0027C3AC  88 03 05 FA */	lbz r0, 0x5fa(r3)
/* 80280750 0027C3B0  2C 00 00 00 */	cmpwi r0, 0
/* 80280754 0027C3B4  41 82 00 A0 */	beq lbl_802807F4
/* 80280758 0027C3B8  4B FF E8 E9 */	bl __GXIsGPFifoReady
/* 8028075C 0027C3BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80280760 0027C3C0  41 82 00 94 */	beq lbl_802807F4
/* 80280764 0027C3C4  80 AD A9 9C */	lwz r5, lbl_8063FC5C-_SDA_BASE_(r13)
/* 80280768 0027C3C8  A0 05 00 4E */	lhz r0, 0x4e(r5)
lbl_8028076C:
/* 8028076C 0027C3CC  7C 03 03 78 */	mr r3, r0
/* 80280770 0027C3D0  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 80280774 0027C3D4  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 80280778 0027C3D8  7C 00 18 40 */	cmplw r0, r3
/* 8028077C 0027C3DC  40 82 FF F0 */	bne lbl_8028076C
/* 80280780 0027C3E0  54 03 80 1E */	slwi r3, r0, 0x10
/* 80280784 0027C3E4  38 00 00 00 */	li r0, 0
/* 80280788 0027C3E8  7C 7B 23 78 */	or r27, r3, r4
/* 8028078C 0027C3EC  3B A0 00 08 */	li r29, 8
/* 80280790 0027C3F0  6C 1C 80 00 */	xoris r28, r0, 0x8000
lbl_80280794:
/* 80280794 0027C3F4  4B FF 20 25 */	bl OSGetTime
/* 80280798 0027C3F8  7C 9F 23 78 */	mr r31, r4
/* 8028079C 0027C3FC  7C 7E 1B 78 */	mr r30, r3
lbl_802807A0:
/* 802807A0 0027C400  4B FF 20 19 */	bl OSGetTime
/* 802807A4 0027C404  7C 9F 20 10 */	subfc r4, r31, r4
/* 802807A8 0027C408  7C 1E 19 10 */	subfe r0, r30, r3
/* 802807AC 0027C40C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802807B0 0027C410  7C 04 E8 10 */	subfc r0, r4, r29
/* 802807B4 0027C414  7C 63 E1 10 */	subfe r3, r3, r28
/* 802807B8 0027C418  7C 7C E1 10 */	subfe r3, r28, r28
/* 802807BC 0027C41C  7C 63 00 D1 */	neg. r3, r3
/* 802807C0 0027C420  41 82 FF E0 */	beq lbl_802807A0
/* 802807C4 0027C424  80 AD A9 9C */	lwz r5, lbl_8063FC5C-_SDA_BASE_(r13)
/* 802807C8 0027C428  A0 05 00 4E */	lhz r0, 0x4e(r5)
lbl_802807CC:
/* 802807CC 0027C42C  7C 03 03 78 */	mr r3, r0
/* 802807D0 0027C430  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 802807D4 0027C434  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 802807D8 0027C438  7C 00 18 40 */	cmplw r0, r3
/* 802807DC 0027C43C  40 82 FF F0 */	bne lbl_802807CC
/* 802807E0 0027C440  54 00 80 1E */	slwi r0, r0, 0x10
/* 802807E4 0027C444  7C 00 23 78 */	or r0, r0, r4
/* 802807E8 0027C448  7C 00 D8 40 */	cmplw r0, r27
/* 802807EC 0027C44C  7C 1B 03 78 */	mr r27, r0
/* 802807F0 0027C450  40 82 FF A4 */	bne lbl_80280794
lbl_802807F4:
/* 802807F4 0027C454  38 00 00 01 */	li r0, 1
/* 802807F8 0027C458  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 802807FC 0027C45C  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 80280800 0027C460  4B FF 1F B9 */	bl OSGetTime
/* 80280804 0027C464  38 00 00 00 */	li r0, 0
/* 80280808 0027C468  7C 9F 23 78 */	mr r31, r4
/* 8028080C 0027C46C  7C 7E 1B 78 */	mr r30, r3
/* 80280810 0027C470  3B A0 00 32 */	li r29, 0x32
/* 80280814 0027C474  6C 1C 80 00 */	xoris r28, r0, 0x8000
lbl_80280818:
/* 80280818 0027C478  4B FF 1F A1 */	bl OSGetTime
/* 8028081C 0027C47C  7C 9F 20 10 */	subfc r4, r31, r4
/* 80280820 0027C480  7C 1E 19 10 */	subfe r0, r30, r3
/* 80280824 0027C484  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80280828 0027C488  7C 04 E8 10 */	subfc r0, r4, r29
/* 8028082C 0027C48C  7C 63 E1 10 */	subfe r3, r3, r28
/* 80280830 0027C490  7C 7C E1 10 */	subfe r3, r28, r28
/* 80280834 0027C494  7C 63 00 D1 */	neg. r3, r3
/* 80280838 0027C498  41 82 FF E0 */	beq lbl_80280818
/* 8028083C 0027C49C  3B C0 00 00 */	li r30, 0
/* 80280840 0027C4A0  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 80280844 0027C4A4  93 C3 30 18 */	stw r30, 0xCC003018@l(r3)
/* 80280848 0027C4A8  4B FF 1F 71 */	bl OSGetTime
/* 8028084C 0027C4AC  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 80280850 0027C4B0  7C 9C 23 78 */	mr r28, r4
/* 80280854 0027C4B4  7C 7D 1B 78 */	mr r29, r3
/* 80280858 0027C4B8  3B C0 00 05 */	li r30, 5
lbl_8028085C:
/* 8028085C 0027C4BC  4B FF 1F 5D */	bl OSGetTime
/* 80280860 0027C4C0  7C 9C 20 10 */	subfc r4, r28, r4
/* 80280864 0027C4C4  7C 1D 19 10 */	subfe r0, r29, r3
/* 80280868 0027C4C8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8028086C 0027C4CC  7C 04 F0 10 */	subfc r0, r4, r30
/* 80280870 0027C4D0  7C 63 F9 10 */	subfe r3, r3, r31
/* 80280874 0027C4D4  7C 7F F9 10 */	subfe r3, r31, r31
/* 80280878 0027C4D8  7C 63 00 D1 */	neg. r3, r3
/* 8028087C 0027C4DC  41 82 FF E0 */	beq lbl_8028085C
/* 80280880 0027C4E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80280884 0027C4E4  4B F4 68 F1 */	bl _restgpr_27
/* 80280888 0027C4E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028088C 0027C4EC  7C 08 03 A6 */	mtlr r0
/* 80280890 0027C4F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80280894 0027C4F4  4E 80 00 20 */	blr

.global GXAbortFrame
GXAbortFrame:
/* 80280898 0027C4F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028089C 0027C4FC  7C 08 02 A6 */	mflr r0
/* 802808A0 0027C500  90 01 00 24 */	stw r0, 0x24(r1)
/* 802808A4 0027C504  39 61 00 20 */	addi r11, r1, 0x20
/* 802808A8 0027C508  4B F4 68 7D */	bl _savegpr_26
/* 802808AC 0027C50C  83 E2 A0 D0 */	lwz r31, lbl_806426D0-_SDA2_BASE_(r2)
/* 802808B0 0027C510  88 1F 05 FA */	lbz r0, 0x5fa(r31)
/* 802808B4 0027C514  2C 00 00 00 */	cmpwi r0, 0
/* 802808B8 0027C518  41 82 00 A0 */	beq lbl_80280958
/* 802808BC 0027C51C  4B FF E7 85 */	bl __GXIsGPFifoReady
/* 802808C0 0027C520  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802808C4 0027C524  41 82 00 94 */	beq lbl_80280958
/* 802808C8 0027C528  80 AD A9 9C */	lwz r5, lbl_8063FC5C-_SDA_BASE_(r13)
/* 802808CC 0027C52C  A0 65 00 4E */	lhz r3, 0x4e(r5)
lbl_802808D0:
/* 802808D0 0027C530  7C 60 1B 78 */	mr r0, r3
/* 802808D4 0027C534  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 802808D8 0027C538  A0 65 00 4E */	lhz r3, 0x4e(r5)
/* 802808DC 0027C53C  7C 03 00 40 */	cmplw r3, r0
/* 802808E0 0027C540  40 82 FF F0 */	bne lbl_802808D0
/* 802808E4 0027C544  54 63 80 1E */	slwi r3, r3, 0x10
/* 802808E8 0027C548  38 00 00 00 */	li r0, 0
/* 802808EC 0027C54C  7C 7A 23 78 */	or r26, r3, r4
/* 802808F0 0027C550  3B 80 00 08 */	li r28, 8
/* 802808F4 0027C554  6C 1B 80 00 */	xoris r27, r0, 0x8000
lbl_802808F8:
/* 802808F8 0027C558  4B FF 1E C1 */	bl OSGetTime
/* 802808FC 0027C55C  7C 9E 23 78 */	mr r30, r4
/* 80280900 0027C560  7C 7D 1B 78 */	mr r29, r3
lbl_80280904:
/* 80280904 0027C564  4B FF 1E B5 */	bl OSGetTime
/* 80280908 0027C568  7C 9E 20 10 */	subfc r4, r30, r4
/* 8028090C 0027C56C  7C 1D 19 10 */	subfe r0, r29, r3
/* 80280910 0027C570  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80280914 0027C574  7C 04 E0 10 */	subfc r0, r4, r28
/* 80280918 0027C578  7C 63 D9 10 */	subfe r3, r3, r27
/* 8028091C 0027C57C  7C 7B D9 10 */	subfe r3, r27, r27
/* 80280920 0027C580  7C 63 00 D1 */	neg. r3, r3
/* 80280924 0027C584  41 82 FF E0 */	beq lbl_80280904
/* 80280928 0027C588  80 AD A9 9C */	lwz r5, lbl_8063FC5C-_SDA_BASE_(r13)
/* 8028092C 0027C58C  A0 85 00 4E */	lhz r4, 0x4e(r5)
lbl_80280930:
/* 80280930 0027C590  7C 80 23 78 */	mr r0, r4
/* 80280934 0027C594  A0 65 00 50 */	lhz r3, 0x50(r5)
/* 80280938 0027C598  A0 85 00 4E */	lhz r4, 0x4e(r5)
/* 8028093C 0027C59C  7C 04 00 40 */	cmplw r4, r0
/* 80280940 0027C5A0  40 82 FF F0 */	bne lbl_80280930
/* 80280944 0027C5A4  54 80 80 1E */	slwi r0, r4, 0x10
/* 80280948 0027C5A8  7C 00 1B 78 */	or r0, r0, r3
/* 8028094C 0027C5AC  7C 00 D0 40 */	cmplw r0, r26
/* 80280950 0027C5B0  7C 1A 03 78 */	mr r26, r0
/* 80280954 0027C5B4  40 82 FF A4 */	bne lbl_802808F8
lbl_80280958:
/* 80280958 0027C5B8  38 00 00 01 */	li r0, 1
/* 8028095C 0027C5BC  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 80280960 0027C5C0  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 80280964 0027C5C4  4B FF 1E 55 */	bl OSGetTime
/* 80280968 0027C5C8  38 00 00 00 */	li r0, 0
/* 8028096C 0027C5CC  7C 9E 23 78 */	mr r30, r4
/* 80280970 0027C5D0  7C 7D 1B 78 */	mr r29, r3
/* 80280974 0027C5D4  3B 80 00 32 */	li r28, 0x32
/* 80280978 0027C5D8  6C 1B 80 00 */	xoris r27, r0, 0x8000
lbl_8028097C:
/* 8028097C 0027C5DC  4B FF 1E 3D */	bl OSGetTime
/* 80280980 0027C5E0  7C 9E 20 10 */	subfc r4, r30, r4
/* 80280984 0027C5E4  7C 1D 19 10 */	subfe r0, r29, r3
/* 80280988 0027C5E8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8028098C 0027C5EC  7C 04 E0 10 */	subfc r0, r4, r28
/* 80280990 0027C5F0  7C 63 D9 10 */	subfe r3, r3, r27
/* 80280994 0027C5F4  7C 7B D9 10 */	subfe r3, r27, r27
/* 80280998 0027C5F8  7C 63 00 D1 */	neg. r3, r3
/* 8028099C 0027C5FC  41 82 FF E0 */	beq lbl_8028097C
/* 802809A0 0027C600  3B A0 00 00 */	li r29, 0
/* 802809A4 0027C604  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 802809A8 0027C608  93 A3 30 18 */	stw r29, 0xCC003018@l(r3)
/* 802809AC 0027C60C  4B FF 1E 0D */	bl OSGetTime
/* 802809B0 0027C610  6F BE 80 00 */	xoris r30, r29, 0x8000
/* 802809B4 0027C614  7C 9B 23 78 */	mr r27, r4
/* 802809B8 0027C618  7C 7C 1B 78 */	mr r28, r3
/* 802809BC 0027C61C  3B A0 00 05 */	li r29, 5
lbl_802809C0:
/* 802809C0 0027C620  4B FF 1D F9 */	bl OSGetTime
/* 802809C4 0027C624  7C 9B 20 10 */	subfc r4, r27, r4
/* 802809C8 0027C628  7C 1C 19 10 */	subfe r0, r28, r3
/* 802809CC 0027C62C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802809D0 0027C630  7C 04 E8 10 */	subfc r0, r4, r29
/* 802809D4 0027C634  7C 63 F1 10 */	subfe r3, r3, r30
/* 802809D8 0027C638  7C 7E F1 10 */	subfe r3, r30, r30
/* 802809DC 0027C63C  7C 63 00 D1 */	neg. r3, r3
/* 802809E0 0027C640  41 82 FF E0 */	beq lbl_802809C0
/* 802809E4 0027C644  4B FF E6 5D */	bl __GXIsGPFifoReady
/* 802809E8 0027C648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802809EC 0027C64C  41 82 00 48 */	beq lbl_80280A34
/* 802809F0 0027C650  4B FF E8 65 */	bl __GXCleanGPFifo
/* 802809F4 0027C654  4B FF CE B5 */	bl __GXInitRevisionBits
/* 802809F8 0027C658  38 00 00 00 */	li r0, 0
/* 802809FC 0027C65C  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80280A00 0027C660  48 00 00 08 */	b lbl_80280A08
/* 80280A04 0027C664  48 00 04 CD */	bl __GXSetDirtyState
lbl_80280A08:
/* 80280A08 0027C668  38 00 00 00 */	li r0, 0
/* 80280A0C 0027C66C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80280A10 0027C670  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80280A14 0027C674  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A18 0027C678  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A1C 0027C67C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A20 0027C680  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A24 0027C684  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A28 0027C688  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A2C 0027C68C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 80280A30 0027C690  4B FE 78 31 */	bl PPCSync
lbl_80280A34:
/* 80280A34 0027C694  39 61 00 20 */	addi r11, r1, 0x20
/* 80280A38 0027C698  4B F4 67 39 */	bl _restgpr_26
/* 80280A3C 0027C69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80280A40 0027C6A0  7C 08 03 A6 */	mtlr r0
/* 80280A44 0027C6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80280A48 0027C6A8  4E 80 00 20 */	blr

.global GXSetDrawSync
GXSetDrawSync:
/* 80280A4C 0027C6AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80280A50 0027C6B0  7C 08 02 A6 */	mflr r0
/* 80280A54 0027C6B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80280A58 0027C6B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80280A5C 0027C6BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80280A60 0027C6C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80280A64 0027C6C4  7C 7D 1B 78 */	mr r29, r3
/* 80280A68 0027C6C8  4B FE DC F5 */	bl OSDisableInterrupts
/* 80280A6C 0027C6CC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80280A70 0027C6D0  38 A0 00 61 */	li r5, 0x61
/* 80280A74 0027C6D4  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80280A78 0027C6D8  67 A6 48 00 */	oris r6, r29, 0x4800
/* 80280A7C 0027C6DC  38 00 00 47 */	li r0, 0x47
/* 80280A80 0027C6E0  83 C2 A0 D0 */	lwz r30, lbl_806426D0-_SDA2_BASE_(r2)
/* 80280A84 0027C6E4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80280A88 0027C6E8  53 A6 04 3E */	rlwimi r6, r29, 0, 0x10, 0x1f
/* 80280A8C 0027C6EC  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 80280A90 0027C6F0  7C 7D 1B 78 */	mr r29, r3
/* 80280A94 0027C6F4  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 80280A98 0027C6F8  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80280A9C 0027C6FC  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80280AA0 0027C700  2C 00 00 00 */	cmpwi r0, 0
/* 80280AA4 0027C704  41 82 00 08 */	beq lbl_80280AAC
/* 80280AA8 0027C708  48 00 04 29 */	bl __GXSetDirtyState
lbl_80280AAC:
/* 80280AAC 0027C70C  3B E0 00 00 */	li r31, 0
/* 80280AB0 0027C710  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80280AB4 0027C714  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 80280AB8 0027C718  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280ABC 0027C71C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280AC0 0027C720  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280AC4 0027C724  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280AC8 0027C728  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280ACC 0027C72C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280AD0 0027C730  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280AD4 0027C734  4B FE 77 8D */	bl PPCSync
/* 80280AD8 0027C738  7F A3 EB 78 */	mr r3, r29
/* 80280ADC 0027C73C  4B FE DC A9 */	bl OSRestoreInterrupts
/* 80280AE0 0027C740  B3 FE 00 02 */	sth r31, 2(r30)
/* 80280AE4 0027C744  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80280AE8 0027C748  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80280AEC 0027C74C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80280AF0 0027C750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80280AF4 0027C754  7C 08 03 A6 */	mtlr r0
/* 80280AF8 0027C758  38 21 00 20 */	addi r1, r1, 0x20
/* 80280AFC 0027C75C  4E 80 00 20 */	blr

.global GXReadDrawSync
GXReadDrawSync:
/* 80280B00 0027C760  80 6D A9 98 */	lwz r3, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280B04 0027C764  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 80280B08 0027C768  4E 80 00 20 */	blr

.global GXSetDrawDone
GXSetDrawDone:
/* 80280B0C 0027C76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280B10 0027C770  7C 08 02 A6 */	mflr r0
/* 80280B14 0027C774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280B18 0027C778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280B1C 0027C77C  93 C1 00 08 */	stw r30, 8(r1)
/* 80280B20 0027C780  4B FE DC 3D */	bl OSDisableInterrupts
/* 80280B24 0027C784  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80280B28 0027C788  38 00 00 61 */	li r0, 0x61
/* 80280B2C 0027C78C  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 80280B30 0027C790  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80280B34 0027C794  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 80280B38 0027C798  80 82 A0 D0 */	lwz r4, lbl_806426D0-_SDA2_BASE_(r2)
/* 80280B3C 0027C79C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80280B40 0027C7A0  7C 7E 1B 78 */	mr r30, r3
/* 80280B44 0027C7A4  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 80280B48 0027C7A8  2C 00 00 00 */	cmpwi r0, 0
/* 80280B4C 0027C7AC  41 82 00 08 */	beq lbl_80280B54
/* 80280B50 0027C7B0  48 00 03 81 */	bl __GXSetDirtyState
lbl_80280B54:
/* 80280B54 0027C7B4  3B E0 00 00 */	li r31, 0
/* 80280B58 0027C7B8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80280B5C 0027C7BC  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 80280B60 0027C7C0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B64 0027C7C4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B68 0027C7C8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B6C 0027C7CC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B70 0027C7D0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B74 0027C7D4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B78 0027C7D8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80280B7C 0027C7DC  4B FE 76 E5 */	bl PPCSync
/* 80280B80 0027C7E0  9B ED A9 E0 */	stb r31, lbl_8063FCA0-_SDA_BASE_(r13)
/* 80280B84 0027C7E4  7F C3 F3 78 */	mr r3, r30
/* 80280B88 0027C7E8  4B FE DB FD */	bl OSRestoreInterrupts
/* 80280B8C 0027C7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280B90 0027C7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280B94 0027C7F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280B98 0027C7F8  7C 08 03 A6 */	mtlr r0
/* 80280B9C 0027C7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80280BA0 0027C800  4E 80 00 20 */	blr

.global GXPixModeSync
GXPixModeSync:
/* 80280BA4 0027C804  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80280BA8 0027C808  38 00 00 61 */	li r0, 0x61
/* 80280BAC 0027C80C  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80280BB0 0027C810  38 00 00 00 */	li r0, 0
/* 80280BB4 0027C814  80 A2 A0 D0 */	lwz r5, lbl_806426D0-_SDA2_BASE_(r2)
/* 80280BB8 0027C818  80 65 02 2C */	lwz r3, 0x22c(r5)
/* 80280BBC 0027C81C  90 64 80 00 */	stw r3, -0x8000(r4)
/* 80280BC0 0027C820  B0 05 00 02 */	sth r0, 2(r5)
/* 80280BC4 0027C824  4E 80 00 20 */	blr

.global GXTexModeSync
GXTexModeSync:
/* 80280BC8 0027C828  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80280BCC 0027C82C  38 00 00 61 */	li r0, 0x61
/* 80280BD0 0027C830  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80280BD4 0027C834  3C 80 63 00 */	lis r4, 0x6300
/* 80280BD8 0027C838  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 80280BDC 0027C83C  38 00 00 00 */	li r0, 0
/* 80280BE0 0027C840  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80280BE4 0027C844  B0 03 00 02 */	sth r0, 2(r3)
/* 80280BE8 0027C848  4E 80 00 20 */	blr

.global GXPokeAlphaMode
GXPokeAlphaMode:
/* 80280BEC 0027C84C  80 AD A9 98 */	lwz r5, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280BF0 0027C850  50 64 40 2E */	rlwimi r4, r3, 8, 0, 0x17
/* 80280BF4 0027C854  B0 85 00 06 */	sth r4, 6(r5)
/* 80280BF8 0027C858  4E 80 00 20 */	blr

.global GXPokeAlphaRead
GXPokeAlphaRead:
/* 80280BFC 0027C85C  38 00 00 00 */	li r0, 0
/* 80280C00 0027C860  80 8D A9 98 */	lwz r4, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280C04 0027C864  50 60 07 BE */	rlwimi r0, r3, 0, 0x1e, 0x1f
/* 80280C08 0027C868  60 00 00 04 */	ori r0, r0, 4
/* 80280C0C 0027C86C  B0 04 00 08 */	sth r0, 8(r4)
/* 80280C10 0027C870  4E 80 00 20 */	blr

.global GXPokeAlphaUpdate
GXPokeAlphaUpdate:
/* 80280C14 0027C874  80 8D A9 98 */	lwz r4, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280C18 0027C878  A0 04 00 02 */	lhz r0, 2(r4)
/* 80280C1C 0027C87C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80280C20 0027C880  B0 04 00 02 */	sth r0, 2(r4)
/* 80280C24 0027C884  4E 80 00 20 */	blr

.global GXPokeBlendMode
GXPokeBlendMode:
/* 80280C28 0027C888  80 ED A9 98 */	lwz r7, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280C2C 0027C88C  2C 03 00 01 */	cmpwi r3, 1
/* 80280C30 0027C890  38 00 00 00 */	li r0, 0
/* 80280C34 0027C894  A1 27 00 02 */	lhz r9, 2(r7)
/* 80280C38 0027C898  41 82 00 0C */	beq lbl_80280C44
/* 80280C3C 0027C89C  2C 03 00 03 */	cmpwi r3, 3
/* 80280C40 0027C8A0  40 82 00 08 */	bne lbl_80280C48
lbl_80280C44:
/* 80280C44 0027C8A4  38 00 00 01 */	li r0, 1
lbl_80280C48:
/* 80280C48 0027C8A8  38 E3 FF FD */	addi r7, r3, -3
/* 80280C4C 0027C8AC  50 09 07 FE */	rlwimi r9, r0, 0, 0x1f, 0x1f
/* 80280C50 0027C8B0  38 03 FF FE */	addi r0, r3, -2
/* 80280C54 0027C8B4  80 6D A9 98 */	lwz r3, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280C58 0027C8B8  7C E8 00 34 */	cntlzw r8, r7
/* 80280C5C 0027C8BC  7C 07 00 34 */	cntlzw r7, r0
/* 80280C60 0027C8C0  38 00 00 41 */	li r0, 0x41
/* 80280C64 0027C8C4  51 09 35 28 */	rlwimi r9, r8, 6, 0x14, 0x14
/* 80280C68 0027C8C8  50 E9 E7 BC */	rlwimi r9, r7, 0x1c, 0x1e, 0x1e
/* 80280C6C 0027C8CC  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 80280C70 0027C8D0  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 80280C74 0027C8D4  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 80280C78 0027C8D8  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
/* 80280C7C 0027C8DC  B1 23 00 02 */	sth r9, 2(r3)
/* 80280C80 0027C8E0  4E 80 00 20 */	blr

.global GXPokeColorUpdate
GXPokeColorUpdate:
/* 80280C84 0027C8E4  80 8D A9 98 */	lwz r4, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280C88 0027C8E8  A0 04 00 02 */	lhz r0, 2(r4)
/* 80280C8C 0027C8EC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80280C90 0027C8F0  B0 04 00 02 */	sth r0, 2(r4)
/* 80280C94 0027C8F4  4E 80 00 20 */	blr

.global GXPokeDstAlpha
GXPokeDstAlpha:
/* 80280C98 0027C8F8  80 AD A9 98 */	lwz r5, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280C9C 0027C8FC  38 00 00 00 */	li r0, 0
/* 80280CA0 0027C900  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 80280CA4 0027C904  50 60 45 EE */	rlwimi r0, r3, 8, 0x17, 0x17
/* 80280CA8 0027C908  B0 05 00 04 */	sth r0, 4(r5)
/* 80280CAC 0027C90C  4E 80 00 20 */	blr

.global GXPokeDither
GXPokeDither:
/* 80280CB0 0027C910  80 8D A9 98 */	lwz r4, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280CB4 0027C914  A0 04 00 02 */	lhz r0, 2(r4)
/* 80280CB8 0027C918  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80280CBC 0027C91C  B0 04 00 02 */	sth r0, 2(r4)
/* 80280CC0 0027C920  4E 80 00 20 */	blr

.global GXPokeZMode
GXPokeZMode:
/* 80280CC4 0027C924  80 CD A9 98 */	lwz r6, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280CC8 0027C928  38 00 00 00 */	li r0, 0
/* 80280CCC 0027C92C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80280CD0 0027C930  50 80 0F 3C */	rlwimi r0, r4, 1, 0x1c, 0x1e
/* 80280CD4 0027C934  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80280CD8 0027C938  B0 06 00 00 */	sth r0, 0(r6)
/* 80280CDC 0027C93C  4E 80 00 20 */	blr

.global GXSetDrawSyncCallback
GXSetDrawSyncCallback:
/* 80280CE0 0027C940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280CE4 0027C944  7C 08 02 A6 */	mflr r0
/* 80280CE8 0027C948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280CEC 0027C94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280CF0 0027C950  93 C1 00 08 */	stw r30, 8(r1)
/* 80280CF4 0027C954  7C 7E 1B 78 */	mr r30, r3
/* 80280CF8 0027C958  83 ED A9 E8 */	lwz r31, lbl_8063FCA8-_SDA_BASE_(r13)
/* 80280CFC 0027C95C  4B FE DA 61 */	bl OSDisableInterrupts
/* 80280D00 0027C960  93 CD A9 E8 */	stw r30, lbl_8063FCA8-_SDA_BASE_(r13)
/* 80280D04 0027C964  4B FE DA 81 */	bl OSRestoreInterrupts
/* 80280D08 0027C968  7F E3 FB 78 */	mr r3, r31
/* 80280D0C 0027C96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280D10 0027C970  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280D14 0027C974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280D18 0027C978  7C 08 03 A6 */	mtlr r0
/* 80280D1C 0027C97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80280D20 0027C980  4E 80 00 20 */	blr

.global GXTokenInterruptHandler
GXTokenInterruptHandler:
/* 80280D24 0027C984  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80280D28 0027C988  7C 08 02 A6 */	mflr r0
/* 80280D2C 0027C98C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 80280D30 0027C990  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80280D34 0027C994  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 80280D38 0027C998  7C 9E 23 78 */	mr r30, r4
/* 80280D3C 0027C99C  80 0D A9 E8 */	lwz r0, lbl_8063FCA8-_SDA_BASE_(r13)
/* 80280D40 0027C9A0  80 6D A9 98 */	lwz r3, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280D44 0027C9A4  2C 00 00 00 */	cmpwi r0, 0
/* 80280D48 0027C9A8  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 80280D4C 0027C9AC  41 82 00 34 */	beq lbl_80280D80
/* 80280D50 0027C9B0  38 61 00 08 */	addi r3, r1, 8
/* 80280D54 0027C9B4  4B FE A3 3D */	bl OSClearContext
/* 80280D58 0027C9B8  38 61 00 08 */	addi r3, r1, 8
/* 80280D5C 0027C9BC  4B FE A1 0D */	bl OSSetCurrentContext
/* 80280D60 0027C9C0  81 8D A9 E8 */	lwz r12, lbl_8063FCA8-_SDA_BASE_(r13)
/* 80280D64 0027C9C4  7F E3 FB 78 */	mr r3, r31
/* 80280D68 0027C9C8  7D 89 03 A6 */	mtctr r12
/* 80280D6C 0027C9CC  4E 80 04 21 */	bctrl
/* 80280D70 0027C9D0  38 61 00 08 */	addi r3, r1, 8
/* 80280D74 0027C9D4  4B FE A3 1D */	bl OSClearContext
/* 80280D78 0027C9D8  7F C3 F3 78 */	mr r3, r30
/* 80280D7C 0027C9DC  4B FE A0 ED */	bl OSSetCurrentContext
lbl_80280D80:
/* 80280D80 0027C9E0  80 6D A9 98 */	lwz r3, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280D84 0027C9E4  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80280D88 0027C9E8  60 00 00 04 */	ori r0, r0, 4
/* 80280D8C 0027C9EC  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80280D90 0027C9F0  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80280D94 0027C9F4  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80280D98 0027C9F8  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 80280D9C 0027C9FC  7C 08 03 A6 */	mtlr r0
/* 80280DA0 0027CA00  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80280DA4 0027CA04  4E 80 00 20 */	blr

.global GXSetDrawDoneCallback
GXSetDrawDoneCallback:
/* 80280DA8 0027CA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280DAC 0027CA0C  7C 08 02 A6 */	mflr r0
/* 80280DB0 0027CA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280DB4 0027CA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280DB8 0027CA18  93 C1 00 08 */	stw r30, 8(r1)
/* 80280DBC 0027CA1C  7C 7E 1B 78 */	mr r30, r3
/* 80280DC0 0027CA20  83 ED A9 E4 */	lwz r31, lbl_8063FCA4-_SDA_BASE_(r13)
/* 80280DC4 0027CA24  4B FE D9 99 */	bl OSDisableInterrupts
/* 80280DC8 0027CA28  93 CD A9 E4 */	stw r30, lbl_8063FCA4-_SDA_BASE_(r13)
/* 80280DCC 0027CA2C  4B FE D9 B9 */	bl OSRestoreInterrupts
/* 80280DD0 0027CA30  7F E3 FB 78 */	mr r3, r31
/* 80280DD4 0027CA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280DD8 0027CA38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280DDC 0027CA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280DE0 0027CA40  7C 08 03 A6 */	mtlr r0
/* 80280DE4 0027CA44  38 21 00 10 */	addi r1, r1, 0x10
/* 80280DE8 0027CA48  4E 80 00 20 */	blr

GXFinishInterruptHandler:
/* 80280DEC 0027CA4C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80280DF0 0027CA50  7C 08 02 A6 */	mflr r0
/* 80280DF4 0027CA54  38 60 00 01 */	li r3, 1
/* 80280DF8 0027CA58  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 80280DFC 0027CA5C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80280E00 0027CA60  7C 9F 23 78 */	mr r31, r4
/* 80280E04 0027CA64  80 AD A9 98 */	lwz r5, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280E08 0027CA68  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 80280E0C 0027CA6C  60 00 00 08 */	ori r0, r0, 8
/* 80280E10 0027CA70  B0 05 00 0A */	sth r0, 0xa(r5)
/* 80280E14 0027CA74  80 0D A9 E4 */	lwz r0, lbl_8063FCA4-_SDA_BASE_(r13)
/* 80280E18 0027CA78  98 6D A9 E0 */	stb r3, lbl_8063FCA0-_SDA_BASE_(r13)
/* 80280E1C 0027CA7C  2C 00 00 00 */	cmpwi r0, 0
/* 80280E20 0027CA80  41 82 00 30 */	beq lbl_80280E50
/* 80280E24 0027CA84  38 61 00 08 */	addi r3, r1, 8
/* 80280E28 0027CA88  4B FE A2 69 */	bl OSClearContext
/* 80280E2C 0027CA8C  38 61 00 08 */	addi r3, r1, 8
/* 80280E30 0027CA90  4B FE A0 39 */	bl OSSetCurrentContext
/* 80280E34 0027CA94  81 8D A9 E4 */	lwz r12, lbl_8063FCA4-_SDA_BASE_(r13)
/* 80280E38 0027CA98  7D 89 03 A6 */	mtctr r12
/* 80280E3C 0027CA9C  4E 80 04 21 */	bctrl
/* 80280E40 0027CAA0  38 61 00 08 */	addi r3, r1, 8
/* 80280E44 0027CAA4  4B FE A2 4D */	bl OSClearContext
/* 80280E48 0027CAA8  7F E3 FB 78 */	mr r3, r31
/* 80280E4C 0027CAAC  4B FE A0 1D */	bl OSSetCurrentContext
lbl_80280E50:
/* 80280E50 0027CAB0  38 6D A9 D8 */	addi r3, r13, lbl_8063FC98-_SDA_BASE_
/* 80280E54 0027CAB4  4B FF 16 0D */	bl OSWakeupThread
/* 80280E58 0027CAB8  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80280E5C 0027CABC  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80280E60 0027CAC0  7C 08 03 A6 */	mtlr r0
/* 80280E64 0027CAC4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80280E68 0027CAC8  4E 80 00 20 */	blr

.global __GXPEInit
__GXPEInit:
/* 80280E6C 0027CACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280E70 0027CAD0  7C 08 02 A6 */	mflr r0
/* 80280E74 0027CAD4  3C 80 80 28 */	lis r4, GXTokenInterruptHandler@ha
/* 80280E78 0027CAD8  38 60 00 12 */	li r3, 0x12
/* 80280E7C 0027CADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280E80 0027CAE0  38 84 0D 24 */	addi r4, r4, GXTokenInterruptHandler@l
/* 80280E84 0027CAE4  4B FE D9 25 */	bl __OSSetInterruptHandler
/* 80280E88 0027CAE8  3C 80 80 28 */	lis r4, GXFinishInterruptHandler@ha
/* 80280E8C 0027CAEC  38 60 00 13 */	li r3, 0x13
/* 80280E90 0027CAF0  38 84 0D EC */	addi r4, r4, GXFinishInterruptHandler@l
/* 80280E94 0027CAF4  4B FE D9 15 */	bl __OSSetInterruptHandler
/* 80280E98 0027CAF8  38 6D A9 D8 */	addi r3, r13, lbl_8063FC98-_SDA_BASE_
/* 80280E9C 0027CAFC  4B FF 04 4D */	bl OSInitThreadQueue
/* 80280EA0 0027CB00  38 60 20 00 */	li r3, 0x2000
/* 80280EA4 0027CB04  4B FE DC C9 */	bl __OSUnmaskInterrupts
/* 80280EA8 0027CB08  38 60 10 00 */	li r3, 0x1000
/* 80280EAC 0027CB0C  4B FE DC C1 */	bl __OSUnmaskInterrupts
/* 80280EB0 0027CB10  80 6D A9 98 */	lwz r3, lbl_8063FC58-_SDA_BASE_(r13)
/* 80280EB4 0027CB14  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80280EB8 0027CB18  60 00 00 0F */	ori r0, r0, 0xf
/* 80280EBC 0027CB1C  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80280EC0 0027CB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280EC4 0027CB24  7C 08 03 A6 */	mtlr r0
/* 80280EC8 0027CB28  38 21 00 10 */	addi r1, r1, 0x10
/* 80280ECC 0027CB2C  4E 80 00 20 */	blr
