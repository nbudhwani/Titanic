# Import the training set: train
train_url <- "~/train.csv" #grab comma separated value file 'train.csv' from desktop
train <- read.csv(train_url)
  
# Import the testing set: test
test_url <- "~/test.csv"
test <- read.csv(test_url) 
  
# Two-way comparison: row-wise proportions
prop.table(table(train$Sex,train$Survived),1)    #More females survived
					         #Naive Heuristic: All females live; males die
  						 #With static ordering and methods that reduce search by pruning, 
# Copy of test
test_one <- test

# Initialize a Survived column to 0
test_one$Survived <- 0

# Set Survived to 1 if Sex equals "female"
test_one$Survived[test$Sex == "female"] <- 1
