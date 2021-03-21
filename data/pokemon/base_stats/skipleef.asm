	db 0 ; species ID placeholder

	db  58,  54,  65,  70,  54,  73
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 73 ; catch rate
	db 139 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F31_25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skipleef/front.dimensions"
	ds BASE_PADDING_SIZE ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DEFENSE_CURL, DETECT, REST, ATTRACT, FURY_CUTTER, CUT, STRENGTH, FLASH
	; end
