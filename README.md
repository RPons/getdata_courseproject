### Getting and cleaning data
### Course Project

The R script run_analysis.R does the following:
- 1 Merges the training and the test sets to create one data set.
- 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
- 3 Uses descriptive activity names to name the activities in the data set
- 4 Appropriately labels the data set with descriptive variable names. 
- 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script takes the Samsung data set that has been unziped in the working directory.
The name of the folder with the data set is the original one: UCI HAR Dataset and keeps also the original subfolder structure. The script loads all the necessary files with the relative path to the working directory. The paths for the different files are described in the README.txt file in the UCI HAR Dataset folder.

All the steps are described in the script with all the data transformations from the beginning to the end.

Important note: the script has been developed using Windows 7. Paths format need to be changed for a Mac. Paths are use the Windows format: Example of relative path ".\\UCI HAR Dataset\\train\\X_train.txt"

The dataset generated at point 5 is stored as **dataset.txt** in the working directory.

The script can be run directly from R giving the files above as a result or can be run step by step to understand the how it works and how variable have been transformed.

The code book describing the variables is included int the repository with the name codebook.txt

