
      README.md
      Human Activity Recognition Using Smartphones Dataset
      Peer-graded Assignment
      Coursera Getting and Cleaning Data - Week 4

**This README describes the files submitted on Github for the Peer-graded Assignment in the scope of Coursera's Getting and Cleaning Data course.**

**The original experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.**

**Each person performed six activities (“walking”, “upstairs”, “downstairs”, “sitting”, “standing” and “laying”) wearing a smartphone (Samsung Galaxy S II) on the waist.** 

**3-axial linear acceleration and 3-axial angular velocity signals were captured at a constant rate of 50Hz, by using the device’s embedded accelerometer and gyroscope.** 

**The original dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.**

**For this assignment, both sets were cleaned and merged.**


The assignment dataset includes the following files:
====================================================

*README.md* - explanatory file describing the files submitted on Github for the Peer-graded Assignment in the scope of Coursera's Getting and Cleaning Data course.

*run_analysis.R* - R Script containing a function called run_analysis(), that (1) merges the training and the test sets from the original study, to create one single set; (2) extracts only the measurements on the mean and standard deviation for each measurement; (3) uses descriptive activity names to name the activities in the data set; (4) appropriately labels the data set with descriptive variable names; (5) from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

*totaldata.xlsx* - merged training and test sets, with only the measurements on the mean and standard deviation for each measurement.

*averages.xlsx* - a second, independent tidy data set with the average of each variable for each activity and each subject.

*CodeBook.md* - a codebook describing the variables and the data.


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.