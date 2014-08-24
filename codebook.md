### Codebook

This codebook describes the variables uses in run_analysis.R script in alphabetical order:

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