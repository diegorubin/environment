local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font =
  wezterm.font('Fantasque Sans Mono', {style='Normal'})
config.font_size = 12.0

config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.8

config.color_scheme = 'Aci (Gogh)'

config.keys = {
  {
    key = 't',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnWindow,
  },
}

return config
