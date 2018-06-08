# Set the working directory

setwd("C:/Users/DIU/Desktop/ML-titanic/")

# load train data
train <- read.csv("C:\\Users\\DIU\\Desktop\\ML-titanic\\train.csv")

# view all the train data
# in train data we have 891 observation or records
# total 12 columns where one is label and least are the features
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
# in test data we have  418 observation/records 
# and it has 11 columns/features and NO 'label'
View(test)

# structure of the dataframe
str(test)

# In test data we do not have any survived column
# we need to predict that through our model
# firstly assume that in our test no one survived, everyone were dead.
# so that i create a survived column and fill it by '0'
# rep function will create 'Survived' column and fill 418 rows with zero's
test$Survived  <- rep(0, 418)

str(test$Survived)


# making the first prediction without applying any algorithm or doing anything
# data.frame() function create a new dataframe with two columns 
prediction1 <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)

# viewing the data frame
View(prediction1)

write.csv(prediction1, file = "prediction1.csv", row.names = FALSE)
