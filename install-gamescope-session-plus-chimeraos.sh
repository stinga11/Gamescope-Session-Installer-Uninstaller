#!/usr/bin/bash

sudo install -D -m 755 $HOME/Downloads/gamescope-session-main/usr/bin/export-gpu /usr/bin/export-gpu
sudo install -D -m 755 $HOME/Downloads/gamescope-session-main/usr/bin/gamescope-session-plus /usr/bin/gamescope-session-plus
sudo install -D -m 644 $HOME/Downloads/gamescope-session-main/usr/lib/systemd/user/gamescope-session-plus@.service /usr/lib/systemd/user/gamescope-session-plus@.service
sudo install -D -m 644 $HOME/Downloads/gamescope-session-main/usr/lib/systemd/user/gamescope-session.target /usr/lib/systemd/user/gamescope-session.target
sudo install -D -m 644 $HOME/Downloads/gamescope-session-main/usr/share/gamescope-session-plus/device-quirks /usr/share/gamescope-session-plus/device-quirks
sudo install -D -m 755 $HOME/Downloads/gamescope-session-main/usr/share/gamescope-session-plus/gamescope-session-plus /usr/share/gamescope-session-plus/gamescope-session-plus
sudo install -D -m 644 $HOME/Downloads/gamescope-session-main/usr/share/gamescope/scripts/50-custom/50-disable-explicit-sync.lua /usr/share/gamescope/scripts/50-custom/50-disable-explicit-sync.lua
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/jupiter-biosupdate /usr/bin/jupiter-biosupdate
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steam-http-loader /usr/bin/steam-http-loader
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steamos-polkit-helpers/jupiter-biosupdate /usr/bin/steamos-polkit-helpers/jupiter-biosupdate
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steamos-polkit-helpers/steamos-select-branch /usr/bin/steamos-polkit-helpers/steamos-select-branch
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steamos-polkit-helpers/steamos-update /usr/bin/steamos-polkit-helpers/steamos-update
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steamos-select-branch /usr/bin/steamos-select-branch
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steamos-session-select /usr/bin/steamos-session-select
sudo install -D -m 755 $HOME/Downloads/gamescope-session-steam-main/usr/bin/steamos-update /usr/bin/steamos-update
sudo install -D -m 644 $HOME/Downloads/gamescope-session-steam-main/usr/share/applications/gamescope-mimeapps.list /usr/share/applications/gamescope-mimeapps.list
sudo install -D -m 644 $HOME/Downloads/gamescope-session-steam-main/usr/share/applications/steam_http_loader.desktop /usr/share/applications/steam_http_loader.desktop
sudo install -D -m 644 $HOME/Downloads/gamescope-session-steam-main/usr/share/gamescope-session-plus/sessions.d/steam /usr/share/gamescope-session-plus/sessions.d/steam
sudo install -D -m 644 $HOME/Downloads/gamescope-session-steam-main/usr/share/polkit-1/actions/org.chimeraos.update.policy /usr/share/polkit-1/actions/org.chimeraos.update.policy
sudo install -D -m 644 $HOME/Downloads/gamescope-session-steam-main/usr/share/wayland-sessions/gamescope-session-steam.desktop /usr/share/wayland-sessions/gamescope-session-steam.desktop
sudo ln -sf /usr/share/wayland-sessions/gamescope-session-steam.desktop /usr/share/wayland-sessions/gamescope-session.desktop
