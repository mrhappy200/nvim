{
  # Useful plugin to show you pending keybinds.
  # https://nix-community.github.io/nixvim/plugins/which-key/index.html
  plugins.which-key = {
    enable = true;

    # Document existing key chains
    settings = {
      spec = [
        {
          __unkeyed-1 = "<leader>c";
          group = "[C]ode";
        }
        {
          __unkeyed-1 = "<leader>c_";
          hidden = true;
        }
        {
          __unkeyed-1 = "<leader>d";
          group = "[D]ocument";
        }
        {
          __unkeyed-1 = "<leader>d_";
          hidden = true;
        }
        {
          __unkeyed-1 = "<leader>h";
          group = "Git [H]unk";
        }
        {
          __unkeyed-1 = "<leader>h_";
          hidden = true;
        }
        {
          __unkeyed-1 = "<leader>r";
          group = "[R]ename";
        }
        {
          __unkeyed-1 = "<leader>r_";
          hidden = true;
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "[S]earch";
        }
        {
          __unkeyed-1 = "<leader>s_";
          hidden = true;
        }
        {
          __unkeyed-1 = "<leader>t";
          group = "[T]oggle";
        }
        {
          __unkeyed-1 = "<leader>t_";
          hidden = true;
        }
        {
          __unkeyed-1 = "<leader>w";
          group = "[W]orkspace";
        }
        {
          __unkeyed-1 = "<leader>w_";
          hidden = true;
        }
      ];
    };
  };
}
