DEF TIME_GROUP EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     KRABBY,     10
.Shore_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     KRABBY,     20
	dbbw  90 percent + 1, KRABBY,     20
	dbbw 100 percent,     TIME_GROUP, 0
.Shore_Super:
	dbbw  40 percent,     KRABBY,     40
	dbbw  70 percent,     TIME_GROUP, 1
	dbbw  90 percent + 1, KRABBY,     40
	dbbw 100 percent,     KINGLER,    40

.Ocean_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     TENTACOOL,  10
.Ocean_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     TENTACOOL,  20
	dbbw  90 percent + 1, CHINCHOU,   20
	dbbw 100 percent,     TIME_GROUP, 2
.Ocean_Super:
	dbbw  40 percent,     CHINCHOU,   40
	dbbw  70 percent,     TIME_GROUP, 3
	dbbw  90 percent + 1, TENTACRUEL, 40
	dbbw 100 percent,     LANTURN,    40

.Lake_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     GOLDEEN,    10
.Lake_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     GOLDEEN,    20
	dbbw  90 percent + 1, GOLDEEN,    20
	dbbw 100 percent,     TIME_GROUP, 4
.Lake_Super:
	dbbw  40 percent,     GOLDEEN,    40
	dbbw  70 percent,     TIME_GROUP, 5
	dbbw  90 percent + 1, MAGIKARP,   40
	dbbw 100 percent,     SEAKING,    40

.Pond_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     POLIWAG,    10
.Pond_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     POLIWAG,    20
	dbbw  90 percent + 1, POLIWAG,    20
	dbbw 100 percent,     TIME_GROUP, 6
.Pond_Super:
	dbbw  40 percent,     POLIWAG,    40
	dbbw  70 percent,     TIME_GROUP, 7
	dbbw  90 percent + 1, MAGIKARP,   40
	dbbw 100 percent,     POLIWAG,    40

.Dratini_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     MAGIKARP,   10
.Dratini_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     MAGIKARP,   20
	dbbw  90 percent + 1, MAGIKARP,   20
	dbbw 100 percent,     TIME_GROUP, 8
.Dratini_Super:
	dbbw  40 percent,     MAGIKARP,   40
	dbbw  70 percent,     TIME_GROUP, 9
	dbbw  90 percent + 1, MAGIKARP,   40
	dbbw 100 percent,     DRAGONAIR,  40

.Qwilfish_Swarm_Old:
	dbbw  70 percent + 1, MAGIKARP,   5
	dbbw  85 percent + 1, MAGIKARP,   5
	dbbw 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     QWILFISH,   20
	dbbw  90 percent + 1, QWILFISH,   20
	dbbw 100 percent,     TIME_GROUP, 10
.Qwilfish_Swarm_Super:
	dbbw  40 percent,     QWILFISH,   40
	dbbw  70 percent,     TIME_GROUP, 11
	dbbw  90 percent + 1, QWILFISH,   40
	dbbw 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     REMORAID,   20
	dbbw  90 percent + 1, REMORAID,   20
	dbbw 100 percent,     TIME_GROUP, 12
.Remoraid_Swarm_Super:
	dbbw  40 percent,     REMORAID,   40
	dbbw  70 percent,     TIME_GROUP, 13
	dbbw  90 percent + 1, REMORAID,   40
	dbbw 100 percent,     REMORAID,   40

.Gyarados_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     MAGIKARP,   20
	dbbw  90 percent + 1, MAGIKARP,   20
	dbbw 100 percent,     TIME_GROUP, 14
.Gyarados_Super:
	dbbw  40 percent,     MAGIKARP,   40
	dbbw  70 percent,     TIME_GROUP, 15
	dbbw  90 percent + 1, MAGIKARP,   40
	dbbw 100 percent,     MAGIKARP,   40

.Dratini_2_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     MAGIKARP,   10
.Dratini_2_Good:
	dbbw  35 percent,     MAGIKARP,   10
	dbbw  70 percent,     MAGIKARP,   10
	dbbw  90 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     TIME_GROUP, 16
.Dratini_2_Super:
	dbbw  40 percent,     MAGIKARP,   10
	dbbw  70 percent,     TIME_GROUP, 17
	dbbw  90 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     DRAGONAIR,  10

.WhirlIslands_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     KRABBY,     10
.WhirlIslands_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     KRABBY,     20
	dbbw  90 percent + 1, KRABBY,     20
	dbbw 100 percent,     TIME_GROUP, 18
.WhirlIslands_Super:
	dbbw  40 percent,     KRABBY,     40
	dbbw  70 percent,     TIME_GROUP, 19
	dbbw  90 percent + 1, KINGLER,    40
	dbbw 100 percent,     SEADRA,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw  85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     TENTACOOL,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     TENTACOOL,  20
	dbbw  90 percent + 1, TENTACOOL,  20
	dbbw 100 percent,     TIME_GROUP, 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	dbbw  40 percent,     TENTACOOL,  40
	dbbw  70 percent,     TIME_GROUP, 21
	dbbw  90 percent + 1, MAGIKARP,   40
	dbbw 100 percent,     QWILFISH,   40

.Remoraid_Old:
	dbbw  70 percent + 1, MAGIKARP,   10
	dbbw 85 percent + 1, MAGIKARP,   10
	dbbw 100 percent,     POLIWAG,    10
.Remoraid_Good:
	dbbw  35 percent,     MAGIKARP,   20
	dbbw  70 percent,     POLIWAG,    20
	dbbw  90 percent + 1, POLIWAG,    20
	dbbw 100 percent,     TIME_GROUP, 6
.Remoraid_Super:
	dbbw  40 percent,     POLIWAG,    40
	dbbw  70 percent,     TIME_GROUP, 7
	dbbw  90 percent + 1, MAGIKARP,   40
	dbbw 100 percent,     REMORAID,   40

TimeFishGroups:
	;  day              nite
	dbwbw CORSOLA,    20,  STARYU,     20 ; 0
	dbwbw CORSOLA,    40,  STARYU,     40 ; 1
	dbwbw SHELLDER,   20,  SHELLDER,   20 ; 2
	dbwbw SHELLDER,   40,  SHELLDER,   40 ; 3
	dbwbw GOLDEEN,    20,  GOLDEEN,    20 ; 4
	dbwbw GOLDEEN,    40,  GOLDEEN,    40 ; 5
	dbwbw POLIWAG,    20,  POLIWAG,    20 ; 6
	dbwbw POLIWAG,    40,  POLIWAG,    40 ; 7
	dbwbw DRATINI,    20,  DRATINI,    20 ; 8
	dbwbw DRATINI,    40,  DRATINI,    40 ; 9
	dbwbw QWILFISH,   20,  QWILFISH,   20 ; 10
	dbwbw QWILFISH,   40,  QWILFISH,   40 ; 11
	dbwbw REMORAID,   20,  REMORAID,   20 ; 12
	dbwbw REMORAID,   40,  REMORAID,   40 ; 13
	dbwbw GYARADOS,   20,  GYARADOS,   20 ; 14
	dbwbw GYARADOS,   40,  GYARADOS,   40 ; 15
	dbwbw DRATINI,    10,  DRATINI,    10 ; 16
	dbwbw DRATINI,    10,  DRATINI,    10 ; 17
	dbwbw HORSEA,     20,  HORSEA,     20 ; 18
	dbwbw HORSEA,     40,  HORSEA,     40 ; 19
	dbwbw TENTACOOL,  20,  TENTACOOL,  20 ; 20
	dbwbw TENTACOOL,  40,  TENTACOOL,  40 ; 21
	
FishGroups_Names::
	table_width 2, FishGroups_Names
	dw Group1_Name
	dw Group2_Name
	dw Group3_Name
	dw Group4_Name
	dw Group5_Name
	dw Group6_Name
	dw Group7_Name
	dw Group8_Name
	dw Group9_Name
	dw Group10_Name
	dw Group11_Name
	dw Group12_Name
	dw Group13_Name
	assert_table_length NUM_FISHGROUPS ; (13, NONE is not included in the count)

Group1_Name:
    db " SHORE@"
Group2_Name:
    db " OCEAN@"
Group3_Name:
    db " LAKE@"
Group4_Name:
    db " POND@"
Group5_Name:
    db " DRATINI@"
Group6_Name:
    db " QWILFISH SWARM@"
Group7_Name:
    db " REMORAID SWARM@"
Group8_Name:
    db " GYARADOS@"
Group9_Name:
    db " ROUTE 45@"
Group10_Name:
    db " WHIRL ISLE@"
Group11_Name:
    db " QWILFISH@"
Group12_Name:
    db " REMORAID@"
Group13_Name:
    db " ROUTE 12@"

GetFishGroupName:
; given fishing group num in 'a'
; return str ptr in 'de'
	dec a
	add a ; doubles the index since ptrs are 2 bytes
	ld hl, FishGroups_Names
	ld d, 0
	ld e, a
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ret

GetMapsFishGroup::
	dec d ; map num
	dec e ; map group
	push de
	ld d, 0
	; 'e' is the map group
	ld hl, MapGroupPointers
	add hl, de ; since ptrs are 2 bytes, double the index
	add hl, de
	ld a, BANK(MapGroupPointers)
	call GetFarWord
	pop de
	ld a, d ; map num becomes the index, do the same as map group
	ld bc, MAP_LENGTH
	; hl is pointing to map group ptr
	call AddNTimes ;  Add bc * a to hl.
	; fish group is the very last byte in the entry
	ld bc, MAP_LENGTH - 1
	add hl, bc
	ld a, BANK(MapGroupPointers)
	call GetFarByte
	; ld a, [hl] ; fishing group
	cp FISHGROUP_NONE
	jr z, .fishgroup_none
	call GetFishGroupName
	; ptr to fishgroup name is in de
	ret
.fishgroup_none
	xor a
	ld d, a
	ld e, a
	ret
