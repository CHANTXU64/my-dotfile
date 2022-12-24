#!/usr/bin/env bash

# Add mode changed event

case "$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].type')" in
    bsp)
    yabai -m space --layout float && sketchybar -m --set yabai_mode icon="􀢌"
    ;;
    stack)
    yabai -m space --layout float && sketchybar -m --set yabai_mode icon="􀢌"
    ;;
    float)
    yabai -m space --layout bsp && sketchybar -m --set yabai_mode icon="􀏝"
    ;;
esac
