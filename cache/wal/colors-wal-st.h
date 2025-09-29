const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0B0B14", /* black   */
  [1] = "#2D4674", /* red     */
  [2] = "#54415C", /* green   */
  [3] = "#BC4A75", /* yellow  */
  [4] = "#2E5B97", /* blue    */
  [5] = "#4D5E9D", /* magenta */
  [6] = "#406BC5", /* cyan    */
  [7] = "#9dc6e6", /* white   */

  /* 8 bright colors */
  [8]  = "#6d8aa1",  /* black   */
  [9]  = "#2D4674",  /* red     */
  [10] = "#54415C", /* green   */
  [11] = "#BC4A75", /* yellow  */
  [12] = "#2E5B97", /* blue    */
  [13] = "#4D5E9D", /* magenta */
  [14] = "#406BC5", /* cyan    */
  [15] = "#9dc6e6", /* white   */

  /* special colors */
  [256] = "#0B0B14", /* background */
  [257] = "#9dc6e6", /* foreground */
  [258] = "#9dc6e6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
