#
# get_indicators_for_source.R
#
# get list of sources for UN Population API

#'
#' `get_indicators_for_source()`: get the indicators (data elements) for a
#' source of population data from the UN population API.
#'
#' @param theSource A string of ID numbers for specific data sources
#' @param theIndicators A string of indicator ID numbers
#' @returns A data frame containing dictionary information'
#' @export
#' @examples
#' get_sources(25) # get World Population Prospects
#' get_sources(paste(c(5,6),collapse=",")) # get world fertility and marriage
#'                                         # data

get_indicators_for_source <- function(theSource,theIndicators=""){
    # render the URL
    aPropMgr <- properties()
    theURL <- NULL
    if(!theIndicators == "") {
      # retrieve a subset of indicators for a source
      theURL <- paste0(aPropMgr$get_base_url_version(),
                       "/sources/",
                       "/",theSource,"/indicators",
                       theIndicators)
    }
    else {
      # retrieve all indicators for a source
      theURL <- paste0(aPropMgr$get_base_url_version(),
                     "/sources/",theSource,"/indicators")
    }
    # get the data
    retrieve_content(theURL)

}
