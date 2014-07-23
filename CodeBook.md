### Variables' Description
**Subject:**
A number from 1 to 30, indicating the number of the volunteer the experiments were carried with.

**Label:**
The activity that the subject performed while wearing a smartphone (Samsung Galaxy S II) on the waist. 

Can be any of the following:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

**Others:**
In Hz. The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The prefix t 
(-t) indicate that they are time domain signals and the f (-f) is for frequency domain signals. Subsequently, the body 
linear acceleration and angular velocity were derived in time to obtain Jerk signals (jerk) and the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (mag). Finally '-XYZ' is used to denote 3-axial signals
in the X, Y and Z directions.

We end up with:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Because we had to choose the variables that referred to the means or standard deviation of the measures, we left: 
mean(): Mean value
std(): Standard deviation

### Major Transformations
- Created a big data set containing the subject, activity label and variables' measures for both the training and the
test data (used read.txt, rbind, and cbind)
- Leave only the variables that referred to the mean or the standard deviation of a measure (used subsetting techinques).
- Change the variables' and activity labels' names. I chose the names that the  downloaded dataset used so that it
was clear what they meant (used colnames and a for loop)
- Calculate the average of each variable for each activity and each subject and put each row into a new data frame (used
sapply, rbind and a for loop).
