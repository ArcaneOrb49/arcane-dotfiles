static const char norm_fg[] = "#9dc6e6";
static const char norm_bg[] = "#0B0B14";
static const char norm_border[] = "#6d8aa1";

static const char sel_fg[] = "#9dc6e6";
static const char sel_bg[] = "#54415C";
static const char sel_border[] = "#9dc6e6";

static const char urg_fg[] = "#9dc6e6";
static const char urg_bg[] = "#2D4674";
static const char urg_border[] = "#2D4674";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
