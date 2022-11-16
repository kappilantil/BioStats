setwd("/Users/kappilantil/Desktop/BioStats")

#' Lecture 01
#' Kappil Antil
#' Bio Informatics and Bio-Statistics

# Library
library(readr)
library(dplyr)
library(ggplot2)

print("hello world, I am very happy today") #option + enter for mac to run the program

#string - are the characters
print("Hi Kappil")

#variable - place to store data
char_var <-  c("kappil", "antil")
num <- c(12, 10)

#mix_var 
mix_var <- c("6", 7)
mix_2_num <- as.numeric(mix_var) #changing to numeric

# population
pop <- c(1:15)

#sample <- a subset of population
set.seed(116)
sample(x=pop, size=5, replace=FALSE)


packageurl<-"https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.1.tar.gz"

install.packages(packageurl, repos=NULL, type="source")

#install package
install.packages('faraway')

#library
library(faraway)

#view databases
View(diabetes) #viewing the datasett


class(diabetes) #checking the object type
diabetes[1]
diabetes[2]

#selecting a particular data by row and column
diabetes[1,1]
diabetes$chol #getting a specific column
diabetes[, "location"] # access column by column name


min_vars <- diabetes[, c("chol", "location")] #selecting multiple columns
colnames(diabetes) #finding the names of the columns
rownames(diabetes) #finding the names of the rows of the dataset
dim(diabetes) #gives the dimension of the database
nrow(min_vars) #gives the number of the rows
ncol(diabetes) #gives the number of columns


#Find the factor, convert into numerical representation
loc_ <- diabetes[, "location"]
class(loc_)
as.numeric(loc_)
loc_[1]
loc_[2]

#summary function
summary(diabetes)


#Logical operator
is.na(diabetes$chol)
logical_var <- is.na(diabetes$chol)
which(logical_var)
idx_no <- which(logical_var)
chol_no_na <- diabetes$chol[-idx_no]
which(is.na(chol_no_na))

#table
length(diabetes$gender)
tb_gender <- table(diabetes$gender)
barplot(tb_gender)
hist(chol_no_na)

par(mfrow=c(1,2))
barplot(tb_gender, main="barplot", col=c("skyblue", "orange"))
hist(chol_no_na, main="histo", col="grey50")

rm(list=ls()) #management of space
