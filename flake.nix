{
  description = "Katifetch: A highly customizable fetch script";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: 
  let
    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    pkgs = forAllSystems (system: nixpkgs.legacyPackages.${system});
  in {
    packages = forAllSystems (system: {
      katifetch = pkgs.${system}.callPackage ./default.nix {};
    });

    defaultPackage = forAllSystems (system: self.packages.${system}.katifetch);
    
    devShells = forAllSystems (system: {
      default = pkgs.${system}.mkShell {
        packages = [ self.packages.${system}.katifetch ];
      };
    });
  };
}
