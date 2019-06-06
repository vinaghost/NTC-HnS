#include <amxmodx>
#include <fun>
#include <hamsandwich>

#define NAME "HnS: Hoi mau"
#define VERSION "1.0"
#define AUTHOR "VINAGHOST"

public plugin_init() {
    register_plugin(NAME, VERSION, AUTHOR);


    RegisterHam(Ham_TakeDamage, "player", "Ham_PlayerTakeDamage")
}

public Ham_PlayerTakeDamage(id, iInflictor, iAttacker, Float:flDamage, iBits) {
    if( !is_user_alive(id) ) return HAM_IGNORED;

    set_task(1.0, "healing", id);

    return HAM_IGNORED
}

public healing(id) {
    if(!is_user_alive(id) ) {
        return;
    }

    new health = get_user_health(id);

    if( health >= 45 ) {
        return;
    }

    if( health + 5 >= 45 ) {
        health = 45
    }
    else {
        health += 5;
    }

    set_user_health(id, health);
    set_task(1.0, "healing", id);

}


