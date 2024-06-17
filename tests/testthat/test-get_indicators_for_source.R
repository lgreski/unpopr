test_that("get_indicators_for_source() works", {
  expect_equal(nrow(get_indicators_for_source("25")),42)
})
