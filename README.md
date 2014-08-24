run_analysis.r read me
======================

This project is the submission for the Course Project of the Coursera Course Getting and Cleaning Data. 

What is this script for?

The run_analysis.R file takes the training and test data from the dataset found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and combines the different files into one tidy datset.

These are the steps the script performs:


This script loads data from the working directory and finds data in the folder "UCI HAR Dataset"
and tidies the set to deliver a data set with the average of each variable for each activity and each subject
Then it will export a file named GettingAndCleaningData.txt to the working directory.

All steps in sequence:

1. Loading a table of  masterdata of the accelerimeter and gyroscope into a set called features from features.txt
2. Loading a table of  masterdata of activity labels from activity_labels.txt
3. Creating a set called test by reading the subject_test.txt, X_test.txt and Y_test.txt combined via cbind
4. Creating a set called training by reading the subject_train.txt, X_train.txt, Y_train.txt combined via cbind
5. Create a full set called fullSet by rbind test and training set created in 3. and 4. and merge it with activity labels
6. Get an index of the mean and std features values and creates a set called selectedFeaturesSet with the filtered data
7. Generate a new tidy set called aggSet which is grouped by the subject (2) and activity (564) column and calculates mean value for each
8. Write the aggSet to a text file without delimiter and row description

For further details underneath all main variable used in the script:

activity_lables:        Activity labels read in from the file UCI HAR Dataset/activity_labels.txt

aggSet:                 Tidy dataset as a result of the script

features:               Labels read in from UCI HAR Dataset/features.txt describing the Features of the accelerometer and gyroscope

fullSet:                Combined set of test and training set reflecting the full data set for the analysis

iSelectedFeatures:      Index on the selected features (Mean and Standard Deviation) used to collect the correct data

selectedFeaturesSet:    Set of data based on the index which select just Mean and Standard Deviation

test:                   Combined set by test.x, test.y and test.subject

test.subject:           Data from UCI HAR Dataset/test/subject_test.txt = Subjects of the test range from 1 to 30

test.x:                 Data from UCI HAR Dataset/test/X_test.txt = Test set

test.y:                 Data from UCI HAR Dataset/test/y_test.txt = Test labels

training:               Combined set by training.x, training.y and training.subject

training.subject:       Data from UCI HAR Dataset/train/subjects_train.txt = Subjects of the test range from 1 to 30

training.x:             Data from UCI HAR Dataset/train/X_train.txt = Training set

training.y:             Data from UCI HAR Dataset/train/y_train.txt = Training labels

Please refer to the code book if you need further explanation for the result file GettingAndCleaningData.txt. 