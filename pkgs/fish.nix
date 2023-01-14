{ config, pkgs, lib, ... }:

{
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
        gc = "git clone";
        gp = "git push";
        gcm = "git commit -m";
        gb = "git checkout";
        ga = "git add .";
        musik = "ncmpcpp";
        };
  };
}
