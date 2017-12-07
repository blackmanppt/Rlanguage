
x<-c(1:5)
for (item in x) {
    print(item)
}
for (item in 1:length(x)) {
    print(item)
}
if (TRUE) {

}
if (TRUE) {

} else {

}
#function
name <- function(parameters1 =1, parameters2=2) {
    xx <- parameters1 * parameters2
    return(xx)
}
name()
name(4, 6)
library(ggplot2)
? plot
library(dplyr)
#plotly

dat <- iris
head(dat)
library(plotly)
qq <-(dat %>%
ggplot(aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
geom_point() )
ggplotly(qq)