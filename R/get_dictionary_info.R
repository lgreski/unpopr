#
# base function to retrieve data dictionary information from
# UN population API

get_dictionary_info <- function(aType,aList=""){
  # render the URL
  aPropMgr <- properties()
  theURL <- paste0(aPropMgr$get_base_url(),
                   "/",aType,"/",aList)
  # get the data
  retrieve_content(theURL)

}
