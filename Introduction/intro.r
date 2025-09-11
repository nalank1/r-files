# sort one vector according to the values of another vector
# order function 
setwd("C:/Users/16132/OneDrive - University of Ottawa/Desktop/r-files/Introduction")
height <- c(180, 155, 160, 167, 181)
p.names <- c("Joanna", "Charlotte", "Helen", "Karen", "Amy")
height_ord <- order(height)
names_ord <- p.names[height_ord]
print(names_ord)
#need to put print statement there otherwise it doesn't work
#missing data-> NA
#having NA values affects calculating mean, abs, sd
#na.rm -> NA remove
#na.rm = TRUE = remove the NA values first

temp <- c(7.2, NA, 7.1, 6.9, 6.5, 5.8, 5.8, 5.5, NA, 5.5)
mean_temp <- mean(temp) #initially it is NA
mean_temp <- mean(temp, na.rm=TRUE)
mean_temp
#to get help help("mean")
#or ?mean can be used

# saving to an external file
# save(nameOfObject, file = "name_of_file.RData")

## 6 basic types of data: numeric (data contain decimal, they can be whole nums)
##, integer, logical(boolean), complex and character (string values), raw
## is.classofData() -> will turn TRUE or FALSE
# you can use as to change some datas to other types of data (coercing)
# it can cause problem (NA)
# character type (logical test is.character),(coercing as.character)
# factor type = data type used to represent categorical data

#data structures
#simplest data structure - vector (can contain nums, chars, factors, logicals)
# vectors that have length 1 - scalars
# **elements inside vector should be in same class
#** you can include NA to denote missing data in vectors with other data types

# matrices arrays
#matrix is a vector that has additional attributes called dimensions
# arrays are multidimensional matrices
my_mat <- matrix(1:16, nrow = 4, byrow = TRUE)
# convenient way to create is matrix(), array()
# will create a matrix from a sequence 1 to 16 in 4 rows (nrow = 4)
# fill the matrix row-wise (byrow = TRUE)
# when using the array() func, we define the dimentsions using dim = 
# 2 rows, 4 columns in 2 different matrices
my_arr <- array(1:16, dim = c(2, 4, 2))
my_arr
my_mat

# to enter row and column names 
rownames(my_mat) <- c("A", "B", "C", "D")
colnames(my_mat) <- c("a", "b", "c", "d")

# to transpose use t()
# to extract the diagonal elements of a matrix and
# store them as a vector, use diag()

# normal matrix addition and multiplication (%*%) can be performed
# element by element products could be done by *

# Lists
# can contain mixture of data types.
# can store other data structures like vectors and arrays within 
# a list or list of a list

#data frames - 2D obj made up rows x cols
# can contain mixture of data types
#missing data should be entered as NA, rectangular data
# to create data frame - use data.frame()
p.height <- c(180, 155, 160, 167, 181)
p.weight <- c(65, 55, 80, 58, 70)
p.names <- c("Joanna", "Charlotte", "Helen", "Karen", "Amy")

dataf <- data.frame(height = p.height, weight = p.weight, names = p.names)
dataf

dim(dataf) #it will print out the dimensions (row x col)
str(dataf)  # will return a compact summary of the structure of the data frame

#if the data we had, was like this (after printing)
# 'data.frame':   5 obs. of  3 variables:
#  $ height: num  180 155 160 167 181
#  $ weight: num  65 50 52 58 70
#  $ names : chr  "Joanna" "Charlotte" "Helen" "Karen" ...

#if we don't want chr, we can change it like this, stringsAsFactors = TRUE
#now everything is in factor with 5 levels
# p.height <- c(180, 155, 160, 167, 181) # nolint
# p.weight <- c(65, 50, 52, 58, 70) # nolint: commented_code_linter.
# p.names <- c("Joanna", "Charlotte", "Helen", "Karen", "Amy") # nolint

# dataf <- data.frame(
#   height = p.height, weight = p.weight, names = p.names,
#   stringsAsFactors = TRUE # nolint
# )
# str(dataf) # nolint