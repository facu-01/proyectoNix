let
  pkgs = import <nixpkgs> { };
  mainPkgs = with pkgs; [
    rnix-lsp #para nix features
    yarn
   nodejs-16_x

  ];

in
pkgs.mkShell {
  packages = [
    mainPkgs
  ];
  
  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
  '';
}
