#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SCRIPT="$DIR/encfs-db-corruption-monitor"

ARGS=$@
cat "$DIR/encfs-db-corruption-monitor.service" | sed "s@COMMAND@$SCRIPT@g" | sed "s@ARGS@$ARGS@g" > ~/.config/systemd/user/encfs-db-corruption-monitor.service

systemctl --user daemon-reload
systemctl --user enable  encfs-db-corruption-monitor
systemctl --user restart encfs-db-corruption-monitor
systemctl --user status  encfs-db-corruption-monitor
