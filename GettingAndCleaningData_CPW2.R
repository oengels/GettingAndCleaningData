# Load masterdata from directory

# Features of the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ:
features <- read.table("UCI HAR Dataset/features.txt", sep = " ")
# Class labels with their activity name
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", sep = " ")

## Task 1: Merges the training and the test sets to create one data set.
# Load the test set data
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = " ")
# This is the test set data
# For x data omit the separator since white spaces appear at random and use features V2 as column names
test.x <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
# These are the lables of the test set
test.y <- read.table("UCI HAR Dataset/test/y_test.txt", sep = " ")

# Load training set data
training.subject <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = " ")
# Same approach for x in the traing set > V2 column names
training.x <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
training.y <- read.table("UCI HAR Dataset/train/y_train.txt", sep = " ")

# Combining the tables to one set named test with cbind
test <- cbind(test.subject,test.y,test.x)
# Add column names
colnames(test)[1:2] <- c("Subject","ActivityClass")

# Combining the tables to one set named training with cbind
training <- cbind(training.subject, training.y, training.x)
# Add column names
colnames(training)[1:2] <- c("Subject","ActivityClass")

# RBind (Union) test and training to one set
fullSet <- rbind(test,training)
# Merge with Activity Labels to a fullSet
fullSet <- merge(x = fullSet, y = activity_labels, by.x = "ActivityClass", by.y = "V1", all.x=TRUE)
# Add description for the Activity Column
colnames(fullSet)[564] <- "Activity"


## Task 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
# Get all an index for selected features mean and deviation
# Add an additional 2 to set the right index as columns were added
iSelectedFeatures<- c(grep("mean()",features[,2]),grep("std()",features[,2]))+2

# Generate the set with selected features from the fullSet > with a 564 variables
selectedFeaturesSet <- fullSet[, c(1,2,iSelectedFeatures,564)]
## Task 3: Uses descriptive activity names to name the activities in the data set
## Task 4: Appropriately labels the data set with descriptive variable names
# Map Activity to ActivityClass Column
selectedFeaturesSet$ActivityClass <- selectedFeaturesSet$Activity
# Select just 81 to remove redundant activity information
selectedFeaturesSet <- selectedFeaturesSet[,1:81]


## Task 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Calculate the mean of the fullSet by subject (2) and activity (564)
aggSet <- aggregate(fullSet[,3:563], by = fullSet[,c(2,564)], FUN=mean)

