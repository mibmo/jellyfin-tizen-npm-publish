{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    conch = {
      url = "github:mibmo/conch";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { conch, ... }:
    conch.load (
      { pkgs, ... }:
      {
        shell.packages = with pkgs; [
          act
          nodejs_22
        ];
      }
    );
}
