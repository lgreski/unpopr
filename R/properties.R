#
# properties.R
# properties / constants for unpopr package
properties <- function() {
  base_url <- "https://population.un.org/dataportalapi/api"
  base_version <- "/v1"

  # return the properties as a list() so the elements may be accessed by name
  list(base_url = base_url,
       base_version = base_version)
}
