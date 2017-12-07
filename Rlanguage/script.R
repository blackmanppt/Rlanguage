x <- c(4.39, 2.11, 3.17)
x
class(x)
x[2]
x[2:1]
x[3:1]
y <- c("apple", "book", "cat")
y
class(y)
xx <- c("three", 3, 2, 1)
xx
class(xx)
zz <- c(1, 2, "three")
class(zz)
y1 <- c(A = "apple", B = "book", C = "cat")
# µ¥»ù©ó 
# y1 <- y
# names(y1) <- c("A", "B", "C")
y1
order(x)
x
x[order(x)]
y <- c("apple", "book", "cat")
y[c(-1,-3)]
y[c(-1:-2)]
y
x > 3
which(x > 3)
x[which(x > 3)]
rm(x)
rm(y)
rm(y1)

x <- c(4.39, 2.11, 3.17)
y <- c("apple", "book", "cat")
z <- c(TRUE, FALSE, TRUE)
df <- data.frame(v1 = x, v2 = y, v3 = z)
df
df[1]
df[2,]
df[, 3]
df[2, 3]
df[, "v1"]
str(df)
#dftest<-data.frame(v1=x,v2=y,v3=z)
df$v1
df[c("v2", "v3")]
df
df[df$v1 > 3 & z == TRUE,]
df[which(df$v1 > 3 & z == TRUE), "v2"]
is