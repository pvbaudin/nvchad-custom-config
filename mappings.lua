---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

M.lspconfig = {
  plugin = true,
  n = {
    ["<Leader>cs"] = {
      function()
        local buf = vim.api.nvim_get_current_buf()
        local ft = vim.api.nvim_buf_get_option(buf, "filetype")
        if ft == "c" or ft == "cpp" then
          vim.cmd [[ClangdSwitchSourceHeader]]
        end
      end,
      "Clangd Switch Source/Header",
    }
  }
}

return M
