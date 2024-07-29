#!/bin/sh
rm /home/deck/.config/systemd/user/syncthing.service
systemctl --user disable syncthing
systemctl --user stop syncthing
