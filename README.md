## Getting and Cleaning Data (Course Project 1)

This README file explains the logic/process behind the creation of the result dataset for Course Project 1 using the script run_analysis.R

In order to run the script, please ensure that the current working directory is set to the location of the source files (i.e. the folder that holds the UCI HAR Dataset).

The code processes the data in the following order:

* Loads the features, activity, training and testing related datasets into variables

* Sets the columns names of the train and testing datasets using the features dataset

* Adds the subject identifiers to the train and testing datasets

* Adds the label identifiers to the train and testing datasets

* Matches the label identifiers to those described in the activity labels dataset to retrieve the activity description

* Combine the training and test datasets into one data frame

* Create a subset of data from the complete dataset to only contain fields related to mean (including mean frequency), standard deviation, the activity and the subject identifier

* Calculate the average for each column grouped by the activity and subject identifier

* Rename the grouped columns to something more descriptive

* Rename the column names to follow the variable naming conventions specified in the video lectures

* Output the results

