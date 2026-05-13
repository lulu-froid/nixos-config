{ lib, ... }:

{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    matchBlocks = {
      "github.com" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/github";
      };
      "cremi" = {
        hostname = "sshproxy.emi.u-bordeaux.fr";
        user = "etfacca";
        identityFile = "~/.ssh/ub";
        extraOptions = {
          ForwardAgent = "yes";
        };
        setEnv = {
          TERM = "xterm-256color";
        };
      };
      ${
      lib.concatStringsSep " " [
        "boursouf"
        "quirrell"
        "ombrage"
        "hagrid"
        "cocatrix"
        "mcgonagall"
        "trelawney"
        "jolicoeur"
        "xeonphi"
      ]
      } =
        {
          user = "etfacca";
          identityFile = "~/.ssh/ub";
          proxyJump = "cremi";
          extraOptions = {
            ForwardAgent = "yes";
          };
          setEnv = {
            TERM = "xterm-256color";
          };
        };
    };
  };
}
