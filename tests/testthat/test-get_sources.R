test_that("get_sources() works", {
  expect_equal(nrow(get_sources(1)), 1)
  expect_equal(nrow(get_sources(paste(c(1,3,5),collapse=","))),3)
  df <- get_sources()
  expect_equal(nrow(df),26)
  expect_equal(ncol(df),8)
  expect_equal(df$name[2],"World Population Prospects")
})
