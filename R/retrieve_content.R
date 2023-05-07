#
# retrieve_content.R
# given a source URL, retrieve the content and convert it from JSON
# into a data frame

retrieve_content<- function(aSource) {
  if(!is_valid_url(aSource)) stop(paste("invalid url:", aSource))
  tryCatch({
    # expr goes here
    aResult <- jsonlite::fromJSON(aSource)
    aDataFrame <- aResult$data
    while(!is.null(aResult$nextPage)){
      aResult <- jsonlite::fromJSON(aResult$nextPage)
      aDataFrame <- rbind(aDataFrame,aResult$data)
    }
    # return result data
    aDataFrame
  },error = function(error_message){
    message(error_message)
    return(NULL)
  },warning = function(warning_message){
    message(warning_message)
    return(NULL)
  })
}
