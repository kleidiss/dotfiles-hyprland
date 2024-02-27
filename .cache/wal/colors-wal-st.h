const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#040612", /* black   */
  [1] = "#4E69C6", /* red     */
  [2] = "#B761B5", /* green   */
  [3] = "#1C9FDA", /* yellow  */
  [4] = "#328BCE", /* blue    */
  [5] = "#4987CF", /* magenta */
  [6] = "#FBB6BD", /* cyan    */
  [7] = "#c0c0c3", /* white   */

  /* 8 bright colors */
  [8]  = "#42444d",  /* black   */
  [9]  = "#4E69C6",  /* red     */
  [10] = "#B761B5", /* green   */
  [11] = "#1C9FDA", /* yellow  */
  [12] = "#328BCE", /* blue    */
  [13] = "#4987CF", /* magenta */
  [14] = "#FBB6BD", /* cyan    */
  [15] = "#c0c0c3", /* white   */

  /* special colors */
  [256] = "#040612", /* background */
  [257] = "#c0c0c3", /* foreground */
  [258] = "#c0c0c3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
