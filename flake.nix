{
  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      packages.${system}.default = pkgs.writeShellApplication {
        name = "aws-vault";
        text = builtins.readFile ./aws-vault;
      };
    };
}
