const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d0f12", /* black   */
  [1] = "#425A92", /* red     */
  [2] = "#666D91", /* green   */
  [3] = "#99768D", /* yellow  */
  [4] = "#A28984", /* blue    */
  [5] = "#A49AA2", /* magenta */
  [6] = "#DBA7A1", /* cyan    */
  [7] = "#eee3d0", /* white   */

  /* 8 bright colors */
  [8]  = "#a69e91",  /* black   */
  [9]  = "#425A92",  /* red     */
  [10] = "#666D91", /* green   */
  [11] = "#99768D", /* yellow  */
  [12] = "#A28984", /* blue    */
  [13] = "#A49AA2", /* magenta */
  [14] = "#DBA7A1", /* cyan    */
  [15] = "#eee3d0", /* white   */

  /* special colors */
  [256] = "#0d0f12", /* background */
  [257] = "#eee3d0", /* foreground */
  [258] = "#eee3d0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
