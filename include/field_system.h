#ifndef POKEPLATINUM_FIELD_SYSTEM_H
#define POKEPLATINUM_FIELD_SYSTEM_H

#include "field/field_system_decl.h"
#include "overlay025/poketch_system.h"

#include "bg_window.h"
#include "overlay_manager.h"
#include "savedata.h"

void sub_0203CD00(FieldSystem *fieldSystem);
void sub_0203CD44(FieldSystem *fieldSystem);
BOOL sub_0203CD4C(FieldSystem *fieldSystem);
BOOL sub_0203CD5C(FieldSystem *fieldSystem);
BOOL sub_0203CD74(FieldSystem *fieldSystem);
void sub_0203CD84(FieldSystem *fieldSystem, const OverlayManagerTemplate *param1, void *param2);
void sub_0203D128(void);
void sub_0203D140(void);
PoketchSystem *FieldSystem_GetPoketchSystem(void);
BgConfig *sub_0203D170(void *param0);
SaveData *FieldSystem_SaveData(void *param0);

#endif // POKEPLATINUM_UNK_0203CC84_H
