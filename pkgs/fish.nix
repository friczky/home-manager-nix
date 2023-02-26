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
        update = "sudo pacman -Syu";
        instal = "sudo pacman -S";
        install = "sudo yay -S";
        dbeaver = "nohup dbeaver &";
        vpnon = "warp-cli connect";
        vpnoff = "warp-cli disconnect";
        vpnrestart ="sudo systemctl restart warp-svc.service";
        hms = "home-manager switch";
        trf = "terraform";
        dinit = "devenv init";
        dup = "devenv up";
        remove = "sudo pacman -S";
        dr = "docker run -d";
        dc = "docker-compose -f";
        dcu = "docker-compose -f docker-compose.yml up -d";
        dcd = "docker-compose -f docker-compose.yml down";
        dps = "docker ps";
        mongo ="docker exec -ti mongodb mongo";
        };
  };
}
