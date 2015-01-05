-------------------------
-- Custom luakit theme --
-------------------------

local theme = {}

-- Default settings
theme.font = "monospace normal 9"
theme.fg   = "#666666"
theme.bg   = "#000000"

-- Genaral colours
theme.success_fg = "#005205"
theme.loaded_fg  = "#005471"
theme.error_fg = "#900910"
theme.error_bg = "#000000"

-- Warning colours
theme.warning_fg = "#503d00"
theme.warning_bg = "#000000"

-- Notification colours
theme.notif_fg = "#666666"
theme.notif_bg = "#000000"

-- Menu colours
theme.menu_fg                   = "#005471"
theme.menu_bg                   = "#000000"
theme.menu_selected_fg          = "#666666"
theme.menu_selected_bg          = "#005471"
theme.menu_title_bg             = "#000000"
theme.menu_primary_title_fg     = "#503d00"
theme.menu_secondary_title_fg   = "#503d00"

-- Proxy manager
theme.proxy_active_menu_fg      = '#666666'
theme.proxy_active_menu_bg      = '#000000'
theme.proxy_inactive_menu_fg    = '#666666'
theme.proxy_inactive_menu_bg    = '#000000'

-- Statusbar specific
theme.sbar_fg         = "#666666"
theme.sbar_bg         = "#000000"

-- Downloadbar specific
theme.dbar_fg         = "#666666"
theme.dbar_bg         = "#000000"
theme.dbar_error_fg   = "#900910"

-- Input bar specific
theme.ibar_fg           = "#666666"
theme.ibar_bg           = "#000000"

-- Tab label
theme.tab_fg            = "#666666"
theme.tab_bg            = "#000000"
theme.tab_ntheme        = "#000000"
theme.selected_fg       = "#005471"
theme.selected_bg       = "#000000"
theme.selected_ntheme   = "#666666"
theme.loading_fg        = "#005471"
theme.loading_bg        = "#000000"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#503d00"
theme.notrust_fg        = "#900910"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
