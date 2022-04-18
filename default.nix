let
  pkgs = import <nixpkgs> { };

in
pkgs.mkShell {  
  shellHook = ''
   git config --global user.name "Facundo Lucero"
   git config --global user.email "facundon.lucero@alumnos.frm.utn.edu.ar"
  '';
}
