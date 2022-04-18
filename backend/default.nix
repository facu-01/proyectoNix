let
  pkgs = import <nixpkgs> { };
  mainPkgs = with pkgs; [
    rnix-lsp #para nix features
    yarn
    ruby_3_1
  ];
  rubyPkgs = with pkgs.rubyPackages_3_1; [
    rails
    rubocop
    pg
  ];
in
pkgs.mkShell {
  packages = [
    mainPkgs
    rubyPkgs
  ];

}
