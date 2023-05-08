test_that("get_topics() works", {
  expect_equal(nrow(get_topics("FP")), 1)
  expect_equal(nrow(get_topics()),10)
})
