#
# get_indicators.R
#
# get population measurements (indicators) from the UN population API.
#
# form of the request is base_url/indicators/<list of indicators>
get_indicators <- function(aList){
  # render the URL
  aPropMgr <- properties()
  theURL <- paste0(aPropMgr$get_base_url(),
                   "/indicators/",
                   aList)
  # get the data
  retrieve_content(theURL)
}
