test_that("get_indicators_for_source() works", {

  expect_warning(get_indicators_for_source("1"),"HTTP status was '404 Not Found'")
  expect_equal(nrow(get_indicators_for_source("25")),42)


})
