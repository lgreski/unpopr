test_that("get_indicators() works", {
  expect_equal(nrow(get_indicators(1)), 1)
  expect_equal(nrow(get_indicators(paste(c(1,3),collapse=","))),2)
})
