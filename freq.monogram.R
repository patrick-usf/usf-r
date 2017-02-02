freq.monogram <- function(x) {
  # Calculates the alphabetic monogram frequency for an input
  # string and returns a table containing the results. All
  # alphabetic characters are normalized to uppecase.
  #
  # Args:
  #   x: String to be processed
  #
  # Returns:
  #   Table containing the monogram frequency counts for each
  #   alphabetic character in the string.
  
  monogram <- vector()
  x <- toupper(x)
  for (i in 1:nchar(x)) {
    current <- substr(x,i,i)
    if( current %in% LETTERS) {
      monogram <- append(monogram, current)
    }
  }
  return(table(monogram))
}
