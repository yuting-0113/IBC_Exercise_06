#Write R code that replicates the functionality of the head function we used in Unix. 
#Your code should define a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file. 
#The selected file content should be printed to the terminal in R.

#read in the file into a variable: 
dat <- read.csv("iris.csv")


#define a variable representing the number of lines to be returned:
n=5


#output the top n lines of the file: 
head(dat,n)