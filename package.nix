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
    ./pkgs/git.nix
  ];



  home.packages = with pkgs; [
    ## your package
    burpsuite
    filezilla
    postman
    xorg.xhost
    btop
    brave

    ##vivaldi browser
    vivaldi vivaldi-ffmpeg-codecs vivaldi-widevine

    #graphics	
	  inkscape gimp krita libsForQt5.qtstyleplugin-kvantum

    #cachix
    cachix

    #php 8.1
    php
    php81Packages.composer

  ];

   #fish 
  programs.fish= {
    enable=true;
    shellAliases = {
        ll = "ls -al";
        du = "${pkgs.du-dust}/bin/dust";
        bt = "sudo docker exec -ti aapanel bash 'bt'";
        # composer = "sudo docker exec -ti aapanel composer";
        mysql = "sudo docker exec -ti aapanel mysql";
        ytmp3 = "yt-dlp -f 'ba' -x --audio-format mp3";
        };
  };
  
  nixpkgs.config.allowUnfree = true;
}
