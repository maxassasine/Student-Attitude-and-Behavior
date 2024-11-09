# Load libraries
library(dplyr) # Data manipulation
library(tidyr) # Data manipulation: drop_na function
library(ggplot2) # Data visualization
library(readr) # for read_csv function

# read data 
Students = read.csv("D:/ACER UFD/Student Attitude and Behavior.csv")

head(Students)
summary(Students)
str(Students)

# Distribution Plots
par(mfrow=c(3, 3)) # Setting up a grid for multiple plots

hist(Students$Height.CM., main="Height Distribution", xlab="Height (CM)")
hist(Students$Weight.KG., main="Weight Distribution", xlab="Weight (KG)")
hist(Students$X10th.Mark, main="10th Grade Mark Distribution", xlab="10th Grade Mark")
hist(Students$X12th.Mark, main="12th Grade Mark Distribution", xlab="12th Grade Mark")
hist(Students$college.mark, main="College Mark Distribution", xlab="College Mark")

par(mfrow=c(1, 1)) # Resetting the grid

# Count Plots
par(mfrow=c(3, 2)) # Setting up a grid for multiple plots

barplot(table(Students$Certification.Course), main="Certification Course")
barplot(table(Students$Gender), main="Gender")
barplot(table(Students$Department), main="Department")
barplot(table(Students$hobbies), main="Hobbies")
barplot(table(Students$daily.studing.time), main="Daily Studying Time")
barplot(table(Students$prefer.to.study.in), main="Preferred Study Time")

par(mfrow=c(1, 1)) # Resetting the grid

# Correlation Analysis
correlation_matrix <- cor(Students[, c("Height.CM.", "Weight.KG.", "X10th.Mark", "X12th.Mark", "college.mark")])
correlation_matrix

# Correlation Analysis
correlation_matrix <- cor(Students[, c("Height.CM.", "Weight.KG.", "X10th.Mark", "X12th.Mark", "college.mark")])
correlation_matrix
