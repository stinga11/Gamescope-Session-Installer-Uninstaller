#!/usr/bin/bash

sudo rm /usr/bin/holo-alias
sudo rm /usr/bin/holo-update
sudo rm /usr/bin/start-gamescope-session
sudo rm /usr/bin/steam-http-loader
sudo rm /usr/bin/steamos-firmware-update
sudo rm /usr/bin/steamos-select-branch
sudo rm /usr/bin/steamos-session-select


sudo rm /usr/lib/steamos/gamescope-session
sudo rm /usr/lib/steamos/steam-launcher
sudo rm /usr/lib/steamos/steam-set-session
sudo rm /usr/lib/steamos/steam-short-session-tracker
sudo rm /usr/lib/steamos/steamos-shellutil.sh


sudo rm /usr/lib/systemd/user/cachyos-gamescope-autologin.service
sudo rm /usr/lib/systemd/user/galileo-mura-setup.service
sudo rm /usr/lib/systemd/user/gamescope-mangoapp.service
sudo rm /usr/lib/systemd/user/gamescope-session.service
sudo rm /usr/lib/systemd/user/gamescope-session.target
sudo rm /usr/lib/systemd/user/gamescope-xbindkeys.service
sudo rm /usr/lib/systemd/user/graphical-session.target.wants/cachyos-gamescope-autologin.service
sudo rm /usr/lib/systemd/user/ibus-gamescope.service
sudo rm /usr/lib/systemd/user/steam-launcher.service
sudo rm /usr/lib/systemd/user/steam-notif-daemon.service


sudo rm /usr/share/applications/gamescope-mimeapps.list
sudo rm /usr/share/applications/steam_http_loader.desktop


sudo rm /usr/share/polkit-1/actions/org.cachyos.set.session.policy


sudo rm /usr/share/wayland-sessions/gamescope-session.desktop


sudo rm /usr/share/xdg-desktop-portal/gamescope-portals/gamescope-portals.conf

sudo rmdir /usr/lib/steamos 2>/dev/null
sudo rmdir /usr/lib/systemd/user/graphical-session.target.wants 2>/dev/null
sudo rmdir /usr/share/xdg-desktop-portal/gamescope-portals 2>/dev/null

# Notificar al sistema los cambios
systemctl --user daemon-reload

echo "Desinstalación completada y systemd recargado."
