MeanlifeExp <- function(Continent){
  subset_continent_gapminder <- gapminder[gapminder$continent == Continent, "lifeExp"]
  mean_life_exp <- mean(subset_continent_gapminder)
  return(mean_life_exp)
}
MeanLifeExp("Europe")

######################
if (condition is true){
  perform some action
}
else{#the condition is false
  perform some other action
}
#### multiple conditions
if (conditon is true){
  do this}
else if (second condition is true){
  do this}
else {
  do this}

x <- 4 == 3
if(x){
  print("x is greater than or equal to 10")
}else{
  print("x is smaller than 10")
}
#############

if(MeanlifeExp("Asia")>=50){
  print("Life Expectancy of Asia is greater than or equal to 50")
}else{
  print("Life Expectancy of Asia is lower than 50")
}
#############
# for(iterator in a set of values){
#do an action
#}

for(i in 1:10){
  print(i)
}

menuItems <- c("chicken", "soup", "salad", "tea")
menuType <- factor(c("solid", "liquid", "solid", "liquid"))
menuCost<- c(4.99, 2.99, 3.29, 1.89)
myorder_df<- data.frame(menuItems, menuType, menuCost)

for(items in myorder_df$menuItems){
  myorder_df_subset<-myorder_df[myorder_df$menuItems == items, ]
  print(items)
  print(myorder_df_subset$menuCost)
  }
  ##############
gapminder <- read.table("gapminder.txt", header = TRUE)

threshold_value <- 50
continent_list <- unique(gapminder$continent)
continent_list

for (Continent in continent_list){
  continent_subset <- gapminder[gapminder$continent == Continent, "lifeExp"]
  continent_mean <- mean(continent_subset)
  if (continent_mean>=50){
    print(paste0("Life Expectancy of ", Continent, " is greater than or equal to 50"))
  }else{
    print(paste0("Life Expectancy of ", Continent, " is less than 50"))
  }
}
