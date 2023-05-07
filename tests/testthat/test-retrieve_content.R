test_that("test content retrieval", {
  expect_equal(retrieve_content("https://population.un.org/dataportalapi/api/v0/locations"),NULL) # bad URL
  expect_equal(nrow(retrieve_content("https://population.un.org/dataportalapi/api/v1/locations")),284) # bad URL

})
