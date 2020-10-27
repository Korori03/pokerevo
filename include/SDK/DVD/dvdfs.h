#ifndef POKEREVO_DVDFS_H
#define POKEREVO_DVDFS_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDFileInfo DVDFileInfo;

typedef void (*DVDCallback)(s32 result, DVDFileInfo* fileInfo);

struct DVDFileInfo
{
    u8 unk0[0x34];
    u32 unk34;
    u8 unk38[0x8];
    void (*unk40)(s32, void*); // TODO: not a DVDFileCallback bc an unkClass* is passed as 2nd param?
    void* unk44; //data cache start addr to invalidate
    s32 unk48; // data cache region size
};

BOOL DVDOpen(const char*, DVDFileInfo*);
BOOL DVDClose(DVDFileInfo*);
s32 DVDConvertPathToEntrynum(const char* fileName);
s32 DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio);
s32 DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio);
s32 DVDSeekAsyncPrio(DVDFileInfo* fileInfo, s32 offset, DVDCallback callback, s32 prio);



#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DVDFS_H
