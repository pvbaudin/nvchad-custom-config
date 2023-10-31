---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  changed_themes = {
    chadracula = {
     base_16 = {
        -- base0E = "#5469e8",
        -- base03 = "#5469e8", 
        -- base00 = "#5469e8",
        -- base01 = "#5469e8",
        -- base02 = "#5469e8",
        -- base03 = "#5469e8",
        -- base04 = "#5469e8",
        -- base05 = "#5469e8",
        -- base06 = "#5469e8",
        -- base07 = "#5469e8",
        -- base08 = "#5469e8",
        -- base09 = "#5469e8",
        -- base0A = "#5469e8",
        -- base0B = "#5469e8",
        -- base0C = "#5469e8",
        -- base0D = "#5469e8",
        -- base0E = "#5469e8",
        -- base0F = "#5469e8",

      },
      base_30      =  {
        white          =  "#F8F8F2",
        darker_black   =  "#222430",
        black          =  "#282A36",  --  nvim  bg
        black2         =  "#2d303e",
        -- one_bg         =  "#373844",  --  real  bg     of    onedark
        -- one_bg2        =  "#44475a",
        -- one_bg3        =  "#565761",
        -- one_bg         =  "#5469e8",  --  real  bg     of    onedark
        one_bg2        =  "#222430",
        -- one_bg3        =  "#5469e8",
        grey           =  "#5e5f69",
        grey_fg        =  "#666771",
        grey_fg2       =  "#6e6f79",
        light_grey     =  "#73747e",
        red            =  "#ff7070",
        baby_pink      =  "#ff86d3",
        pink           =  "#FF79C6",
        line           =  "#3c3d49",  --  for   lines  like  vertsplit
        green          =  "#50fa7b",
        vibrant_green  =  "#5dff88",
        nord_blue      =  "#8b9bcd",
        blue           =  "#a1b1e3",
        yellow         =  "#F1FA8C",
        sun            =  "#FFFFA5",
        purple         =  "#BD93F9",
        dark_purple    =  "#BD93F9",
        teal           =  "#92a2d4",
        orange         =  "#FFB86C",
        cyan           =  "#8BE9FD",
        statusline_bg  =  "#2d2f3b",
        lightbg        =  "#41434f",
        pmenu_bg       =  "#b389ef",
        folder_bg      =  "#BD93F9",
      }
    },
  },
  theme = "chadracula",
  -- theme_toggle = { "chadracula", "one_light" },

  -- hl_override = highlights.override,
  -- hl_add = highlights.add,


}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
