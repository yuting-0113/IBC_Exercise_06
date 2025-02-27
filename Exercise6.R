#Question1:
#Write R code that replicates the functionality of the head function we used in Unix. 
#Your code should define a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file. 
#The selected file content should be printed to the terminal in R.

#read in the file into a variable: 
dat <- read.csv("iris.csv")


#define a variable representing the number of lines to be returned:
n=5


#output the top n lines of the file: 
head(dat,n)








#Question2:
#Load iris.csv into file
file <- read.csv(file ="iris.csv")
  
#Question2:
#(1) print the last 2 rows in the last 2 columns to the R terminal:

#get the last 2 column of file into newdata:
LastColumn2 <- file[, 4:ncol(file)]
#print the last 2 rows
tail(LastColumn2,2)

#(2)get the number of observations for each species included in the data set:

#the number of observations for setosa:
nrow(file[file$Species == "setosa",])

#the number of observations for versicolor:
nrow(file[file$Species == "versicolor",])

#the number of observations for virginica:
nrow(file[file$Species == "virginica",])

#(3)get the rows with Sepal.Width >3.5:
file[(file$Sepal.Width > 3.5),]

#(4)write the data for the species setosa to a comma-deimited file names 'setosa.csv'
setosa <- file[file$Species == "setosa",]
write.table(setosa, file = "setosa.csv", sep = ",")


#(5)caculate the mean, minimum, and maximum of Patal.Length for observations from virginica:

#get the rows of virginica and store them into virginica:
virginica <- file[file$Species == "virginica",]
#mean:
mean(virginica$Petal.Length)
#minimum:
min(virginica$Petal.Length)
#maximum:
max(virginica$Petal.Length)