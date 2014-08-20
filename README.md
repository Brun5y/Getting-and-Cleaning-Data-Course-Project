Getting-and-Cleaning-Data-Course-Project
========================================

The submitted R script (run_analysis.r) completes the five tasks listed in the instructions:

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject


Though not necessarily in the listed order.

* The script first extracts the activity labels, features, xtest, ytest, testsubject, xtrain, ytrain and  trainsubject data.
* Then the script pastes together the subject, x and y data for test and train.  It also gives the column names the names from the features file (except for subject and activity labels) and gives the elements of activity labels the names from activity labels.
* Then the script pastes the test and train data tables together in a table called data.  It then reorders the data table making by subject, then activity.
* The script then creates a 180 by 68 empty data.frame called data summary.
* The first two columns of this data.frame are filled with the information numeric information about the subject and the activity they are active in.  
* The numeric values in the activity column are then given descriptive labels.
* Next the mean of the values in the table data for each subject preforming each activity are placed in the correspond spot in the datasummary data frame.
