{ config, lib, pkgs, ... }:
{
environment.systemPackages = with pkgs; [

 ### Basic Linux Programms
    gtkgreet
    bluez
    polkit

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


 ### Systemwide Dependencies

 ### Hyprland Ecosystem
    hyprpaper
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

 ### Funny Programms
    cmatrix
    clock-rs

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


 ### Socials
    discord
    spotify
    brave
    vivaldi

 ### Dependencies
 	python313Packages.openrazer
	xorg.xrdb

];
}
