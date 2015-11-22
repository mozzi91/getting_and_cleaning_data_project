# Getting and Cleaning Data - Course Project

This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, contains a function 'RunAnalysis()' that does the following:

1. Downloads the dataset if it does not already exist in the working directory
2. Loads the activity labels and feature info
3. Loads both the test and training datasets, keeping only those columns which
   are a mean or standard deviation
4. Merges the two datasets
5. Gives descriptive names to the variables and activity types
6. Creates a tidy dataset that consists of the average (mean) value of each
   variable for each subject and activity pair.

To run the R script, load the script into the R environment and then call the function using
'RunAnalysis()' in the console. The script will write a tidy dataset as a text file to your 
working directory.
   
The final tidy dataset is shown in the file `tidyMeans.txt`, which can be read into R with 
'read.table("tidyMeans.txt", header = TRUE)'. A detailed description of the variables can be 
found in CodeBook.md.