{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "katifetch";
  version = "13.1";

  src = pkgs.fetchFromGitHub {
    owner = "ximimoments";
    repo = "katifetch";
    rev = "main";
    sha256 = "sha256-X1LDKCadIFlIWOihU+JP1P71xQWE9vbwSyedMzsrGeI=";
  };

installPhase = ''
    mkdir -p $out/bin $out/share/katifetch
    
    # Copy files
    cp -r . $out/share/katifetch/
    
    # Ensure the main script is executable
    chmod +x $out/share/katifetch/katifetch.sh
    
    # Create a robust wrapper
    echo "#!/usr/bin/env bash" > $out/bin/katifetch
    echo "cd $out/share/katifetch && ./katifetch.sh" >> $out/bin/katifetch
    
    chmod +x $out/bin/katifetch
  '';
}
