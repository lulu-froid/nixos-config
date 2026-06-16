{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      cleanup = "sudo nix-collect-garbage -d";
      editconfig = "kate /home/lucien/nixos-config";
      rebuild = "sudo nixos-rebuild switch --flake /home/lucien/nixos-config#desktop";
      reboot = "sudo reboot";
      shutdown = "sudo poweroff";
      updatepkgs = "sudo nix-channel --update && sudo nix-env -u '*'";
      poule = "git pull";
      };
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "kubectl"
        "helm"
        "branch"
        "git"
        "qrcode"
        "python"
        "history"
        "gitignore"
        "docker"
        "docker-compose"
        "ssh"
        "z"
      ];
    };
  };
  users.defaultUserShell = pkgs.zsh;
}
