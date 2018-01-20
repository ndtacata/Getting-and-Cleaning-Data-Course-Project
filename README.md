# Getting-and-Cleaning-Data-Course-Project
This is a Peer graded assignment for getting and cleaning data course.

The script run_analysis.R does the ff.

NOTE: The script assumes that the data is already downloaded.

1) Reads the train and test data sets.
2) Merges the two data set to create one data set.
3) Extracts only the measurements on the mean and standard deviation for each measurement in features.txt.
4) Uses descriptive activity names to name the activities in the data set. This is read from activity_labels.txt.
5) Appropriately labels columns of the data set with descriptive variable names based on features.txt and hardcoding the labels "activity" and "subject" for the activity and subject columns. 
6) Lastly, the script creates a tidy data set (tidy_data.txt) that consists of the average of each variable for each activity and each subject. The file is space delimited.

To run the script:
1) Compile script: source("run_analysis.R").
2) Type run_analysis() then press enter.
