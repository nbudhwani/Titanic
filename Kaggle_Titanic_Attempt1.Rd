# Import the training set: train
train_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"
train <- read.csv(train_url)
  
# Import the testing set: test
test_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"
test <- read.csv(test_url)
  
# Two-way comparison: row-wise proportions
prop.table(table(train$Sex,train$Survived),1)    #More females survived
									#Naive Heuristic: All females live; males die

# Copy of test
test_one <- test

# Initialize a Survived column to 0
test_one$Survived <- 0

# Set Survived to 1 if Sex equals "female"
test_one$Survived[test$Sex == "female"] <- 1