1/24/15 David Greene  
Getting and Cleaning Data, Course Project

#### Assignment
Create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Description of files
| Filename                 | Description                                                             |
| ------------------------ | ----------------------------------------------------------------------- |
| `CodeBook.md`            | Describes variables in the tidy data set, `means_by_pers_actv.txt`      |
| `means_by_pers_actv.txt` | Tidy data set generated by `run_analysis.R`                             |
| `README.md`              | This file                                                               |
| `run_analysis.R`         | R script used to generate the tidy data set, `means_by_pers_actv.txt`   |

#### Steps to follow
1. Download the data provided for this project:  
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the file into the current working directory, which will create these directories:
   * `./UCI HAR Dataset/train/`
   * `./UCI HAR Dataset/test/`
3. Run the `run_analysis.R` script, which will generate a tidy data set called `means_by_pers_actv.txt`

