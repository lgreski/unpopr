test_that("get_locations() works", {
  expect_equal(nrow(get_locations("VN")), 1)
  expect_equal(nrow(get_locations(paste(c(4,8),collapse=","))),2)

})
