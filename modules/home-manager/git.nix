{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Lucien";
        email = "lucien.glasson@gmail.com";
      };
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
