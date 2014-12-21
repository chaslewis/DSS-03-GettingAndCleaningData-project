# setwd("C:/Users/Administrator/Google Drive/Coursera/DataScienceSpecialization/03-GettingAndCleaningData/prog/DSS-03-GettingAndCleaningData-project")

# data extracted from zip archive to folder in cwd
data_dir <- "UCI HAR Dataset/"

# read the table of activity names by id and the list of feature names by id
activity <- read.table(paste(data_dir, "activity_labels.txt", sep=''), header=FALSE,
                       stringsAsFactors=FALSE, col.names=c("activity.id", "activity.name"))
features <- read.table(paste(data_dir, "features.txt", sep=''), header=FALSE, 
                       stringsAsFactors=FALSE, col.names=c("feature.id", "feature.name"))

# the feature names are untidy and will require some clean-up:

# helper function to clean up feature names to make them R-compatible
#   - replace problem punctuation by period (R's idiom)
#   - fix a typo in a subset of the names
fixFeatName <- function(str = character(0)) {
    str <- gsub('-', '.', str)
    str <- gsub("\\(", ".", str)
    str <- gsub("\\)", "", str)
    str <- gsub(',', '.', str)
    str <- gsub("BodyBody", "Body", str)
    str    
}

# helper function to add missing _X, _Y, & _Z axes to feature names that are otherwise dups
fixFeatDups <- function(fns = character(0)) {
    for (i in 303:316)  fns[i] <- paste(fns[i], "_X", sep='')
    for (i in 317:330)  fns[i] <- paste(fns[i], "_Y", sep='')
    for (i in 331:344)  fns[i] <- paste(fns[i], "_Z", sep='')
    
    for (i in 382:395)  fns[i] <- paste(fns[i], "_X", sep='')
    for (i in 396:409)  fns[i] <- paste(fns[i], "_Y", sep='')
    for (i in 410:423)  fns[i] <- paste(fns[i], "_Z", sep='')
    
    for (i in 461:474)  fns[i] <- paste(fns[i], "_X", sep='')
    for (i in 475:488)  fns[i] <- paste(fns[i], "_Y", sep='')
    for (i in 489:502)  fns[i] <- paste(fns[i], "_Z", sep='')

    fns
}

# clean up punctuation and typo in feature names:
feat_name_tidy <- sapply(features$feature.name, fixFeatName, USE.NAMES=FALSE)

# make duplicated feature names unique:
feat_name_tidy <- fixFeatDups(feat_name_tidy)

# add the tidy names as a column in the feature table (allowing examples of 
#    the transformation to be examined)
features <- cbind(features, feat.name.tidy=feat_name_tidy, stringsAsFactors=FALSE)

# read in the test data: activity labels, subject labels, and feature observations
test_act <- read.table(paste(data_dir, "test/", "y_test.txt", sep=''), header=FALSE, 
                       stringsAsFactors=FALSE)
test_subj <- read.table(paste(data_dir, "test/", "subject_test.txt", sep=''),  
                        header=FALSE, stringsAsFactors=FALSE)
test_obs <- read.table(paste(data_dir, "test/", "X_test.txt", sep=''), header=FALSE, 
                        stringsAsFactors=FALSE)

# same process for training set: read  activity labels, subject labels, and observations
train_act <- read.table(paste(data_dir, "train/", "y_train.txt", sep=''), header=FALSE,
                     stringsAsFactors=FALSE)
train_subj <- read.table(paste(data_dir, "train/", "subject_train.txt", sep=''), 
                        header=FALSE, stringsAsFactors=FALSE)
train_obs <- read.table(paste(data_dir, "train/", "X_train.txt", sep=''), header=FALSE, 
                        stringsAsFactors=FALSE)

# for each set, test and training, combine the observations with the two identifying 
#   labels
dta_test <- cbind(test_obs, test_act, test_subj)
dta_train <- cbind(train_obs, train_act, train_subj)

# rubric Step 1:
# combine the test and training sets
dta_both <- rbind(dta_test, dta_train)

# rubric Step 4:
# apply tidy variable names to the columns of the data: features and 2 labels
colnames(dta_both) <- c(features$feat.name.tidy, "activity.id", "subject.id")

# rubric Step 3:
# give descriptive names to activity labels (merge on activity.id)
dta_all <- merge(dta_both, activity)

# load some tools for the final tidying steps
library(dplyr)
library(tidyr)

# rubric Step 2:
# extract the measurements on the mean and std of each measurement
dta_means <- select(dta_all, contains(".mean."))
dta_stds <- select(dta_all, contains(".std."))

# ... and combine these in a tidy table with the two labels (activity name and subject id)
dta_tidy <- cbind(activity.name=dta_all$activity.name, subject.id=dta_all$subject.id, dta_means, dta_stds, stringsAsFactors=FALSE)

# rubric Step 5:
# finally, summarize the data by taking the mean of all the observations for each variable
#   (33 mean and 33 std) for each combination of activity with subject
dta_summ <- dta_tidy %>% 
            group_by(activity.name, subject.id) %>% 
            summarise_each(funs(mean)) %>% 
            as.data.frame

# ... and write out as a text file for submission
write.table(dta_summ, file="dta_summ.txt", row.names=FALSE)
