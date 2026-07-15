#!/usr/bin/bash

sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/holo-alias /usr/bin/holo-alias
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/holo-update /usr/bin/holo-update
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/start-gamescope-session /usr/bin/start-gamescope-session
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/steam-http-loader /usr/bin/steam-http-loader
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/steamos-firmware-update /usr/bin/steamos-firmware-update
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/steamos-select-branch /usr/bin/steamos-select-branch
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/bin/steamos-session-select /usr/bin/steamos-session-select


sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/lib/steamos/gamescope-session /usr/lib/steamos/gamescope-session
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/lib/steamos/steam-launcher /usr/lib/steamos/steam-launcher
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/lib/steamos/steam-set-session /usr/lib/steamos/steam-set-session
sudo install -D -m 755 $HOME/Downloads/gamescope-session-cachyos/usr/lib/steamos/steam-short-session-tracker /usr/lib/steamos/steam-short-session-tracker
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/steamos/steamos-shellutil.sh /usr/lib/steamos/steamos-shellutil.sh


sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/cachyos-gamescope-autologin.service /usr/lib/systemd/user/cachyos-gamescope-autologin.service
#sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/galileo-mura-setup.service /usr/lib/systemd/user/galileo-mura-setup.service
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/gamescope-mangoapp.service /usr/lib/systemd/user/gamescope-mangoapp.service
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/gamescope-session.service /usr/lib/systemd/user/gamescope-session.service
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/gamescope-session.target /usr/lib/systemd/user/gamescope-session.target
sudo mkdir -p /usr/lib/systemd/user/graphical-session.target.wants/ && sudo ln -sf /usr/lib/systemd/user/cachyos-gamescope-autologin.service /usr/lib/systemd/user/graphical-session.target.wants/cachyos-gamescope-autologin.service
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/ibus-gamescope.service /usr/lib/systemd/user/ibus-gamescope.service
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/steam-launcher.service /usr/lib/systemd/user/steam-launcher.service
#sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/lib/systemd/user/steam-notif-daemon.service /usr/lib/systemd/user/steam-notif-daemon.service


sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/share/applications/gamescope-mimeapps.list /usr/share/applications/gamescope-mimeapps.list
sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/share/applications/steam_http_loader.desktop /usr/share/applications/steam_http_loader.desktop


sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/share/polkit-1/actions/org.cachyos.set.session.policy /usr/share/polkit-1/actions/org.cachyos.set.session.policy


sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/share/wayland-sessions/gamescope-session.desktop /usr/share/wayland-sessions/gamescope-session.desktop


sudo install -D -m 644 $HOME/Downloads/gamescope-session-cachyos/usr/share/xdg-desktop-portal/gamescope-portals/gamescope-portals.conf /usr/share/xdg-desktop-portal/gamescope-portals/gamescope-portals.conf

# Ejecutar después de los 'install'
systemctl --user daemon-reload
