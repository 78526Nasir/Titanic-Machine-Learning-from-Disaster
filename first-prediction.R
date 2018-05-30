# Set the working directory

# setwd("~/datasets/titanic")

# load train data
train <- read.csv("C:\\Users\\DIU\\Desktop\\ML-titanic\\train.csv")

# view all the train data
View(train)

# train data frame structure
str(train)

# Finding out the total number of passengers based on survived/dead
# 0 means dead
# 1 means survived
table(train$Survived)

# Finding out the number of male and female
table(train$Sex)

# finding the percentage
prop.table(table(train$Survived)) * 100 
prop.table(table(train$Sex)) * 100

# generate bar plot on train survived
barplot(table(train$Survived), xlab = "survived", ylab = "person", main = "Bar plot of survived/dead passengers")

# load test date
test <-read.csv("C:/Users/DIU/Desktop/ML-titanic/test.csv")

# viewing all the data
View(test)

# structure of the dataframe
str(test)

# In test data we do not have any survived column
# we need to predict that through our model
# firstly assume that in our test no one survived, everyone were dead.
# so that i create a survived column and fill it by '0'

test$Survived  <- rep(0, 418)

str(test$Survived)
View(test)
