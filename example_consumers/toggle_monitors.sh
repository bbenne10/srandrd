#! /bin/bash
# Toggles between a known default monitor (LVDS1) and an external monitor.
# Makes use of both $SRANDRD_EVT_ACTION and $SRANDRD_EVT_MON
case "$SRANDRD_EVT_ACTION" in
    "connected")
        if [ "$SRANDRD_EVT_MON" != "LVDS1" ]; then
          xrandr --output "$SRANDRD_EVT_MON" --auto --primary --output LVDS1 --off
        fi
        ;;

    "disconnected")
        xrandr --output LVDS1 --auto --primary --output VIRTUAL1 --off
        ;;
esac
