## Getting and Cleaning Data Course Project

## Read the main files

df_train <- read.table("UCI HAR Dataset/train/X_train.txt")
df_test <- read.table("UCI HAR Dataset/test/X_test.txt")

df_subj_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
df_subj_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

df_act_train <- read.table("UCI HAR Dataset/train/y_train.txt")
df_act_test <- read.table("UCI HAR Dataset/test/y_test.txt")

## 1. Merges the training and the test sets to create one data set

df <- rbind(df_train,df_test)
df_subj <- rbind(df_subj_train,df_subj_test)
df_act <- rbind(df_act_train,df_act_test)

## 2. Extracts only the measurements on the mean and standard deviation for each
## measuremenT 

## The mean and standard deviation values are listed here 
## (extracted from features.txt file)

## 1 tBodyAcc-mean()-X
## 2 tBodyAcc-mean()-Y
## 3 tBodyAcc-mean()-Z
## 4 tBodyAcc-std()-X
## 5 tBodyAcc-std()-Y
## 6 tBodyAcc-std()-Z 

## Also renames the columns

names(df)[1] <- "TBodyAccMeanX"
names(df)[2] <- "TBodyAccMeanY"
names(df)[3] <- "TBodyAccMeanZ"
names(df)[4] <- "TBodyAccStdX"
names(df)[5] <- "TBodyAccStdY"
names(df)[6] <- "TBodyAccStdZ"

## 41 tGravityAcc-mean()-X
## 42 tGravityAcc-mean()-Y
## 43 tGravityAcc-mean()-Z
## 44 tGravityAcc-std()-X
## 45 tGravityAcc-std()-Y
## 46 tGravityAcc-std()-Z

names(df)[41] <- "TGravAccMeanX"
names(df)[42] <- "TGravAccMeanY"
names(df)[43] <- "TGravAccMeanZ"
names(df)[44] <- "TGravAccStdX"
names(df)[45] <- "TGravAccStdY"
names(df)[46] <- "TGravAccStdZ"

## 81 tBodyAccJerk-mean()-X
## 82 tBodyAccJerk-mean()-Y
## 83 tBodyAccJerk-mean()-Z
## 84 tBodyAccJerk-std()-X
## 85 tBodyAccJerk-std()-Y
## 86 tBodyAccJerk-std()-Z

names(df)[81] <- "TBodyAccJMeanX"
names(df)[82] <- "TBodyAccJMeanY"
names(df)[83] <- "TBodyAccJMeanZ"
names(df)[84] <- "TBodyAccJStdX"
names(df)[85] <- "TBodyAccJStdY"
names(df)[86] <- "TBodyAccJStdZ"

## 121 tBodyGyro-mean()-X
## 122 tBodyGyro-mean()-Y
## 123 tBodyGyro-mean()-Z
## 124 tBodyGyro-std()-X
## 125 tBodyGyro-std()-Y
## 126 tBodyGyro-std()-Z

names(df)[121] <- "TBodyGyroMeanX"
names(df)[122] <- "TBodyGyroMeanY"
names(df)[123] <- "TBodyGyroMeanZ"
names(df)[124] <- "TBodyGyroStdX"
names(df)[125] <- "TBodyGyroStdY"
names(df)[126] <- "TBodyGyroStdZ"

## 161 tBodyGyroJerk-mean()-X
## 162 tBodyGyroJerk-mean()-Y
## 163 tBodyGyroJerk-mean()-Z
## 164 tBodyGyroJerk-std()-X
## 165 tBodyGyroJerk-std()-Y
## 166 tBodyGyroJerk-std()-Z

names(df)[161] <- "TBodyGyroJMeanX"
names(df)[162] <- "TBodyGyroJMeanY"
names(df)[163] <- "TBodyGyroJMeanZ"
names(df)[164] <- "TBodyGyroJStdX"
names(df)[165] <- "TBodyGyroJStdY"
names(df)[166] <- "TBodyGyroJStdZ"

## 201 tBodyAccMag-mean()
## 202 tBodyAccMag-std()

names(df)[201] <- "TBodyAccMagMean"
names(df)[202] <- "TBodyAccMagStd"

## 214 tGravityAccMag-mean()
## 215 tGravityAccMag-std()

names(df)[214] <- "TGravityAccMagMean"
names(df)[215] <- "TGravityAccMagStd"

## 227 tBodyAccJerkMag-mean()
## 228 tBodyAccJerkMag-std()

names(df)[227] <- "TBodyAccJMagMean"
names(df)[228] <- "TBodyAccJMagStd"

## 240 tBodyGyroMag-mean()
## 241 tBodyGyroMag-std()

names(df)[240] <- "TBodyGyroMagMean"
names(df)[241] <- "TBodyGyroMagStd"

## 253 tBodyGyroJerkMag-mean()
## 254 tBodyGyroJerkMag-std()

names(df)[253] <- "TBodyGyroJMagMean"
names(df)[254] <- "TBodyGyroJMagStd"

## 266 fBodyAcc-mean()-X
## 267 fBodyAcc-mean()-Y
## 268 fBodyAcc-mean()-Z
## 269 fBodyAcc-std()-X
## 270 fBodyAcc-std()-Y
## 271 fBodyAcc-std()-Z

names(df)[266] <- "FBodyAccMeanX"
names(df)[267] <- "FBodyAccMeanY"
names(df)[268] <- "FBodyAccMeanZ"
names(df)[269] <- "FBodyAccStdX"
names(df)[270] <- "FBodyAccStdY"
names(df)[271] <- "FBodyAccStdZ"

## 345 fBodyAccJerk-mean()-X
## 346 fBodyAccJerk-mean()-Y
## 347 fBodyAccJerk-mean()-Z
## 348 fBodyAccJerk-std()-X
## 349 fBodyAccJerk-std()-Y
## 350 fBodyAccJerk-std()-Z

names(df)[345] <- "FBodyAccJMeanX"
names(df)[346] <- "FBodyAccJMeanY"
names(df)[347] <- "FBodyAccJMeanZ"
names(df)[348] <- "FBodyAccJStdX"
names(df)[349] <- "FBodyAccJStdY"
names(df)[350] <- "FBodyAccJStdZ"

## 424 fBodyGyro-mean()-X
## 425 fBodyGyro-mean()-Y
## 426 fBodyGyro-mean()-Z
## 427 fBodyGyro-std()-X
## 428 fBodyGyro-std()-Y
## 429 fBodyGyro-std()-Z

names(df)[424] <- "FBodyGyroMeanX"
names(df)[425] <- "FBodyGyroMeanY"
names(df)[426] <- "FBodyGyroMeanZ"
names(df)[427] <- "FBodyGyroStdX"
names(df)[428] <- "FBodyGyroStdY"
names(df)[429] <- "FBodyGyroStdZ"

## 503 fBodyAccMag-mean()
## 504 fBodyAccMag-std()

names(df)[503] <- "FBodyAccMagMean"
names(df)[504] <- "FBodyAccMagStd"

## 516 fBodyBodyAccJerkMag-mean()
## 517 fBodyBodyAccJerkMag-std()

names(df)[516] <- "FBodyAccJMagMean"
names(df)[517] <- "FBodyAccJMagStd"

## 529 fBodyBodyGyroMag-mean()
## 530 fBodyBodyGyroMag-std()

names(df)[529] <- "FBodyGyroMagMean"
names(df)[530] <- "FBodyGyroMagStd"

## 542 fBodyBodyGyroJerkMag-mean()
## 543 fBodyBodyGyroJerkMag-std()

names(df)[542] <- "FBodyGyroJMagMean"
names(df)[543] <- "FBodyGyroJMagStd"

## Select only the columns that inform mean and standard deviation values

df <- df[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,
            253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)]

## 3. Uses descriptive activity names to name the activities in the data set

act_names <- c("Walking","Walking upstairs","Walking downstairs","Sitting",
               "Standing","Laying")

act_names <- cbind(1:6,act_names)


## 4. Appropriately labels the data set with descriptive activity names. 

df_act <- merge(df_act,act_names)

df <- cbind(df_subj,df_act$act_names,df)
names(df)[1] <- "Subject"
names(df)[2] <- "Activity"

## 5. Creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject. 

tidy_df <- df

## For each variable column, calculates the average of the corresponding 
## feature variable grouped by subject and activity

for (i in 3:ncol(df))
        tidy_df[,i] <- ave(df[,i],by=list(df$Subject,df$Activity))

## Get only the unique values for the tidy data set

tidy_df <- unique(tidy_df)

## Order the tidy data set by subject (ascending order)

tidy_df <- tidy_df[order(tidy_df$Subject),]

## Reset the row.names to reflect the size of the new tidy data set

row.names(tidy_df) <- 1:nrow(tidy_df) 

## Save the tidy data set

write.table(tidy_df,"tidy_data_set.txt")
