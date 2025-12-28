{ config, lib, pkgs, ... }:
{
environment.systemPackages = with pkgs; [

 ### Basic Linux Programms
    gtkgreet
    bluez
    polkit
    libnotify

 ### Linux Utilities
    git
    kitty
    grim
    slurp
    wofi
    vim 
    neovim
    neofetch
    fastfetch
    sway
    unzip
    rofi
    xfce.thunar
    xournalpp
    razer-cli
    kdePackages.okular
    traceroute
    starship
    feh
    melonDS
    rofi-bluetooth
    dunst			# Notification Daemon
    alsa-utils
    pstree
    rofi-power-menu
    wl-clipboard		# Wayland Clipboard client
    vesktop			# Discord client with built-in Vencord
    firefox
    imv
    man
    wpaperd
    mako
    swaybg
    wbg
    waytrogen
    killall
    waypaper
    

 ### Systemwide Dependencies

 ### Hyprland Ecosystem
    # hyprpaper
    hyprcursor
    rose-pine-hyprcursor
    waybar
    pywal

 ### Uni Programms
    conda
	(python313.withPackages (ps: with ps; [
		pandas
		tensorflow
		dbus-python
		ipykernel
		jupyter
	]))

 ### Security / Pentesting
    wireshark
    nmap
    ghidra
    metasploit
    dnslookup
    spek

 ### Funny Programms
    cmatrix
    clock-rs
    cbonsai
    asciiquarium-transparent
    htop
    zenith
    pipes
    gotop
    broot
    speedtest-cli
    glances

 ### Productivity Apps
    libreoffice
    vlc

 ### Fonts
    dejavu_fonts

 ### Network Apps
    networkmanagerapplet
    openvpn
    rofi-vpn
    rofi-network-manager
    wirelesstools
    networkmanager-openvpn
    networkmanager
    networkmanager_dmenu


 ### Games & Socials
    discord
    spotify
    brave
    vivaldi
    prismlauncher
    starsector
    optifinePackages.optifine_1_19_4

 ### Dependencies
 	python313Packages.openrazer
	xorg.xrdb

];
}
