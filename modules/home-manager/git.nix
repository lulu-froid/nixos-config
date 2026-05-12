{ ... }:

{
  programs.git = {
    enable = true;
    config = {
      user.name = "Lucien";
      user.email = "lucien.glasson@gmail.com";
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
