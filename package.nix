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
    ./pkgs/fish.nix
  ];


  home.packages = with pkgs; [
    ## your package
    btop
    dbeaver
    
    #term
    fish
    
    #android tools
    android-tools
    scrcpy
    
    #developer
    git
    #go
    terraform
    git-cola
    kubectl
    helix

    #cachix
    cachix gtk3

    #nodejs
    yarn
    nodePackages_latest.vue-cli
    nodePackages_latest.elasticdump

    #php 8.1
    php
    php81Packages.composer
    
    #youtube
    yt-dlp
    
    freshfetch
    
    #security
    sqlmap subfinder metasploit burpsuite 
    doctl s3cmd

    #database
    jetbrains.datagrip
    
  ];


  
  nixpkgs.config.allowUnfree = true;
  

}
