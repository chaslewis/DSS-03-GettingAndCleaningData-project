### Coursera DSS - 03 Getting and Cleaning Data
##  Project: Cleaning the UCI Human Activity Recognition Using Smartphones Data Set

*Abstract: the purpose of the project is to illustrate some best practices for gathering and transforming raw data into a tidy data set suitable for further analysis in R.*

The [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html) "maintains 307 data sets as a service to the machine learning community."  The [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) was "built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors," and is provided as a [zip archive](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/) containing several text data files.  The data set was originally produced as input to an [investigation][1] of a possible medical application: the use of smartphone data to monitor the daily activities of the elderly and others with mobility impairments.

The R script provided here [run_analysis.R](run_analysis.R) gathers and transforms the raw data into a single tidy table, the design of which was guided by Hadley Wickham's principles of [Tidy Data](http://vita.had.co.nz/papers/tidy-data.pdf), and also creates a summary data table by summarizing various measures by label group (details below).

When extracted, the UCI dataset produces this file structure, which is assumed to reside in the working directory of our script:

    UCI HAR Dataset
    |   activity_labels.txt
    |   features.txt
    |   features_info.txt
    |   README.txt
    |   
    +---test
    |   |   subject_test.txt
    |   |   X_test.txt
    |   |   y_test.txt
    |   |   
    |   \---Inertial Signals
    |           ... (detail omitted)
    |           
    \---train
        |   subject_train.txt
        |   X_train.txt
        |   y_train.txt
        |   
        \---Inertial Signals
                ... (detail omitted)

(The "Inertial Signals" folders contain derived values which are not needed here.)        
    
In the top level of the dataset tree, README.txt gives some context for the study and an overview of the organization of the dataset across the various files, while features_info.txt provides a more detailed explanation of the feature observations (sensor readings) that were gathered.

The general goal of the script is to combine the provided data tables horizontally and vertically as appropriate, and to assign meaningful (or at least more usable) names to columns and labels.  Only a subset (the 33 mean and 33 standard deviation variables) of the feature columns will be extracted from the 561-column total.  (See [CodeBook.md}(CodeBook.md) for more detail on these identifiers.)

In particular:

1. The activity_labels.txt file is read into a data frame which will be used to match the numeric activity label, which appears as a label in the actual data, to the corresponding activity description.
2. The features.txt file is read into a data frame with two columns: feature id (just the column number in the corresponding data file) and feature name (an untidy identifier).
3. The feature names in the feature data frame are tidied:
    - In keeping with common R usage, punctuation (mainly hyphens, parentheses and commas) are replaced by periods.
    - A typo in a subset of the names is fixed ("BodyBody" is replaced by "Body").
    - Missing dimensional identifiers (denoting X, Y, and Z) are appended within three blocks of names; as provided,these would appear as duplicate columns (which poses serious problems for R).
4. The activity labels for the test set are read into a data frame (one per row/observation).
5. The subject labels for the test set are read into a data frame (one per row/observation).
6. The 561 values per row/observation for the test data set are read into a data frame.
7. Steps 4-6 are repeated for the training set, resulting in three addional data frames.
8. The test data feature values are combined (horizontally, using cbind) with the test activity and subject labels, yielding a data frame, dta_test.
9. Step 8 is repeated for the training set, yielding a data frame dta_train.
10. A complete data set is created by combining the test set with the training set vertically (rbind), yielding a data frame, dta_both.
11. Column (variable) names are assigned to the complete data set using the tidied feature names produced in step 4 above.  The two labels (activity id and subject id) are given friendly column names.
12. Descriptive activity names replace the numeric activity ids by merging the complete data set with the activity label data frame obtained in step 2 above.  In effect, descriptive activity labels are looked up by joining on the common column, activity.id.
13. The 33 columns containing the variable means are selected to a separate data frame (dta_means).
14. Similarly, the 33 std columns are extracted to dta_stds.
15. The activity name label column, subject id column, 33 mean columns, and 33 std columns are combined horizontally to produce a tidy 10299x68 data frame (dta_tidy).
16. Summarization phase: The average (mean) of each of the 66 observation variables is computed for each activity-subject combination, yielding a 180x68 data frame (dta_summ).
17. Finally, the summary data is written out to a text file (dta_summ.txt) which is the first part of the on-line submission for the project
 
The approach outlined here can easily be modified to select different features for further analysis, or to summarize them in different ways.  It illustrates the benefit of the Tidy Data principle: isolating the data gathering and clean-up tasks to a well-defined pre-processing phase sets the scene for productive and efficient data analysis without the distraction of wrangling unsuitably formatted data.  A good data tidying framework (such as a script taking only raw data as input) can be re-run in a reproducible way, and allows for incremental modification as new data requirements surface.



----------------------------------------------
[1]:  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
