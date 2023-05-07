#
# retrieve_content

retrieve_content<- function(aSource) {

  tryCatch({
    # expr goes here
    require(httr)
    require(jsonlite)
    aResult <- fromJSON(aSource)
    aDataFrame <- aResult$data
    while(!is.null(aResult$nextPage)){
      aResult <- fromJSON(aResult$nextPage)
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
