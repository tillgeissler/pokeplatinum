    .include "macros/btlcmd.inc"

    .data

_000:
    CheckSubstitute BTLSCR_DEFENDER, _060
    CompareMonDataToValue OPCODE_EQU, BTLSCR_DEFENDER, BATTLEMON_TYPE_1, TYPE_GRASS, _065
    CompareMonDataToValue OPCODE_EQU, BTLSCR_DEFENDER, BATTLEMON_TYPE_2, TYPE_GRASS, _065
    PrintAttackMessage 
    Wait 
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_DEFENDER, BATTLEMON_MOVE_EFFECTS_MASK, MOVE_EFFECT_LEECH_SEED, _046
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_MISSED|MOVE_STATUS_SEMI_INVULNERABLE, _046
    PlayMoveAnimation BTLSCR_ATTACKER
    Wait 
    UpdateMonDataFromVar OPCODE_FLAG_ON, BTLSCR_DEFENDER, BATTLEMON_MOVE_EFFECTS_MASK, BTLVAR_ATTACKER
    UpdateMonData OPCODE_FLAG_ON, BTLSCR_DEFENDER, BATTLEMON_MOVE_EFFECTS_MASK, MOVE_EFFECT_LEECH_SEED
    // {0} was seeded!
    PrintMessage pl_msg_00000368_00290, TAG_NICKNAME, BTLSCR_DEFENDER
    GoTo _056

_046:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    WaitButtonABTime 30
    // {0} evaded the attack!
    PrintMessage pl_msg_00000368_00293, TAG_NICKNAME, BTLSCR_DEFENDER

_056:
    Wait 
    WaitButtonABTime 30
    End 

_060:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_065:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_INEFFECTIVE
    End 