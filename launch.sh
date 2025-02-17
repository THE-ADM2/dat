#!/bin/sh
GAME_TITLE="$1"  # Get the game title passed as an argument

#############################################################
# ▓█████  ███▄    █  ▄████▄   ▒█████  ▓█████▄ ▓█████  ██▀███  
#▓█   ▀  ██ ▀█   █ ▒██▀ ▀█  ▒██▒  ██▒▒██▀ ██▌▓█   ▀ ▓██ ▒ ██▒
#▒███   ▓██  ▀█ ██▒▒▓█    ▄ ▒██░  ██▒░██   █▌▒███   ▓██ ░▄█ ▒
#▒▓█  ▄ ▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒██   ██░░▓█▄   ▌▒▓█  ▄ ▒██▀▀█▄  
#░▒████▒▒██░   ▓██░▒ ▓███▀ ░░ ████▓▒░░▒████▓ ░▒████▒░██▓ ▒██▒
#░░ ▒░ ░░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░ ▒░▒░▒░  ▒▒▓  ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
# ░ ░  ░░ ░░   ░ ▒░  ░  ▒     ░ ▒ ▒░  ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░
#   ░      ░   ░ ░ ░        ░ ░ ░ ▒   ░ ░  ░    ░     ░░   ░ 
#   ░  ░         ░ ░ ░          ░ ░     ░       ░  ░   ░     
#                  ░                  ░                      

# Define functions or commands for specific games

# Not supported on R40/A40i, only for h6
set_res_640x480() {
    chmod +x ./fbset
    ./fbset -fb /dev/fb0 -g 640 480 640 480 32
}

set_res_800x600() {
    chmod +x ./fbset
    ./fbset -fb /dev/fb0 -g 800 600 800 600 32
}

set_res_native() {
    ######################
    #   OUTRUN SPECIFIC  #
    ######################
    # cat modes
    # U:1280x960p-60
    # cat virtual_size
    # 1280,1920
    ######################
    # fbset the default res back incase a game has changed it before we got here
    chmod +x ./fbset
    ./fbset -fb /dev/fb0 -g 1280 960 1280 960 32
}

LD_LIB_ORIGINAL=$LD_LIBRARY_PATH

export_lib_path() {
    export LD_LIBRARY_PATH=/mnt/New_Libs/lib/:/mnt/udisk/retroarch/lib/:/mnt/New_Libs/ulib/
}

export_lib_path_blitz() {
    export LD_LIBRARY_PATH=/lib/:/mnt/udisk/NFL/retroarch/lib/:/usr/lib/
}
revert_lib_path() {
    export LD_LIBRARY_PATH=$LD_LIB_ORIGINAL
}

launch_retroarch() {
    echo "Launching Retroarch..."
    chmod +x /mnt/udisk/NFL/retroarch/start_out_retro.sh
    /mnt/udisk/NFL/retroarch/start_out_retro.sh
}

launch_a1upblitz() {
    exit
}

launch_3on3dunk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/3on3dunk.zip
}

launch_armwar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/armwar.zip
}

launch_brapboys() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/brapboys.zip
}

launch_bucky() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bucky.zip
}

launch_captavene() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/captavene.zip
}

launch_dino() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dino.zip
}

launch_ffightae() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ffightae.zip
}

launch_footchmp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/footchmp.zip
}

launch_gaunt2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gaunt2.zip
}

launch_gauntlet() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gauntlet.zip
}

launch_mainevt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mainevt.zip
}

launch_shadfrce() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shadfrce.zip
}

launch_shangon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shangon.zip
}

launch_ninjak() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ninjak.zip
}

launch_simpsons() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/simpsons.zip
}

launch_slammast() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/slammast.zip
}

launch_ssriders() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ssriders.zip
}

launch_tmnt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tmnt.zip
}

launch_tmnt2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tmnt2.zip
}

launch_vendettan() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vendettan.zip
}

launch_wwfwfest() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wwfwfest.zip
}

launch_xmen() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xmen.zip
}

launch_xmultipl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xmultipl.zip
}

launch_xmvsf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xmvsf.zip
}

launch_xybots() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xybots.zip
}

launch_yiear() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/yiear.zip
}

launch_zedblade() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/zedblade.zip
}

launch_zerowing() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/zerowing.zip
}

launch_zookeep() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/zookeep.zip
}

launch_zupapa() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/zupapa.zip
}

launch_3countb() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/3countb.zip
}

launch_3wonders() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/3wonders.zip
}

launch_19xx() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/19xx.zip
}

launch_64street() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/64street.zip
}

launch_1941() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/1941.zip
}

launch_1942() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/1942.zip
}

launch_1943() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/1943.zip
}

launch_1943kai() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/1943kai.zip
}

launch_1944() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/1944.zip
}

launch_2020bb() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/2020bb.zip
}

launch_aburner2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aburner2.zip
}

launch_actfancr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/actfancr.zip
}

launch_aerofgt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aerofgt.zip
}

launch_agallet() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/agallet.zip
}

launch_airwolf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/airwolf.zip
}

launch_ajax() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ajax.zip
}

launch_akatana() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/akatana.zip
}

launch_alcon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/alcon.zip
}

launch_aliens() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aliens.zip
}

launch_aliensyn() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aliensyn.zip
}

launch_aligator() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aligator.zip
}

launch_alpham2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/alpham2.zip
}

launch_altbeast() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/altbeast.zip
}

launch_amidar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/amidar.zip
}

launch_androdun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/androdun.zip
}

launch_aof() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aof.zip
}

launch_aof2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aof2.zip
}

launch_aof3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aof3.zip
}

launch_aquajack() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aquajack.zip
}

launch_archrivl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/archrivl.zip
}

launch_arkanoid() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/arkanoid.zip
}

launch_arknoid2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/arknoid2.zip
}

launch_armorcar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/armorcar.zip
}

launch_armwrest() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/armwrest.zip
}

launch_astdelux() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/astdelux.zip
}

launch_asterix() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/asterix.zip
}

launch_asteroid() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/asteroid.zip
}

launch_astorm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/astorm.zip
}

launch_astormu() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/astormu.zip
}

launch_atetris() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/atetris.zip
}

launch_aurail() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/aurail.zip
}

launch_avengers() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/avengers.zip
}

launch_avsp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/avsp.zip
}

launch_avspirit() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/avspirit.zip
}

launch_baddudes() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/baddudes.zip
}

launch_badlands() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/badlands.zip
}

launch_bangbead() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bangbead.zip
}

launch_bankp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bankp.zip
}

launch_batcir() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/batcir.zip
}

launch_batman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/batman.zip
}

launch_batrider() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/batrider.zip
}

launch_batsugun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/batsugun.zip
}

launch_bbmanw() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bbmanw.zip
}

launch_bbros() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bbros.zip
}

launch_berzerk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/berzerk.zip
}

launch_bgaregga() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bgaregga.zip
}

launch_biomtoy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/biomtoy.zip
}

launch_bionicc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bionicc.zip
}

launch_bjourney() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bjourney.zip
}

launch_blazstar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/blazstar.zip
}

launch_blktiger() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/blktiger.zip
}

launch_bloodbro() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bloodbro.zip
}

launch_blstroid() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/blstroid.zip
}

launch_blswhstl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/blswhstl.zip
}

launch_bnj() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bnj.zip
}

launch_bogeyman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bogeyman.zip
}

launch_bombjack() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bombjack.zip
}

launch_bongo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bongo.zip
}

launch_boogwing() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/boogwing.zip
}

launch_breakrev() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/breakrev.zip
}

launch_brkthru() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/brkthru.zip
}

launch_bstars() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bstars.zip
}

launch_bstars2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bstars2.zip
}

launch_btime() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/btime.zip
}

launch_btoads() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/btoads.zip
}

launch_bubbles() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bubbles.zip
}

launch_bublbob2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bublbob2.zip
}

launch_bublbobl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bublbobl.zip
}

launch_buckrog() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/buckrog.zip
}

launch_burningf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/burningf.zip
}

launch_bwidow() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bwidow.zip
}

launch_bzone() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/bzone.zip
}

launch_cabal() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cabal.zip
}

launch_captaven() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/captaven.zip
}

launch_captcomm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/captcomm.zip
}

launch_carnival() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/carnival.zip
}

launch_cawing() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cawing.zip
}

launch_ccastles() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ccastles.zip
}

launch_cclimber() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cclimber.zip
}

launch_centiped() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/centiped.zip
}

launch_chaknpop() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/chaknpop.zip
}

launch_chasehq() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/chasehq.zip
}

launch_chinagat() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/chinagat.zip
}

launch_choplift() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/choplift.zip
}

launch_circusc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/circusc.zip
}

launch_citycon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/citycon.zip
}

launch_ckong() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ckong.zip
}

launch_ckongpt2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ckongpt2.zip
}

launch_cleopatr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cleopatr.zip
}

launch_columns() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/columns.zip
}

launch_commando() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/commando.zip
}

launch_congo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/congo.zip
}

launch_contra() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/contra.zip
}

launch_cotton() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cotton.zip
}

launch_crimfght() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/crimfght.zip
}

launch_crswd2bl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/crswd2bl.zip
}

launch_crsword() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/crsword.zip
}

launch_csclub() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/csclub.zip
}

launch_ctribe() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ctribe.zip
}

launch_cybots() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cybots.zip
}

launch_cyvern() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/cyvern.zip
}

launch_darkseal() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/darkseal.zip
}

launch_dassault() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dassault.zip
}

launch_dbreed() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dbreed.zip
}

launch_dbz() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dbz.zip
}

launch_dbz2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dbz2.zip
}

launch_ddcrew2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddcrew2.zip
}

launch_ddonpach() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddonpach.zip
}

launch_ddp3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddp3.zip
}

launch_ddpdfk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddpdfk.zip
}

launch_ddpsdoj() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddpsdoj.zip
}

launch_ddragon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddragon.zip
}

launch_ddragon2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddragon2.zip
}

launch_ddragon3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddragon3.zip
}

launch_ddsom() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddsom.zip
}

launch_ddtod() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddtod.zip
}

launch_ddux() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ddux.zip
}

launch_deadconx() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/deadconx.zip
}

launch_deathsml() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/deathsml.zip
}

launch_defender() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/defender.zip
}

launch_dfkbl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dfkbl.zip
}

launch_digdug() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/digdug.zip
}

launch_digdug2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/digdug2.zip
}

launch_dimahoo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dimahoo.zip
}

launch_dkong() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dkong.zip
}

launch_dkong3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dkong3.zip
}

launch_dkongjr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dkongjr.zip
}

launch_dmnfrnt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dmnfrnt.zip
}

launch_docastle() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/docastle.zip
}

launch_dogyuun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dogyuun.zip
}

launch_dondokod() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dondokod.zip
}

launch_donpachi() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/donpachi.zip
}

launch_doubledr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/doubledr.zip
}

launch_drgnbstr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/drgnbstr.zip
}

launch_drtoppel() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/drtoppel.zip
}

launch_dsaber() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dsaber.zip
}

launch_dsmbl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dsmbl.zip
}

launch_dsoccr94() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dsoccr94.zip
}

launch_dstlk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dstlk.zip
}

launch_dynagear() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dynagear.zip
}

launch_dynwar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/dynwar.zip
}

launch_ecofghtr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ecofghtr.zip
}

launch_edrandy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/edrandy.zip
}

launch_eightman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/eightman.zip
}

launch_elevator() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/elevator.zip
}

launch_elvactr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/elvactr.zip
}

launch_enduror() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/enduror.zip
}

launch_eprom() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/eprom.zip
}

launch_espgal() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/espgal.zip
}

launch_espgal2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/espgal2.zip
}

launch_esprade() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/esprade.zip
}

launch_eswat() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/eswat.zip
}

launch_exedexes() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/exedexes.zip
}

launch_fantzn2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fantzn2.zip
}

launch_fantzone() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fantzone.zip
}

launch_fastlane() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fastlane.zip
}

launch_fatfursp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fatfursp.zip
}

launch_fatfury1() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fatfury1.zip
}

launch_fatfury3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fatfury3.zip
}

launch_feversos() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/feversos.zip
}

launch_fireshrk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fireshrk.zip
}

launch_fixeight() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fixeight.zip
}

launch_flicky() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/flicky.zip
}

launch_foodf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/foodf.zip
}

launch_forgottn() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/forgottn.zip
}

launch_frogger() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/frogger.zip
}

launch_fshark() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/fshark.zip
}

launch_funkyjet() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/funkyjet.zip
}

launch_futari15() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/futari15.zip
}

launch_futaribl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/futaribl.zip
}

launch_ga2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ga2.zip
}

launch_ga2u() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ga2u.zip
}

launch_gaia() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gaia.zip
}

launch_gaiden() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gaiden.zip
}

launch_galaga() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/galaga.zip
}

launch_galaga88() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/galaga88.zip
}

launch_galaxian() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/galaxian.zip
}

launch_galivan() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/galivan.zip
}

launch_galmedes() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/galmedes.zip
}

launch_gangwars() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gangwars.zip
}

launch_ganryu() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ganryu.zip
}

launch_gaplus() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gaplus.zip
}

launch_garou() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/garou.zip
}

launch_gaunt22p() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gaunt22p.zip
}

launch_gauntlet2p() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gauntlet2p.zip
}

launch_gblchmp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gblchmp.zip
}

launch_geebeeg() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/geebeeg.zip
}

launch_gground() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gground.zip
}

launch_ghostb() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ghostb.zip
}

launch_ghouls() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ghouls.zip
}

launch_gigawing() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gigawing.zip
}

launch_gijoe() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gijoe.zip
}

launch_gnbarich() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gnbarich.zip
}

launch_gng() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gng.zip
}

launch_goalx3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/goalx3.zip
}

launch_godzilla() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/godzilla.zip
}

launch_gogomile() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gogomile.zip
}

launch_goldnaxe() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/goldnaxe.zip
}

launch_gpilots() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gpilots.zip
}

launch_gradius3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gradius3.zip
}

launch_grdians() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/grdians.zip
}

launch_grindstm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/grindstm.zip
}

launch_growl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/growl.zip
}

launch_gstream() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gstream.zip
}

launch_gtmr2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gtmr2.zip
}

launch_gunbird2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gunbird2.zip
}

launch_gunforce() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gunforce.zip
}

launch_gunlock() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gunlock.zip
}

launch_gunnail() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gunnail.zip
}

launch_gunsmoke() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gunsmoke.zip
}

launch_guwange() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/guwange.zip
}

launch_gyruss() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/gyruss.zip
}

launch_hangon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hangon.zip
}

launch_hbarrel() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hbarrel.zip
}

launch_hcastle() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hcastle.zip
}

launch_heatbrl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/heatbrl.zip
}

launch_hellfire() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hellfire.zip
}

launch_hharry() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hharry.zip
}

launch_hiimpact() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hiimpact.zip
}

launch_hitice() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hitice.zip
}

launch_hook() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hook.zip
}

launch_hopmappy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hopmappy.zip
}

launch_horekid() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/horekid.zip
}

launch_horizon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/horizon.zip
}

launch_hsf2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hsf2.zip
}

launch_hvysmsh() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/hvysmsh.zip
}

launch_ibara() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ibara.zip
}

launch_ibarablk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ibarablk.zip
}

launch_ikari() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ikari.zip
}

launch_ikari3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ikari3.zip
}

launch_imgfight() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/imgfight.zip
}

launch_inthunt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/inthunt.zip
}

launch_invaders() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/invaders.zip
}

launch_irrmaze() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/irrmaze.zip
}

launch_jackal() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/jackal.zip
}

launch_jailbrek() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/jailbrek.zip
}

launch_jedi() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/jedi.zip
}

launch_jojo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/jojo.zip
}

launch_jojoba() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/jojoba.zip
}

launch_journey() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/journey.zip
}

launch_joust() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/joust.zip
}

launch_junglek() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/junglek.zip
}

launch_junofrst() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/junofrst.zip
}

launch_kabukikl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kabukikl.zip
}

launch_kangaroo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kangaroo.zip
}

launch_karatblza() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/karatblza.zip
}

launch_karnov() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/karnov.zip
}

launch_karnovr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/karnovr.zip
}

launch_kchamp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kchamp.zip
}

launch_ket() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ket.zip
}

launch_kick() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kick.zip
}

launch_kicker() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kicker.zip
}

launch_kingball() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kingball.zip
}

launch_klax() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/klax.zip
}

launch_knights() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/knights.zip
}

launch_kod() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kod.zip
}

launch_kof94() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof94.zip
}

launch_kof95() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof95.zip
}

launch_kof96() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof96.zip
}

launch_kof97() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof97.zip
}

launch_kof98() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof98.zip
}

launch_kof99() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof99.zip
}

launch_kof2000() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof2000.zip
}

launch_kof2001() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof2001.zip
}

launch_kof2002() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof2002.zip
}

launch_kof2003() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kof2003.zip
}

launch_kotm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kotm.zip
}

launch_kotm2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kotm2.zip
}

launch_krull() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/krull.zip
}

launch_kungfum() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/kungfum.zip
}

launch_landmakr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/landmakr.zip
}

launch_lastblad() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lastblad.zip
}

launch_lastbld2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lastbld2.zip
}

launch_lbowling() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lbowling.zip
}

launch_ldrun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ldrun.zip
}

launch_ldrun2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ldrun2.zip
}

launch_ldrun3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ldrun3.zip
}

launch_ldrun4() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ldrun4.zip
}

launch_lethalth() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lethalth.zip
}

launch_liblrabl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/liblrabl.zip
}

launch_lightbr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lightbr.zip
}

launch_liquidk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/liquidk.zip
}

launch_lizwiz() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lizwiz.zip
}

launch_lkage() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lkage.zip
}

launch_llander() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/llander.zip
}

launch_locomotn() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/locomotn.zip
}

launch_loderndf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/loderndf.zip
}

launch_loht() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/loht.zip
}

launch_lresort() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lresort.zip
}

launch_lwings() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/lwings.zip
}

launch_macross() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/macross.zip
}

launch_macross2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/macross2.zip
}

launch_macrossp() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/macrossp.zip
}

launch_magdrop2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/magdrop2.zip
}

launch_magdrop3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/magdrop3.zip
}

launch_maglord() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/maglord.zip
}

launch_mainevt2p() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mainevt2p.zip
}

launch_mario() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mario.zip
}

launch_matrim() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/matrim.zip
}

launch_mazinger() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mazinger.zip
}

launch_mbombrd() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mbombrd.zip
}

launch_megaman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/megaman.zip
}

launch_megaman2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/megaman2.zip
}

launch_mercs() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mercs.zip
}

launch_metamrph() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/metamrph.zip
}

launch_metmqstr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/metmqstr.zip
}

launch_mgcrystl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mgcrystl.zip
}

launch_mhavoc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mhavoc.zip
}

launch_mikie() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mikie.zip
}

launch_milliped() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/milliped.zip
}

launch_missile() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/missile.zip
}

launch_mk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mk.zip
}

launch_mk2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mk2.zip
}

launch_mmatrix() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mmatrix.zip
}

launch_mmpork() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mmpork.zip
}

launch_moomesa() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/moomesa.zip
}

launch_mpang() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mpang.zip
}

launch_mpatrol() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mpatrol.zip
}

launch_mrdo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mrdo.zip
}

launch_mrgoemon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mrgoemon.zip
}

launch_msh() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/msh.zip
}

launch_mshvsf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mshvsf.zip
}

launch_mslug() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mslug.zip
}

launch_mslug3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mslug3.zip
}

launch_mslug4() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mslug4.zip
}

launch_mslug5() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mslug5.zip
}

launch_mslugx() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mslugx.zip
}

launch_mspacman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mspacman.zip
}

launch_msword() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/msword.zip
}

launch_mtwins() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mtwins.zip
}

launch_mushisam() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mushisam.zip
}

launch_mutnat() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mutnat.zip
}

launch_mvsc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mvsc.zip
}

launch_mwalk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mwalk.zip
}

launch_mystwarr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/mystwarr.zip
}

launch_nam1975() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nam1975.zip
}

launch_narc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/narc.zip
}

launch_nbahangt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_Plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nbahangt.zip
}

launch_nbajam() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_Plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nbajam.zip
}

launch_nbbatman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nbbatman.zip
}

launch_ncombat() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ncombat.zip
}

launch_ncommand() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ncommand.zip
}

launch_nemesis() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nemesis.zip
}

launch_nemo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nemo.zip
}

launch_neobombe() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/neobombe.zip
}

launch_neodrift() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/neodrift.zip
}

launch_neogeo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/neogeo.zip
}

launch_neomrdo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/neomrdo.zip
}

launch_nibbler() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nibbler.zip
}

launch_ninjakd2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ninjakd2.zip
}

launch_ninjakun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ninjakun.zip
}

launch_nitd() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nitd.zip
}

launch_nitedrvr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nitedrvr.zip
}

launch_nitrobal() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nitrobal.zip
}

launch_nob() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nob.zip
}

launch_nrallyx() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nrallyx.zip
}

launch_nslashers() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nslashers.zip
}

launch_nspirit() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nspirit.zip
}

launch_nwarr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/nwarr.zip
}

launch_offroad() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/offroad.zip
}

launch_openice() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/openice.zip
}

launch_osman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/osman.zip
}

launch_outfxies() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/outfxies.zip
}

launch_outrun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/outrun.zip
}

launch_outzone() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/outzone.zip
}

launch_overtop() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/overtop.zip
}

launch_pacland() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pacland.zip
}

launch_pacman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pacman.zip
}

launch_pang3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pang3.zip
}

launch_panicbom() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/panicbom.zip
}

launch_parodius() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/parodius.zip
}

launch_pbobbl2n() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pbobbl2n.zip
}

launch_pbobble3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pbobble3.zip
}

launch_pbobblen() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pbobblen.zip
}

launch_penbros() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/penbros.zip
}

launch_pengo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pengo.zip
}

launch_phoenix() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/phoenix.zip
}

launch_pinkswts() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pinkswts.zip
}

launch_pipedrm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pipedrm.zip
}

launch_pitfight() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pitfight.zip
}

launch_pleiads() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pleiads.zip
}

launch_pnickj() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pnickj.zip
}

launch_pooyan() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pooyan.zip
}

launch_popeye() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/popeye.zip
}

launch_pow() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pow.zip
}

launch_preisle2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/preisle2.zip
}

launch_progear() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/progear.zip
}

launch_pulstar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pulstar.zip
}

launch_punchout() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/punchout.zip
}

launch_punisher() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/punisher.zip
}

launch_punkshot2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/punkshot2.zip
}

launch_puyo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/puyo.zip
}

launch_puyopuy2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/puyopuy2.zip
}

launch_puzzloop() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/puzzloop.zip
}

launch_pzloop2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/pzloop2.zip
}

launch_qbert() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/qbert.zip
}

launch_qix() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/qix.zip
}

launch_quartet2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/quartet2.zip
}

launch_radm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/radm.zip
}

launch_raiden2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/raiden2.zip
}

launch_rallyx() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rallyx.zip
}

launch_rambo3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rambo3.zip
}

launch_rampage() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rampage.zip
}

launch_rampart2p() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rampart2p.zip
}

launch_rastan() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rastan.zip
}

launch_rbff1() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rbff1.zip
}

launch_rbff2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rbff2.zip
}

launch_rbffspec() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rbffspec.zip
}

launch_rbisland() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rbisland.zip
}

launch_redearth() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/redearth.zip
}

launch_renegade() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/renegade.zip
}

launch_ringdest() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ringdest.zip
}

launch_ringking() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ringking.zip
}

launch_riotcity() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/riotcity.zip
}

launch_roboarmy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/roboarmy.zip
}

launch_robocop() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/robocop.zip
}

launch_robocop2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/robocop2.zip
}

launch_robotron() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/robotron.zip
}

launch_rocnrope() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rocnrope.zip
}

launch_rohga() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rohga.zip
}

launch_rotd() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rotd.zip
}

launch_rthun2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rthun2.zip
}

launch_rthunder() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rthunder.zip
}

launch_rtype() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rtype.zip
}

launch_rtype2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rtype2.zip
}

launch_rtypeleo() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rtypeleo.zip
}

launch_rushatck() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rushatck.zip
}

launch_rungun() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rungun.zip
}

launch_rungun2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rungun2.zip
}

launch_rygar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/rygar.zip
}

launch_s1945() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/s1945.zip
}

launch_s1945ii() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/s1945ii.zip
}

launch_s1945iii() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/s1945iii.zip
}

launch_sabotenb() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sabotenb.zip
}

launch_sailormn() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sailormn.zip
}

launch_salamand() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/salamand.zip
}

launch_samsh5fe() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/samsh5fe.zip
}

launch_samsho() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/samsho.zip
}

launch_samsho2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/samsho2.zip
}

launch_samsho3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/samsho3.zip
}

launch_samsho4() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/samsho4.zip
}

launch_scobra() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/scobra.zip
}

launch_scontra() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/scontra.zip
}

launch_scramble() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/scramble.zip
}

launch_sdodgeb() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sdodgeb.zip
}

launch_seawolft() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/seawolft.zip
}

launch_seganinj() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/seganinj.zip
}

launch_seicross() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/seicross.zip
}

launch_sengoku() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sengoku.zip
}

launch_sengoku2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sengoku2.zip
}

launch_sengoku3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sengoku3.zip
}

launch_sf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sf.zip
}

launch_sf2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sf2.zip
}

launch_sf2ce() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sf2ce.zip
}

launch_sf2hf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sf2hf.zip
}

launch_sfa() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfa.zip
}

launch_sfa2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfa2.zip
}

launch_sfa3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfa3.zip
}

launch_sfiii() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfiii.zip
}

launch_sfiii2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfiii2.zip
}

launch_sfiii3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfiii3.zip
}

launch_sfz2al() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sfz2al.zip
}

launch_sgemf() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sgemf.zip
}

launch_sharrier() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sharrier.zip
}

launch_shdancer() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shdancer.zip
}

launch_shinobi() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shinobi.zip
}

launch_shocktr2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shocktr2.zip
}

launch_shocktro() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shocktro.zip
}

launch_shollow() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/shollow.zip
}

launch_sidearms() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sidearms.zip
}

launch_simpsons2p() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/simpsons2p.zip
}

launch_sinistar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sinistar.zip
}

launch_skykid() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/skykid.zip
}

launch_slapshot() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/slapshot.zip
}

launch_slyspy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/slyspy.zip
}

launch_smashtv() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/smashtv.zip
}

launch_snowbros() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/snowbros.zip
}

launch_socbrawl() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/socbrawl.zip
}

launch_solomon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/solomon.zip
}

launch_solrwarr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/solrwarr.zip
}

launch_sonic() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sonic.zip
}

launch_sonicfgt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sonicfgt.zip
}

launch_sonicwi2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sonicwi2.zip
}

launch_sonicwi3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sonicwi3.zip
}

launch_sonson() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sonson.zip
}

launch_spacedx() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spacedx.zip
}

launch_spcinv95() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spcinv95.zip
}

launch_spf2t() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spf2t.zip
}

launch_spidman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spidman.zip
}

launch_spinmast() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spinmast.zip
}

launch_splatter() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/splatter.zip
}

launch_spnchout() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spnchout.zip
}

launch_spyhunt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spyhunt.zip
}

launch_spyhunt2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/spyhunt2.zip
}

launch_srumbler() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/srumbler.zip
}

launch_ssf2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ssf2.zip
}

launch_ssf2t() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ssf2t.zip
}

launch_ssideki4() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ssideki4.zip
}

launch_ssridersubc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/ssridersubc.zip
}

launch_starwars() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/starwars.zip
}

launch_stdragon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/stdragon.zip
}

launch_stmblade() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/stmblade.zip
}

launch_strhoop() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/strhoop.zip
}

launch_strider() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/strider.zip
}

launch_superman() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/superman.zip
}

launch_superpac() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/superpac.zip
}

launch_superspy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/superspy.zip
}

launch_svc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/svc.zip
}

launch_sxevious() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/sxevious.zip
}

launch_szaxxon() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/szaxxon.zip
}

launch_tankfrce() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tankfrce.zip
}

launch_tapper() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tapper.zip
}

launch_tempest() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tempest.zip
}

launch_tengai() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tengai.zip
}

launch_tetrisp2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tetrisp2.zip
}

launch_tgm2p() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tgm2p.zip
}

launch_thndrbld() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/thndrbld.zip
}

launch_thundfox() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/thundfox.zip
}

launch_tigerh() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tigerh.zip
}

launch_tigeroad() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tigeroad.zip
}

launch_timeplt() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/timeplt.zip
}

launch_tmnt2pj() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tmnt2pj.zip
}

launch_tmnt22pu() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tmnt22pu.zip
}

launch_tnzs() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tnzs.zip
}

launch_todruaga() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/todruaga.zip
}

launch_toki() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/toki.zip
}

launch_toobin() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/toobin.zip
}

launch_tophuntr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tophuntr.zip
}

launch_totcarn() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/mame2003_plus_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/totcarn.zip
}

launch_trackfld() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/trackfld.zip
}

launch_trally() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/trally.zip
}

launch_trojan() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/trojan.zip
}

launch_tron() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tron.zip
}

launch_truxton() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/truxton.zip
}

launch_truxton2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/truxton2.zip
}

launch_tumblep() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/tumblep.zip
}

launch_turbofrc() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/turbofrc.zip
}

launch_turfmast() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/turfmast.zip
}

launch_twincobr() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/twincobr.zip
}

launch_twinhawk() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/twinhawk.zip
}

launch_twinspri() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/twinspri.zip
}

launch_twocrude() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/twocrude.zip
}

launch_uccops() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/uccops.zip
}

launch_umk3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/umk3.zip
}

launch_unsquad() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/unsquad.zip
}

launch_upndown() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/upndown.zip
}

launch_valkyrie() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/valkyrie.zip
}

launch_varth() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/varth.zip
}

launch_vball() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vball.zip
}

launch_vhunt2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vhunt2.zip
}

launch_viewpoin() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/viewpoin.zip
}

launch_vimana() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vimana.zip
}

launch_viostorm() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/viostorm.zip
}

launch_volfied() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/volfied.zip
}

launch_vsav() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vsav.zip
}

launch_vsav2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vsav2.zip
}

launch_vulcan() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/vulcan.zip
}

launch_wakuwak7() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wakuwak7.zip
}

launch_wb3() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wb3.zip
}

launch_wbml() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wbml.zip
}

launch_wboy() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wboy.zip
}

launch_wg3dh() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wg3dh.zip
}

launch_wildfang() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wildfang.zip
}

launch_willow() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/willow.zip
}

launch_wizdfire() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wizdfire.zip
}

launch_wjammers() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wjammers.zip
}

launch_wof() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wof.zip
}

launch_wwfsstar() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/wwfsstar.zip
}

launch_xexex() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xexex.zip
}

launch_xmcota() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xmcota.zip
}

launch_xmen2pa() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/fbneo_libretro.so /mnt/udisk/NFL/retroarch/roms/fbneo/xmen2pa.zip
}


launch_nba_showtime() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/flycast_libretro.so /mnt/udisk/NFL/retroarch/roms/DC/nba_showtime.chd
}

launch_nfl_blitz_2000() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/flycast_libretro.so /mnt/udisk/NFL/retroarch/roms/DC/nfl_blitz_2000.chd
}

launch_gauntlet_legends() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/flycast_libretro.so /mnt/udisk/NFL/retroarch/roms/DC/gauntlet_legends.chd
}

launch_ms_pac_man_maze_madness() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/flycast_libretro.so /mnt/udisk/NFL/retroarch/roms/DC/ms_pac_man_maze_madness.chd
}

launch_virtua_tennis() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/flycast_libretro.so /mnt/udisk/NFL/retroarch/roms/DC/virtua_tennis.chd
}

launch_gauntlet_iv() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/genesis_plus_gx_libretro.so /mnt/udisk/NFL/retroarch/roms/genesis/gauntlet_iv.md
}

launch_micro_machines_2() {
    /mnt/udisk/NFL/retroarch/retro190 -c /mnt/udisk/NFL/retroarch/retroarch.cfg -L /mnt/udisk/NFL/retroarch/.config/retroarch/cores/genesis_plus_gx_libretro.so /mnt/udisk/NFL/retroarch/roms/genesis/micro_machines_2.md
}

launch_cot() {
    tinymix 7 4
    cd /mnt/udisk/cot
    DISPLAY=:0 /mnt/udisk/cot/cot
}

# Add more functions or commands for other games as needed

# Default launch command or function
default_launch() {
   echo "Default launch for unrecognized game title: $GAME_TITLE"
   
   # Ensure we revert to our default lib paths
   revert_lib_path
   /mnt/udisk/sdl/a1up_menu &
}

# drop all cached ram before we start a game.
sync; echo 3 > /proc/sys/vm/drop_caches 

# enable higher swap usage - needs further testing
echo 120 > /proc/sys/vm/swappiness

# On outrun we can assume the libpath should be exported regardless, as long as doing it here doesn't impact fbset.
export_lib_path_blitz

# Check the game title and call the respective function or command
case "$GAME_TITLE" in
    "Blitzmas Treat") launch_cot ;;
    "Arcade 1up Blitz") launch_a1upblitz ;;
    "xmen2pa") launch_xmen2pa ;; 
    "xmcota") launch_xmcota ;; 
    "xexex") launch_xexex ;; 
    "wwfsstar") launch_wwfsstar ;; 
    "wof") launch_wof ;; 
    "wjammers") launch_wjammers ;; 
    "wizdfire") launch_wizdfire ;; 
    "willow") launch_willow ;; 
    "wildfang") launch_wildfang ;; 
	"wg3dh") launch_wg3dh ;;
    "wboy") launch_wboy ;; 
    "wbml") launch_wbml ;; 
    "wb3") launch_wb3 ;; 
    "wakuwak7") launch_wakuwak7 ;; 
    "vulcan") launch_vulcan ;; 
    "vsav2") launch_vsav2 ;; 
    "vsav") launch_vsav ;; 
    "volfied") launch_volfied ;; 
    "viostorm") launch_viostorm ;; 
    "vimana") launch_vimana ;; 
    "viewpoin") launch_viewpoin ;; 
    "vhunt2") launch_vhunt2 ;; 
    "vball") launch_vball ;; 
    "varth") launch_varth ;; 
    "valkyrie") launch_valkyrie ;; 
    "upndown") launch_upndown ;; 
    "unsquad") launch_unsquad ;; 
    "umk3") launch_umk3 ;; 
    "uccops") launch_uccops ;; 
    "twocrude") launch_twocrude ;; 
    "twinspri") launch_twinspri ;; 
    "twinhawk") launch_twinhawk ;; 
    "twincobr") launch_twincobr ;; 
    "turfmast") launch_turfmast ;; 
    "turbofrc") launch_turbofrc ;; 
    "tumblep") launch_tumblep ;; 
    "truxton2") launch_truxton2 ;; 
    "truxton") launch_truxton ;; 
    "tron") launch_tron ;; 
    "trojan") launch_trojan ;; 
    "trally") launch_trally ;; 
    "trackfld") launch_trackfld ;; 
    "totcarn") launch_totcarn ;; 
    "tophuntr") launch_tophuntr ;; 
    "toobin") launch_toobin ;; 
    "toki") launch_toki ;; 
    "todruaga") launch_todruaga ;; 
    "tnzs") launch_tnzs ;; 
    "tmnt22pu") launch_tmnt22pu ;; 
    "tmnt2pj") launch_tmnt2pj ;; 
    "timeplt") launch_timeplt ;; 
    "tigeroad") launch_tigeroad ;; 
    "tigerh") launch_tigerh ;; 
    "thundfox") launch_thundfox ;; 
    "thndrbld") launch_thndrbld ;; 
    "tgm2p") launch_tgm2p ;; 
    "tetrisp2") launch_tetrisp2 ;; 
    "tengai") launch_tengai ;; 
    "tempest") launch_tempest ;; 
    "tapper") launch_tapper ;; 
    "tankfrce") launch_tankfrce ;; 
    "szaxxon") launch_szaxxon ;; 
    "sxevious") launch_sxevious ;; 
    "svc") launch_svc ;; 
    "superspy") launch_superspy ;; 
    "superpac") launch_superpac ;; 
    "superman") launch_superman ;; 
    "strider") launch_strider ;; 
    "strhoop") launch_strhoop ;; 
    "stmblade") launch_stmblade ;; 
    "stdragon") launch_stdragon ;; 
    "starwars") launch_starwars ;; 
    "ssridersubc") launch_ssridersubc ;; 
    "ssideki4") launch_ssideki4 ;; 
    "ssf2t") launch_ssf2t ;; 
    "ssf2") launch_ssf2 ;; 
    "srumbler") launch_srumbler ;; 
    "spyhunt2") launch_spyhunt2 ;; 
    "spyhunt") launch_spyhunt ;; 
    "spnchout") launch_spnchout ;; 
    "splatter") launch_splatter ;; 
    "spinmast") launch_spinmast ;; 
    "spidman") launch_spidman ;; 
    "spf2t") launch_spf2t ;; 
    "spcinv95") launch_spcinv95 ;; 
    "spacedx") launch_spacedx ;; 
    "sonson") launch_sonson ;; 
    "sonicwi3") launch_sonicwi3 ;; 
    "sonicwi2") launch_sonicwi2 ;; 
    "sonicfgt") launch_sonicfgt ;; 
    "sonic") launch_sonic ;; 
    "solrwarr") launch_solrwarr ;; 
    "solomon") launch_solomon ;; 
    "socbrawl") launch_socbrawl ;; 
    "snowbros") launch_snowbros ;; 
    "smashtv") launch_smashtv ;; 
    "slyspy") launch_slyspy ;; 
    "slapshot") launch_slapshot ;; 
    "skykid") launch_skykid ;; 
    "sinistar") launch_sinistar ;; 
    "simpsons2p") launch_simpsons2p ;; 
    "sidearms") launch_sidearms ;; 
    "shollow") launch_shollow ;; 
    "shocktro") launch_shocktro ;; 
    "shocktr2") launch_shocktr2 ;; 
    "shinobi") launch_shinobi ;; 
    "shdancer") launch_shdancer ;; 
    "sharrier") launch_sharrier ;; 
    "sgemf") launch_sgemf ;; 
    "sfz2al") launch_sfz2al ;; 
    "sfiii3") launch_sfiii3 ;; 
    "sfiii2") launch_sfiii2 ;; 
    "sfiii") launch_sfiii ;; 
    "sfa3") launch_sfa3 ;; 
    "sfa2") launch_sfa2 ;; 
    "sfa") launch_sfa ;; 
    "sf2hf") launch_sf2hf ;; 
    "sf2ce") launch_sf2ce ;; 
    "sf2") launch_sf2 ;; 
    "sf") launch_sf ;; 
    "sengoku3") launch_sengoku3 ;; 
    "sengoku2") launch_sengoku2 ;; 
    "sengoku") launch_sengoku ;; 
    "seicross") launch_seicross ;; 
    "seganinj") launch_seganinj ;; 
    "seawolft") launch_seawolft ;; 
    "sdodgeb") launch_sdodgeb ;; 
    "scramble") launch_scramble ;; 
    "scontra") launch_scontra ;; 
    "scobra") launch_scobra ;; 
    "samsho4") launch_samsho4 ;; 
    "samsho3") launch_samsho3 ;; 
    "samsho2") launch_samsho2 ;; 
    "samsho") launch_samsho ;; 
    "samsh5fe") launch_samsh5fe ;; 
    "salamand") launch_salamand ;; 
    "sailormn") launch_sailormn ;; 
    "sabotenb") launch_sabotenb ;; 
    "s1945iii") launch_s1945iii ;; 
    "s1945ii") launch_s1945ii ;; 
    "s1945") launch_s1945 ;; 
    "rygar") launch_rygar ;; 
    "rushatck") launch_rushatck ;; 
	"rungun") launch_rungun ;; 
	"rungun2") launch_rungun2 ;; 
    "rtypeleo") launch_rtypeleo ;; 
    "rtype2") launch_rtype2 ;; 
    "rtype") launch_rtype ;; 
    "rthunder") launch_rthunder ;; 
    "rthun2") launch_rthun2 ;; 
    "rotd") launch_rotd ;; 
    "rohga") launch_rohga ;; 
    "rocnrope") launch_rocnrope ;; 
    "robotron") launch_robotron ;; 
    "robocop2") launch_robocop2 ;; 
    "robocop") launch_robocop ;; 
    "roboarmy") launch_roboarmy ;; 
    "riotcity") launch_riotcity ;; 
    "ringking") launch_ringking ;; 
    "ringdest") launch_ringdest ;; 
    "renegade") launch_renegade ;; 
    "redearth") launch_redearth ;; 
    "rbisland") launch_rbisland ;; 
    "rbffspec") launch_rbffspec ;; 
    "rbff2") launch_rbff2 ;; 
    "rbff1") launch_rbff1 ;; 
    "rastan") launch_rastan ;; 
    "rampart2p") launch_rampart2p ;; 
    "rampage") launch_rampage ;; 
    "rambo3") launch_rambo3 ;; 
    "rallyx") launch_rallyx ;; 
    "raiden2") launch_raiden2 ;; 
    "radm") launch_radm ;; 
    "quartet2") launch_quartet2 ;; 
    "qix") launch_qix ;; 
    "qbert") launch_qbert ;; 
    "pzloop2") launch_pzloop2 ;; 
    "puzzloop") launch_puzzloop ;; 
    "puyopuy2") launch_puyopuy2 ;; 
    "puyo") launch_puyo ;; 
    "punkshot2") launch_punkshot2 ;; 
    "punisher") launch_punisher ;; 
    "punchout") launch_punchout ;; 
    "pulstar") launch_pulstar ;; 
    "progear") launch_progear ;; 
    "preisle2") launch_preisle2 ;; 
    "pow") launch_pow ;; 
    "popeye") launch_popeye ;; 
    "pooyan") launch_pooyan ;; 
    "pnickj") launch_pnickj ;; 
    "pleiads") launch_pleiads ;; 
    "pitfight") launch_pitfight ;; 
    "pipedrm") launch_pipedrm ;; 
    "pinkswts") launch_pinkswts ;; 
    "phoenix") launch_phoenix ;; 
    "pengo") launch_pengo ;; 
    "penbros") launch_penbros ;; 
    "pbobblen") launch_pbobblen ;; 
    "pbobble3") launch_pbobble3 ;; 
    "pbobbl2n") launch_pbobbl2n ;; 
    "parodius") launch_parodius ;; 
    "panicbom") launch_panicbom ;; 
    "pang3") launch_pang3 ;; 
    "pacman") launch_pacman ;; 
    "pacland") launch_pacland ;; 
    "overtop") launch_overtop ;; 
    "outzone") launch_outzone ;; 
    "outrun") launch_outrun ;; 
    "outfxies") launch_outfxies ;; 
    "osman") launch_osman ;; 
    "openice") launch_openice ;; 
    "offroad") launch_offroad ;; 
    "nwarr") launch_nwarr ;; 
    "nspirit") launch_nspirit ;; 
    "nslashers") launch_nslashers ;; 
    "nrallyx") launch_nrallyx ;; 
    "nob") launch_nob ;; 
    "nitrobal") launch_nitrobal ;; 
    "nitedrvr") launch_nitedrvr ;; 
    "nitd") launch_nitd ;; 
    "ninjakun") launch_ninjakun ;; 
    "ninjakd2") launch_ninjakd2 ;; 
    "nibbler") launch_nibbler ;; 
    "neomrdo") launch_neomrdo ;; 
    "neogeo") launch_neogeo ;; 
    "neodrift") launch_neodrift ;; 
    "neobombe") launch_neobombe ;; 
    "nemo") launch_nemo ;; 
    "nemesis") launch_nemesis ;; 
    "ncommand") launch_ncommand ;; 
    "ncombat") launch_ncombat ;; 
    "nbbatman") launch_nbbatman ;; 
    "nbajam") launch_nbajam ;; 
    "nbahangt") launch_nbahangt ;; 
    "narc") launch_narc ;; 
    "nam1975") launch_nam1975 ;; 
    "mystwarr") launch_mystwarr ;; 
    "mwalk") launch_mwalk ;; 
    "mvsc") launch_mvsc ;; 
    "mutnat") launch_mutnat ;; 
    "mushisam") launch_mushisam ;; 
    "mtwins") launch_mtwins ;; 
    "msword") launch_msword ;; 
    "mspacman") launch_mspacman ;; 
    "mslugx") launch_mslugx ;; 
    "mslug5") launch_mslug5 ;; 
    "mslug4") launch_mslug4 ;; 
    "mslug3") launch_mslug3 ;; 
    "mslug") launch_mslug ;; 
    "mshvsf") launch_mshvsf ;; 
    "msh") launch_msh ;; 
    "mrgoemon") launch_mrgoemon ;; 
    "mrdo") launch_mrdo ;; 
    "mpatrol") launch_mpatrol ;; 
    "mpang") launch_mpang ;; 
    "moomesa") launch_moomesa ;; 
    "mmpork") launch_mmpork ;; 
    "mmatrix") launch_mmatrix ;; 
    "mk2") launch_mk2 ;; 
    "mk") launch_mk ;; 
    "missile") launch_missile ;; 
    "milliped") launch_milliped ;; 
    "mikie") launch_mikie ;; 
    "mhavoc") launch_mhavoc ;; 
    "mgcrystl") launch_mgcrystl ;; 
    "metmqstr") launch_metmqstr ;; 
    "metamrph") launch_metamrph ;; 
    "mercs") launch_mercs ;; 
    "megaman2") launch_megaman2 ;; 
    "megaman") launch_megaman ;; 
    "mbombrd") launch_mbombrd ;; 
    "mazinger") launch_mazinger ;; 
    "matrim") launch_matrim ;; 
    "mario") launch_mario ;; 
    "mainevt2p") launch_mainevt2p ;; 
    "maglord") launch_maglord ;; 
    "magdrop3") launch_magdrop3 ;; 
    "magdrop2") launch_magdrop2 ;; 
    "macrossp") launch_macrossp ;; 
    "macross2") launch_macross2 ;; 
    "macross") launch_macross ;; 
    "lwings") launch_lwings ;; 
    "lresort") launch_lresort ;; 
    "loht") launch_loht ;; 
    "loderndf") launch_loderndf ;; 
    "locomotn") launch_locomotn ;; 
    "llander") launch_llander ;; 
    "lkage") launch_lkage ;; 
    "lizwiz") launch_lizwiz ;; 
    "liquidk") launch_liquidk ;; 
    "lightbr") launch_lightbr ;; 
    "liblrabl") launch_liblrabl ;; 
    "lethalth") launch_lethalth ;; 
    "ldrun4") launch_ldrun4 ;; 
    "ldrun3") launch_ldrun3 ;; 
    "ldrun2") launch_ldrun2 ;; 
    "ldrun") launch_ldrun ;; 
    "lbowling") launch_lbowling ;; 
    "lastbld2") launch_lastbld2 ;; 
    "lastblad") launch_lastblad ;; 
    "landmakr") launch_landmakr ;; 
    "kungfum") launch_kungfum ;; 
    "krull") launch_krull ;; 
    "kotm2") launch_kotm2 ;; 
    "kotm") launch_kotm ;; 
    "kof2003") launch_kof2003 ;; 
    "kof2002") launch_kof2002 ;; 
    "kof2001") launch_kof2001 ;; 
    "kof2000") launch_kof2000 ;; 
    "kof99") launch_kof99 ;; 
    "kof98") launch_kof98 ;; 
    "kof97") launch_kof97 ;; 
    "kof96") launch_kof96 ;; 
    "kof95") launch_kof95 ;; 
    "kof94") launch_kof94 ;; 
    "kod") launch_kod ;; 
    "knights") launch_knights ;; 
    "klax") launch_klax ;; 
    "kingball") launch_kingball ;; 
    "kicker") launch_kicker ;; 
    "kick") launch_kick ;; 
    "ket") launch_ket ;; 
    "kchamp") launch_kchamp ;; 
    "karnovr") launch_karnovr ;; 
    "karnov") launch_karnov ;; 
    "karatblza") launch_karatblza ;; 
    "kangaroo") launch_kangaroo ;; 
    "kabukikl") launch_kabukikl ;; 
    "junofrst") launch_junofrst ;; 
    "junglek") launch_junglek ;; 
    "joust") launch_joust ;; 
    "journey") launch_journey ;; 
    "jojoba") launch_jojoba ;; 
    "jojo") launch_jojo ;; 
    "jedi") launch_jedi ;; 
    "jailbrek") launch_jailbrek ;; 
    "jackal") launch_jackal ;; 
    "irrmaze") launch_irrmaze ;; 
    "invaders") launch_invaders ;; 
    "inthunt") launch_inthunt ;; 
    "imgfight") launch_imgfight ;; 
    "ikari3") launch_ikari3 ;; 
    "ikari") launch_ikari ;; 
    "ibarablk") launch_ibarablk ;; 
    "ibara") launch_ibara ;; 
    "hvysmsh") launch_hvysmsh ;; 
    "hsf2") launch_hsf2 ;; 
    "horizon") launch_horizon ;; 
    "horekid") launch_horekid ;; 
    "hopmappy") launch_hopmappy ;; 
    "hook") launch_hook ;; 
    "hitice") launch_hitice ;; 
    "hiimpact") launch_hiimpact ;; 
    "hharry") launch_hharry ;; 
    "hellfire") launch_hellfire ;; 
    "heatbrl") launch_heatbrl ;; 
    "hcastle") launch_hcastle ;; 
    "hbarrel") launch_hbarrel ;; 
    "hangon") launch_hangon ;; 
    "gyruss") launch_gyruss ;; 
    "guwange") launch_guwange ;; 
    "gunsmoke") launch_gunsmoke ;; 
    "gunnail") launch_gunnail ;; 
    "gunlock") launch_gunlock ;; 
    "gunforce") launch_gunforce ;; 
    "gunbird2") launch_gunbird2 ;; 
    "gtmr2") launch_gtmr2 ;; 
    "gstream") launch_gstream ;; 
    "growl") launch_growl ;; 
    "grindstm") launch_grindstm ;; 
    "grdians") launch_grdians ;; 
    "gradius3") launch_gradius3 ;; 
    "gpilots") launch_gpilots ;; 
    "goldnaxe") launch_goldnaxe ;; 
    "gogomile") launch_gogomile ;; 
    "godzilla") launch_godzilla ;; 
    "goalx3") launch_goalx3 ;; 
    "gng") launch_gng ;; 
    "gnbarich") launch_gnbarich ;; 
    "gijoe") launch_gijoe ;; 
    "gigawing") launch_gigawing ;; 
    "ghouls") launch_ghouls ;; 
    "ghostb") launch_ghostb ;; 
    "gground") launch_gground ;; 
    "geebeeg") launch_geebeeg ;; 
    "gblchmp") launch_gblchmp ;; 
    "gauntlet2p") launch_gauntlet2p ;; 
    "gaunt22p") launch_gaunt22p ;; 
    "garou") launch_garou ;; 
    "gaplus") launch_gaplus ;; 
    "ganryu") launch_ganryu ;; 
    "gangwars") launch_gangwars ;; 
    "galmedes") launch_galmedes ;; 
    "galivan") launch_galivan ;; 
    "galaxian") launch_galaxian ;; 
    "galaga88") launch_galaga88 ;; 
    "galaga") launch_galaga ;; 
    "gaiden") launch_gaiden ;; 
    "gaia") launch_gaia ;; 
    "ga2u") launch_ga2u ;; 
    "ga2") launch_ga2 ;; 
    "futaribl") launch_futaribl ;; 
    "futari15") launch_futari15 ;; 
    "funkyjet") launch_funkyjet ;; 
    "fshark") launch_fshark ;; 
    "frogger") launch_frogger ;; 
    "forgottn") launch_forgottn ;; 
    "foodf") launch_foodf ;; 
    "flicky") launch_flicky ;; 
    "fixeight") launch_fixeight ;; 
    "fireshrk") launch_fireshrk ;; 
    "feversos") launch_feversos ;; 
    "fatfury3") launch_fatfury3 ;; 
    "fatfury1") launch_fatfury1 ;; 
    "fatfursp") launch_fatfursp ;; 
    "fastlane") launch_fastlane ;; 
    "fantzone") launch_fantzone ;; 
    "fantzn2") launch_fantzn2 ;; 
    "exedexes") launch_exedexes ;; 
    "eswat") launch_eswat ;; 
    "esprade") launch_esprade ;; 
    "espgal2") launch_espgal2 ;; 
    "espgal") launch_espgal ;; 
    "eprom") launch_eprom ;; 
    "enduror") launch_enduror ;; 
    "elvactr") launch_elvactr ;; 
    "elevator") launch_elevator ;; 
    "eightman") launch_eightman ;; 
    "edrandy") launch_edrandy ;; 
    "ecofghtr") launch_ecofghtr ;; 
    "dynwar") launch_dynwar ;; 
    "dynagear") launch_dynagear ;; 
    "dstlk") launch_dstlk ;; 
    "dsoccr94") launch_dsoccr94 ;; 
    "dsmbl") launch_dsmbl ;; 
    "dsaber") launch_dsaber ;; 
    "drtoppel") launch_drtoppel ;; 
    "drgnbstr") launch_drgnbstr ;; 
    "doubledr") launch_doubledr ;; 
    "donpachi") launch_donpachi ;; 
    "dondokod") launch_dondokod ;; 
    "dogyuun") launch_dogyuun ;; 
    "docastle") launch_docastle ;; 
    "dmnfrnt") launch_dmnfrnt ;; 
    "dkongjr") launch_dkongjr ;; 
    "dkong3") launch_dkong3 ;; 
    "dkong") launch_dkong ;; 
    "dimahoo") launch_dimahoo ;; 
    "digdug2") launch_digdug2 ;; 
    "digdug") launch_digdug ;; 
    "dfkbl") launch_dfkbl ;; 
    "defender") launch_defender ;; 
    "deathsml") launch_deathsml ;; 
    "deadconx") launch_deadconx ;; 
    "ddux") launch_ddux ;; 
    "ddtod") launch_ddtod ;; 
    "ddsom") launch_ddsom ;; 
    "ddragon3") launch_ddragon3 ;; 
    "ddragon2") launch_ddragon2 ;; 
    "ddragon") launch_ddragon ;; 
    "ddpsdoj") launch_ddpsdoj ;; 
    "ddpdfk") launch_ddpdfk ;; 
    "ddp3") launch_ddp3 ;; 
    "ddonpach") launch_ddonpach ;; 
    "ddcrew2") launch_ddcrew2 ;; 
    "dbz2") launch_dbz2 ;; 
    "dbz") launch_dbz ;; 
    "dbreed") launch_dbreed ;; 
    "dassault") launch_dassault ;; 
    "darkseal") launch_darkseal ;; 
    "cyvern") launch_cyvern ;; 
    "cybots") launch_cybots ;; 
    "ctribe") launch_ctribe ;; 
    "csclub") launch_csclub ;; 
    "crsword") launch_crsword ;; 
    "crswd2bl") launch_crswd2bl ;; 
    "crimfght") launch_crimfght ;; 
    "cotton") launch_cotton ;; 
    "contra") launch_contra ;; 
    "congo") launch_congo ;; 
    "commando") launch_commando ;; 
    "columns") launch_columns ;; 
    "cleopatr") launch_cleopatr ;; 
    "ckongpt2") launch_ckongpt2 ;; 
    "ckong") launch_ckong ;; 
    "citycon") launch_citycon ;; 
    "circusc") launch_circusc ;; 
    "choplift") launch_choplift ;; 
    "chinagat") launch_chinagat ;; 
    "chasehq") launch_chasehq ;; 
    "chaknpop") launch_chaknpop ;; 
    "centiped") launch_centiped ;; 
    "cclimber") launch_cclimber ;; 
    "ccastles") launch_ccastles ;; 
    "cawing") launch_cawing ;; 
    "carnival") launch_carnival ;; 
    "captcomm") launch_captcomm ;; 
    "captaven") launch_captaven ;; 
    "cabal") launch_cabal ;; 
    "bzone") launch_bzone ;; 
    "bwidow") launch_bwidow ;; 
    "burningf") launch_burningf ;; 
    "buckrog") launch_buckrog ;; 
    "bublbobl") launch_bublbobl ;; 
    "bublbob2") launch_bublbob2 ;; 
    "bubbles") launch_bubbles ;; 
    "btoads") launch_btoads ;; 
    "btime") launch_btime ;; 
    "bstars2") launch_bstars2 ;; 
    "bstars") launch_bstars ;; 
    "brkthru") launch_brkthru ;; 
    "breakrev") launch_breakrev ;; 
    "boogwing") launch_boogwing ;; 
    "bongo") launch_bongo ;; 
    "bombjack") launch_bombjack ;; 
    "bogeyman") launch_bogeyman ;; 
    "bnj") launch_bnj ;; 
    "blswhstl") launch_blswhstl ;; 
    "blstroid") launch_blstroid ;; 
    "bloodbro") launch_bloodbro ;; 
    "blktiger") launch_blktiger ;; 
    "blazstar") launch_blazstar ;; 
    "bjourney") launch_bjourney ;; 
    "bionicc") launch_bionicc ;; 
    "biomtoy") launch_biomtoy ;; 
    "bgaregga") launch_bgaregga ;; 
    "berzerk") launch_berzerk ;; 
    "bbros") launch_bbros ;; 
    "bbmanw") launch_bbmanw ;; 
    "batsugun") launch_batsugun ;; 
    "batrider") launch_batrider ;; 
    "batman") launch_batman ;; 
    "batcir") launch_batcir ;; 
    "bankp") launch_bankp ;; 
    "bangbead") launch_bangbead ;; 
    "badlands") launch_badlands ;; 
    "baddudes") launch_baddudes ;; 
    "avspirit") launch_avspirit ;; 
    "avsp") launch_avsp ;; 
    "avengers") launch_avengers ;; 
    "aurail") launch_aurail ;; 
    "atetris") launch_atetris ;; 
    "astormu") launch_astormu ;; 
    "astorm") launch_astorm ;; 
    "asteroid") launch_asteroid ;; 
    "asterix") launch_asterix ;; 
    "astdelux") launch_astdelux ;; 
    "armwrest") launch_armwrest ;; 
    "armorcar") launch_armorcar ;; 
    "arknoid2") launch_arknoid2 ;; 
    "arkanoid") launch_arkanoid ;; 
    "archrivl") launch_archrivl ;; 
    "aquajack") launch_aquajack ;; 
    "aof3") launch_aof3 ;; 
    "aof2") launch_aof2 ;; 
    "aof") launch_aof ;; 
    "androdun") launch_androdun ;; 
    "amidar") launch_amidar ;; 
    "altbeast") launch_altbeast ;; 
    "alpham2") launch_alpham2 ;; 
    "aligator") launch_aligator ;; 
    "aliensyn") launch_aliensyn ;; 
    "aliens") launch_aliens ;; 
    "alcon") launch_alcon ;; 
    "akatana") launch_akatana ;; 
    "ajax") launch_ajax ;; 
    "airwolf") launch_airwolf ;; 
    "agallet") launch_agallet ;; 
    "aerofgt") launch_aerofgt ;; 
    "actfancr") launch_actfancr ;; 
    "aburner2") launch_aburner2 ;; 
    "2020bb") launch_2020bb ;; 
    "1944") launch_1944 ;; 
    "1943kai") launch_1943kai ;; 
    "1943") launch_1943 ;; 
    "1942") launch_1942 ;; 
    "1941") launch_1941 ;; 
    "64street") launch_64street ;; 
    "19xx") launch_19xx ;; 
    "3wonders") launch_3wonders ;; 
    "3countb") launch_3countb ;; 
    "zupapa") launch_zupapa ;; 
    "zookeep") launch_zookeep ;; 
    "zerowing") launch_zerowing ;; 
    "zedblade") launch_zedblade ;; 
    "yiear") launch_yiear ;; 
    "xybots") launch_xybots ;; 
    "xmvsf") launch_xmvsf ;; 
    "xmultipl") launch_xmultipl ;; 
    "xmen") launch_xmen ;; 
    "wwfwfest") launch_wwfwfest ;; 
    "vendettan") launch_vendettan ;; 
    "tmnt2") launch_tmnt2 ;; 
    "tmnt") launch_tmnt ;; 
    "ssriders") launch_ssriders ;; 
    "slammast") launch_slammast ;; 
    "simpsons") launch_simpsons ;; 
    "ninjak") launch_ninjak ;; 
    "shangon") launch_shangon ;; 
    "shadfrce") launch_shadfrce ;; 
    "mainevt") launch_mainevt ;; 
    "gauntlet") launch_gauntlet ;; 
    "gaunt2") launch_gaunt2 ;; 
    "footchmp") launch_footchmp ;; 
    "ffightae") launch_ffightae ;; 
    "dino") launch_dino ;; 
    "captavene") launch_captavene ;; 
    "bucky") launch_bucky ;; 
    "brapboys") launch_brapboys ;; 
    "armwar") launch_armwar ;; 
    "3on3dunk") launch_3on3dunk ;; 
    "ms_pac_man_maze_madness") launch_ms_pac_man_maze_madness ;; 
    "virtua_tennis") launch_virtua_tennis ;; 
    "nfl_blitz_2000") launch_nfl_blitz_2000 ;; 
    "nba_showtime") launch_nba_showtime ;; 
    "gauntlet_legends") launch_gauntlet_legends ;;
	"micro_machines_2") launch_micro_machines_2 ;; 
	"gauntlet_iv") launch_gauntlet_iv ;;  
	"RetroArch") launch_retroarch ;;
    # Add more cases for other game titles
    *) default_launch ;;
esac


sync

# Make sure we attempt to restore the original res incase we down resed
set_res_native

# Ensure we default back to our original lib paths
revert_lib_path

# Re-launch menu after execution of a game finishes, we should get here after the game block ends.
# Make sure we add an ampersand to prevent this from hanging.
/mnt/udisk/sdl/a1up_menu
