static const char norm_fg[] = "#eee3d0";
static const char norm_bg[] = "#0d0f12";
static const char norm_border[] = "#a69e91";

static const char sel_fg[] = "#eee3d0";
static const char sel_bg[] = "#666D91";
static const char sel_border[] = "#eee3d0";

static const char urg_fg[] = "#eee3d0";
static const char urg_bg[] = "#425A92";
static const char urg_border[] = "#425A92";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
