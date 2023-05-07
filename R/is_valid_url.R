#
# parse a URL and confirm it is valid
#
# adapted from https://stackoverflow.com/questions/73952024/url-validation-in-r

is_valid_url <- function(a_url) {
  pattern <- "(https?|ftp)://[^ /$.?#].[^\\s]*"
  stringr::str_detect(a_url, pattern)
}
