## 01/24/15 David Greene
## Coursera, Getting and Cleaning Data, Course Project
## This script performs these actions on the provided data:
##   1. Merges the training and the test sets to create one data set.
##   2. Extracts only the measurements on the mean and standard deviation for each measurement.
##   3. Uses descriptive activity names to name the activities in the data set
##   4. Appropriately labels the data set with descriptive variable names. 
##   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## To start, download the data provided for this project:
##   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Unzip the file into the current working directory, which will create these directories:
##   ./UCI HAR Dataset/train
##   ./UCI HAR Dataset/test

library(dplyr)

# Read all data files into data frames
train_meas <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_actv <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_meas  <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_actv  <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subj  <- read.table("./UCI HAR Dataset/test/subject_test.txt")
actv_names <- read.table("./UCI HAR Dataset/activity_labels.txt", as.is=TRUE)
meas_names <- read.table("./UCI HAR Dataset/features.txt", as.is=TRUE)

# Clean the provided names to comply with R naming rules, and resolve duplicate names
clean_names <- make.names(meas_names$V2, unique=TRUE)
colnames(train_meas) <- clean_names
colnames(test_meas) <- clean_names

## Perform Step 1:
##   1. Merges the training and the test sets to create one data set.
train_meas <- cbind(person=train_subj$V1, activity=train_actv$V1, train_meas)
test_meas <- cbind(person=test_subj$V1, activity=test_actv$V1, test_meas)
all_meas <- rbind(train_meas, test_meas)

## Perform Step 2:
##   2. Extracts only the measurements on the mean and standard deviation for each measurement.
# I excluded "meanFreq()" columns because "mean" is different than "meanFreq".
df <- select(all_meas, matches("person|activity|\\.mean\\.|\\.std\\."))

## Perform Step 3:
##   3. Uses descriptive activity names to name the activities in the data set
df <- transform(df, activity = actv_names$V2[activity])
write.table(colnames(df),file="abc2.txt", row.name=FALSE)
## Perform Step 4:
##   4. Appropriately labels the data set with descriptive variable names.
# I improved the variable names to make them more readable.
colnames(df) <- gsub("^f"        , "Freq"  , colnames(df))
colnames(df) <- gsub("^t"        , "Time"  , colnames(df))
colnames(df) <- gsub("BodyBody"  , "Body"  , colnames(df))
colnames(df) <- gsub("\\.mean\\.", "Mean"  , colnames(df))
colnames(df) <- gsub("\\.std\\." , "StdDev", colnames(df))
colnames(df) <- gsub("\\."       , ""      , colnames(df))

## Perform Step 5:
##   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
df_by_pers_actv <- group_by(df, person, activity)
df_means_by_pers_actv <- summarise_each(df_by_pers_actv, funs(mean))

## Perform final step:
##   Upload the tidy data set created in step 5 of the instructions.
##   Upload your data set as a txt file created with write.table() using row.name=FALSE
write.table(df_means_by_pers_actv, file="means_by_pers_actv.txt", row.name=FALSE)

