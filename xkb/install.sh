#!/bin/sh
set -e

mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}/xkb/rules"
mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols"
cp ./rules/evdev "${XDG_CONFIG_HOME:-$HOME/.config}/xkb/rules/evdev"
cp ./rules/evdev.xml "${XDG_CONFIG_HOME:-$HOME/.config}/xkb/rules/evdev.xml"
cp ./symbols/acp "${XDG_CONFIG_HOME:-$HOME/.config}/xkb/symbols/acp"
