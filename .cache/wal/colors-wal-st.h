const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d1236", /* black   */
  [1] = "#4E69C6", /* red     */
  [2] = "#B761B5", /* green   */
  [3] = "#1C9FDA", /* yellow  */
  [4] = "#328BCE", /* blue    */
  [5] = "#4987CF", /* magenta */
  [6] = "#FBB6BD", /* cyan    */
  [7] = "#efd7d5", /* white   */

  /* 8 bright colors */
  [8]  = "#a79695",  /* black   */
  [9]  = "#4E69C6",  /* red     */
  [10] = "#B761B5", /* green   */
  [11] = "#1C9FDA", /* yellow  */
  [12] = "#328BCE", /* blue    */
  [13] = "#4987CF", /* magenta */
  [14] = "#FBB6BD", /* cyan    */
  [15] = "#efd7d5", /* white   */

  /* special colors */
  [256] = "#0d1236", /* background */
  [257] = "#efd7d5", /* foreground */
  [258] = "#efd7d5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
