{ config, pkgs, ... }:

{

# Enable the KDE Plasma Desktop Environment.
services.desktopManager.plasma6.enable = true;

# List packages installed in system profile.
environment.systemPackages = with pkgs; [
    neovim
    kitty
    brave
    nextcloud-client
    megasync
    keepassxc
    obs-studio
    github-desktop
    mpv
    qbittorrent
    spotify
    onlyoffice-desktopeditors
    yt-dlp
    imagemagick
    signal-desktop    
    syncthing
    syncthingtray
    rustdesk-flutter
    freefilesync
    vscodium

    # KDE STUFF
    krename
    kdePackages.dolphin-plugins
    kdePackages.ark
    kdePackages.kbackup
    kdePackages.kio-admin
    kdePackages.kate

  # Enable VirtualBox
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "y" ];

  # Extensions for VirtualBox
  virtualisation.virtualbox.host.enableExtensionPack = true;

}