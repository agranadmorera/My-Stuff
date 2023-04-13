"Hello World!"
10

5+5

print("Hello World!")

for (x in 1:10) {
  print(x)
}

# "Good morning!"
"Good night!"


name <- 'Zambongo'
age <- 35

name # output 'Zambongo'
age # output 35

name <- "Zambonguito"

name # auto-print the value of the name variable

print(name)

text <- 'lepra'
paste('Tengo', text)

text1 <- 'Tengo lepra'
text2 <- 'y me duele!'

paste(text1, text2)

num1 <- 30
num2 <- 5

num1 + num2

var1 <- var2 <- var3 <- "Orange"

# Printing all variable values
var1
var2
var3

x <- 10.5
class(x)

x <- 1000L
class(x)

x <- 35
class(x)

x <- 9i + 3
class(x)

x <- TRUE
class(x)

x <- 10.5
y <- 55

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)

x <- 3+5i
y <- 5i

# Print values of x and y
x
y

# Print the class name of x and y
class(x)
class(y)

x <- 1L 
y <- 2

# conversion
a <- as.numeric(x)
b <- as.integer(y)

# print values of x and y
x
y

class(a)
class(b)


10 + 5
10 - 5

max(5, 10, 15)

min(30, 35, 90)

sqrt(144)

abs(-4.7)

ceiling(1.5)
ceiling(1.4)
floor(9.3)
floor(11.8)

str <- 'Hello'
str

str <- 'Panteri Panteri, vi stre hrabri momci'
str
cat(str)
nchar(str)


str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str)


str1 <- 'Hello'
str2 <- 'Zambongo'

paste(str1, str2)


a <- 10
b <- 9

a > b


a <- 200
b <- 33

if (b > a) {
  print ("b is greater than a")
} else {
  print("b is not greater than a")
}



fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}


my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")


# Vector of strings
fruits <- c("banana", "apple", "orange")

# Print fruits
fruits


# Vector of numerical values
numbers <- c(1, 2, 3)

# Print numbers
numbers

# Vector with numerical values in a sequence
numbers <- 1:10
numbers

# Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
numbers1

# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
numbers2

# Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)
log_values

# Vector length
fruits <- c("banana", "mango", "pineapple")
length(fruits)


fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers


fruits <- c("mango", "pineapple", "starfruit")
fruits[2]


fruits <- c("pineapple", "apple", "orange", "mango", "lemon")

# Access the first and third item (banana and orange)
fruits[c(2, 5)]

# Access all items except for the first item
fruits[c(-1)]

# Changing items
fruits <- c("pineapple", "apple", "orange", "mango", "lemon")

fruits[1] <- "plum"

fruits


# Repeat vectors
repeat_each <- rep(c(1, 2, 3), each = 3)
repeat_each

# Repeat sequence
repeat_times <- rep(c(1, 2, 3), times = 3)
repeat_times

repeat_indepent <- rep(c(1, 2, 3), times = c(5, 2, 1))
repeat_indepent

numbers <- 1:10
numbers

numbers <- seq(from = 0, to = 1000, by = 20)
numbers

# List of strings
mylist <- list('mango', 'pineapple', 'tomato', 'orange', 'lemon')
mylist
mylist[3]

mylist <- list('mango', 'pineapple', 'tomato', 'orange', 'lemon')
mylist[3] <- 'watermelon'

mylist
length(mylist)

mylist <- list('mango', 'pineapple', 'watermelon', 'orange', 'lemon')

'banana' %in% mylist
'orange' %in% mylist

append(mylist, "plum")

mylist

mylist <- list('mango', 'pineapple', 'watermelon', 'orange', 'lemon')
append(mylist, 'plum', after = 4)

mylist <- mylist <- list('mango', 'pineapple', 'tomato', 'orange', 'lemon')

for (x in mylist) {
  print(x)
}


mylist1 <- list('plum', 'apple', 'orange')
mylist2 <- list('lemon', 'watermelon', 'mango')
mylist3 <- c(mylist1, mylist2)

mylist3


matr1x <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 4, ncol = 3)
matr1x

matrix1 <- matrix(c('lemon', 'watermelon', 'mango', 'plum', 'apple'), nrow = 3, ncol = 5)
matrix1

matrix1[1, 4]
matrix1[,3]
matrix1[2,]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

newmatrix


thismatrix <- thismatrix[-c(1), -c(1)]
thismatrix


matrix1 <- matrix(c('lemon', 'watermelon', 'mango', 'plum', 'apple'), nrow = 3, ncol = 5)
matrix1

'apple' %in% matrix1
'strawberry' %in% matrix1


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}



# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined

# Array
my_array <- c(1:24)
multiarray <- array(my_array, dim = c(4, 3, 2))

multiarray[2, 3, 2]

my_array <- c

# Access all the items from the 1st row from matrix one
multiarray <- array(my_array, dim = c(4, 3, 2))
multiarray[c(1),,1]

# Access all the items from the 1st column from matrix one
multiarray <- array(my_array, dim = c(4, 3, 2))
multiarray[,c(1), 1]

# Please keep in mind!
# A comma (,) before c() means that we want to access the column.
# A comma (,) after c() means that we want to access the row.

my_array <- c(1:24)
multiarray <- array(my_array, dim = c(4, 3, 2))

2 %in% multiarray


my_array <- c(1:24)
multiarray <- array(my_array, dim = c(4, 3, 2))

dim(multiarray)

length(multiarray)



# Create a DF
Data_Frame <- data.frame (
  Training = c('Strength', 'Stmina', 'Other'),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

# Summarizing data
Data_Frame <- data.frame (
  Training = c('Strenght', 'Stamina', 'Other'),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

summary(Data_Frame)

# Access items
Data_Frame <- data.frame (
  Training = c('Strenght', 'Stamina', 'Other'),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame[1]

Data_Frame[['Training']]

Data_Frame[['Pulse']]

Data_Frame$Training

Data_Frame$Duration

# Add rows
Data_Frame <- data.frame (
  Training = c('Strenght', 'Stamina', 'Other'),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

New_row_DF <- rbind(Data_Frame, c('Strength', 110, 110))

New_row_DF

New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))

New_col_DF

dim(Data_Frame)

ncol(Data_Frame)
nrow(Data_Frame)

length(Data_Frame)

# Combining DF's
Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)


Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)


New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame


Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)


New_Data_Frame