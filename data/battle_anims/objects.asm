ABSOLUTE_X EQU $00
RELATIVE_X EQU $01

battleanimobj: MACRO
	db \1 ; flags
	; bit 7: priority
	; bit 6: y flip (for enemy)
	; bit 5: x flip (for enemy)
	; bit 0: enable enemy animation coord fixing (x = $b4 - x; see below for y)
	db \2 ; enemy animation y fix param
	; if $FF: y = y + 5 tiles
	; else:   y = -y - (1 tile) * (is_softboiled_animation)
	db \3 ; video sequence
	db \4 ; callback
	db \5 ; palette
	db \6 ; tile offset
ENDM

BattleAnimObjects:
; entries correspond to ANIM_OBJ_* constants
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_00, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_00
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_01, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_01
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_02, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_02
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_00, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_03
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_01, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_04
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_02, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_05
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_03, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_06
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_04, BATTLEANIMFUNC_1B, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_07
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_05, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_08
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_06, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_FANG
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_07, BATTLEANIMFUNC_09, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_0A
	battleanimobj RELATIVE_X, $aa, BATTLEANIMFRAMESET_10, BATTLEANIMFUNC_10, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_EMBER
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_0E, BATTLEANIMFUNC_04, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_DRAGON_RAGE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_03, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_FLAMETHROWER
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_10, BATTLEANIMFUNC_08, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_FIRE_SPIN
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_0A, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_FIRE_BLAST
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_11, BATTLEANIMFUNC_03, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_BURNED
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_12, BATTLEANIMFUNC_08, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE ; ANIM_OBJ_BLIZZARD
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_13, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE ; ANIM_OBJ_12
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_14, BATTLEANIMFUNC_01, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE ; ANIM_OBJ_ICE_BEAM
	battleanimobj RELATIVE_X | X_FLIP, $78, BATTLEANIMFRAMESET_16, BATTLEANIMFUNC_RAZOR_LEAF, PAL_BATTLE_OB_GREEN, ANIM_GFX_PLANT ; ANIM_OBJ_RAZOR_LEAF
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_09, BATTLEANIMFUNC_12, PAL_BATTLE_OB_RED, ANIM_GFX_POKE_BALL ; ANIM_OBJ_POKE_BALL
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_09, BATTLEANIMFUNC_13, PAL_BATTLE_OB_RED, ANIM_GFX_POKE_BALL ; ANIM_OBJ_POKE_BALL_BLOCKED
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_18, BATTLEANIMFUNC_00, PAL_BATTLE_OB_RED, ANIM_GFX_EXPLOSION ; ANIM_OBJ_17
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_18, BATTLEANIMFUNC_00, PAL_BATTLE_OB_RED, ANIM_GFX_EXPLOSION ; ANIM_OBJ_18
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_1D, BATTLEANIMFUNC_06, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON ; ANIM_OBJ_19
	battleanimobj RELATIVE_X, $b4, BATTLEANIMFRAMESET_1F, BATTLEANIMFUNC_38, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON ; ANIM_OBJ_1A
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_08, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_SMOKE ; ANIM_OBJ_1B
	battleanimobj RELATIVE_X, $a0, BATTLEANIMFRAMESET_08, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_SMOKE ; ANIM_OBJ_BALL_POOF
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_07, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS ; ANIM_OBJ_BIG_ROCK
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_1A, BATTLEANIMFUNC_07, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS ; ANIM_OBJ_SMALL_ROCK
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_1B, BATTLEANIMFUNC_36, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS ; ANIM_OBJ_STRENGTH
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_84, BATTLEANIMFUNC_36, PAL_BATTLE_OB_BLUE, ANIM_GFX_GLOBE ; ANIM_OBJ_SEISMIC_TOSS
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_21, BATTLEANIMFUNC_0C, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE ; ANIM_OBJ_BUBBLE
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_23, BATTLEANIMFUNC_0D, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE ; ANIM_OBJ_SURF
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_0E, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE ; ANIM_OBJ_SING
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $80, BATTLEANIMFRAMESET_27, BATTLEANIMFUNC_0F, PAL_BATTLE_OB_BLUE, ANIM_GFX_WATER ; ANIM_OBJ_WATER_GUN
	battleanimobj RELATIVE_X, $b4, BATTLEANIMFRAMESET_2A, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BLUE, ANIM_GFX_WATER ; ANIM_OBJ_HYDRO_PUMP
	battleanimobj RELATIVE_X, $40, BATTLEANIMFRAMESET_2B, BATTLEANIMFUNC_11, PAL_BATTLE_OB_GREEN, ANIM_GFX_POWDER ; ANIM_OBJ_POWDER
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_2C, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM ; ANIM_OBJ_27
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_2D, BATTLEANIMFUNC_09, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM ; ANIM_OBJ_28
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_2E, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE ; ANIM_OBJ_ICE_BUILDUP
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_2F, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE ; ANIM_OBJ_FROZEN
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_30, BATTLEANIMFUNC_14, PAL_BATTLE_OB_BROWN, ANIM_GFX_SPEED ; ANIM_OBJ_MASTER_BALL_SPARKLE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_21, BATTLEANIMFUNC_14, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BUBBLE ; ANIM_OBJ_RECOVER
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_31, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_2D
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_32, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_2E
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_33, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_2F
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_34, BATTLEANIMFUNC_15, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_THUNDER_WAVE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_36, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_31
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_37, BATTLEANIMFUNC_03, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION ; ANIM_OBJ_LIGHTNING_BOLT
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_38, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_33
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_39, BATTLEANIMFUNC_03, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION ; ANIM_OBJ_34
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_3A, BATTLEANIMFUNC_16, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_CLAMP
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_3C, BATTLEANIMFUNC_17, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_BITE
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_3E, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_37
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_3F, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_38
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_40, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_39
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_41, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_3A
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_42, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_3B
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_43, BATTLEANIMFUNC_18, PAL_BATTLE_OB_GREEN, ANIM_GFX_CHARGE ; ANIM_OBJ_3C
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_44, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GREEN, ANIM_GFX_CHARGE ; ANIM_OBJ_3D
	battleanimobj RELATIVE_X | X_FLIP, $b8, BATTLEANIMFRAMESET_45, BATTLEANIMFUNC_19, PAL_BATTLE_OB_GRAY, ANIM_GFX_WIND ; ANIM_OBJ_GUST
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_46, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GREEN, ANIM_GFX_WHIP ; ANIM_OBJ_3F
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_47, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GREEN, ANIM_GFX_WHIP ; ANIM_OBJ_40
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_48, BATTLEANIMFUNC_1A, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP ; ANIM_OBJ_41
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_49, BATTLEANIMFUNC_1A, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP ; ANIM_OBJ_42
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_4A, BATTLEANIMFUNC_01, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP ; ANIM_OBJ_SONICBOOM_JP
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_4B, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_44
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_4C, BATTLEANIMFUNC_1C, PAL_BATTLE_OB_GREEN, ANIM_GFX_CHARGE ; ANIM_OBJ_ABSORB
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_4D, BATTLEANIMFUNC_1D, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG ; ANIM_OBJ_EGG
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_51, BATTLEANIMFUNC_1E, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_47
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_52, BATTLEANIMFUNC_1F, PAL_BATTLE_OB_GREEN, ANIM_GFX_ROPE ; ANIM_OBJ_48
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_54, BATTLEANIMFUNC_1F, PAL_BATTLE_OB_GREEN, ANIM_GFX_ROPE ; ANIM_OBJ_49
	battleanimobj RELATIVE_X | X_FLIP, $68, BATTLEANIMFRAMESET_56, BATTLEANIMFUNC_LEECH_SEED, PAL_BATTLE_OB_GREEN, ANIM_GFX_PLANT ; ANIM_OBJ_LEECH_SEED
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_59, BATTLEANIMFUNC_21, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE ; ANIM_OBJ_4B
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_5C, BATTLEANIMFUNC_02, PAL_BATTLE_OB_GRAY, ANIM_GFX_PSYCHIC ; ANIM_OBJ_WAVE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_5D, BATTLEANIMFUNC_22, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_CONFUSE_RAY
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $88, BATTLEANIMFRAMESET_5F, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM ; ANIM_OBJ_4E
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $88, BATTLEANIMFRAMESET_2D, BATTLEANIMFUNC_09, PAL_BATTLE_OB_YELLOW, ANIM_GFX_BEAM ; ANIM_OBJ_4F
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_60, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_REFLECT ; ANIM_OBJ_SCREEN
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_60, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_REFLECT ; ANIM_OBJ_HARDEN
	battleanimobj RELATIVE_X | X_FLIP, $50, BATTLEANIMFRAMESET_61, BATTLEANIMFUNC_23, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STATUS ; ANIM_OBJ_CHICK
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_63, BATTLEANIMFUNC_24, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS ; ANIM_OBJ_AMNESIA
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_66, BATTLEANIMFUNC_25, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS ; ANIM_OBJ_ASLEEP
	battleanimobj RELATIVE_X, $50, BATTLEANIMFRAMESET_1C, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_POISON ; ANIM_OBJ_SKULL
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_67, BATTLEANIMFUNC_26, PAL_BATTLE_OB_BROWN, ANIM_GFX_SAND ; ANIM_OBJ_56
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_68, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BROWN, ANIM_GFX_SAND ; ANIM_OBJ_57
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_69, BATTLEANIMFUNC_01, PAL_BATTLE_OB_GRAY, ANIM_GFX_SAND ; ANIM_OBJ_58
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_6D, BATTLEANIMFUNC_28, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STATUS ; ANIM_OBJ_PARALYZED
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_6A, BATTLEANIMFUNC_27, PAL_BATTLE_OB_GRAY, ANIM_GFX_WEB ; ANIM_OBJ_STRING_SHOT
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_SPRIAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE ; ANIM_OBJ_HAZE
	battleanimobj RELATIVE_X | X_FLIP, $48, BATTLEANIMFRAMESET_70, BATTLEANIMFUNC_SPRIAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE ; ANIM_OBJ_MIST
	battleanimobj RELATIVE_X | X_FLIP, $48, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_SPRIAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE ; ANIM_OBJ_SMOG
	battleanimobj RELATIVE_X | X_FLIP, $78, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_POISON_GAS, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE ; ANIM_OBJ_POISON_GAS
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_71, BATTLEANIMFUNC_HORN, PAL_BATTLE_OB_GRAY, ANIM_GFX_HORN ; ANIM_OBJ_HORN
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_72, BATTLEANIMFUNC_2C, PAL_BATTLE_OB_GRAY, ANIM_GFX_HORN ; ANIM_OBJ_60
	battleanimobj RELATIVE_X, $48, BATTLEANIMFRAMESET_73, BATTLEANIMFUNC_2D, PAL_BATTLE_OB_RED, ANIM_GFX_FLOWER ; ANIM_OBJ_PETAL_DANCE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_06, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG ; ANIM_OBJ_SLUDGE_BOMB
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_75, BATTLEANIMFUNC_2E, PAL_BATTLE_OB_BROWN, ANIM_GFX_STATUS ; ANIM_OBJ_PAY_DAY
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_4A, BATTLEANIMFUNC_02, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP ; ANIM_OBJ_64
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_30, BATTLEANIMFUNC_2F, PAL_BATTLE_OB_GRAY, ANIM_GFX_SPEED ; ANIM_OBJ_MIMIC
	battleanimobj RELATIVE_X, $78, BATTLEANIMFRAMESET_76, BATTLEANIMFUNC_POISON_GAS, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS ; ANIM_OBJ_ATTRACT
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_77, BATTLEANIMFUNC_30, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_BONEMERANG
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_77, BATTLEANIMFUNC_02, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_BONE_CLUB
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_77, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_BONE_RUSH
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_78, BATTLEANIMFUNC_08, PAL_BATTLE_OB_YELLOW, ANIM_GFX_OBJECTS ; ANIM_OBJ_SWIFT
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_79, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_KINESIS
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_7A, BATTLEANIMFUNC_31, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_FLASH
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_7A, BATTLEANIMFUNC_31, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_SHINY
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_7B, BATTLEANIMFUNC_32, PAL_BATTLE_OB_GRAY, ANIM_GFX_SKY_ATTACK ; ANIM_OBJ_SKY_ATTACK
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_7C, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_WATER ; ANIM_OBJ_LICK
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_7D, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_REFLECT ; ANIM_OBJ_WITHDRAW
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_21, BATTLEANIMFUNC_2F, PAL_BATTLE_OB_BLUE, ANIM_GFX_BUBBLE ; ANIM_OBJ_71
	battleanimobj RELATIVE_X, $b0, BATTLEANIMFRAMESET_7E, BATTLEANIMFUNC_33, PAL_BATTLE_OB_YELLOW, ANIM_GFX_CHARGE ; ANIM_OBJ_GROWTH
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_7F, BATTLEANIMFUNC_2F, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION ; ANIM_OBJ_CONVERSION2
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_6F, BATTLEANIMFUNC_34, PAL_BATTLE_OB_GRAY, ANIM_GFX_HAZE ; ANIM_OBJ_SMOKE
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_35, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG ; ANIM_OBJ_SMOKESCREEN
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_80, BATTLEANIMFUNC_33, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP ; ANIM_OBJ_SWORDS_DANCE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_81, BATTLEANIMFUNC_37, PAL_BATTLE_OB_GRAY, ANIM_GFX_SPEED ; ANIM_OBJ_SPEED_LINE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_85, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHAPES ; ANIM_OBJ_SHARPEN
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_86, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHAPES ; ANIM_OBJ_DEFENSE_CURL
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_87, BATTLEANIMFUNC_39, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_7A
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_30, BATTLEANIMFUNC_3A, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_7B
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_34, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_DISABLE
	battleanimobj RELATIVE_X | X_FLIP | PRIORITY, $88, BATTLEANIMFRAMESET_88, BATTLEANIMFUNC_3B, PAL_BATTLE_OB_BLUE, ANIM_GFX_WIND ; ANIM_OBJ_AGILITY
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_76, BATTLEANIMFUNC_25, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS ; ANIM_OBJ_HEART
	battleanimobj RELATIVE_X, $98, BATTLEANIMFRAMESET_10, BATTLEANIMFUNC_34, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_FLAME_WHEEL
	battleanimobj RELATIVE_X, $a8, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_3C, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_SACRED_FIRE
	battleanimobj RELATIVE_X | X_FLIP, $68, BATTLEANIMFRAMESET_89, BATTLEANIMFUNC_SPRIAL_DESCENT, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_COTTON_SPORE
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_8A, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_MILK_DRINK
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_8C, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_ANGER
	battleanimobj RELATIVE_X | X_FLIP, $50, BATTLEANIMFRAMESET_8D, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_MISC ; ANIM_OBJ_84
	battleanimobj RELATIVE_X, $40, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_40, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE ; ANIM_OBJ_85
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_8E, BATTLEANIMFUNC_41, PAL_BATTLE_OB_RED, ANIM_GFX_MISC ; ANIM_OBJ_BATON_PASS
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_8F, BATTLEANIMFUNC_3E, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_LOCK_ON
	battleanimobj RELATIVE_X | X_FLIP, $88, BATTLEANIMFRAMESET_93, BATTLEANIMFUNC_3E, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_MIND_READER
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_97, BATTLEANIMFUNC_3D, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_SAFEGUARD
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_78, BATTLEANIMFUNC_3D, PAL_BATTLE_OB_YELLOW, ANIM_GFX_OBJECTS ; ANIM_OBJ_PROTECT
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_99, BATTLEANIMFUNC_2E, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS ; ANIM_OBJ_THIEF
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_02, PAL_BATTLE_OB_GRAY, ANIM_GFX_EGG ; ANIM_OBJ_OCTAZOOKA
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_99, BATTLEANIMFUNC_35, PAL_BATTLE_OB_RED, ANIM_GFX_STATUS ; ANIM_OBJ_PRESENT
	battleanimobj RELATIVE_X | X_FLIP, $70, BATTLEANIMFRAMESET_8B, BATTLEANIMFUNC_3F, PAL_BATTLE_OB_GRAY, ANIM_GFX_MISC ; ANIM_OBJ_SPIKES
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_15, BATTLEANIMFUNC_08, PAL_BATTLE_OB_GRAY, ANIM_GFX_ICE ; ANIM_OBJ_POWDER_SNOW
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_11, BATTLEANIMFUNC_02, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_DRAGONBREATH
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_7F, BATTLEANIMFUNC_42, PAL_BATTLE_OB_GRAY, ANIM_GFX_EXPLOSION ; ANIM_OBJ_CONVERSION
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_9A, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_WEB ; ANIM_OBJ_SPIDER_WEB
	battleanimobj RELATIVE_X | X_FLIP, $a0, BATTLEANIMFRAMESET_9B, BATTLEANIMFUNC_35, PAL_BATTLE_OB_RED, ANIM_GFX_OBJECTS ; ANIM_OBJ_93
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_9C, BATTLEANIMFUNC_23, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS ; ANIM_OBJ_NIGHTMARE
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_9D, BATTLEANIMFUNC_25, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS ; ANIM_OBJ_IN_NIGHTMARE
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_9C, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS ; ANIM_OBJ_LOVELY_KISS
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_9E, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BLUE, ANIM_GFX_ANGELS ; ANIM_OBJ_SWEET_KISS
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $80, BATTLEANIMFRAMESET_9F, BATTLEANIMFUNC_3A, PAL_BATTLE_OB_GREEN, ANIM_GFX_OBJECTS ; ANIM_OBJ_SKETCH
	battleanimobj RELATIVE_X | X_FLIP, $80, BATTLEANIMFRAMESET_A0, BATTLEANIMFUNC_16, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS ; ANIM_OBJ_99
	battleanimobj RELATIVE_X | X_FLIP, $70, BATTLEANIMFRAMESET_78, BATTLEANIMFUNC_43, PAL_BATTLE_OB_YELLOW, ANIM_GFX_OBJECTS ; ANIM_OBJ_9A
	battleanimobj RELATIVE_X | X_FLIP, $c0, BATTLEANIMFRAMESET_A2, BATTLEANIMFUNC_01, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS ; ANIM_OBJ_DESTINY_BOND
	battleanimobj RELATIVE_X | X_FLIP, $40, BATTLEANIMFRAMESET_A3, BATTLEANIMFUNC_44, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SHINE ; ANIM_OBJ_MORNING_SUN
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_A4, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHINE ; ANIM_OBJ_GLIMMER
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_A5, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SHINE ; ANIM_OBJ_MOONLIGHT
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_43, BATTLEANIMFUNC_45, PAL_BATTLE_OB_RED, ANIM_GFX_CHARGE ; ANIM_OBJ_HIDDEN_POWER
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_A6, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_A0
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_A7, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_CUT ; ANIM_OBJ_A1
	battleanimobj RELATIVE_X | X_FLIP, $00, BATTLEANIMFRAMESET_B4, BATTLEANIMFUNC_4A, PAL_BATTLE_OB_BROWN, ANIM_GFX_POWDER ; ANIM_OBJ_SANDSTORM
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_A8, BATTLEANIMFUNC_02, PAL_BATTLE_OB_YELLOW, ANIM_GFX_LIGHTNING ; ANIM_OBJ_ZAP_CANNON
	battleanimobj RELATIVE_X | X_FLIP, $40, BATTLEANIMFRAMESET_9C, BATTLEANIMFUNC_11, PAL_BATTLE_OB_GRAY, ANIM_GFX_ANGELS ; ANIM_OBJ_SPITE
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $90, BATTLEANIMFRAMESET_A9, BATTLEANIMFUNC_46, PAL_BATTLE_OB_GRAY, ANIM_GFX_OBJECTS ; ANIM_OBJ_CURSE
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_47, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE ; ANIM_OBJ_PERISH_SONG
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_AA, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_SHINE ; ANIM_OBJ_FORESIGHT
	battleanimobj RELATIVE_X | X_FLIP, $b8, BATTLEANIMFRAMESET_AB, BATTLEANIMFUNC_48, PAL_BATTLE_OB_GRAY, ANIM_GFX_WIND ; ANIM_OBJ_RAPID_SPIN
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_AC, BATTLEANIMFUNC_44, PAL_BATTLE_OB_GRAY, ANIM_GFX_WIND ; ANIM_OBJ_SWAGGER
	battleanimobj RELATIVE_X, $a8, BATTLEANIMFRAMESET_05, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_AA
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_24, BATTLEANIMFUNC_43, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE ; ANIM_OBJ_AB
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_AD, BATTLEANIMFUNC_00, PAL_BATTLE_OB_BLUE, ANIM_GFX_PSYCHIC ; ANIM_OBJ_MEAN_LOOK
	battleanimobj RELATIVE_X, $a8, BATTLEANIMFRAMESET_AE, BATTLEANIMFUNC_49, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_AD
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_AF, BATTLEANIMFUNC_01, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SPEED ; ANIM_OBJ_AE
	battleanimobj RELATIVE_X | X_FLIP, $00, BATTLEANIMFRAMESET_B0, BATTLEANIMFUNC_4A, PAL_BATTLE_OB_GRAY, ANIM_GFX_WATER ; ANIM_OBJ_RAIN
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_70, BATTLEANIMFUNC_4B, PAL_BATTLE_OB_RED, ANIM_GFX_HAZE ; ANIM_OBJ_B0
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_B1, BATTLEANIMFUNC_4C, PAL_BATTLE_OB_GRAY, ANIM_GFX_STATUS ; ANIM_OBJ_PSYCH_UP
	battleanimobj RELATIVE_X, $b8, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_4D, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS ; ANIM_OBJ_ANCIENTPOWER
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_B3, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_AEROBLAST ; ANIM_OBJ_AEROBLAST
	battleanimobj RELATIVE_X | X_FLIP | Y_FLIP, $98, BATTLEANIMFRAMESET_74, BATTLEANIMFUNC_04, PAL_BATTLE_OB_BLUE, ANIM_GFX_EGG ; ANIM_OBJ_SHADOW_BALL
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_4E, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS ; ANIM_OBJ_ROCK_SMASH
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_73, BATTLEANIMFUNC_08, PAL_BATTLE_OB_RED, ANIM_GFX_FLOWER ; ANIM_OBJ_FLOWER
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_89, BATTLEANIMFUNC_4F, PAL_BATTLE_OB_RED, ANIM_GFX_MISC ; ANIM_OBJ_COTTON
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_B5, BATTLEANIMFUNC_00, PAL_BATTLE_OB_ENEMY, ANIM_GFX_PLAYERHEAD ; ANIM_OBJ_ENEMYFEET_1ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_B6, BATTLEANIMFUNC_00, PAL_BATTLE_OB_PLAYER, ANIM_GFX_ENEMYFEET ; ANIM_OBJ_PLAYERHEAD_1ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_B7, BATTLEANIMFUNC_00, PAL_BATTLE_OB_ENEMY, ANIM_GFX_PLAYERHEAD ; ANIM_OBJ_ENEMYFEET_2ROW
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_B8, BATTLEANIMFUNC_00, PAL_BATTLE_OB_PLAYER, ANIM_GFX_ENEMYFEET ; ANIM_OBJ_PLAYERHEAD_2ROW
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_0E, BATTLEANIMFUNC_04, PAL_BATTLE_OB_BLUE, ANIM_GFX_FIRE ; ANIM_OBJ_WILL_O_WISP
    battleanimobj RELATIVE_X, $a8, BATTLEANIMFRAMESET_0F, BATTLEANIMFUNC_3C, PAL_BATTLE_OB_BLUE, ANIM_GFX_FIRE ;ANIM_OBJ_WILL_O_WISP_IMPACT
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_4C, BATTLEANIMFUNC_14, PAL_BATTLE_OB_YELLOW, $12 ; ANIM_OBJ_CHARGE
	battleanimobj RELATIVE_X | X_FLIP, $90, BATTLEANIMFRAMESET_B9, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_TAUNT ; ANIM_OBJ_TAUNT	
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_4C, BATTLEANIMFUNC_1C, PAL_BATTLE_OB_BLUE, ANIM_GFX_CHARGE ; ANIM_OBJ_LEECH_LIFE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_4C, BATTLEANIMFUNC_1C, PAL_BATTLE_OB_RED, ANIM_GFX_CHARGE ; ANIM_OBJ_DREAM_EATER
	battleanimobj RELATIVE_X | X_FLIP, $b0, BATTLEANIMFRAMESET_01, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, $01 ; ANIM_OBJ_MINIMIZE
	battleanimobj RELATIVE_X, $88, BATTLEANIMFRAMESET_BA, BATTLEANIMFUNC_45, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_ASSIST
	battleanimobj RELATIVE_X | X_FLIP, $a8, BATTLEANIMFRAMESET_67, BATTLEANIMFUNC_26, PAL_BATTLE_OB_BLUE, ANIM_GFX_SAND ; ANIM_OBJ_SWEAT
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_BB, BATTLEANIMFUNC_00, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_HAND_REVERSE
	battleanimobj RELATIVE_X, $80, BATTLEANIMFRAMESET_BC, BATTLEANIMFUNC_25, PAL_BATTLE_OB_GRAY, ANIM_GFX_NOISE ; ANIM_OBJ_TEETER_DANCE
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BD, BATTLEANIMFUNC_06, PAL_BATTLE_OB_BLUE, ANIM_GFX_ICE ; ANIM_OBJ_ICE_BALL
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_BE, BATTLEANIMFUNC_09, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_LONG_PUNCH
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_4E, PAL_BATTLE_OB_YELLOW, ANIM_GFX_STARS ; ANIM_OBJ_STAR_BURST
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_4A, BATTLEANIMFUNC_50, PAL_BATTLE_OB_GRAY, ANIM_GFX_WHIP ; ANIM_OBJ_AIR_CUTTER
	battleanimobj RELATIVE_X | X_FLIP, $98, BATTLEANIMFRAMESET_0E, BATTLEANIMFUNC_51, PAL_BATTLE_OB_RED, ANIM_GFX_FIRE ; ANIM_OBJ_OVERHEAT
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_19, BATTLEANIMFUNC_52, PAL_BATTLE_OB_BROWN, ANIM_GFX_ROCKS ; ANIM_OBJ_ROCK_TOMB
	battleanimobj ABSOLUTE_X, $00, BATTLEANIMFRAMESET_23, BATTLEANIMFUNC_0D, PAL_BATTLE_OB_BROWN, ANIM_GFX_BUBBLE ; ANIM_OBJ_MUDDY_WATER
	battleanimobj RELATIVE_X | X_FLIP, $ff, BATTLEANIMFRAMESET_BF, BATTLEANIMFUNC_4A, PAL_BATTLE_OB_BLUE, ANIM_GFX_METEOR ; ANIM_OBJ_METEOR
	battleanimobj RELATIVE_X, $90, BATTLEANIMFRAMESET_89, BATTLEANIMFUNC_06, PAL_BATTLE_OB_YELLOW, ANIM_GFX_MISC ; ANIM_OBJ_POLLEN_PUFF
	battleanimobj RELATIVE_X, $a0, BATTLEANIMFRAMESET_08, BATTLEANIMFUNC_00, PAL_BATTLE_OB_YELLOW, ANIM_GFX_SMOKE ; ANIM_OBJ_BALL_POOF_YELLOW
	battleanimobj RELATIVE_X, $ff, BATTLEANIMFRAMESET_C0, BATTLEANIMFUNC_52, PAL_BATTLE_OB_GRAY, ANIM_GFX_HIT ; ANIM_OBJ_HAMMER_ARM

