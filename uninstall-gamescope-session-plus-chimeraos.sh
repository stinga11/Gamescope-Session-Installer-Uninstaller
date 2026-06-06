#!/usr/bin/bash

sudo rm /usr/bin/export-gpu
sudo rm /usr/bin/gamescope-session-plus
sudo rm /usr/lib/systemd/user/gamescope-session-plus@.service
sudo rm /usr/lib/systemd/user/gamescope-session.target
sudo rm /usr/share/gamescope-session-plus/device-quirks
sudo rm /usr/share/gamescope-session-plus/gamescope-session-plus
sudo rm /usr/share/gamescope/scripts/50-custom/50-disable-explicit-sync.lua
sudo rm /usr/bin/jupiter-biosupdate
sudo rm /usr/bin/steam-http-loader
sudo rm /usr/bin/steamos-polkit-helpers/jupiter-biosupdate
sudo rm /usr/bin/steamos-polkit-helpers/steamos-select-branch
sudo rm /usr/bin/steamos-polkit-helpers/steamos-update
sudo rm /usr/bin/steamos-select-branch
sudo rm /usr/bin/steamos-session-select
sudo rm /usr/bin/steamos-update
sudo rm /usr/share/applications/gamescope-mimeapps.list
sudo rm /usr/share/applications/steam_http_loader.desktop
sudo rm /usr/share/gamescope-session-plus/sessions.d/steam
sudo rm /usr/share/polkit-1/actions/org.chimeraos.update.policy
sudo rm /usr/share/wayland-sessions/gamescope-session-steam.desktop
sudo rm /usr/share/wayland-sessions/gamescope-session.desktop

sudo rmdir /usr/share/gamescope/scripts/50-custom 2>/dev/null
sudo rmdir /usr/bin/steamos-polkit-helpers 2>/dev/null
sudo rmdir /usr/share/gamescope-session-plus/sessions.d 2>/dev/null
sudo rmdir /usr/share/gamescope-session-plus/ 2>/dev/null

# Notificar al sistema los cambios
systemctl --user daemon-reload

echo "Desinstalación completada y systemd recargado."
