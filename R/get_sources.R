#
# get_sources.R
#
# get list of sources for UN Population API

#'
#' `get_sources()`: get sources of population data from the UN population
#' API, including name, source year, start and end year, citation, URL and
#' author. `get_sources()` is a convenience wrapper around
#' `get_dictionary_info()`.
#'
#' @param theSources A string of ID numbers for specific data sources
#' @returns A data frame containing dictionary information'
#' @export
#' @examples
#' get_sources(25) # get World Population Prospects
#' get_sources(paste(c(5,6),collapse=",")) # get world fertility and marriage
#'                                         # data

get_sources <- function(theSources=""){
  # pass list of data sources to be retrieved, or default to the entire list
  get_dictionary_info("sources",theSources)
}
