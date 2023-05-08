#
# get_topics.R
#
# get list of topics for UN Population API
# convenience wrapper around get_dictionary_info()

get_topics <- function(aList=""){
  # pass list of topics to be retrieved, or default to the entire list
  get_dictionary_info("topics",aList)
}
