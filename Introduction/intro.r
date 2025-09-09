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
