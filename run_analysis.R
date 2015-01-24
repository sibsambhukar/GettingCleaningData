# read files
x_data_tr<-read.csv("./train/X_train.txt",header=FALSE,sep="")
x_data_tst<-read.csv("./test/X_test.txt",header=FALSE,sep="")
y_data_tr<-read.csv("./train/y_train.txt",header=FALSE,sep="")
y_data_tst<-read.csv("./test/y_test.txt",header=FALSE,sep="")
subject_tr<-read.csv("./train/subject_train.txt",header=FALSE,sep="")
subject_tst<-read.csv("./test/subject_test.txt",header=FALSE,sep="")
read_activities<-read.csv("activity_labels.txt",header=FALSE,sep="")
activity_names<-as.character(read_activities[,2])

# Merge data
feature_data<-read.csv("features.txt",header=FALSE,sep="")
complete_data<-rbind(x_data_tr,x_data_tst)
colnames(complete_data)<-as.character(feature_data[,2])

# Extracting measurements on mean and standard deviation for each measurement. 
data_mean_std<-complete_data[,c(grep("mean",colnames(complete_data)),grep("std",colnames(complete_data)))]

# Descriptive variable names 
feature_names<-colnames(data_mean_std)
x1<-strsplit(feature_names,"\\()")
first_part<-function(x) {x[1]}
desc_variables<-unique(sapply(x1,first_part))

# Preparing new tidy dataset
mat_data_mean_std<-as.matrix(data_mean_std)
new_tidy_data<-c()
new_col_names<-c()

for (i in desc_variables){
  temp<-grep(i,feature_names)
  new_col_names<-c(new_col_names,i)
  if(length(temp)>1) new_tidy_data<-cbind(new_tidy_data,rowMeans(mat_data_mean_std[,temp]))
  else  new_tidy_data<-cbind(new_tidy_data,mat_data_mean_std[,temp])
}

df_tidy_data<-as.data.frame(new_tidy_data)
colnames(df_tidy_data)<-new_col_names

# write data to table (.txt)
write.table(df_tidy_data,file="tidy_data.txt",row.names=FALSE) 







