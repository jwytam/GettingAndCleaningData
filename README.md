## Getting and Cleaning Data (Course Project 1)

The purpose of this project is to create a tidy dataset based off the dataset, "Human Activity Recognition Using Smartphones" (more information can be found <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">here</a>).

This repository contains three files:
* README.md: Provides a brief overview
* CodeBook.md: Provides a description of the variables and the transformations used to produce the output
* run_analysis.R: An R script that loads the UCI HAR dataset, processes the file to create a tidy dataset and outputs the results to a text file. Further details about this script can be found below:

### run_analysis.R

In order to run the script, please ensure that the current working directory is set to the location of the source files (i.e. the folder that holds the UCI HAR Dataset).

The code processes the data in the following order:

* Loads the features, activity, training and testing related datasets into variables

* Sets the columns names of the train and testing datasets using the features dataset

* Adds the subject identifiers to the train and testing datasets

* Adds the label identifiers to the train and testing datasets

* Matches the label identifiers to those described in the activity labels dataset to retrieve the activity description

* Combine the training and test datasets into one data frame

* Create a subset of data from the complete dataset to only contain fields related to mean (excluding mean frequency), standard deviation, the activity and the subject identifier

* Calculate the average for each column grouped by the activity and subject identifier

* Rename the grouped columns to something more descriptive

* Rename the column names to follow the variable naming conventions specified in the video lectures

* Output the results (Note: the output path needs to be changed to a local directory in order to output correctly)

