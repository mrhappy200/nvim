{ lib, config, ... }: {
  options = {
    nvim-latex.enable = lib.mkEnableOption "Enable nvim-latex module";
  };
  config =
    lib.mkIf config.nvim-latex.enable { plugins.vimtex = { enable = true; }; };
}
