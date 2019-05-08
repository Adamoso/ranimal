#' @title Favorite animal
#' 
#' @description Find out through numerous questions what animal is your favorite.
#' 
#' @export
ask <- function(){
  num <- readline("What's your favorite animal? > ")
  print(paste("You are a", num))
}