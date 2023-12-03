test_that("get_locations() works", {
  expect_equal(nrow(get_locations("VN")), 1)
  expect_equal(nrow(get_locations(paste(c(4,8),collapse=","))),2)
  df <- get_locations(paste(c(16,20,36),collapse=","))
  expect_equal(df$name[1],"American Samoa")
  expect_equal(df$id[2],20)
  expect_equal(df$iso3[3],"AUS")

})
