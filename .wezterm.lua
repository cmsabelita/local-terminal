-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.font_dirs = { "~/Library/Fonts" }
config.freetype_load_target = "HorizontalLcd"
config.font_size = 12
config.line_height = 1
config.font = wezterm.font("SauceCodePro Nerd Font", { weight = "DemiBold", stretch = "Normal" }) -- (AKA: SauceCodePro NF ExtraLight) /Users/mark/Library/Fonts/SauceCodeProNerdFont-ExtraLightItalic.ttf, CoreText
config.window_background_opacity = 0.88
config.initial_rows = 90
config.initial_cols = 200
config.cell_width = 1
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true

-- config.macos_window_background_blur =
-- config.window_background_opacity = 0.1
config.macos_window_background_blur = 7
config.keys = {
        {
                key = "e",
                mods = "CMD",
                action = act.PaneSelect({
                        alphabet = "asdf",
                }),
        },
        -- This will create a new split and run your default program inside it
        {
                key = "d",
                mods = "CMD",
                action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        {
                key = "p",
                mods = "CMD",
                action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
        },
}

return config
