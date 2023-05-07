test_that("is_valid_url() works", {
  expect_equal(is_valid_url("https://population.un.org"),TRUE)
  expect_equal(is_valid_url("https://population.un.org/"),TRUE)
  expect_equal(is_valid_url("https://population.un.us/zzz"),TRUE)
  expect_equal(is_valid_url("population.un.us/zzz"),FALSE)

})
