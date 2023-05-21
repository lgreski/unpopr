#
# retrieve_content.R
# given a source URL, retrieve the content and convert it from JSON
# into a data frame

# since this function won't be callable by the end user, do not export it
#
# parameters: aSource - a fully formed URL that is compatible with the
#             UN Population API
# returns: a data frame
# on error / warning: generate message then return NULL


retrieve_content<- function(aSource) {
  if(!is_valid_url(aSource)) stop(paste("invalid url:", aSource))
  tryCatch({
    # expr goes here
    aResult <- jsonlite::fromJSON(aSource)

    if(methods::is(aResult,"list")){
      aDataFrame <- aResult$data
      while(!is.null(aResult$nextPage)){
        aResult <- jsonlite::fromJSON(aResult$nextPage)
        aDataFrame <- rbind(aDataFrame,aResult$data)
      }
      # return result data
      return(aDataFrame)
    } else {
         # if not a list, the data result is not a list, it's a data frame so return it
         return(aResult)
      }
  },error = function(error_message){
    message(error_message)
    return(NULL)
  },warning = function(warning_message){
    message(warning_message)
    return(NULL)
  })
}
