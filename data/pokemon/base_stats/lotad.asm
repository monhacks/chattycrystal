	db 0 ; species ID placeholder

	db  40,  30,  30,  30,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, GRASS
	db 255 ;catch rate
	db 74 ;exp rate
	db NO_ITEM, LEAF_STONE
	db GENDER_F50 ;gender
	db 100 ;unknown
	db 16 ;egg cycles
	db 5 ;unknown
	INCBIN "gfx/pokemon/lotad/front.dimensions"
	db 0, 0, 0, 0 ;padding
	db GROWTH_MEDIUM_SLOW ;growth rate
	dn EGG_PLANT, EGG_WATER_1 ;egg groups

	; tm/hm learnset TODO add real learns
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DEFENSE_CURL, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL
	; end
