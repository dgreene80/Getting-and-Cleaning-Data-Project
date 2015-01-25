1/24/15 David Greene
### Getting and Cleaning Data, Course Project
### Code Book for means_by_pers_actv.txt
#### Original Data
The original data for this project can be downloaded from either of these two locations:  
  * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  * http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

#### Study Design
#####Human Activity Recognition Using Smartphones Dataset
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
International Workshop of Ambient Assisted Living (IWAAL 2012)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was
selected for generating the training data and 30% the test data.

More information about the original data can be found here:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### Transformations
For this project, I performed the following tranformations on the original data:  
* Combined all training data and the testing data into one data set
* Retained only columns related to mean and standard deviation
* Replaced activity coded values with descriptive labels
* Cleaned column names to comply with R naming rules
* Summarized the data by taking the mean of every measure, by person and activity
* Created a tidy data file called means_by_pers_actv.txt

#### Code Book
| Column Name               | Description                                     | Possible Values                                                          |
| ------------------------- | ----------------------------------------------- | ------------------------------------------------------------------------ |
| person                    | Person Identifier                               | 1 to 30                                                                  |
| activity                  | Activity Name                                   | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
| TimeBodyAccMeanX          | Grouped Average for tBodyAcc-mean()-X           | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccMeanY          | Grouped Average for tBodyAcc-mean()-Y           | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccMeanZ          | Grouped Average for tBodyAcc-mean()-Z           | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccStdDevX        | Grouped Average for tBodyAcc-std()-X            | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccStdDevY        | Grouped Average for tBodyAcc-std()-Y            | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccStdDevZ        | Grouped Average for tBodyAcc-std()-Z            | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccMeanX       | Grouped Average for tGravityAcc-mean()-X        | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccMeanY       | Grouped Average for tGravityAcc-mean()-Y        | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccMeanZ       | Grouped Average for tGravityAcc-mean()-Z        | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccStdDevX     | Grouped Average for tGravityAcc-std()-X         | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccStdDevY     | Grouped Average for tGravityAcc-std()-Y         | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccStdDevZ     | Grouped Average for tGravityAcc-std()-Z         | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkMeanX      | Grouped Average for tBodyAccJerk-mean()-X       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkMeanY      | Grouped Average for tBodyAccJerk-mean()-Y       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkMeanZ      | Grouped Average for tBodyAccJerk-mean()-Z       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkStdDevX    | Grouped Average for tBodyAccJerk-std()-X        | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkStdDevY    | Grouped Average for tBodyAccJerk-std()-Y        | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkStdDevZ    | Grouped Average for tBodyAccJerk-std()-Z        | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroMeanX         | Grouped Average for tBodyGyro-mean()-X          | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroMeanY         | Grouped Average for tBodyGyro-mean()-Y          | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroMeanZ         | Grouped Average for tBodyGyro-mean()-Z          | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroStdDevX       | Grouped Average for tBodyGyro-std()-X           | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroStdDevY       | Grouped Average for tBodyGyro-std()-Y           | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroStdDevZ       | Grouped Average for tBodyGyro-std()-Z           | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkMeanX     | Grouped Average for tBodyGyroJerk-mean()-X      | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkMeanY     | Grouped Average for tBodyGyroJerk-mean()-Y      | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkMeanZ     | Grouped Average for tBodyGyroJerk-mean()-Z      | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkStdDevX   | Grouped Average for tBodyGyroJerk-std()-X       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkStdDevY   | Grouped Average for tBodyGyroJerk-std()-Y       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkStdDevZ   | Grouped Average for tBodyGyroJerk-std()-Z       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccMagMean        | Grouped Average for tBodyAccMag-mean()          | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccMagStdDev      | Grouped Average for tBodyAccMag-std()           | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccMagMean     | Grouped Average for tGravityAccMag-mean()       | -1 to 1 (normalised and unitless)                                        |
| TimeGravityAccMagStdDev   | Grouped Average for tGravityAccMag-std()        | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkMagMean    | Grouped Average for tBodyAccJerkMag-mean()      | -1 to 1 (normalised and unitless)                                        |
| TimeBodyAccJerkMagStdDev  | Grouped Average for tBodyAccJerkMag-std()       | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroMagMean       | Grouped Average for tBodyGyroMag-mean()         | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroMagStdDev     | Grouped Average for tBodyGyroMag-std()          | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkMagMean   | Grouped Average for tBodyGyroJerkMag-mean()     | -1 to 1 (normalised and unitless)                                        |
| TimeBodyGyroJerkMagStdDev | Grouped Average for tBodyGyroJerkMag-std()      | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccMeanX          | Grouped Average for fBodyAcc-mean()-X           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccMeanY          | Grouped Average for fBodyAcc-mean()-Y           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccMeanZ          | Grouped Average for fBodyAcc-mean()-Z           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccStdDevX        | Grouped Average for fBodyAcc-std()-X            | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccStdDevY        | Grouped Average for fBodyAcc-std()-Y            | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccStdDevZ        | Grouped Average for fBodyAcc-std()-Z            | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkMeanX      | Grouped Average for fBodyAccJerk-mean()-X       | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkMeanY      | Grouped Average for fBodyAccJerk-mean()-Y       | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkMeanZ      | Grouped Average for fBodyAccJerk-mean()-Z       | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkStdDevX    | Grouped Average for fBodyAccJerk-std()-X        | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkStdDevY    | Grouped Average for fBodyAccJerk-std()-Y        | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkStdDevZ    | Grouped Average for fBodyAccJerk-std()-Z        | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroMeanX         | Grouped Average for fBodyGyro-mean()-X          | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroMeanY         | Grouped Average for fBodyGyro-mean()-Y          | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroMeanZ         | Grouped Average for fBodyGyro-mean()-Z          | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroStdDevX       | Grouped Average for fBodyGyro-std()-X           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroStdDevY       | Grouped Average for fBodyGyro-std()-Y           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroStdDevZ       | Grouped Average for fBodyGyro-std()-Z           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccMagMean        | Grouped Average for fBodyAccMag-mean()          | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccMagStdDev      | Grouped Average for fBodyAccMag-std()           | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkMagMean    | Grouped Average for fBodyBodyAccJerkMag-mean()  | -1 to 1 (normalised and unitless)                                        |
| FreqBodyAccJerkMagStdDev  | Grouped Average for fBodyBodyAccJerkMag-std()   | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroMagMean       | Grouped Average for fBodyBodyGyroMag-mean()     | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroMagStdDev     | Grouped Average for fBodyBodyGyroMag-std()      | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroJerkMagMean   | Grouped Average for fBodyBodyGyroJerkMag-mean() | -1 to 1 (normalised and unitless)                                        |
| FreqBodyGyroJerkMagStdDev | Grouped Average for fBodyBodyGyroJerkMag-std()  | -1 to 1 (normalised and unitless)                                        |

