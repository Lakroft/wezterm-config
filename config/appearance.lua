local wezterm = require('wezterm')
local colors = require('colors.custom')
-- local fonts = require('config.fonts')

local backgrounds = {
   '/Users/vladimir.senchenko/.config/wezterm/Inadzuma.png',
   '/Users/vladimir.senchenko/.config/wezterm/Sumeru.png',
   '/Users/vladimir.senchenko/.config/wezterm/Mondstadt.png',
   '/Users/vladimir.senchenko/.config/wezterm/Liue.png',
}
math.randomseed(os.time())
local background_index = math.random(1, #(backgrounds))

return {
   animation_fps = 60,
   max_fps = 60,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',

   -- color scheme
   colors = colors,

   -- background
   background = {
      {
         source = { File = backgrounds[background_index] }, -- Random background on earch startup. -- IDK why, but relative path didn't work, only absolute
      },
      {
         source = { Color = colors.background },
         height = '100%',
         width = '100%',
         opacity = 0.87,
      },
   },

   -- scrollbar
   enable_scroll_bar = true,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false,
   tab_max_width = 25,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window
   window_padding = {
      left = 5,
      right = 10,
      top = 12,
      bottom = 7,
   },
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   inactive_pane_hsb = { 
      saturation = 0.5,
      brightness = 0.5, 
   },
}
