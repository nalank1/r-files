age <- read.table(
  file = "data/age.csv", header = TRUE, sep = ",", dec = ".",
  stringsAsFactors = TRUE
)

# file path needs to be enclosed in single/double quotes
#header=TRUE - first row of the data
#if we didn't want to give the location
# read.csv("raw.githubusercontent.com")
# if don't want to specify the location
#read.csv(file.choose()) dialog box pops out
#contains the variable names
#if it is not, put header=FALSE
#sep="," - specifies what is file delimiter, field separator
#for tab separated files (TSV), you can use sep = "\t"
#dec = "." - decimal point character
# stringsAsFactors - text columns are converted to factors
print(age)