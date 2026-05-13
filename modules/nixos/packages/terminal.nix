{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fastfetch
    btop
    cmatrix
    curl
    nix-du
    tree
    ani-cli
  ];
}
