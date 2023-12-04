#
# get_locations.R
#
# get locations from the UN population API
#
#' get the geographical areas (locations) included in the UN population API.
#' @param theLocations A string
#' @returns A data frame'
#' @export
#' @examples
#' get_locations(36) # get Australia
#' get_locations("VN") # get Vietnam with ISO2 code
#' get_locations(paste(c(4,8),collapse=","))
#' get_locations() # returns all 284 locations
get_locations <- function(theLocations="") {
  aPropMgr <- properties()
  theURL <- paste0(aPropMgr$get_base_url_version(),
                   "/locations/",
                   theLocations)
  # get the data
  retrieve_content(theURL)

}
