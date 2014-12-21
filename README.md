### Coursera DSS - 03 Getting and Cleaning Data
##  Project: Cleaning the UCI Human Activity Recognition Using Smartphones Data Set

*Abstract: the purpose of the project is to illustrate some best practices for gathering and transforming raw data into a tidy data set suitable for further analysis in R.*

The [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html) "maintains 307 data sets as a service to the machine learning community."  The [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) was "built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors," and is provided as a zip archive containing several text data files.  The data set was originally produced as input to an [investigation][1] of a possible medical application: the use of smartphone data to monitor the daily activities of the elderly and others with mobility impairments.

The R script provided here [run_analysis.R](run_analysis.R) gathers and transforms the raw data into a single tidy table, the design of which was guided by Hadley Wickham's principles of [Tidy Data](http://vita.had.co.nz/papers/tidy-data.pdf), and also creates a summary data table by summarizing various measures by label group (details below).







----------------------------------------------
[1]:  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
