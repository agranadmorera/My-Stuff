x <- c(2, 4, 6)
y <- c(3, 6)
c(x, y)


## [1] 2 4 6 3 6


1:5

## [1] 1 2 3 4 5

seq(2, 10, 3)

## [1] 2 5 8

rep(c(1, 3), 4)

## [1] 1 3 1 3 1 3 1 3


3 + c(1, 2, 3) 

## [1] 4 5 6

c(1, 2) + c(7, 8, 9)

## [1]  8 10 10


x <- c(NA, NaN, Inf, 0, 3, NULL)

1/x

## [1]        NA       NaN 0.0000000       Inf 0.3333333

x - x

## [1]  NA NaN NaN   0   0

1/x - (x - x)

## [1]        NA       NaN       NaN       Inf 0.3333333

x <- (1:5)^2
x

## [1]  1  4  9 16 25

x[2]

## [1] 4

x[c(2, 5)]

## [1]  4 25

x[-c(2, 5)]

## [1]  1  9 16

x <- (1:5)^2
x

## [1]  1  4  9 16 25

x[x > 15]

## [1] 16 25

which( x > 15)

## [1] 4 5


matrix(1:3, nrow = 2, ncol = 3)

##      [,1] [,2] [,3]
## [1,]    1    3    2
## [2,]    2    1    3

c(1, 2, 3) + matrix(1:9, 3, 3)

##       [,1] [,2] [,3]
##  [1,]    2    5    8
##  [2,]    4    7   10
##  [3,]    6    9   12

x <- matrix(5:8, 3, 4)
x

##       [,1] [,2] [,3] [,4]
##  [1,]    5    8    7    6
##  [2,]    6    5    8    7
##  [3,]    7    6    5    8

x[x > 6]

## [1] 7 8 7 8 7 8

which(x > 6)

## [1]  3  4  7  8 11 12

x

##       [,1] [,2] [,3] [,4]
##  [1,]    5    8    7    6
##  [2,]    6    5    8    7
##  [3,]    7    6    5    8

x[1, 2]

## [1] 8

x[, 3]

## [1] 7 8 5

x[3, -1]

## [1] 6 5 8

y <- 1:3
z <- 4:6
cbind(y, z)

##       y z
##  [1,] 1 4
##  [2,] 2 5
##  [3,] 3 6

rbind(y, z)

##    [,1] [,2] [,3]
##  y    1    2    3
##  z    4    5    6

x

##       [,1] [,2] [,3] [,4]
##  [1,]    5    8    7    6
##  [2,]    6    5    8    7
##  [3,]    7    6    5    8

mean(x)

## [1] 6.5

apply(x, 2, mean)

## [1] 6.000000 6.333333 6.666667 7.000000

x

##       [,1] [,2] [,3] [,4]
##  [1,]    5    8    7    6
##  [2,]    6    5    8    7
##  [3,]    7    6    5    8

milista <- list(nombre = "Zamgongazo", no.hijos = 8, edades.hijos = c(2, 4, 6, 8, 10, 12, 15, 20, 22))
str(milista)

##  List of 3
##  $ nombre      : chr "Zamgongazo"
##  $ no.hijos    : num 8
##  $ edades.hijos: num [1:9] 2 4 6 8 10 12 15 20 22

milista$nombre

## [1] "Zamgongazo"

milista[[1]]

## [1] "Zamgongazo"

milista$edades.hijos[5]

## [1] 10

x < 8:11
y <- c("a", "b", "c")
mifichero <- data.frame(edad = x, grupo = y)
mifichero

##    edad.1 edad.2 edad.3 edad.4 grupo
##  1      5      8      7      6     a
##  2      6      5      8      7     b
##  3      7      6      5      8     c

str(mifichero)

##  'data.frame':	3 obs. of  5 variables:
##  $ edad.1: int  5 6 7
##  $ edad.2: int  8 5 6
##  $ edad.3: int  7 8 5
##  $ edad.4: int  6 7 8
##  $ grupo : chr  "a" "b" "c"

mifichero$edad

## NULL

mifichero[[4]]

## [1] 6 7 8

mifichero[2, ]

##    edad.1 edad.2 edad.3 edad.4 grupo
##  2      6      5      8      7     b


sapply(faithful, summary)

##          eruptions  waiting
##  Min.     1.600000 43.00000
##  1st Qu.  2.162750 58.00000
##  Median   4.000000 76.00000
##  Mean     3.487783 70.89706
##  3rd Qu.  4.454250 82.00000
##  Max.     5.100000 96.00000

lapply(faithful, summary)

##  $eruptions
##  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  1.600   2.163   4.000   3.488   4.454   5.100 

##  $waiting
##  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  43.0    58.0    76.0    70.9    82.0    96.0 

x <- c(2, 2, 3, 4, 2, 5)
x

## [1] 2 2 3 4 2 5

xfactor <- factor(x)
xfactor

##  [1] 2 2 3 4 2 5
##  Levels: 2 3 4 5

head(iris)

##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##  1          5.1         3.5          1.4         0.2  setosa
##  2          4.9         3.0          1.4         0.2  setosa
##  3          4.7         3.2          1.3         0.2  setosa
##  4          4.6         3.1          1.5         0.2  setosa
##  5          5.0         3.6          1.4         0.2  setosa
##  6          5.4         3.9          1.7         0.4  setosa

iris$Species

##   [1] setosa     setosa     setosa     setosa     setosa     setosa    
##   [7] setosa     setosa     setosa     setosa     setosa     setosa    
##  [13] setosa     setosa     setosa     setosa     setosa     setosa    
##  [19] setosa     setosa     setosa     setosa     setosa     setosa    
##  [25] setosa     setosa     setosa     setosa     setosa     setosa    
##  [31] setosa     setosa     setosa     setosa     setosa     setosa    
##  [37] setosa     setosa     setosa     setosa     setosa     setosa    
##  [43] setosa     setosa     setosa     setosa     setosa     setosa    
##  [49] setosa     setosa     versicolor versicolor versicolor versicolor
##  [55] versicolor versicolor versicolor versicolor versicolor versicolor
##  [61] versicolor versicolor versicolor versicolor versicolor versicolor
##  [67] versicolor versicolor versicolor versicolor versicolor versicolor
##  [73] versicolor versicolor versicolor versicolor versicolor versicolor
##  [79] versicolor versicolor versicolor versicolor versicolor versicolor
##  [85] versicolor versicolor versicolor versicolor versicolor versicolor
##  [91] versicolor versicolor versicolor versicolor versicolor versicolor
##  [97] versicolor versicolor versicolor versicolor virginica  virginica 
## [103] virginica  virginica  virginica  virginica  virginica  virginica 
## [109] virginica  virginica  virginica  virginica  virginica  virginica 
## [115] virginica  virginica  virginica  virginica  virginica  virginica 
## [121] virginica  virginica  virginica  virginica  virginica  virginica 
## [127] virginica  virginica  virginica  virginica  virginica  virginica 
## [133] virginica  virginica  virginica  virginica  virginica  virginica 
## [139] virginica  virginica  virginica  virginica  virginica  virginica 
## [145] virginica  virginica  virginica  virginica  virginica  virginica 
## Levels: setosa versicolor virginica

iris$Petal.Length

##     [1] 1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 1.5 1.6 1.4 1.1 1.2 1.5 1.3 1.4 1.7 1.5 1.7 1.5
##  [23] 1.0 1.7 1.9 1.6 1.6 1.5 1.4 1.6 1.6 1.5 1.5 1.4 1.5 1.2 1.3 1.4 1.3 1.5 1.3 1.3 1.3 1.6
##  [45] 1.9 1.4 1.6 1.4 1.5 1.4 4.7 4.5 4.9 4.0 4.6 4.5 4.7 3.3 4.6 3.9 3.5 4.2 4.0 4.7 3.6 4.4
##  [67] 4.5 4.1 4.5 3.9 4.8 4.0 4.9 4.7 4.3 4.4 4.8 5.0 4.5 3.5 3.8 3.7 3.9 5.1 4.5 4.5 4.7 4.4
##  [89] 4.1 4.0 4.4 4.6 4.0 3.3 4.2 4.2 4.2 4.3 3.0 4.1 6.0 5.1 5.9 5.6 5.8 6.6 4.5 6.3 5.8 6.1
##  [111] 5.1 5.3 5.5 5.0 5.1 5.3 5.5 6.7 6.9 5.0 5.7 4.9 6.7 4.9 5.7 6.0 4.8 4.9 5.6 5.8 6.1 6.4
##  [133] 5.6 5.1 5.6 6.1 5.6 5.5 4.8 5.4 5.6 5.1 5.1 5.9 5.7 5.2 5.0 5.2 5.4 5.1

tapply(iris$Petal.Length, iris$Species, mean)

##     setosa versicolor  virginica 
##      1.462      4.260      5.552