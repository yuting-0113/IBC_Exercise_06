#Load iris.csv into file
file <- read.csv(file ="iris.csv")
  
#Question2:
#(1) print the last 2 rows in the last columns to the R terminal:

#get the last column of file into newdata:
newdata <- file[,4]
#print the last 2 rows
tail(newdata,2)

#(2)get the number of observations for each species included in the data set:

#the number of observations for setosa:
nrow(file[file$Species == "setosa",])

#the number of observations for versicolor:
nrow(file[file$Species == "versicolor",])

#the number of observations for virginica:
nrow(file[file$Species == "virginica",])

#(3)get the rows with Sepal.Width >3.5:

print("the rows with Sepal.Width > 3.5:")
file[(file$Sepal.Width > 3.5),]

#(4)write the data for the species setosa to a comma-deimited file names 'setosa.csv'

#(5)caculate the mean, minimum, and maximum of Patal.Length for observations from virginica:

#get the rows of virginica and store them into virginica:
virginica <- file[file$Species == "virginica",]
#mean:
mean(virginica$Petal.Length)
#minimum:
min(virginica$Petal.Length)
#maximum:
max(virginica$Petal.Length)