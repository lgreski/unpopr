test_that("test properties manager", {
  aPropertyManager <- properties() # create an instance of properties()
  expect_equal(aPropertyManager$base_url,"https://population.un.org/dataportalapi/api")
  expect_equal(aPropertyManager$base_version,"/v1")
  expect_equal(aPropertyManager$get_base_url(),
               "https://population.un.org/dataportalapi/api")
  expect_equal(aPropertyManager$get_base_url_version(),
               "https://population.un.org/dataportalapi/api/v1")
  expect_equal(aPropertyManager$get_base_data_url_version(),
               "https://population.un.org/dataportalapi/api/v1/data")
  aPropertyManager$set_base_url("http://a.fake.url")
  expect_equal(aPropertyManager$get_base_url(),"http://a.fake.url")
  expect_equal(aPropertyManager$get_base_url_version(),"http://a.fake.url/v1")
  aPropertyManager$set_base_version("/v0")
  expect_equal(aPropertyManager$get_base_version(),"/v0")
  expect_equal(aPropertyManager$get_base_url_version(),
               "http://a.fake.url/v0")



})
