	object_const_def ; object_event constants


SilphCo4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo4F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPH_CO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_5F, 3 
	warp_event 13,  0, SILPH_CO_3F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
