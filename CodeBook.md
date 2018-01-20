This codebook summarizes the data in tidy_data.txt

IMPORTANT FILES TO NOTE

The ff. files are important for this project:
1) X_train.txt and X_test.txt
  - contains resulting data set for each training and test procedure
2) y_test.txt and y_train.txt
  - contains activity ID for each record in item #1
3) subject_train.txt and subject_test.txt
  - contains the ID of the subject person/ test subject
4) features.txt
  - for clear description of this file, please read features_info.txt
5) activity_labels.txt
  - consists the ID and description of the type of activity


PROCEDURE FOR DATA CLEANUP
1) The files stated above are read and loaded into R. 
2) Data from files in 1-3 are then merged to create one data set to work with. 
  - Data output format (space sep):
  - subjectID activityID  result1 result2, ............................,  result N
  
3) To properly label the columns, the ff. are mapped:
  - subjectID column name is hardcoded to "subject"
  - activityID column name is hardcoded to "activity"
  - result column (measurement) name are set to features.txt

RESULTING DATA DESCRIPTION

Identifier
- activity
- subject

Measurement Names
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()


Activity Names

- ID    Description
- 1     WALKING
- 2     WALKING_UPSTAIRS
- 3     WALKING_DOWNSTAIRS
- 4     SITTING
- 5     STANDING
- 6     LAYING