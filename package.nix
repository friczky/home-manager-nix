{ config, pkgs, lib, ... }:
#let
#  unstable = import (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/nixpkgs-unstable)
#  { config = config.nixpkgs.config; };
#in
#using unstable means regular updates, ie more data usage
{
  imports = [
    # ./git.nix
    # ./bat.nix
    # ./mpv.nix
    ./pkgs/nvim.nix
    # ./htop.nix
    # ./kitty.nix
    ./pkgs/fonts.nix
    # ./mcfly.nix
    # ./zathura.nix
    # ./redshift.nix
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
