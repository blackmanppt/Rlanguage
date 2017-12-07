ubike <- read.csv(file = "./ubike-weather-big5.csv",
          colClasses = c("factor", "integer", "integer", "factor", "factor",
                         "numeric", "numeric", "integer", "numeric", "integer",
                         "integer", "numeric", "numeric", "integer", "integer",
                         "numeric", "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric"),
          fileEncoding = 'BIG-5',
          stringsAsFactors = F)
View(ubike)
ubike$date<-as.Date(ubike$date)
library(dplyr)
library(reshape2)
head(ubike)

select(ubike, hour, sarea, sna, avg.sbi) %>%
  filter(sarea == '中和區' & hour == 7) %>%
  mutate(avg.sbi = floor(avg.sbi))

select(ubike, hour, sarea, sna, avg.sbi) %>%
  filter(sarea == '中和區' & hour == 7) %>%
  group_by(hour, sarea, sna) %>%
  summarise(avg = mean(avg.sbi) %>% round()) %>%
  arrange(avg %>% desc())

library(ggmap)
library(plotly)
library(ggplot2)

head(ubike)

zzzz <- (

select(ubike, sarea, sna, rainfall, avg.bemp, tot, lat, lng) %>%
filter(sarea == "信義區") %>%
mutate(day = ifelse(is.na(rainfall) | rainfall == 0, "晴天", "雨天"), using = avg.bemp / tot) %>%
select(sarea, sna, day, using, tot, lat, lng))
display <- dcast(zzzz, formula = sna ~ day, fun.aggregate = mean, value.var = "using")

ggplot(zzzz, aes(sna, fill = day),width=800) + geom_bar(position = "dodge")

zzzz2 <- (

select(ubike, sarea, sna, rainfall, avg.bemp, tot, lat, lng) %>%
filter(sarea == "信義區" & sna == "台北市政府") %>%
mutate(day = ifelse(is.na(rainfall) | rainfall == 0, "晴天", "雨天"), using = avg.bemp / tot) %>%
select(sarea, sna, day, using, tot, lat, lng))
head(zzzz)
qq <- ( %>%
zzzz %>%
map <- get_googlemap(markers = zzzz) %>%
ggmap(map) +
ggplot(aes(x = lat, y = lng, color = sna)) +
geom_point() %>%
)
25.032721, 121.570555
zzzz %>%
group_by(sna, lng, lat) %>%

  distinct %>% select(lon = lng, lat = lat, rate.sbi = mean(rate.sbi))
map <- get_map(location = c(lon = 121.570555, lat = 25.032721), zoom = 14)
? get_map

cc <- (ggmap(map) +
  geom_point(data = zzzz, aes(x = lng, y = lat, color = using, style = 'feature:administrative.country|element:labels|visibility:off'))) +
ggplotly(cc)
display <- dcast(zzzz, formula = sna ~ day, fun.aggregate = mean, value.var = "using")
