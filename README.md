# Getting-and-Cleaning-Data-Course-Project
This is a Peer graded assignment for getting and cleaning data course.

## Files on this Repo
1) README.md - provides a short description of how the script runs and a procedure on how to run the script
2) CodeBook.md - provides description of raw files to be used, procedure on cleaning data, resulting data column names
3) run_analysis.R - contains the script
4) tidy_data.txt - contains the resulting space delimited tidy data


## Procedure
The script run_analysis.R does the ff.

NOTE: The script assumes that the data is already downloaded.
File can be downloaded from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

1) Reads the train and test data sets.
2) Merges the two data set to create one data set.
3) Extracts only the measurements on the mean and standard deviation for each measurement in features.txt.
4) Uses descriptive activity names to name the activities in the data set. This is read from activity_labels.txt.
5) Appropriately labels columns of the data set with descriptive variable names based on features.txt and hardcoding the labels "activity" and "subject" for the activity and subject columns. 
6) Lastly, the script creates a tidy data set (tidy_data.txt) that consists of the average of each variable for each activity and each subject. The file is space delimited.

To run the script:
1) Compile script: source("run_analysis.R").
2) Type run_analysis() then press enter.
