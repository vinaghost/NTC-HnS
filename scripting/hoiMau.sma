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

    new health = get_user_health(id);
    if( health >= 45 ) {
        return HAM_IGNORED
    }

    set_user_health(id, 45);

    return HAM_IGNORED
}
