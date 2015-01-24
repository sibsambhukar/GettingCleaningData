# GettingCleaningData
README: Human Activity Recognition Using Smartphones Dataset

The script prepares a tidy dataset by reading data from multiple files under the working directory ./UCI HAR Dataset. The files for getting data are listed below:
- 'features.txt'.
- 'activity_labels.txt'
- 'train/X_train.txt'
- 'train/y_train.txt'
- 'test/X_test.txt'
- 'test/y_test.txt'
- 'train/subject_train.txt' 
- 'train/Inertial Signals/total_acc_x_train.txt'
- 'train/Inertial Signals/body_acc_x_train.txt' 
- 'train/Inertial Signals/body_gyro_x_train.txt' etc.
	
Training and test data from multiple tables are read and merged to create a single dataset complete_data followed by adding the activity names and subjects number. Then only mean and std related measures are extracted from the complete dataset to prepare a tidy data. The script works under the directory ./UCI HAR Dataset.
  

