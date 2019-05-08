#' @title Favorite animal
#' 
#' @description Find out through numerous questions what animal is your favorite.
#' 
#' @importFrom beepr beep
#' @importFrom png readPNG
#' @importFrom audio play
#' @importFrom RCurl getURLContent
#' 
#' @export
ask <- function(){
  num <- readline("What's your favorite animal? > ")
  print(paste("You are a", num))
  myurl <- "https://gallery.yopriceville.com/var/resizes/Free-Clipart-Pictures/Underwater/Dolphin_PNG_Clip_Art_Image-1600973590.png?m=1507172110"
  my_image <-  png::readPNG(RCurl::getURLContent(myurl))
  dev.new(width=2000,height=2000, unit = "px")
  plot.new()
  rasterImage(my_image,0,0,1,1)
  beepr::beep()
  a <- audio::play(sin(1:100000/20))
  b <- audio::play(sin(1:100000/10))
  c <- audio::play(sin(1:100000/8))
  d <- audio::play(sin(1:100000/6))

}