#
#
#'
#' retrieve data dictionary information from UN population API
#' @param aType A String
#' @param aSubset A string
#' @returns A data frame
#' @export
#' @examples
#' get_dictionary_info("topics")
#' get_dictionary_info("topics","FP,IGME")
#' get_dictionary_info("locations")
#' get_dictionary_info("sources")

get_dictionary_info <- function(aType,aSubset=""){
  # render the URL
  aPropMgr <- properties()
  theURL <- paste0(aPropMgr$get_base_url(),
                   "/",aType,"/",aSubset)
  # get the data
  retrieve_content(theURL)

}
