#!/bin/bash
# Requires windows' ColorTool.exe
# https://github.com/Microsoft/console/tree/master/tools/ColorTool#colortool
# Works with iTerm themes. Should be placed in windows side
# For more schemes, see: https://github.com/mbadolato/iTerm2-Color-Schemes
#
# Note: Unfortunatelly, calling the ColorTool executable from within the WSL
# is unable to change the CURRENT session colorscheme. The workaround then is
# every new session, set the default to a different color so that the next
# session will start with a different color.
# Update: MS added the -x command. Will keep earlier note for compatibility purposes

COLORTOOL_PATH="/mnt/c/Program\ Files/ColorTool/ColorTool.exe"

# -b => applies colorscheme to defaults, -x => applies to current wsl terminal
COLORTOOL_ARGS="-x -q"

COLOR_SCHEMES=(
#    'AtelierSulphurpool'
    # 'ayu'
    'Belafonte\ Night'
 #   'Calamity'
    'Chalk'
    # 'Cobalt\ Neon'
    'CrayonPonyFish'
    'DotGov'
    'Earthsong'
    'Fideloper'
    'FrontEndDelight'
    'Grass'
    'Hopscotch'
    'Jackie\ Brown'
    'Japanesque'
    'Lab\ Fox'
    'Misterioso'
    'N0tch2k'
    'OneHalfDark'
    # 'Red\ Planet'
    'Relaxed'
    'solarized_dark'
    'Sundried'
    'ToyChest'
    'Ubuntu'
    'Whimsy'
)

SCHEME_LIST_SIZE=${#COLOR_SCHEMES[@]}

# Command used to force new color if the randomized one is undesired
function termcolor {
    if [ $1 ]
    then
        COLOR_NAME=$1
    else
        COLOR_INDEX=$(($RANDOM % $SCHEME_LIST_SIZE))
        COLOR_NAME=${COLOR_SCHEMES[$COLOR_INDEX]}
    fi

    eval "$COLORTOOL_PATH $COLORTOOL_ARGS $COLOR_NAME"
}

termcolor
