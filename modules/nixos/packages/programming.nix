{ ... }:

{
  environment.systemPackages = with pkgs; [
    git
    python314
    jdk

    #c/c++
    valgrind
    cmake
    gnumake
    gcc
    clang-tools
    gurobi
  ];
}
