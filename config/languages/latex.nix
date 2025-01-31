{ pkgs, lib, config, ... }: {
  options = {
    nvim-latex.enable = lib.mkEnableOption "Enable nvim-latex module";
  };
  config = lib.mkIf config.nvim-latex.enable {
    plugins.vimtex = {
      enable = true;
      texlivePackage = pkgs.texlive.combined.scheme-full;
      settings = {
        view_method = "zathura";
        quickfix_open_on_warning = 0;
      };
    };
  };
}
