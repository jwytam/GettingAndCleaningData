# run_analysis.R
# 23/05/2014
# Note: Please ensure that the datasets are contained in the current working directory

# Read data from the features and activity labels dataset
features <- read.table("features.txt")
activityLabels  <- read.table("activity_labels.txt")

# Read data from all the training related datasets
trainLabel <- read.table("./train/y_train.txt")
trainSubject <- read.table("./train/subject_train.txt")
train <- read.table("./train/X_train.txt")

# Read data from all the testing related datasets
testLabel  <- read.table("./test/y_test.txt")
testSubject <- read.table("./test/subject_test.txt")
test <- read.table("./test/X_test.txt")

# Set the column names of the training and testing datasets
colnames(train) <- features$V2
colnames(test) <- features$V2

# Add subject to the training and testing datasets
train["subject"] <- NA
test["subject"] <- NA
train$subject <- trainSubject$V1
test$subject <- testSubject$V1

# Add activity to the training and testing datasets
train["V1"] <- NA
test["V1"] <- NA
train$V1 <- trainLabel$V1
test$V1 <- testLabel$V1

# Link the activity labels to the training and testing labels
train <- merge(train, activityLabels, by.y="V1", all.x=TRUE)
test <- merge(test, activityLabels, by.y="V1", all.x=TRUE)

# Combine the training and testing datasets
ds <- rbind(train, test)

# Only retrieve the required columns
ds <- ds[, c(2:564)]
colnames(ds)[563] <- "activityDescription"

# Find the columns related to mean (excluding mean frequency), standard deviation, subject and activity
newDs <- ds[, grepl("mean()", colnames(ds), fixed=TRUE) == "TRUE" | grepl("std()", colnames(ds)) == "TRUE" | grepl("activityDescription", colnames(ds)) == "TRUE" | grepl("subject", colnames(ds)) == "TRUE"]

# Find the average of all columns grouped by subject and activity
result <- aggregate(newDs[,1:66],by=list(newDs$activity, newDs$subject), mean)

# Rename grouping columns
colnames(result)[1] <- "activity"
colnames(result)[2]  <- "subjectid"

# Clean column names
colnames(result) <- gsub(pattern="\\(\\)", x=colnames(result), replacement="")
colnames(result) <- gsub(pattern="-", x=colnames(result), replacement="")
colnames(result) <- tolower(colnames(result))
colnames(result) <- gsub(pattern="^t", x=colnames(result), replacement="time")
colnames(result) <- gsub(pattern="^f", x=colnames(result), replacement="frequency")
colnames(result) <- gsub(pattern="bodybody", x=colnames(result), replacement="body")
colnames(result) <- gsub(pattern="acc", x=colnames(result), replacement="accelerometer")
colnames(result) <- gsub(pattern="gyro", x=colnames(result), replacement="gyroscope")
colnames(result) <- gsub(pattern="std", x=colnames(result), replacement="standarddeviation")
colnames(result) <- gsub(pattern="mag", x=colnames(result), replacement="magnitude")

# Output the data file
write.table(result, "C:/Users/user/Desktop/tidy_data.txt", sep="\t")