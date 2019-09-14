gapminder <- read.table("gapminder.txt", header=True)
gapminder <- read.table("gapminder.txt", header = TRUE)

fahrenheit_to_celsius <- function(temp) {
  celsius<- ((temp-32)*(5/9))
  return(celsius)
}
celsius_to_kelvin <- function(temp_c){
  kelvin <- temp_c +273.15
  return(kelvin)
}
fahrenheight_to_kelvin <- function(temp_f){
  celsius <- fahrenheit_to_celsius(temp_f)
kelvin <- celsius_to_kelvin(celsius)
return(kelvin)
}
MeanlifeExp <- function()