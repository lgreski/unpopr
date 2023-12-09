#
# get_indicators.R
#
# form of the request is base_url/indicators/<list of indicators>
#'
#' `get_indicators()`: get population measurements (indicators) from the
#' UN population API.
#'
#' @param theIndicators A string
#' @returns A data frame'
#' @export
#' @examples
#' get_indicators(1)
#' get_indicators(paste(c(1,3),collapse=","))

get_indicators <- function(theIndicators=""){
  # render the URL
  aPropMgr <- properties()
  theURL <- paste0(aPropMgr$get_base_url_version(),
                   "/indicators/",
                   theIndicators)
  # get the data
  retrieve_content(theURL)
}
