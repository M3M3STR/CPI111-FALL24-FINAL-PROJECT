// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_manage_health_oxygen() {
    // Deplete oxygen
    oxygen -= oxygen_depletion_rate;
    if (oxygen < 0) {
        oxygen = 0;
    }

    // Deplete health if oxygen is zero
    if (oxygen <= 0) {
        health -= health_depletion_rate;
        if (health < 0) {
            health = 0;
        }
    }

    // End the game if health is zero
    if (health <= 0) {
        game_end();
    }
}