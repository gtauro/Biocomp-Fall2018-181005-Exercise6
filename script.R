rm(list = ls())  # clears global environment

setwd("~/Biocomp-Fall2018-181005-Exercise6")  # sets working directory to exercise file

# QUESTION 1

data <- read.csv(file = "iris.csv", stringsAsFactors = FALSE)  # defines a variable with iris.csv file
numLines = 10  # variable for number of lines
head(data, n = numLines)  # use of head function, prints out first 10 lines of data

# QUESTION 2.1

widthSpecies = data[ ,c("Petal.Width", "Species")]  # defines last two columns of iris.csv
tail(widthSpecies, n = 2)  # use of tail function, prints out last two lines of Petal.Width and Species

# QUESTION 2.2

setosa = data[data$Species == "setosa", ]  # records all instances of setosa species
numSetosa = nrow(setosa)  # defines number of setosa observations recorded

versicolor = data[data$Species == "versicolor", ]  # records all instances of versicolor species
numVersicolor = nrow(versicolor)  # defines number of versicolor observations recorded

virginica = data[data$Species == "virginica", ]  # records all instances of virginica species
numVirginica = nrow(virginica)  # defines number of virginica observations recorded

paste0("Number of setosa species observed: ", numSetosa)  # prints out number of setosa observations
paste0("Number of versicolor species observed: ", numVersicolor)  # prints out number of versicolor observations
paste0("Number of virginica species observed: ", numVirginica)  # prints out number of virginica observations

# QUESTION 2.3

highWidth = data[data$Sepal.Width > 3.5, ]  # records all observations with Sepal.Width above 3.5
highWidth  # prints out highWidth

# QUESTION 2.4

write.csv(setosa, file = "setosa.csv")  # writes setosa variable defined in Q2.2 to setosa.csv

# QUESTION 2.5

valLengthVirginica = summary(virginica$Petal.Length) # summarizes Petal.Length statistical information of virginica variable defined in Q2.2
valLengthVirginica[c(4,1,6)] # prints out 4th (mean), 1st (min), and 6th (max) columns of valLengthVirginica

