test_that("get_dictionary_info works", {
  expect_equal(nrow(get_dictionary_info("topics")),10)
  expect_equal(nrow(get_dictionary_info("indicators")),60)
  expect_equal(nrow(get_dictionary_info("locations")),284)
  expect_equal(nrow(get_dictionary_info("topics","FP,IGME")),2)
  expect_equal(nrow(get_dictionary_info("sources")),26)


})
