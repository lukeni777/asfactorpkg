test_that("as_factor_column() converts column to factor", {
  df <- data.frame(group = c("A", "B", "A"), score = c(10, 20, 15))
  
  df <- as_factor_column(df, "group")  # <-- use returned result

  expect_true(is.factor(df$group))
})

test_that("as_factor_column() errors on non-dataframe input", {
  expect_error(as_factor_column(c(1, 2, 3), "x"), "df must be a data frame")
})

test_that("as_factor_column() errors when column doesn't exist", {
  df <- data.frame(a = 1:3)
  expect_error(as_factor_column(df, "b"), "Column not found in data frame")
})
