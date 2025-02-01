{ pkgs, ... }: {
  plugins.vimtex = {
    enable = true;
    texlivePackage = pkgs.texlive.combined.scheme-full;
    zathuraPackage = pkgs.zathura;
    settings = { view_method = "zathura"; };
  };
}
