{
  # Highlight, edit, and navigate code
  # https://nix-community.github.io/nixvim/plugins/treesitter/index.html
  plugins.treesitter = {
    enable = true;

    settings = {
      # TODO: Don't think I need this as nixGrammars is true which should atuo install these???
      ensureInstalled =
        [ "bash" "c" "diff" "html" "lua" "luadoc" "markdown" "vim" "vimdoc" ];
      indent.enable = true;
    };

    # There are additional nvim-treesitter modules that you can use to interact
    # with nvim-treesitter. You should go explore a few and see what interests you:
    #
    #    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    #    - Show your current context: https://nix-community.github.io/nixvim/plugins/treesitter-context/index.html
    #    - Treesitter + textobjects: https://nix-community.github.io/nixvim/plugins/treesitter-textobjects/index.html
  };
}
