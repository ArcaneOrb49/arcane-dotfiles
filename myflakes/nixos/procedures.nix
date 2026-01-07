{ config, lib, pkgs, ... }:
{ # global  namespace
	nix.gc = {
		automatic = true;
		dates = "weekly";
		options = "--delete-older-than 30d";
	};

} # global namespace
