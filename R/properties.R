#
# properties.R
# properties / constants for unpopr package
properties <- function() {
  base_url <- "https://population.un.org/dataportalapi/api"
  base_version <- "/v1"
  get_base_url <- function() {
    paste0(base_url,base_version)
  }
  get_base_data_url <- function() {
    paste0(base_url,base_version,"/data")
  }
  # return the properties as a list() so the elements may be accessed by name
  list(base_url = base_url,
       base_version = base_version,
       get_base_url = get_base_url,
       get_base_data_url = get_base_data_url)
}
