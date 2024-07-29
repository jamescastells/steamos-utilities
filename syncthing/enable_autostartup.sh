#!/bin/sh
mkdir /home/deck/.config/systemd
mkdir /home/deck/.config/systemd/user
wget https://raw.githubusercontent.com/jamescastells/steamos-utilities/main/syncthing/syncthing.service
mv syncthing.service /home/deck/.config/systemd/user/
systemctl --user enable syncthing
systemctl --user start syncthing
