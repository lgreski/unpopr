#
# properties.R
# properties / constants for unpopr package
properties <- function() {
  # initialize attributes
  base_url <- "https://population.un.org/dataportalapi/api"
  base_version <- "/v1"

  get_base_url <- function() {
    paste0(base_url)
  }
  get_base_data_url_version <- function() {
    paste0(base_url,base_version,"/data")
  }
  get_base_url_version <- function(){
    paste0(base_url,base_version)
  }
  get_base_version <- function() base_version
  set_base_url <- function(aURL){
    base_url <<- aURL
  }
  set_base_version <- function(aVersion){
    base_version <<- aVersion
  }

  # return the properties as a list() so the elements may be accessed by name
  list(base_url = base_url,
       base_version = base_version,
       get_base_url = get_base_url,
       get_base_url_version = get_base_url_version,
       get_base_data_url_version = get_base_data_url_version,
       get_base_version = get_base_version,
       set_base_url = set_base_url,
       set_base_version = set_base_version)
}
