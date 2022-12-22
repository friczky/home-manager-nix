{ config, pkgs, lib, ... }:
#let
#  unstable = import (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/nixpkgs-unstable)
#  { config = config.nixpkgs.config; };
#in
#using unstable means regular updates, ie more data usage
{
  imports = [
    ./pkgs/nvim.nix
    ./pkgs/fonts.nix
  ];

  # services.kdeconnect = {
  #   enable = true;
  #   indicator = true;
  # };

  home.packages = with pkgs; [
    ## your package
    burpsuite
    filezilla
    php

    #graphics	
	  inkscape gimp krita

  ];

   #fish 
  programs.fish= {
    enable=true;
    shellAliases = {
	ll = "ls -al";
 	du = "${pkgs.du-dust}/bin/dust";
	bt = "sudo docker exec -ti aapanel bash 'bt'";
	php = "sudo docker exec -ti aapanel php";
	composer = "sudo docker exec -ti aapanel composer";
  ytmp3 = "yt-dlp -f 'ba' -x --audio-format mp3";
   };
  };
  
  nixpkgs.config.allowUnfree = true;
}
