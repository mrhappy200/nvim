-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>lth"] = {
      function()
        require'rust-tools'.hover_actions.hover_actions()
      end,
      desc = "Hover actions",
    },
    ["<leader>ltmu"] = {
      function()
        local up = true
        require'rust-tools'.move_item.move_item(up)
      end,
      desc = "Move item up",
    },
    ["<leader>ltmd"] = {
      function()
        local down = false
        require'rust-tools'.move_item.move_item(down)
      end,
      desc = "Move item down",
    },
    ["<leader>ltr"] = {
      function()
        require'rust-tools'.runnables.runnables()
      end,
      desc = "Runnables"
    },
    ["<leader>lt"] = { name = "Rust-tools" },
    ["<leader>ltm"] = { name = "Move item" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
