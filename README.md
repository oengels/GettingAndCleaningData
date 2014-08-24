GettingAndCleaningData
======================

This script loads data from the working directory and finds data in the folder "UCI HAR Dataset"
and tidies the set to deliver a data set with the average of each variable for each activity and each subject
These are the steps the script performs:

1. Loading a table of  masterdata of the accelerimeter and gyroscope into a set called features from features.txt
2. Loading a table of  masterdata of activity labels from activity_labels.txt
3. Creating a set called test by reading the subject_test.txt, X_test.txt and Y_test.txt combined via cbind
4. Creating a set called training by reading the subject_train.txt, X_train.txt, Y_train.txt combined via cbind
5. Create a full set called fullSet by rbind test and training set created in 3. and 4. and merge it with activity labels
6. Get an index of the mean and std features values and creates a set called selectedFeaturesSet with the filtered data
7. Generate a new tidy set called aggSet which is grouped by the subject (2) and activity (564) column and calculates mean value for each

