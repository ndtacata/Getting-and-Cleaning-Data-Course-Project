run_analysis <- function()
{
    
    
    library(plyr)
    
    ##Read train Data
    X_Train <- read.table(".//train//X_train.txt")
    Y_Train <- read.table(".//train//y_train.txt")
    subject_Train <- read.table(".//train//subject_train.txt")
    
    ##Read Test Data
    X_Test <- read.table(".//test//X_test.txt")
    Y_Test <- read.table(".//test//y_test.txt")
    subject_Test <- read.table(".//test//subject_test.txt")
    
    ##1. Merge the training and the test sets to create one data set.
    X <- rbind(X_Train, X_Test)
    Y <- rbind(Y_Train, Y_Test)
    subject <- rbind(subject_Train, subject_Test)
    
    
    ##2.Extract only the measurements on the mean and standard deviation for each measurement.
    features <- read.table(".//features.txt")
    features_fin <- grepl("-(mean|std)\\(\\)", features[, 2])
    
    ##print(features_fin)
    
    ##3. Uses descriptive activity names to name the activities in the data set
    activities <- read.table(".//activity_labels.txt")
    Y[, 1] <- activities[Y[, 1], 2]
    names(Y) <- "activity"
    
    ##4. Appropriately label the data set with descriptive variable names.
    names(subject) <- "subject"
    
    X <- X[, features_fin]
    names(X) <- features[features_fin, 2]
    
    findata <- cbind(X, Y, subject)
    
    ##remove columns with NA column name
    findata <- findata[!is.na(names(findata))]
    
    ##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    tidy_data<-aggregate(. ~subject + activity, findata, mean)
    write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
}