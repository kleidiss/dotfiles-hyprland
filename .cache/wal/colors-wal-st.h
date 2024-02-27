const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#021633", /* black   */
  [1] = "#5F5659", /* red     */
  [2] = "#9E6149", /* green   */
  [3] = "#C19D5C", /* yellow  */
  [4] = "#07498B", /* blue    */
  [5] = "#2C538A", /* magenta */
  [6] = "#305489", /* cyan    */
  [7] = "#b1b8c2", /* white   */

  /* 8 bright colors */
  [8]  = "#7b8087",  /* black   */
  [9]  = "#5F5659",  /* red     */
  [10] = "#9E6149", /* green   */
  [11] = "#C19D5C", /* yellow  */
  [12] = "#07498B", /* blue    */
  [13] = "#2C538A", /* magenta */
  [14] = "#305489", /* cyan    */
  [15] = "#b1b8c2", /* white   */

  /* special colors */
  [256] = "#021633", /* background */
  [257] = "#b1b8c2", /* foreground */
  [258] = "#b1b8c2",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
