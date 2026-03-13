{ config, lib, pkgs, ... }:
{
environment.systemPackages = with pkgs; [

 ### Basic Linux Programms
   gtkgreet       # Login manager(?)
   bluez          # Audioplayer software/drivers(?)
   polkit         # permission software(?)
   libnotify      # not sure

 ### Linux Utilities
   git            # Software Versioning tool
   kitty          # Terminal
   grim           # Screenshot utility
   slurp          # not sure [CHECK IF NEEDED]
   neovim         # Texteditor
   fastfetch      # Displays system info
   sway           # not sure [CHECK IF NEEDED]
   unzip          # unzip .zip files
   rofi           # GUI for different managing different aspects of the machine
   thunar         # Filemanager
   xournalpp      # Xournal (Okular alternative)
   kdePackages.okular   # pdf viewer
   traceroute     # trace packages across gateways
   starship       # Terminal colorizier for Path and prompt
   rofi-bluetooth # bluetooth gui based on rofi
   alsa-utils     # linux utlity pack
   pstree         # lists programms
   rofi-power-menu		# what it sais
   wl-clipboard	# Wayland Clipboard client
   firefox			# what do you think ?
   man				# manpages
   mako			   # Notification Daemon
   swaybg         # Wallpaper Utility
   killall        # killall linux utlity
   speedtest-cli  # Speedtest cli
   quickshell		# Desktop Shell Toolkit
   audacity       # Audio Editor
   ffmpeg         # Video editor and creator 
   unixtools.ifconfig   # 
   ripgrep        # grep alternative
   gnumake        # make
   gcc            # Compiler
   uxplay         # Airplay Reciever emulator
   avahi          # Utility for Network changes
   file           # Read Information of the File (charset, filetype etc.)
   fileinfo       # Read Fileinfo (Metadata etc.)
   stress         # Stress-test for different types of stress
   metadata       # Read Metadata of files
   pdftag         # Metadata Reader of PDFs
   vscodium-fhs   # Open-Source Implementation of VSCode
   shotcut        # Video editing Software
   kdePackages.kdenlive # Video editing Softwae


 ### Systemwide Dependencies
   nodejs_25      # dependencie for Neovim Setup
   tree-sitter    # Neovim Plugin

 ### Hyprland Ecosystem
   hyprcursor     # Cursor Hyprland intergration [CHECK IF NEEDED]
   rose-pine-hyprcursor # Cursor
   waybar         # Statusbar

 ### Uni Programms
   python315      # Python 3.15

 ### Security / Pentesting
   wireshark      # Network Sniffing
   nmap           # Portscanning
   ghidra         # Reverse-Engineering
   metasploit     # Exploit Framework
   dnslookup      # DNS Lookup service
   spek           # Acoustic Spectrum Analyzer
   hashcat        # Hashbreaker

 ### Funny Programms
   cmatrix        # Displays a matrix-like overlay using letters and numbers in the terminal
   clock-rs       # Displays a clock
   cbonsai        # Displays a Bonsai using Ascii-art
   asciiquarium-transparent # Displays an Aquarium using Ascii art
   htop           # Taskmanager-like programm
   zenith         # Taskmanger/htop like programm
   pipes
   gotop
   broot
   glances

 ### Productivity Apps
   libreoffice    # Libreoffice Programm Collection
   vlc            # VLC Media Player

 ### Fonts
   dejavu_fonts   # Font package

 ### Network Apps
   networkmanagerapplet # Networkmanager (GUI?)
   openvpn        # VPN Utility
   rofi-vpn       # VPN Manager based on rofi
   rofi-network-manager # Networkmanager GUI based on rofi
   wirelesstools  # Network Utility Package
   networkmanager-openvpn  # OpenVPN Extension for the Networkmanager
   networkmanager # Networkmanager
   networkmanager_dmenu # Networkmanager (not sure what dmenu is)


 ### Games & Socials
   discord        # Messagin Platform
   brave          # Browser
   prismlauncher  # Minecraft Launcher
   starsector     # Starsector Game Launcher

 ### Dependencies
	xrdb           # not sure
   dotnetCorePackages.sdk_8_0-bin

];
}
