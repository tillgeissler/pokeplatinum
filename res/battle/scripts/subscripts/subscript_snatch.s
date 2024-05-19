    .include "macros/btlcmd.inc"

    .data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    UpdateVarFromVar OPCODE_SET, BTLVAR_MSG_ATTACKER, BTLVAR_ATTACKER
    UpdateVarFromVar OPCODE_SET, BTLVAR_DEFENDER, BTLVAR_ATTACKER
    UpdateVarFromVar OPCODE_SET, BTLVAR_ATTACKER, BTLVAR_MSG_BATTLER_TEMP
    UpdateVar OPCODE_SET, BTLVAR_MOVE_EFFECT_CHANCE, 1
    UpdateVar OPCODE_SET, BTLVAR_MSG_MOVE_TEMP, MOVE_SNATCH
    PlayMoveAnimation BTLSCR_MSG_TEMP
    Wait 
    // {0} snatched {1}’s move!
    PrintMessage pl_msg_00000368_00580, TAG_NICKNAME_NICKNAME, BTLSCR_MSG_TEMP, BTLSCR_MSG_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_SET, BTLVAR_MOVE_EFFECT_CHANCE, 0
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_PLAYED_MOVE_ANIMATION
    CompareVarToValue OPCODE_EQU, BTLVAR_CURRENT_MOVE, MOVE_ACUPRESSURE, _052
    UpdateVarFromVar OPCODE_SET, BTLVAR_DEFENDER, BTLVAR_MSG_ATTACKER
    End 

_052:
    UpdateVarFromVar OPCODE_SET, BTLVAR_DEFENDER, BTLVAR_ATTACKER
    End 