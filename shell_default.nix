{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [ fish ];

  shellHook = ''
    # This runs when the shell starts; you can add any custom logic here if needed
    export SHELL="${pkgs.fish}/bin/fish"
    exec "${pkgs.fish}/bin/fish"
  '';
}

