#
# retrieve_content

retrieve_content<- function(aSource) {

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
