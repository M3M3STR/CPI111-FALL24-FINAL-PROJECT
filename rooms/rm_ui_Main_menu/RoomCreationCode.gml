global.playerx = 608 // set inital positions here
global.playery = 480
global.travel_type = -1 // 0 = doors, 1 = ladders, 2 = stairs
global.doors = [
{location : rm_front_MD, x_out : 4096-32, y_out : 1120},
{location : rm_hp_Hallway, x_out : 64+32, y_out : 160},
{location : rm_hp_Hallway, x_out : 896-32, y_out : 160}, //
{location : rm_ca1_MD, x_out : 64+32, y_out : 608}, //
{location : rm_ca1_MD, x_out : 1856-32, y_out : 608},
{location : rm_ca2_MD, x_out : 64+32, y_out : 608},
{location : rm_ca2_MD, x_out : 1856-32, y_out : 608},
{location : rm_engine_MD, x_out : 64+32, y_out : 1120} 
]
global.ladders = [
{location : rm_ca1_MD, x_out : 224, y_out : 608},
{location : rm_ca1_F2_FIRST_ROOM, x_out : 224, y_out : 480},
{location : rm_ca2_MD, x_out : 224, y_out : 608},
{location : rm_ca2_F2, x_out : 224, y_out : 480},
{location : rm_engine_MD, x_out : 224, y_out : 1120},
{location : rm_engine_F2, x_out : 224, y_out : 480},
]