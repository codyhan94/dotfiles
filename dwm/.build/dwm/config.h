/* See LICENSE file for copyright and license details. */
#define BOTTOM_BAR_HEIGHT   18
#define WORKSPACE_NAME      "bkubisiak@bkarch"

/* appearance */
static const char font[]            = "-*-Monospace-medium-r-*-*-18-*-*-*-*-*-*-*";
static const char normbordercolor[] = "#222222";
static const char normbgcolor[]     = "#000000";
static const char normfgcolor[]     = "#666666";
static const char selbordercolor[]  = "#005471";
static const char selbgcolor[]      = "#005471";
static const char selfgcolor[]      = "#aaaaaa";
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const Bool showbar           = True;     /* False means no bar */
static const Bool topbar            = True;     /* False means bottom bar */

/* tagging */
static const char *tags[] = { "misc", "dev", "hw", "web", "doc", "media", "work1", "work2", "work3" };

static const Rule rules[] = {
    /* class      instance    title       tags mask     isfloating  monitor */
    { "Dwb",      NULL,       NULL,       1 << 3,       False,      -1 },
    { "Claws",    NULL,       NULL,       1 << 3,       False,      -1 },
    { "Zathura",  NULL,       NULL,       1 << 4,       False,      -1 },
    { "libreoffice", NULL,    NULL,       1 << 4,       False,      -1 },
    { "sxiv",     NULL,       NULL,       1 << 5,       False,      -1 },
    { "Gimp",     NULL,       NULL,       1 << 5,       True,       -1 },
    { "Inkscape", NULL,       NULL,       1 << 5,       False,      -1 },
};

/* layout(s) */
static const float mfact      = 0.5;   /* factor of master area size [0.05..0.95] */
static const int nmaster      = 1;     /* number of clients in master area */
static const Bool resizehints = False; /* True means respect size hints in tiled resizals */

static const Layout layouts[] = {
    /* symbol     arrange function */
    { "[]=",      tile },    /* first entry is default */
    { "><>",      NULL },    /* no layout function means floating behavior */
    { "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
    { MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
    { MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *dmenucmd[] = { "dmenu_run", "-fn", font, "-nb", normbgcolor, "-nf", normfgcolor, "-sb", selbgcolor, "-sf", selfgcolor, NULL };
static const char *termcmd[]  = { "st", NULL };
static const char *webcmd[]   = { "dwb", NULL };
static const char *writecmd[] = { "lowriter", NULL };
static const char *calccmd[]  = { "localc", NULL };
static const char *emailcmd[] = { "claws-mail", NULL };
static const char *imgcmd[]   = { "gimp", NULL };
static const char *vctrcmd[]  = { "inkscape", NULL };
static const char *libcmd[]   = { "/home/bkubisiak/bin/viewdoc", NULL };
static const char *rpncmd[]   = { "st", "-e", "octave", "-q", NULL };
static const char *bkmrkcmd[] = { "/home/bkubisiak/bin/websites", NULL };
static const char *dictcmd[]  = { "/home/bkubisiak/bin/word", NULL };
static const char *mutecmd[]  = { "amixer", "set", "Master", "toggle", NULL };
static const char *voldcmd[]  = { "amixer", "set", "Master", "2dB-", "unmute", NULL };
static const char *volucmd[]  = { "amixer", "set", "Master", "2dB+", "unmute", NULL };
static const char *scrndcmd[] = { "xbacklight", "-dec", "15", NULL };
static const char *scrnucmd[] = { "xbacklight", "-inc", "15", NULL };
static const char *kbdcmd[]   = { "/home/bkubisiak/bin/kbdlight", NULL };
static const char *dmpccmd[]  = { "/home/bkubisiak/bin/dmpc", NULL };
static const char *xkcdcmd[]  = { "/home/bkubisiak/bin/xkcd", NULL };
static const char *playcmd[]  = { "mpc", "toggle", NULL };

static Key keys[] = {
    /* modifier         key                         function        argument */
    { 0,                XF86XK_AudioMute,           spawn,          {.v = mutecmd } },
    { 0,                XF86XK_AudioLowerVolume,    spawn,          {.v = voldcmd } },
    { 0,                XF86XK_AudioRaiseVolume,    spawn,          {.v = volucmd } },
    { 0,                XF86XK_AudioPlay,           spawn,          {.v = playcmd } },
    { 0,                XF86XK_MonBrightnessDown,   spawn,          {.v = scrndcmd } },
    { 0,                XF86XK_MonBrightnessUp,     spawn,          {.v = scrnucmd } },
    { 0,                XK_Help,                    spawn,          {.v = kbdcmd } },
    { MODKEY,           XK_p,                       spawn,          {.v = dmenucmd } },
    { 0,                XK_Menu,                    spawn,          {.v = dmenucmd } },
    { MODKEY|ShiftMask, XK_y,                       spawn,          {.v = rpncmd } },
    { 0,                XF86XK_Calculator,          spawn,          {.v = rpncmd } },
    { MODKEY|ShiftMask, XK_m,                       spawn,          {.v = emailcmd } },
    { 0,                XF86XK_Mail,                spawn,          {.v = emailcmd } },
    { MODKEY|ShiftMask, XK_k,                       spawn,          {.v = bkmrkcmd } },
    { MODKEY|ShiftMask, XK_d,                       spawn,          {.v = dictcmd } },
    { MODKEY|ShiftMask, XK_b,                       spawn,          {.v = libcmd } },
    { MODKEY|ShiftMask, XK_w,                       spawn,          {.v = webcmd } },
    { 0,                XF86XK_HomePage,            spawn,          {.v = webcmd } },
    { MODKEY|ShiftMask, XK_s,                       spawn,          {.v = calccmd } },
    { MODKEY|ShiftMask, XK_e,                       spawn,          {.v = dmpccmd } },
    { MODKEY|ShiftMask, XK_x,                       spawn,          {.v = xkcdcmd } },
    { MODKEY|ShiftMask, XK_a,                       spawn,          {.v = writecmd } },
    { MODKEY|ShiftMask, XK_g,                       spawn,          {.v = imgcmd } },
    { MODKEY|ShiftMask, XK_i,                       spawn,          {.v = vctrcmd } },
    { MODKEY|ShiftMask, XK_Return,                  spawn,          {.v = termcmd } },
    { MODKEY,           XK_b,                       togglebar,      {0} },
    { MODKEY,           XK_j,                       focusstack,     {.i = +1 } },
    { MODKEY,           XK_k,                       focusstack,     {.i = -1 } },
    { MODKEY,           XK_i,                       incnmaster,     {.i = +1 } },
    { MODKEY,           XK_d,                       incnmaster,     {.i = -1 } },
    { MODKEY,           XK_h,                       setmfact,       {.f = -0.05} },
    { MODKEY,           XK_l,                       setmfact,       {.f = +0.05} },
    { MODKEY,           XK_Return,                  zoom,           {0} },
    { MODKEY,           XK_Tab,                     view,           {0} },
    { MODKEY|ShiftMask, XK_c,                       killclient,     {0} },
    { MODKEY,           XK_t,                       setlayout,      {.v = &layouts[0]} },
    { MODKEY,           XK_f,                       setlayout,      {.v = &layouts[1]} },
    { MODKEY,           XK_m,                       setlayout,      {.v = &layouts[2]} },
    { MODKEY,           XK_space,                   setlayout,      {0} },
    { MODKEY|ShiftMask, XK_space,                   togglefloating, {0} },
    { MODKEY,           XK_0,                       view,           {.ui = ~0 } },
    { MODKEY|ShiftMask, XK_0,                       tag,            {.ui = ~0 } },
    { MODKEY,           XK_comma,                   focusmon,       {.i = -1 } },
    { MODKEY,           XK_period,                  focusmon,       {.i = +1 } },
    { MODKEY|ShiftMask, XK_comma,                   tagmon,         {.i = -1 } },
    { MODKEY|ShiftMask, XK_period,                  tagmon,         {.i = +1 } },
    TAGKEYS(            XK_1,                                       0)
    TAGKEYS(            XK_2,                                       1)
    TAGKEYS(            XK_3,                                       2)
    TAGKEYS(            XK_4,                                       3)
    TAGKEYS(            XK_5,                                       4)
    TAGKEYS(            XK_6,                                       5)
    TAGKEYS(            XK_7,                                       6)
    TAGKEYS(            XK_8,                                       7)
    TAGKEYS(            XK_9,                                       8)
    { MODKEY|ShiftMask, XK_q,                       quit,           {0} },
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
    /* click                event mask      button          function        argument */
    { ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
    { ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
    { ClkWinTitle,          0,              Button2,        zoom,           {0} },
    { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
    { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
    { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
    { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
    { ClkTagBar,            0,              Button1,        view,           {0} },
    { ClkTagBar,            0,              Button3,        toggleview,     {0} },
    { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
    { ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

