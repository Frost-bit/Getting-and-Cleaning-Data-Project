Getting and Cleaning Data - Course Project
=========================================
Each step here describes a paragraph of code in the run_analysis.R file.

1. The script starts by loading into R the six fundamental datasets. It assumes that the working directory is the "UCI HAR Dataset" folder. It reads each file and saves it into a data frame.
2. This is where every data frame comes together. It first joins the training set and then the test set, and finally it binds these two in a way that each column corresponds to one variable.
3. It loads the "features.txt" file into a vector and applies the grep function to it, giving us back the vector of the indices in features such that the variable name is a mean or standard deviation of one measure.
4. The data frame mergedData is subsetted by column number, leaving the subject, labels, means and stds variables.
5. The column names and the activity labels are changed. The first uses the vector of features created earlier and the second uses a for loop to subsitute each number from 1 to 6 to the activity label of that number.
6. In this part the tidy data set is created. It starts by initializing two empty vectors, one of which will become the desired data frame and the second of which will hold the activity labels in the appropiate order, because after the process, the Label column corresponds to NAs. Inside the for loop we create a vector of the means of each column of a subset of mergedData with the Subject and Level values of a possible combination, adds the means vector at the end of the data frame, and then adds the current label to the labels vector. The last two lines just transform the newDataSet matrix into a data frame and substitute the values of the column Label with the labels vector.
7. Finally, we create a txt file out of the newDataSet object.
