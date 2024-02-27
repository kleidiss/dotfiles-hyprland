static const char norm_fg[] = "#b1b8c2";
static const char norm_bg[] = "#021633";
static const char norm_border[] = "#7b8087";

static const char sel_fg[] = "#b1b8c2";
static const char sel_bg[] = "#9E6149";
static const char sel_border[] = "#b1b8c2";

static const char urg_fg[] = "#b1b8c2";
static const char urg_bg[] = "#5F5659";
static const char urg_border[] = "#5F5659";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
