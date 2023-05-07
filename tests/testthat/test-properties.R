test_that("test properties manager", {
  aPropertyManager <- properties() # create an instance of properties()
  expect_equal(aPropertyManager$base_url,"https://population.un.org/dataportalapi/api")
  expect_equal(aPropertyManager$base_version,"/v1")
})
