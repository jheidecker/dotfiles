
local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'catppuccin-mocha'
config.colors = {
  scrollbar_thumb = '43465A'
}

config.initial_cols = 120
config.initial_rows = 30

config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.font_size = 13
config.default_cursor_style = 'BlinkingBar'

config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

config.enable_scroll_bar = true

config.bold_brightens_ansi_colors = 'BrightOnly'

-- and finally, return the configuration to wezterm
return config