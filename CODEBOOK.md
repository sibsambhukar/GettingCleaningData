CODE BOOK: Analysis of Human Activity Recognition Using Smartphone Dataset
==================================================================
Peer Assessment
Getting and Cleaning Data Course Project
==================================================================
A.	Data files used in this work:
=========================================
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

B.	Important variables used in this work:
=================================================
- x_data_tr: Training set,
- x_data_tst: Test Set,
- y_data_tr: Training labels ,
- y_data_tst: Test Lebels,
- subject_tr: Training Subjects ,
- subject_tst: Test subjects,
- activity_names: Activity names,
- feature_data: feature names or columns measured ,
- complete_data: merged complete data (test and training),
- data_mean_std: Mean and std related measurements of each variables ,
- desc_variables: descriptive variables,
- new_tidy_data: new tidy data set ,

C.	Works performed to clean up the data
=================================================
1.	Read data from multiple files,
2.	Merged training and test data collected from multiple files,
3.	Added column names to the merged complete data,
4.	Extracted mean and std related measurements/parameters from the complete data,
5.	Extracted descriptive variable names and computed average based on each descriptive variable to prepare tidy data frame,



