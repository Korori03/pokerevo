.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail9FrameHeapFv
__ct__Q44nw4r3snd6detail9FrameHeapFv:
/* 8037005C 0036BCBC  38 00 00 00 */	li r0, 0
/* 80370060 0036BCC0  38 83 00 08 */	addi r4, r3, 8
/* 80370064 0036BCC4  90 03 00 08 */	stw r0, 8(r3)
/* 80370068 0036BCC8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8037006C 0036BCCC  90 03 00 00 */	stw r0, 0(r3)
/* 80370070 0036BCD0  90 03 00 04 */	stw r0, 4(r3)
/* 80370074 0036BCD4  90 83 00 08 */	stw r4, 8(r3)
/* 80370078 0036BCD8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8037007C 0036BCDC  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail9FrameHeapFv
__dt__Q44nw4r3snd6detail9FrameHeapFv:
/* 80370080 0036BCE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370084 0036BCE4  7C 08 02 A6 */	mflr r0
/* 80370088 0036BCE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037008C 0036BCEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80370090 0036BCF0  4B E5 70 99 */	bl _savegpr_27
/* 80370094 0036BCF4  2C 03 00 00 */	cmpwi r3, 0
/* 80370098 0036BCF8  7C 7B 1B 78 */	mr r27, r3
/* 8037009C 0036BCFC  7C 9C 23 78 */	mr r28, r4
/* 803700A0 0036BD00  41 82 00 D8 */	beq lbl_80370178
/* 803700A4 0036BD04  80 03 00 00 */	lwz r0, 0(r3)
/* 803700A8 0036BD08  2C 00 00 00 */	cmpwi r0, 0
/* 803700AC 0036BD0C  41 82 00 AC */	beq lbl_80370158
/* 803700B0 0036BD10  41 82 00 A8 */	beq lbl_80370158
/* 803700B4 0036BD14  80 03 00 04 */	lwz r0, 4(r3)
/* 803700B8 0036BD18  2C 00 00 00 */	cmpwi r0, 0
/* 803700BC 0036BD1C  41 82 00 80 */	beq lbl_8037013C
/* 803700C0 0036BD20  3B E3 00 08 */	addi r31, r3, 8
/* 803700C4 0036BD24  48 00 00 6C */	b lbl_80370130
lbl_803700C8:
/* 803700C8 0036BD28  83 BF 00 04 */	lwz r29, 4(r31)
/* 803700CC 0036BD2C  2C 1D 00 00 */	cmpwi r29, 0
/* 803700D0 0036BD30  41 82 00 54 */	beq lbl_80370124
/* 803700D4 0036BD34  3B DD 00 0C */	addi r30, r29, 0xc
/* 803700D8 0036BD38  48 00 00 30 */	b lbl_80370108
lbl_803700DC:
/* 803700DC 0036BD3C  83 DE 00 04 */	lwz r30, 4(r30)
/* 803700E0 0036BD40  2C 1E 00 00 */	cmpwi r30, 0
/* 803700E4 0036BD44  41 82 00 24 */	beq lbl_80370108
/* 803700E8 0036BD48  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 803700EC 0036BD4C  2C 0C 00 00 */	cmpwi r12, 0
/* 803700F0 0036BD50  41 82 00 18 */	beq lbl_80370108
/* 803700F4 0036BD54  38 7E 00 20 */	addi r3, r30, 0x20
/* 803700F8 0036BD58  80 9E 00 08 */	lwz r4, 8(r30)
/* 803700FC 0036BD5C  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 80370100 0036BD60  7D 89 03 A6 */	mtctr r12
/* 80370104 0036BD64  4E 80 04 21 */	bctrl
lbl_80370108:
/* 80370108 0036BD68  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8037010C 0036BD6C  7C 1E 00 40 */	cmplw r30, r0
/* 80370110 0036BD70  40 82 FF CC */	bne lbl_803700DC
/* 80370114 0036BD74  34 7D 00 08 */	addic. r3, r29, 8
/* 80370118 0036BD78  41 82 00 0C */	beq lbl_80370124
/* 8037011C 0036BD7C  38 80 00 00 */	li r4, 0
/* 80370120 0036BD80  4B FF 2A 19 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_80370124:
/* 80370124 0036BD84  7F A4 EB 78 */	mr r4, r29
/* 80370128 0036BD88  38 7B 00 04 */	addi r3, r27, 4
/* 8037012C 0036BD8C  4B FF 2B 49 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80370130:
/* 80370130 0036BD90  80 1B 00 04 */	lwz r0, 4(r27)
/* 80370134 0036BD94  2C 00 00 00 */	cmpwi r0, 0
/* 80370138 0036BD98  40 82 FF 90 */	bne lbl_803700C8
lbl_8037013C:
/* 8037013C 0036BD9C  80 7B 00 00 */	lwz r3, 0(r27)
/* 80370140 0036BDA0  38 80 00 03 */	li r4, 3
/* 80370144 0036BDA4  4B F2 74 9D */	bl MEMFreeToFrmHeap
/* 80370148 0036BDA8  80 7B 00 00 */	lwz r3, 0(r27)
/* 8037014C 0036BDAC  4B F2 73 45 */	bl MEMDestroyFrmHeap
/* 80370150 0036BDB0  38 00 00 00 */	li r0, 0
/* 80370154 0036BDB4  90 1B 00 00 */	stw r0, 0(r27)
lbl_80370158:
/* 80370158 0036BDB8  34 7B 00 04 */	addic. r3, r27, 4
/* 8037015C 0036BDBC  41 82 00 0C */	beq lbl_80370168
/* 80370160 0036BDC0  38 80 00 00 */	li r4, 0
/* 80370164 0036BDC4  4B FF 29 D5 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_80370168:
/* 80370168 0036BDC8  2C 1C 00 00 */	cmpwi r28, 0
/* 8037016C 0036BDCC  40 81 00 0C */	ble lbl_80370178
/* 80370170 0036BDD0  7F 63 DB 78 */	mr r3, r27
/* 80370174 0036BDD4  4B E6 A9 45 */	bl func_801DAAB8
lbl_80370178:
/* 80370178 0036BDD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8037017C 0036BDDC  7F 63 DB 78 */	mr r3, r27
/* 80370180 0036BDE0  4B E5 6F F5 */	bl _restgpr_27
/* 80370184 0036BDE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370188 0036BDE8  7C 08 03 A6 */	mtlr r0
/* 8037018C 0036BDEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80370190 0036BDF0  4E 80 00 20 */	blr

.global Create__Q44nw4r3snd6detail9FrameHeapFPvUl
Create__Q44nw4r3snd6detail9FrameHeapFPvUl:
/* 80370194 0036BDF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80370198 0036BDF8  7C 08 02 A6 */	mflr r0
/* 8037019C 0036BDFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803701A0 0036BE00  39 61 00 30 */	addi r11, r1, 0x30
/* 803701A4 0036BE04  4B E5 6F 81 */	bl _savegpr_26
/* 803701A8 0036BE08  80 03 00 00 */	lwz r0, 0(r3)
/* 803701AC 0036BE0C  7C 7A 1B 78 */	mr r26, r3
/* 803701B0 0036BE10  7C 9B 23 78 */	mr r27, r4
/* 803701B4 0036BE14  7C BC 2B 78 */	mr r28, r5
/* 803701B8 0036BE18  2C 00 00 00 */	cmpwi r0, 0
/* 803701BC 0036BE1C  41 82 00 AC */	beq lbl_80370268
/* 803701C0 0036BE20  41 82 00 A8 */	beq lbl_80370268
/* 803701C4 0036BE24  80 03 00 04 */	lwz r0, 4(r3)
/* 803701C8 0036BE28  2C 00 00 00 */	cmpwi r0, 0
/* 803701CC 0036BE2C  41 82 00 80 */	beq lbl_8037024C
/* 803701D0 0036BE30  3B E3 00 08 */	addi r31, r3, 8
/* 803701D4 0036BE34  48 00 00 6C */	b lbl_80370240
lbl_803701D8:
/* 803701D8 0036BE38  83 BF 00 04 */	lwz r29, 4(r31)
/* 803701DC 0036BE3C  2C 1D 00 00 */	cmpwi r29, 0
/* 803701E0 0036BE40  41 82 00 54 */	beq lbl_80370234
/* 803701E4 0036BE44  3B DD 00 0C */	addi r30, r29, 0xc
/* 803701E8 0036BE48  48 00 00 30 */	b lbl_80370218
lbl_803701EC:
/* 803701EC 0036BE4C  83 DE 00 04 */	lwz r30, 4(r30)
/* 803701F0 0036BE50  2C 1E 00 00 */	cmpwi r30, 0
/* 803701F4 0036BE54  41 82 00 24 */	beq lbl_80370218
/* 803701F8 0036BE58  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 803701FC 0036BE5C  2C 0C 00 00 */	cmpwi r12, 0
/* 80370200 0036BE60  41 82 00 18 */	beq lbl_80370218
/* 80370204 0036BE64  38 7E 00 20 */	addi r3, r30, 0x20
/* 80370208 0036BE68  80 9E 00 08 */	lwz r4, 8(r30)
/* 8037020C 0036BE6C  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 80370210 0036BE70  7D 89 03 A6 */	mtctr r12
/* 80370214 0036BE74  4E 80 04 21 */	bctrl
lbl_80370218:
/* 80370218 0036BE78  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8037021C 0036BE7C  7C 1E 00 40 */	cmplw r30, r0
/* 80370220 0036BE80  40 82 FF CC */	bne lbl_803701EC
/* 80370224 0036BE84  34 7D 00 08 */	addic. r3, r29, 8
/* 80370228 0036BE88  41 82 00 0C */	beq lbl_80370234
/* 8037022C 0036BE8C  38 80 00 00 */	li r4, 0
/* 80370230 0036BE90  4B FF 29 09 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_80370234:
/* 80370234 0036BE94  7F A4 EB 78 */	mr r4, r29
/* 80370238 0036BE98  38 7A 00 04 */	addi r3, r26, 4
/* 8037023C 0036BE9C  4B FF 2A 39 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80370240:
/* 80370240 0036BEA0  80 1A 00 04 */	lwz r0, 4(r26)
/* 80370244 0036BEA4  2C 00 00 00 */	cmpwi r0, 0
/* 80370248 0036BEA8  40 82 FF 90 */	bne lbl_803701D8
lbl_8037024C:
/* 8037024C 0036BEAC  80 7A 00 00 */	lwz r3, 0(r26)
/* 80370250 0036BEB0  38 80 00 03 */	li r4, 3
/* 80370254 0036BEB4  4B F2 73 8D */	bl MEMFreeToFrmHeap
/* 80370258 0036BEB8  80 7A 00 00 */	lwz r3, 0(r26)
/* 8037025C 0036BEBC  4B F2 72 35 */	bl MEMDestroyFrmHeap
/* 80370260 0036BEC0  38 00 00 00 */	li r0, 0
/* 80370264 0036BEC4  90 1A 00 00 */	stw r0, 0(r26)
lbl_80370268:
/* 80370268 0036BEC8  38 1B 00 03 */	addi r0, r27, 3
/* 8037026C 0036BECC  7C 9B E2 14 */	add r4, r27, r28
/* 80370270 0036BED0  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 80370274 0036BED4  7C 03 20 40 */	cmplw r3, r4
/* 80370278 0036BED8  40 81 00 0C */	ble lbl_80370284
/* 8037027C 0036BEDC  38 60 00 00 */	li r3, 0
/* 80370280 0036BEE0  48 00 00 98 */	b lbl_80370318
lbl_80370284:
/* 80370284 0036BEE4  7C 83 20 50 */	subf r4, r3, r4
/* 80370288 0036BEE8  38 A0 00 00 */	li r5, 0
/* 8037028C 0036BEEC  4B F2 71 81 */	bl MEMCreateFrmHeapEx
/* 80370290 0036BEF0  2C 03 00 00 */	cmpwi r3, 0
/* 80370294 0036BEF4  90 7A 00 00 */	stw r3, 0(r26)
/* 80370298 0036BEF8  40 82 00 0C */	bne lbl_803702A4
/* 8037029C 0036BEFC  38 60 00 00 */	li r3, 0
/* 803702A0 0036BF00  48 00 00 78 */	b lbl_80370318
lbl_803702A4:
/* 803702A4 0036BF04  38 80 00 14 */	li r4, 0x14
/* 803702A8 0036BF08  38 A0 00 04 */	li r5, 4
/* 803702AC 0036BF0C  4B F2 72 15 */	bl MEMAllocFromFrmHeapEx
/* 803702B0 0036BF10  2C 03 00 00 */	cmpwi r3, 0
/* 803702B4 0036BF14  40 82 00 0C */	bne lbl_803702C0
/* 803702B8 0036BF18  38 00 00 00 */	li r0, 0
/* 803702BC 0036BF1C  48 00 00 48 */	b lbl_80370304
lbl_803702C0:
/* 803702C0 0036BF20  7C 65 1B 78 */	mr r5, r3
/* 803702C4 0036BF24  41 82 00 28 */	beq lbl_803702EC
/* 803702C8 0036BF28  38 00 00 00 */	li r0, 0
/* 803702CC 0036BF2C  38 83 00 0C */	addi r4, r3, 0xc
/* 803702D0 0036BF30  90 03 00 00 */	stw r0, 0(r3)
/* 803702D4 0036BF34  90 03 00 04 */	stw r0, 4(r3)
/* 803702D8 0036BF38  90 03 00 0C */	stw r0, 0xc(r3)
/* 803702DC 0036BF3C  90 03 00 10 */	stw r0, 0x10(r3)
/* 803702E0 0036BF40  90 03 00 08 */	stw r0, 8(r3)
/* 803702E4 0036BF44  90 83 00 0C */	stw r4, 0xc(r3)
/* 803702E8 0036BF48  90 83 00 10 */	stw r4, 0x10(r3)
lbl_803702EC:
/* 803702EC 0036BF4C  38 1A 00 08 */	addi r0, r26, 8
/* 803702F0 0036BF50  38 7A 00 04 */	addi r3, r26, 4
/* 803702F4 0036BF54  90 01 00 08 */	stw r0, 8(r1)
/* 803702F8 0036BF58  38 81 00 08 */	addi r4, r1, 8
/* 803702FC 0036BF5C  4B FF 29 4D */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80370300 0036BF60  38 00 00 01 */	li r0, 1
lbl_80370304:
/* 80370304 0036BF64  2C 00 00 00 */	cmpwi r0, 0
/* 80370308 0036BF68  40 82 00 0C */	bne lbl_80370314
/* 8037030C 0036BF6C  38 60 00 00 */	li r3, 0
/* 80370310 0036BF70  48 00 00 08 */	b lbl_80370318
lbl_80370314:
/* 80370314 0036BF74  38 60 00 01 */	li r3, 1
lbl_80370318:
/* 80370318 0036BF78  39 61 00 30 */	addi r11, r1, 0x30
/* 8037031C 0036BF7C  4B E5 6E 55 */	bl _restgpr_26
/* 80370320 0036BF80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80370324 0036BF84  7C 08 03 A6 */	mtlr r0
/* 80370328 0036BF88  38 21 00 30 */	addi r1, r1, 0x30
/* 8037032C 0036BF8C  4E 80 00 20 */	blr

.global Destroy__Q44nw4r3snd6detail9FrameHeapFv
Destroy__Q44nw4r3snd6detail9FrameHeapFv:
/* 80370330 0036BF90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370334 0036BF94  7C 08 02 A6 */	mflr r0
/* 80370338 0036BF98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037033C 0036BF9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370340 0036BFA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370344 0036BFA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80370348 0036BFA8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8037034C 0036BFAC  7C 7C 1B 78 */	mr r28, r3
/* 80370350 0036BFB0  80 03 00 00 */	lwz r0, 0(r3)
/* 80370354 0036BFB4  2C 00 00 00 */	cmpwi r0, 0
/* 80370358 0036BFB8  41 82 00 A8 */	beq lbl_80370400
/* 8037035C 0036BFBC  80 03 00 04 */	lwz r0, 4(r3)
/* 80370360 0036BFC0  2C 00 00 00 */	cmpwi r0, 0
/* 80370364 0036BFC4  41 82 00 80 */	beq lbl_803703E4
/* 80370368 0036BFC8  3B E3 00 08 */	addi r31, r3, 8
/* 8037036C 0036BFCC  48 00 00 6C */	b lbl_803703D8
lbl_80370370:
/* 80370370 0036BFD0  83 BF 00 04 */	lwz r29, 4(r31)
/* 80370374 0036BFD4  2C 1D 00 00 */	cmpwi r29, 0
/* 80370378 0036BFD8  41 82 00 54 */	beq lbl_803703CC
/* 8037037C 0036BFDC  3B DD 00 0C */	addi r30, r29, 0xc
/* 80370380 0036BFE0  48 00 00 30 */	b lbl_803703B0
lbl_80370384:
/* 80370384 0036BFE4  83 DE 00 04 */	lwz r30, 4(r30)
/* 80370388 0036BFE8  2C 1E 00 00 */	cmpwi r30, 0
/* 8037038C 0036BFEC  41 82 00 24 */	beq lbl_803703B0
/* 80370390 0036BFF0  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 80370394 0036BFF4  2C 0C 00 00 */	cmpwi r12, 0
/* 80370398 0036BFF8  41 82 00 18 */	beq lbl_803703B0
/* 8037039C 0036BFFC  38 7E 00 20 */	addi r3, r30, 0x20
/* 803703A0 0036C000  80 9E 00 08 */	lwz r4, 8(r30)
/* 803703A4 0036C004  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 803703A8 0036C008  7D 89 03 A6 */	mtctr r12
/* 803703AC 0036C00C  4E 80 04 21 */	bctrl
lbl_803703B0:
/* 803703B0 0036C010  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803703B4 0036C014  7C 1E 00 40 */	cmplw r30, r0
/* 803703B8 0036C018  40 82 FF CC */	bne lbl_80370384
/* 803703BC 0036C01C  34 7D 00 08 */	addic. r3, r29, 8
/* 803703C0 0036C020  41 82 00 0C */	beq lbl_803703CC
/* 803703C4 0036C024  38 80 00 00 */	li r4, 0
/* 803703C8 0036C028  4B FF 27 71 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_803703CC:
/* 803703CC 0036C02C  7F A4 EB 78 */	mr r4, r29
/* 803703D0 0036C030  38 7C 00 04 */	addi r3, r28, 4
/* 803703D4 0036C034  4B FF 28 A1 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_803703D8:
/* 803703D8 0036C038  80 1C 00 04 */	lwz r0, 4(r28)
/* 803703DC 0036C03C  2C 00 00 00 */	cmpwi r0, 0
/* 803703E0 0036C040  40 82 FF 90 */	bne lbl_80370370
lbl_803703E4:
/* 803703E4 0036C044  80 7C 00 00 */	lwz r3, 0(r28)
/* 803703E8 0036C048  38 80 00 03 */	li r4, 3
/* 803703EC 0036C04C  4B F2 71 F5 */	bl MEMFreeToFrmHeap
/* 803703F0 0036C050  80 7C 00 00 */	lwz r3, 0(r28)
/* 803703F4 0036C054  4B F2 70 9D */	bl MEMDestroyFrmHeap
/* 803703F8 0036C058  38 00 00 00 */	li r0, 0
/* 803703FC 0036C05C  90 1C 00 00 */	stw r0, 0(r28)
lbl_80370400:
/* 80370400 0036C060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370404 0036C064  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370408 0036C068  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037040C 0036C06C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80370410 0036C070  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80370414 0036C074  7C 08 03 A6 */	mtlr r0
/* 80370418 0036C078  38 21 00 20 */	addi r1, r1, 0x20
/* 8037041C 0036C07C  4E 80 00 20 */	blr

.global Clear__Q44nw4r3snd6detail9FrameHeapFv
Clear__Q44nw4r3snd6detail9FrameHeapFv:
/* 80370420 0036C080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370424 0036C084  7C 08 02 A6 */	mflr r0
/* 80370428 0036C088  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037042C 0036C08C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370430 0036C090  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370434 0036C094  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80370438 0036C098  93 81 00 10 */	stw r28, 0x10(r1)
/* 8037043C 0036C09C  7C 7C 1B 78 */	mr r28, r3
/* 80370440 0036C0A0  80 03 00 04 */	lwz r0, 4(r3)
/* 80370444 0036C0A4  2C 00 00 00 */	cmpwi r0, 0
/* 80370448 0036C0A8  41 82 00 80 */	beq lbl_803704C8
/* 8037044C 0036C0AC  3B E3 00 08 */	addi r31, r3, 8
/* 80370450 0036C0B0  48 00 00 6C */	b lbl_803704BC
lbl_80370454:
/* 80370454 0036C0B4  83 BF 00 04 */	lwz r29, 4(r31)
/* 80370458 0036C0B8  2C 1D 00 00 */	cmpwi r29, 0
/* 8037045C 0036C0BC  41 82 00 54 */	beq lbl_803704B0
/* 80370460 0036C0C0  3B DD 00 0C */	addi r30, r29, 0xc
/* 80370464 0036C0C4  48 00 00 30 */	b lbl_80370494
lbl_80370468:
/* 80370468 0036C0C8  83 DE 00 04 */	lwz r30, 4(r30)
/* 8037046C 0036C0CC  2C 1E 00 00 */	cmpwi r30, 0
/* 80370470 0036C0D0  41 82 00 24 */	beq lbl_80370494
/* 80370474 0036C0D4  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 80370478 0036C0D8  2C 0C 00 00 */	cmpwi r12, 0
/* 8037047C 0036C0DC  41 82 00 18 */	beq lbl_80370494
/* 80370480 0036C0E0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80370484 0036C0E4  80 9E 00 08 */	lwz r4, 8(r30)
/* 80370488 0036C0E8  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8037048C 0036C0EC  7D 89 03 A6 */	mtctr r12
/* 80370490 0036C0F0  4E 80 04 21 */	bctrl
lbl_80370494:
/* 80370494 0036C0F4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80370498 0036C0F8  7C 1E 00 40 */	cmplw r30, r0
/* 8037049C 0036C0FC  40 82 FF CC */	bne lbl_80370468
/* 803704A0 0036C100  34 7D 00 08 */	addic. r3, r29, 8
/* 803704A4 0036C104  41 82 00 0C */	beq lbl_803704B0
/* 803704A8 0036C108  38 80 00 00 */	li r4, 0
/* 803704AC 0036C10C  4B FF 26 8D */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_803704B0:
/* 803704B0 0036C110  7F A4 EB 78 */	mr r4, r29
/* 803704B4 0036C114  38 7C 00 04 */	addi r3, r28, 4
/* 803704B8 0036C118  4B FF 27 BD */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_803704BC:
/* 803704BC 0036C11C  80 1C 00 04 */	lwz r0, 4(r28)
/* 803704C0 0036C120  2C 00 00 00 */	cmpwi r0, 0
/* 803704C4 0036C124  40 82 FF 90 */	bne lbl_80370454
lbl_803704C8:
/* 803704C8 0036C128  80 7C 00 00 */	lwz r3, 0(r28)
/* 803704CC 0036C12C  38 80 00 03 */	li r4, 3
/* 803704D0 0036C130  4B F2 71 11 */	bl MEMFreeToFrmHeap
/* 803704D4 0036C134  80 7C 00 00 */	lwz r3, 0(r28)
/* 803704D8 0036C138  38 80 00 14 */	li r4, 0x14
/* 803704DC 0036C13C  38 A0 00 04 */	li r5, 4
/* 803704E0 0036C140  4B F2 6F E1 */	bl MEMAllocFromFrmHeapEx
/* 803704E4 0036C144  2C 03 00 00 */	cmpwi r3, 0
/* 803704E8 0036C148  41 82 00 44 */	beq lbl_8037052C
/* 803704EC 0036C14C  7C 65 1B 78 */	mr r5, r3
/* 803704F0 0036C150  41 82 00 28 */	beq lbl_80370518
/* 803704F4 0036C154  38 00 00 00 */	li r0, 0
/* 803704F8 0036C158  38 83 00 0C */	addi r4, r3, 0xc
/* 803704FC 0036C15C  90 03 00 00 */	stw r0, 0(r3)
/* 80370500 0036C160  90 03 00 04 */	stw r0, 4(r3)
/* 80370504 0036C164  90 03 00 0C */	stw r0, 0xc(r3)
/* 80370508 0036C168  90 03 00 10 */	stw r0, 0x10(r3)
/* 8037050C 0036C16C  90 03 00 08 */	stw r0, 8(r3)
/* 80370510 0036C170  90 83 00 0C */	stw r4, 0xc(r3)
/* 80370514 0036C174  90 83 00 10 */	stw r4, 0x10(r3)
lbl_80370518:
/* 80370518 0036C178  38 1C 00 08 */	addi r0, r28, 8
/* 8037051C 0036C17C  38 7C 00 04 */	addi r3, r28, 4
/* 80370520 0036C180  90 01 00 08 */	stw r0, 8(r1)
/* 80370524 0036C184  38 81 00 08 */	addi r4, r1, 8
/* 80370528 0036C188  4B FF 27 21 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
lbl_8037052C:
/* 8037052C 0036C18C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370530 0036C190  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370534 0036C194  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80370538 0036C198  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8037053C 0036C19C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80370540 0036C1A0  7C 08 03 A6 */	mtlr r0
/* 80370544 0036C1A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80370548 0036C1A8  4E 80 00 20 */	blr

.global Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv
Alloc__Q44nw4r3snd6detail9FrameHeapFUlPFPvUlPv_vPv:
/* 8037054C 0036C1AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80370550 0036C1B0  7C 08 02 A6 */	mflr r0
/* 80370554 0036C1B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80370558 0036C1B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8037055C 0036C1BC  4B E5 6B CD */	bl _savegpr_27
/* 80370560 0036C1C0  38 04 00 1F */	addi r0, r4, 0x1f
/* 80370564 0036C1C4  7C 7B 1B 78 */	mr r27, r3
/* 80370568 0036C1C8  54 07 00 34 */	rlwinm r7, r0, 0, 0, 0x1a
/* 8037056C 0036C1CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80370570 0036C1D0  7C 9C 23 78 */	mr r28, r4
/* 80370574 0036C1D4  7C BD 2B 78 */	mr r29, r5
/* 80370578 0036C1D8  7C DE 33 78 */	mr r30, r6
/* 8037057C 0036C1DC  38 87 00 20 */	addi r4, r7, 0x20
/* 80370580 0036C1E0  38 A0 00 20 */	li r5, 0x20
/* 80370584 0036C1E4  4B F2 6F 3D */	bl MEMAllocFromFrmHeapEx
/* 80370588 0036C1E8  2C 03 00 00 */	cmpwi r3, 0
/* 8037058C 0036C1EC  7C 7F 1B 78 */	mr r31, r3
/* 80370590 0036C1F0  40 82 00 0C */	bne lbl_8037059C
/* 80370594 0036C1F4  38 60 00 00 */	li r3, 0
/* 80370598 0036C1F8  48 00 00 40 */	b lbl_803705D8
lbl_8037059C:
/* 8037059C 0036C1FC  41 82 00 1C */	beq lbl_803705B8
/* 803705A0 0036C200  38 00 00 00 */	li r0, 0
/* 803705A4 0036C204  90 03 00 00 */	stw r0, 0(r3)
/* 803705A8 0036C208  90 03 00 04 */	stw r0, 4(r3)
/* 803705AC 0036C20C  93 83 00 08 */	stw r28, 8(r3)
/* 803705B0 0036C210  93 A3 00 0C */	stw r29, 0xc(r3)
/* 803705B4 0036C214  93 C3 00 10 */	stw r30, 0x10(r3)
lbl_803705B8:
/* 803705B8 0036C218  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 803705BC 0036C21C  7F E5 FB 78 */	mr r5, r31
/* 803705C0 0036C220  38 81 00 08 */	addi r4, r1, 8
/* 803705C4 0036C224  38 03 00 0C */	addi r0, r3, 0xc
/* 803705C8 0036C228  38 63 00 08 */	addi r3, r3, 8
/* 803705CC 0036C22C  90 01 00 08 */	stw r0, 8(r1)
/* 803705D0 0036C230  4B FF 26 79 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 803705D4 0036C234  38 7F 00 20 */	addi r3, r31, 0x20
lbl_803705D8:
/* 803705D8 0036C238  39 61 00 30 */	addi r11, r1, 0x30
/* 803705DC 0036C23C  4B E5 6B 99 */	bl _restgpr_27
/* 803705E0 0036C240  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803705E4 0036C244  7C 08 03 A6 */	mtlr r0
/* 803705E8 0036C248  38 21 00 30 */	addi r1, r1, 0x30
/* 803705EC 0036C24C  4E 80 00 20 */	blr

/* note: unknown for now */
.global func_803705F0
func_803705F0:
/* 803705F0 0036C250  80 63 00 00 */	lwz r3, 0(r3)
/* 803705F4 0036C254  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803705F8 0036C258  7C 63 00 50 */	subf r3, r3, r0
/* 803705FC 0036C25C  4E 80 00 20 */	blr

.global GetFreeSize__Q44nw4r3snd6detail9FrameHeapCFv
GetFreeSize__Q44nw4r3snd6detail9FrameHeapCFv:
/* 80370600 0036C260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80370604 0036C264  7C 08 02 A6 */	mflr r0
/* 80370608 0036C268  80 63 00 00 */	lwz r3, 0(r3)
/* 8037060C 0036C26C  38 80 00 20 */	li r4, 0x20
/* 80370610 0036C270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80370614 0036C274  4B F2 70 6D */	bl MEMGetAllocatableSizeForFrmHeapEx
/* 80370618 0036C278  38 80 00 20 */	li r4, 0x20
/* 8037061C 0036C27C  38 03 FF E0 */	addi r0, r3, -32
/* 80370620 0036C280  7C 64 18 10 */	subfc r3, r4, r3
/* 80370624 0036C284  7C 63 19 10 */	subfe r3, r3, r3
/* 80370628 0036C288  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8037062C 0036C28C  7C 03 18 78 */	andc r3, r0, r3
/* 80370630 0036C290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370634 0036C294  7C 08 03 A6 */	mtlr r0
/* 80370638 0036C298  38 21 00 10 */	addi r1, r1, 0x10
/* 8037063C 0036C29C  4E 80 00 20 */	blr
