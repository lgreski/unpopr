test_that("test content retrieval", {
  expect_warning(retrieve_content("https://population.un.org/dataportalapi/api/v0/locations")) # bad URL
  expect_equal(nrow(retrieve_content("https://population.un.org/dataportalapi/api/v1/locations")),284)
  expect_error(retrieve_content("not a URL"))
})
