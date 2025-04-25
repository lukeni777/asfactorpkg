#' Convert a column to factor
#'
#' @param df A data frame
#' @param col A string with the column name to convert
#'
#' @return A data frame with the column converted to a factor
#' @export
as_factor_column <- function(df, col) {
  if (!is.data.frame(df)) stop("df must be a data frame")
  if (!col %in% names(df)) stop("Column not found in data frame")
  df[[col]] <- as.factor(df[[col]])
  return(df) 
}

