{ config, lib, pkgs, ... }:
{ # global  namespace
	nix.gc = {
		automatic = true;
		dates = "weekly";
		options = "--delete-older-than 30d";
	};
	system.autoUpgrade = {
	enable = true;
	dates = "03:00";
	flake = "/home/arvid/arcanes-dotfiles/myflakes";
	};

} # global namespace
