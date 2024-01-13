local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

local is_windows = os.getenv("windir") ~= nil

print(is_windows)

if is_windows then
  config.default_domain = 'WSL:openSUSE-Tumbleweed'
end
config.font = wezterm.font 'GeistMono Nerd Font'
config.font_size = 15.0

config.color_scheme = 'rose-pine'

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

return config
