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
    thunar
    xournalpp
    razer-cli
    kdePackages.okular
    traceroute
    starship
    feh
    melonDS
    rofi-bluetooth
    alsa-utils
    pstree
    rofi-power-menu		# what it sais
    wl-clipboard		# Wayland Clipboard client
    firefox			# what do you think ?
    imv
    man				# manpages
    wpaperd			# Wallpaper Utilitie
    mako			# Notification Daemon
    swaybg
    wbg
    waytrogen
    killall
    waypaper
    speedtest
    quickshell			# Desktop Shell Toolkit
    audacity
    ffmpeg
    unixtools.ifconfig
    ripgrep
    gnumake
    gcc
    

 ### Systemwide Dependencies
    nodejs_25
    tree-sitter
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
   # ghidra
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
