static const char norm_fg[] = "#efd7d5";
static const char norm_bg[] = "#0d1236";
static const char norm_border[] = "#a79695";

static const char sel_fg[] = "#efd7d5";
static const char sel_bg[] = "#B761B5";
static const char sel_border[] = "#efd7d5";

static const char urg_fg[] = "#efd7d5";
static const char urg_bg[] = "#4E69C6";
static const char urg_border[] = "#4E69C6";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
