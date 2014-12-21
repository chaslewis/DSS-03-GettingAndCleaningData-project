### Coursera DSS - 03 Getting and Cleaning Data
###  Project: Cleaning the UCI Human Activity Recognition Using Smartphones Data Set
## CodeBook: Guide to Column and Labe Identifiers

Raw file activity_labels.txt becomes the activity DF:

| activity.id | activity.name |
| ----------- | --------------|
|    1        | "WALKING"            |
|    2        | "WALKING_UPSTAIRS"   |
|    3        | "WALKING_DOWNSTAIRS" |
|    4        | "SITTING"            |
|    5        | "STANDING"           |
|    6        |  "LAYING"            |


Raw file features.txt becomes the features DF.  The tidied versions of the feature names are shown as well:

|feature.id|feature.name|feat.name.tidy|
|----------|------------|--------------|
|1|"tBodyAcc-mean()-X"|"tBodyAcc.mean..X"|
|2|"tBodyAcc-mean()-Y"|"tBodyAcc.mean..Y"|
|3|"tBodyAcc-mean()-Z"|"tBodyAcc.mean..Z"|
|4|"tBodyAcc-std()-X"|"tBodyAcc.std..X"|
|5|"tBodyAcc-std()-Y"|"tBodyAcc.std..Y"|
|6|"tBodyAcc-std()-Z"|"tBodyAcc.std..Z"|
|7|"tBodyAcc-mad()-X"|"tBodyAcc.mad..X"|
|8|"tBodyAcc-mad()-Y"|"tBodyAcc.mad..Y"|
|9|"tBodyAcc-mad()-Z"|"tBodyAcc.mad..Z"|
|10|"tBodyAcc-max()-X"|"tBodyAcc.max..X"|
|11|"tBodyAcc-max()-Y"|"tBodyAcc.max..Y"|
|12|"tBodyAcc-max()-Z"|"tBodyAcc.max..Z"|
|13|"tBodyAcc-min()-X"|"tBodyAcc.min..X"|
|14|"tBodyAcc-min()-Y"|"tBodyAcc.min..Y"|
|15|"tBodyAcc-min()-Z"|"tBodyAcc.min..Z"|
|16|"tBodyAcc-sma()"|"tBodyAcc.sma."|
|17|"tBodyAcc-energy()-X"|"tBodyAcc.energy..X"|
|18|"tBodyAcc-energy()-Y"|"tBodyAcc.energy..Y"|
|19|"tBodyAcc-energy()-Z"|"tBodyAcc.energy..Z"|
|20|"tBodyAcc-iqr()-X"|"tBodyAcc.iqr..X"|
|21|"tBodyAcc-iqr()-Y"|"tBodyAcc.iqr..Y"|
|22|"tBodyAcc-iqr()-Z"|"tBodyAcc.iqr..Z"|
|23|"tBodyAcc-entropy()-X"|"tBodyAcc.entropy..X"|
|24|"tBodyAcc-entropy()-Y"|"tBodyAcc.entropy..Y"|
|25|"tBodyAcc-entropy()-Z"|"tBodyAcc.entropy..Z"|
|26|"tBodyAcc-arCoeff()-X,1"|"tBodyAcc.arCoeff..X.1"|
|27|"tBodyAcc-arCoeff()-X,2"|"tBodyAcc.arCoeff..X.2"|
|28|"tBodyAcc-arCoeff()-X,3"|"tBodyAcc.arCoeff..X.3"|
|29|"tBodyAcc-arCoeff()-X,4"|"tBodyAcc.arCoeff..X.4"|
|30|"tBodyAcc-arCoeff()-Y,1"|"tBodyAcc.arCoeff..Y.1"|
|31|"tBodyAcc-arCoeff()-Y,2"|"tBodyAcc.arCoeff..Y.2"|
|32|"tBodyAcc-arCoeff()-Y,3"|"tBodyAcc.arCoeff..Y.3"|
|33|"tBodyAcc-arCoeff()-Y,4"|"tBodyAcc.arCoeff..Y.4"|
|34|"tBodyAcc-arCoeff()-Z,1"|"tBodyAcc.arCoeff..Z.1"|
|35|"tBodyAcc-arCoeff()-Z,2"|"tBodyAcc.arCoeff..Z.2"|
|36|"tBodyAcc-arCoeff()-Z,3"|"tBodyAcc.arCoeff..Z.3"|
|37|"tBodyAcc-arCoeff()-Z,4"|"tBodyAcc.arCoeff..Z.4"|
|38|"tBodyAcc-correlation()-X,Y"|"tBodyAcc.correlation..X.Y"|
|39|"tBodyAcc-correlation()-X,Z"|"tBodyAcc.correlation..X.Z"|
|40|"tBodyAcc-correlation()-Y,Z"|"tBodyAcc.correlation..Y.Z"|
|41|"tGravityAcc-mean()-X"|"tGravityAcc.mean..X"|
|42|"tGravityAcc-mean()-Y"|"tGravityAcc.mean..Y"|
|43|"tGravityAcc-mean()-Z"|"tGravityAcc.mean..Z"|
|44|"tGravityAcc-std()-X"|"tGravityAcc.std..X"|
|45|"tGravityAcc-std()-Y"|"tGravityAcc.std..Y"|
|46|"tGravityAcc-std()-Z"|"tGravityAcc.std..Z"|
|47|"tGravityAcc-mad()-X"|"tGravityAcc.mad..X"|
|48|"tGravityAcc-mad()-Y"|"tGravityAcc.mad..Y"|
|49|"tGravityAcc-mad()-Z"|"tGravityAcc.mad..Z"|
|50|"tGravityAcc-max()-X"|"tGravityAcc.max..X"|
|51|"tGravityAcc-max()-Y"|"tGravityAcc.max..Y"|
|52|"tGravityAcc-max()-Z"|"tGravityAcc.max..Z"|
|53|"tGravityAcc-min()-X"|"tGravityAcc.min..X"|
|54|"tGravityAcc-min()-Y"|"tGravityAcc.min..Y"|
|55|"tGravityAcc-min()-Z"|"tGravityAcc.min..Z"|
|56|"tGravityAcc-sma()"|"tGravityAcc.sma."|
|57|"tGravityAcc-energy()-X"|"tGravityAcc.energy..X"|
|58|"tGravityAcc-energy()-Y"|"tGravityAcc.energy..Y"|
|59|"tGravityAcc-energy()-Z"|"tGravityAcc.energy..Z"|
|60|"tGravityAcc-iqr()-X"|"tGravityAcc.iqr..X"|
|61|"tGravityAcc-iqr()-Y"|"tGravityAcc.iqr..Y"|
|62|"tGravityAcc-iqr()-Z"|"tGravityAcc.iqr..Z"|
|63|"tGravityAcc-entropy()-X"|"tGravityAcc.entropy..X"|
|64|"tGravityAcc-entropy()-Y"|"tGravityAcc.entropy..Y"|
|65|"tGravityAcc-entropy()-Z"|"tGravityAcc.entropy..Z"|
|66|"tGravityAcc-arCoeff()-X,1"|"tGravityAcc.arCoeff..X.1"|
|67|"tGravityAcc-arCoeff()-X,2"|"tGravityAcc.arCoeff..X.2"|
|68|"tGravityAcc-arCoeff()-X,3"|"tGravityAcc.arCoeff..X.3"|
|69|"tGravityAcc-arCoeff()-X,4"|"tGravityAcc.arCoeff..X.4"|
|70|"tGravityAcc-arCoeff()-Y,1"|"tGravityAcc.arCoeff..Y.1"|
|71|"tGravityAcc-arCoeff()-Y,2"|"tGravityAcc.arCoeff..Y.2"|
|72|"tGravityAcc-arCoeff()-Y,3"|"tGravityAcc.arCoeff..Y.3"|
|73|"tGravityAcc-arCoeff()-Y,4"|"tGravityAcc.arCoeff..Y.4"|
|74|"tGravityAcc-arCoeff()-Z,1"|"tGravityAcc.arCoeff..Z.1"|
|75|"tGravityAcc-arCoeff()-Z,2"|"tGravityAcc.arCoeff..Z.2"|
|76|"tGravityAcc-arCoeff()-Z,3"|"tGravityAcc.arCoeff..Z.3"|
|77|"tGravityAcc-arCoeff()-Z,4"|"tGravityAcc.arCoeff..Z.4"|
|78|"tGravityAcc-correlation()-X,Y"|"tGravityAcc.correlation..X.Y"|
|79|"tGravityAcc-correlation()-X,Z"|"tGravityAcc.correlation..X.Z"|
|80|"tGravityAcc-correlation()-Y,Z"|"tGravityAcc.correlation..Y.Z"|
|81|"tBodyAccJerk-mean()-X"|"tBodyAccJerk.mean..X"|
|82|"tBodyAccJerk-mean()-Y"|"tBodyAccJerk.mean..Y"|
|83|"tBodyAccJerk-mean()-Z"|"tBodyAccJerk.mean..Z"|
|84|"tBodyAccJerk-std()-X"|"tBodyAccJerk.std..X"|
|85|"tBodyAccJerk-std()-Y"|"tBodyAccJerk.std..Y"|
|86|"tBodyAccJerk-std()-Z"|"tBodyAccJerk.std..Z"|
|87|"tBodyAccJerk-mad()-X"|"tBodyAccJerk.mad..X"|
|88|"tBodyAccJerk-mad()-Y"|"tBodyAccJerk.mad..Y"|
|89|"tBodyAccJerk-mad()-Z"|"tBodyAccJerk.mad..Z"|
|90|"tBodyAccJerk-max()-X"|"tBodyAccJerk.max..X"|
|91|"tBodyAccJerk-max()-Y"|"tBodyAccJerk.max..Y"|
|92|"tBodyAccJerk-max()-Z"|"tBodyAccJerk.max..Z"|
|93|"tBodyAccJerk-min()-X"|"tBodyAccJerk.min..X"|
|94|"tBodyAccJerk-min()-Y"|"tBodyAccJerk.min..Y"|
|95|"tBodyAccJerk-min()-Z"|"tBodyAccJerk.min..Z"|
|96|"tBodyAccJerk-sma()"|"tBodyAccJerk.sma."|
|97|"tBodyAccJerk-energy()-X"|"tBodyAccJerk.energy..X"|
|98|"tBodyAccJerk-energy()-Y"|"tBodyAccJerk.energy..Y"|
|99|"tBodyAccJerk-energy()-Z"|"tBodyAccJerk.energy..Z"|
|100|"tBodyAccJerk-iqr()-X"|"tBodyAccJerk.iqr..X"|
|101|"tBodyAccJerk-iqr()-Y"|"tBodyAccJerk.iqr..Y"|
|102|"tBodyAccJerk-iqr()-Z"|"tBodyAccJerk.iqr..Z"|
|103|"tBodyAccJerk-entropy()-X"|"tBodyAccJerk.entropy..X"|
|104|"tBodyAccJerk-entropy()-Y"|"tBodyAccJerk.entropy..Y"|
|105|"tBodyAccJerk-entropy()-Z"|"tBodyAccJerk.entropy..Z"|
|106|"tBodyAccJerk-arCoeff()-X,1"|"tBodyAccJerk.arCoeff..X.1"|
|107|"tBodyAccJerk-arCoeff()-X,2"|"tBodyAccJerk.arCoeff..X.2"|
|108|"tBodyAccJerk-arCoeff()-X,3"|"tBodyAccJerk.arCoeff..X.3"|
|109|"tBodyAccJerk-arCoeff()-X,4"|"tBodyAccJerk.arCoeff..X.4"|
|110|"tBodyAccJerk-arCoeff()-Y,1"|"tBodyAccJerk.arCoeff..Y.1"|
|111|"tBodyAccJerk-arCoeff()-Y,2"|"tBodyAccJerk.arCoeff..Y.2"|
|112|"tBodyAccJerk-arCoeff()-Y,3"|"tBodyAccJerk.arCoeff..Y.3"|
|113|"tBodyAccJerk-arCoeff()-Y,4"|"tBodyAccJerk.arCoeff..Y.4"|
|114|"tBodyAccJerk-arCoeff()-Z,1"|"tBodyAccJerk.arCoeff..Z.1"|
|115|"tBodyAccJerk-arCoeff()-Z,2"|"tBodyAccJerk.arCoeff..Z.2"|
|116|"tBodyAccJerk-arCoeff()-Z,3"|"tBodyAccJerk.arCoeff..Z.3"|
|117|"tBodyAccJerk-arCoeff()-Z,4"|"tBodyAccJerk.arCoeff..Z.4"|
|118|"tBodyAccJerk-correlation()-X,Y"|"tBodyAccJerk.correlation..X.Y"|
|119|"tBodyAccJerk-correlation()-X,Z"|"tBodyAccJerk.correlation..X.Z"|
|120|"tBodyAccJerk-correlation()-Y,Z"|"tBodyAccJerk.correlation..Y.Z"|
|121|"tBodyGyro-mean()-X"|"tBodyGyro.mean..X"|
|122|"tBodyGyro-mean()-Y"|"tBodyGyro.mean..Y"|
|123|"tBodyGyro-mean()-Z"|"tBodyGyro.mean..Z"|
|124|"tBodyGyro-std()-X"|"tBodyGyro.std..X"|
|125|"tBodyGyro-std()-Y"|"tBodyGyro.std..Y"|
|126|"tBodyGyro-std()-Z"|"tBodyGyro.std..Z"|
|127|"tBodyGyro-mad()-X"|"tBodyGyro.mad..X"|
|128|"tBodyGyro-mad()-Y"|"tBodyGyro.mad..Y"|
|129|"tBodyGyro-mad()-Z"|"tBodyGyro.mad..Z"|
|130|"tBodyGyro-max()-X"|"tBodyGyro.max..X"|
|131|"tBodyGyro-max()-Y"|"tBodyGyro.max..Y"|
|132|"tBodyGyro-max()-Z"|"tBodyGyro.max..Z"|
|133|"tBodyGyro-min()-X"|"tBodyGyro.min..X"|
|134|"tBodyGyro-min()-Y"|"tBodyGyro.min..Y"|
|135|"tBodyGyro-min()-Z"|"tBodyGyro.min..Z"|
|136|"tBodyGyro-sma()"|"tBodyGyro.sma."|
|137|"tBodyGyro-energy()-X"|"tBodyGyro.energy..X"|
|138|"tBodyGyro-energy()-Y"|"tBodyGyro.energy..Y"|
|139|"tBodyGyro-energy()-Z"|"tBodyGyro.energy..Z"|
|140|"tBodyGyro-iqr()-X"|"tBodyGyro.iqr..X"|
|141|"tBodyGyro-iqr()-Y"|"tBodyGyro.iqr..Y"|
|142|"tBodyGyro-iqr()-Z"|"tBodyGyro.iqr..Z"|
|143|"tBodyGyro-entropy()-X"|"tBodyGyro.entropy..X"|
|144|"tBodyGyro-entropy()-Y"|"tBodyGyro.entropy..Y"|
|145|"tBodyGyro-entropy()-Z"|"tBodyGyro.entropy..Z"|
|146|"tBodyGyro-arCoeff()-X,1"|"tBodyGyro.arCoeff..X.1"|
|147|"tBodyGyro-arCoeff()-X,2"|"tBodyGyro.arCoeff..X.2"|
|148|"tBodyGyro-arCoeff()-X,3"|"tBodyGyro.arCoeff..X.3"|
|149|"tBodyGyro-arCoeff()-X,4"|"tBodyGyro.arCoeff..X.4"|
|150|"tBodyGyro-arCoeff()-Y,1"|"tBodyGyro.arCoeff..Y.1"|
|151|"tBodyGyro-arCoeff()-Y,2"|"tBodyGyro.arCoeff..Y.2"|
|152|"tBodyGyro-arCoeff()-Y,3"|"tBodyGyro.arCoeff..Y.3"|
|153|"tBodyGyro-arCoeff()-Y,4"|"tBodyGyro.arCoeff..Y.4"|
|154|"tBodyGyro-arCoeff()-Z,1"|"tBodyGyro.arCoeff..Z.1"|
|155|"tBodyGyro-arCoeff()-Z,2"|"tBodyGyro.arCoeff..Z.2"|
|156|"tBodyGyro-arCoeff()-Z,3"|"tBodyGyro.arCoeff..Z.3"|
|157|"tBodyGyro-arCoeff()-Z,4"|"tBodyGyro.arCoeff..Z.4"|
|158|"tBodyGyro-correlation()-X,Y"|"tBodyGyro.correlation..X.Y"|
|159|"tBodyGyro-correlation()-X,Z"|"tBodyGyro.correlation..X.Z"|
|160|"tBodyGyro-correlation()-Y,Z"|"tBodyGyro.correlation..Y.Z"|
|161|"tBodyGyroJerk-mean()-X"|"tBodyGyroJerk.mean..X"|
|162|"tBodyGyroJerk-mean()-Y"|"tBodyGyroJerk.mean..Y"|
|163|"tBodyGyroJerk-mean()-Z"|"tBodyGyroJerk.mean..Z"|
|164|"tBodyGyroJerk-std()-X"|"tBodyGyroJerk.std..X"|
|165|"tBodyGyroJerk-std()-Y"|"tBodyGyroJerk.std..Y"|
|166|"tBodyGyroJerk-std()-Z"|"tBodyGyroJerk.std..Z"|
|167|"tBodyGyroJerk-mad()-X"|"tBodyGyroJerk.mad..X"|
|168|"tBodyGyroJerk-mad()-Y"|"tBodyGyroJerk.mad..Y"|
|169|"tBodyGyroJerk-mad()-Z"|"tBodyGyroJerk.mad..Z"|
|170|"tBodyGyroJerk-max()-X"|"tBodyGyroJerk.max..X"|
|171|"tBodyGyroJerk-max()-Y"|"tBodyGyroJerk.max..Y"|
|172|"tBodyGyroJerk-max()-Z"|"tBodyGyroJerk.max..Z"|
|173|"tBodyGyroJerk-min()-X"|"tBodyGyroJerk.min..X"|
|174|"tBodyGyroJerk-min()-Y"|"tBodyGyroJerk.min..Y"|
|175|"tBodyGyroJerk-min()-Z"|"tBodyGyroJerk.min..Z"|
|176|"tBodyGyroJerk-sma()"|"tBodyGyroJerk.sma."|
|177|"tBodyGyroJerk-energy()-X"|"tBodyGyroJerk.energy..X"|
|178|"tBodyGyroJerk-energy()-Y"|"tBodyGyroJerk.energy..Y"|
|179|"tBodyGyroJerk-energy()-Z"|"tBodyGyroJerk.energy..Z"|
|180|"tBodyGyroJerk-iqr()-X"|"tBodyGyroJerk.iqr..X"|
|181|"tBodyGyroJerk-iqr()-Y"|"tBodyGyroJerk.iqr..Y"|
|182|"tBodyGyroJerk-iqr()-Z"|"tBodyGyroJerk.iqr..Z"|
|183|"tBodyGyroJerk-entropy()-X"|"tBodyGyroJerk.entropy..X"|
|184|"tBodyGyroJerk-entropy()-Y"|"tBodyGyroJerk.entropy..Y"|
|185|"tBodyGyroJerk-entropy()-Z"|"tBodyGyroJerk.entropy..Z"|
|186|"tBodyGyroJerk-arCoeff()-X,1"|"tBodyGyroJerk.arCoeff..X.1"|
|187|"tBodyGyroJerk-arCoeff()-X,2"|"tBodyGyroJerk.arCoeff..X.2"|
|188|"tBodyGyroJerk-arCoeff()-X,3"|"tBodyGyroJerk.arCoeff..X.3"|
|189|"tBodyGyroJerk-arCoeff()-X,4"|"tBodyGyroJerk.arCoeff..X.4"|
|190|"tBodyGyroJerk-arCoeff()-Y,1"|"tBodyGyroJerk.arCoeff..Y.1"|
|191|"tBodyGyroJerk-arCoeff()-Y,2"|"tBodyGyroJerk.arCoeff..Y.2"|
|192|"tBodyGyroJerk-arCoeff()-Y,3"|"tBodyGyroJerk.arCoeff..Y.3"|
|193|"tBodyGyroJerk-arCoeff()-Y,4"|"tBodyGyroJerk.arCoeff..Y.4"|
|194|"tBodyGyroJerk-arCoeff()-Z,1"|"tBodyGyroJerk.arCoeff..Z.1"|
|195|"tBodyGyroJerk-arCoeff()-Z,2"|"tBodyGyroJerk.arCoeff..Z.2"|
|196|"tBodyGyroJerk-arCoeff()-Z,3"|"tBodyGyroJerk.arCoeff..Z.3"|
|197|"tBodyGyroJerk-arCoeff()-Z,4"|"tBodyGyroJerk.arCoeff..Z.4"|
|198|"tBodyGyroJerk-correlation()-X,Y"|"tBodyGyroJerk.correlation..X.Y"|
|199|"tBodyGyroJerk-correlation()-X,Z"|"tBodyGyroJerk.correlation..X.Z"|
|200|"tBodyGyroJerk-correlation()-Y,Z"|"tBodyGyroJerk.correlation..Y.Z"|
|201|"tBodyAccMag-mean()"|"tBodyAccMag.mean."|
|202|"tBodyAccMag-std()"|"tBodyAccMag.std."|
|203|"tBodyAccMag-mad()"|"tBodyAccMag.mad."|
|204|"tBodyAccMag-max()"|"tBodyAccMag.max."|
|205|"tBodyAccMag-min()"|"tBodyAccMag.min."|
|206|"tBodyAccMag-sma()"|"tBodyAccMag.sma."|
|207|"tBodyAccMag-energy()"|"tBodyAccMag.energy."|
|208|"tBodyAccMag-iqr()"|"tBodyAccMag.iqr."|
|209|"tBodyAccMag-entropy()"|"tBodyAccMag.entropy."|
|210|"tBodyAccMag-arCoeff()1"|"tBodyAccMag.arCoeff.1"|
|211|"tBodyAccMag-arCoeff()2"|"tBodyAccMag.arCoeff.2"|
|212|"tBodyAccMag-arCoeff()3"|"tBodyAccMag.arCoeff.3"|
|213|"tBodyAccMag-arCoeff()4"|"tBodyAccMag.arCoeff.4"|
|214|"tGravityAccMag-mean()"|"tGravityAccMag.mean."|
|215|"tGravityAccMag-std()"|"tGravityAccMag.std."|
|216|"tGravityAccMag-mad()"|"tGravityAccMag.mad."|
|217|"tGravityAccMag-max()"|"tGravityAccMag.max."|
|218|"tGravityAccMag-min()"|"tGravityAccMag.min."|
|219|"tGravityAccMag-sma()"|"tGravityAccMag.sma."|
|220|"tGravityAccMag-energy()"|"tGravityAccMag.energy."|
|221|"tGravityAccMag-iqr()"|"tGravityAccMag.iqr."|
|222|"tGravityAccMag-entropy()"|"tGravityAccMag.entropy."|
|223|"tGravityAccMag-arCoeff()1"|"tGravityAccMag.arCoeff.1"|
|224|"tGravityAccMag-arCoeff()2"|"tGravityAccMag.arCoeff.2"|
|225|"tGravityAccMag-arCoeff()3"|"tGravityAccMag.arCoeff.3"|
|226|"tGravityAccMag-arCoeff()4"|"tGravityAccMag.arCoeff.4"|
|227|"tBodyAccJerkMag-mean()"|"tBodyAccJerkMag.mean."|
|228|"tBodyAccJerkMag-std()"|"tBodyAccJerkMag.std."|
|229|"tBodyAccJerkMag-mad()"|"tBodyAccJerkMag.mad."|
|230|"tBodyAccJerkMag-max()"|"tBodyAccJerkMag.max."|
|231|"tBodyAccJerkMag-min()"|"tBodyAccJerkMag.min."|
|232|"tBodyAccJerkMag-sma()"|"tBodyAccJerkMag.sma."|
|233|"tBodyAccJerkMag-energy()"|"tBodyAccJerkMag.energy."|
|234|"tBodyAccJerkMag-iqr()"|"tBodyAccJerkMag.iqr."|
|235|"tBodyAccJerkMag-entropy()"|"tBodyAccJerkMag.entropy."|
|236|"tBodyAccJerkMag-arCoeff()1"|"tBodyAccJerkMag.arCoeff.1"|
|237|"tBodyAccJerkMag-arCoeff()2"|"tBodyAccJerkMag.arCoeff.2"|
|238|"tBodyAccJerkMag-arCoeff()3"|"tBodyAccJerkMag.arCoeff.3"|
|239|"tBodyAccJerkMag-arCoeff()4"|"tBodyAccJerkMag.arCoeff.4"|
|240|"tBodyGyroMag-mean()"|"tBodyGyroMag.mean."|
|241|"tBodyGyroMag-std()"|"tBodyGyroMag.std."|
|242|"tBodyGyroMag-mad()"|"tBodyGyroMag.mad."|
|243|"tBodyGyroMag-max()"|"tBodyGyroMag.max."|
|244|"tBodyGyroMag-min()"|"tBodyGyroMag.min."|
|245|"tBodyGyroMag-sma()"|"tBodyGyroMag.sma."|
|246|"tBodyGyroMag-energy()"|"tBodyGyroMag.energy."|
|247|"tBodyGyroMag-iqr()"|"tBodyGyroMag.iqr."|
|248|"tBodyGyroMag-entropy()"|"tBodyGyroMag.entropy."|
|249|"tBodyGyroMag-arCoeff()1"|"tBodyGyroMag.arCoeff.1"|
|250|"tBodyGyroMag-arCoeff()2"|"tBodyGyroMag.arCoeff.2"|
|251|"tBodyGyroMag-arCoeff()3"|"tBodyGyroMag.arCoeff.3"|
|252|"tBodyGyroMag-arCoeff()4"|"tBodyGyroMag.arCoeff.4"|
|253|"tBodyGyroJerkMag-mean()"|"tBodyGyroJerkMag.mean."|
|254|"tBodyGyroJerkMag-std()"|"tBodyGyroJerkMag.std."|
|255|"tBodyGyroJerkMag-mad()"|"tBodyGyroJerkMag.mad."|
|256|"tBodyGyroJerkMag-max()"|"tBodyGyroJerkMag.max."|
|257|"tBodyGyroJerkMag-min()"|"tBodyGyroJerkMag.min."|
|258|"tBodyGyroJerkMag-sma()"|"tBodyGyroJerkMag.sma."|
|259|"tBodyGyroJerkMag-energy()"|"tBodyGyroJerkMag.energy."|
|260|"tBodyGyroJerkMag-iqr()"|"tBodyGyroJerkMag.iqr."|
|261|"tBodyGyroJerkMag-entropy()"|"tBodyGyroJerkMag.entropy."|
|262|"tBodyGyroJerkMag-arCoeff()1"|"tBodyGyroJerkMag.arCoeff.1"|
|263|"tBodyGyroJerkMag-arCoeff()2"|"tBodyGyroJerkMag.arCoeff.2"|
|264|"tBodyGyroJerkMag-arCoeff()3"|"tBodyGyroJerkMag.arCoeff.3"|
|265|"tBodyGyroJerkMag-arCoeff()4"|"tBodyGyroJerkMag.arCoeff.4"|
|266|"fBodyAcc-mean()-X"|"fBodyAcc.mean..X"|
|267|"fBodyAcc-mean()-Y"|"fBodyAcc.mean..Y"|
|268|"fBodyAcc-mean()-Z"|"fBodyAcc.mean..Z"|
|269|"fBodyAcc-std()-X"|"fBodyAcc.std..X"|
|270|"fBodyAcc-std()-Y"|"fBodyAcc.std..Y"|
|271|"fBodyAcc-std()-Z"|"fBodyAcc.std..Z"|
|272|"fBodyAcc-mad()-X"|"fBodyAcc.mad..X"|
|273|"fBodyAcc-mad()-Y"|"fBodyAcc.mad..Y"|
|274|"fBodyAcc-mad()-Z"|"fBodyAcc.mad..Z"|
|275|"fBodyAcc-max()-X"|"fBodyAcc.max..X"|
|276|"fBodyAcc-max()-Y"|"fBodyAcc.max..Y"|
|277|"fBodyAcc-max()-Z"|"fBodyAcc.max..Z"|
|278|"fBodyAcc-min()-X"|"fBodyAcc.min..X"|
|279|"fBodyAcc-min()-Y"|"fBodyAcc.min..Y"|
|280|"fBodyAcc-min()-Z"|"fBodyAcc.min..Z"|
|281|"fBodyAcc-sma()"|"fBodyAcc.sma."|
|282|"fBodyAcc-energy()-X"|"fBodyAcc.energy..X"|
|283|"fBodyAcc-energy()-Y"|"fBodyAcc.energy..Y"|
|284|"fBodyAcc-energy()-Z"|"fBodyAcc.energy..Z"|
|285|"fBodyAcc-iqr()-X"|"fBodyAcc.iqr..X"|
|286|"fBodyAcc-iqr()-Y"|"fBodyAcc.iqr..Y"|
|287|"fBodyAcc-iqr()-Z"|"fBodyAcc.iqr..Z"|
|288|"fBodyAcc-entropy()-X"|"fBodyAcc.entropy..X"|
|289|"fBodyAcc-entropy()-Y"|"fBodyAcc.entropy..Y"|
|290|"fBodyAcc-entropy()-Z"|"fBodyAcc.entropy..Z"|
|291|"fBodyAcc-maxInds-X"|"fBodyAcc.maxInds.X"|
|292|"fBodyAcc-maxInds-Y"|"fBodyAcc.maxInds.Y"|
|293|"fBodyAcc-maxInds-Z"|"fBodyAcc.maxInds.Z"|
|294|"fBodyAcc-meanFreq()-X"|"fBodyAcc.meanFreq..X"|
|295|"fBodyAcc-meanFreq()-Y"|"fBodyAcc.meanFreq..Y"|
|296|"fBodyAcc-meanFreq()-Z"|"fBodyAcc.meanFreq..Z"|
|297|"fBodyAcc-skewness()-X"|"fBodyAcc.skewness..X"|
|298|"fBodyAcc-kurtosis()-X"|"fBodyAcc.kurtosis..X"|
|299|"fBodyAcc-skewness()-Y"|"fBodyAcc.skewness..Y"|
|300|"fBodyAcc-kurtosis()-Y"|"fBodyAcc.kurtosis..Y"|
|301|"fBodyAcc-skewness()-Z"|"fBodyAcc.skewness..Z"|
|302|"fBodyAcc-kurtosis()-Z"|"fBodyAcc.kurtosis..Z"|
|303|"fBodyAcc-bandsEnergy()-1,8"|"fBodyAcc.bandsEnergy..1.8_X"|
|304|"fBodyAcc-bandsEnergy()-9,16"|"fBodyAcc.bandsEnergy..9.16_X"|
|305|"fBodyAcc-bandsEnergy()-17,24"|"fBodyAcc.bandsEnergy..17.24_X"|
|306|"fBodyAcc-bandsEnergy()-25,32"|"fBodyAcc.bandsEnergy..25.32_X"|
|307|"fBodyAcc-bandsEnergy()-33,40"|"fBodyAcc.bandsEnergy..33.40_X"|
|308|"fBodyAcc-bandsEnergy()-41,48"|"fBodyAcc.bandsEnergy..41.48_X"|
|309|"fBodyAcc-bandsEnergy()-49,56"|"fBodyAcc.bandsEnergy..49.56_X"|
|310|"fBodyAcc-bandsEnergy()-57,64"|"fBodyAcc.bandsEnergy..57.64_X"|
|311|"fBodyAcc-bandsEnergy()-1,16"|"fBodyAcc.bandsEnergy..1.16_X"|
|312|"fBodyAcc-bandsEnergy()-17,32"|"fBodyAcc.bandsEnergy..17.32_X"|
|313|"fBodyAcc-bandsEnergy()-33,48"|"fBodyAcc.bandsEnergy..33.48_X"|
|314|"fBodyAcc-bandsEnergy()-49,64"|"fBodyAcc.bandsEnergy..49.64_X"|
|315|"fBodyAcc-bandsEnergy()-1,24"|"fBodyAcc.bandsEnergy..1.24_X"|
|316|"fBodyAcc-bandsEnergy()-25,48"|"fBodyAcc.bandsEnergy..25.48_X"|
|317|"fBodyAcc-bandsEnergy()-1,8"|"fBodyAcc.bandsEnergy..1.8_Y"|
|318|"fBodyAcc-bandsEnergy()-9,16"|"fBodyAcc.bandsEnergy..9.16_Y"|
|319|"fBodyAcc-bandsEnergy()-17,24"|"fBodyAcc.bandsEnergy..17.24_Y"|
|320|"fBodyAcc-bandsEnergy()-25,32"|"fBodyAcc.bandsEnergy..25.32_Y"|
|321|"fBodyAcc-bandsEnergy()-33,40"|"fBodyAcc.bandsEnergy..33.40_Y"|
|322|"fBodyAcc-bandsEnergy()-41,48"|"fBodyAcc.bandsEnergy..41.48_Y"|
|323|"fBodyAcc-bandsEnergy()-49,56"|"fBodyAcc.bandsEnergy..49.56_Y"|
|324|"fBodyAcc-bandsEnergy()-57,64"|"fBodyAcc.bandsEnergy..57.64_Y"|
|325|"fBodyAcc-bandsEnergy()-1,16"|"fBodyAcc.bandsEnergy..1.16_Y"|
|326|"fBodyAcc-bandsEnergy()-17,32"|"fBodyAcc.bandsEnergy..17.32_Y"|
|327|"fBodyAcc-bandsEnergy()-33,48"|"fBodyAcc.bandsEnergy..33.48_Y"|
|328|"fBodyAcc-bandsEnergy()-49,64"|"fBodyAcc.bandsEnergy..49.64_Y"|
|329|"fBodyAcc-bandsEnergy()-1,24"|"fBodyAcc.bandsEnergy..1.24_Y"|
|330|"fBodyAcc-bandsEnergy()-25,48"|"fBodyAcc.bandsEnergy..25.48_Y"|
|331|"fBodyAcc-bandsEnergy()-1,8"|"fBodyAcc.bandsEnergy..1.8_Z"|
|332|"fBodyAcc-bandsEnergy()-9,16"|"fBodyAcc.bandsEnergy..9.16_Z"|
|333|"fBodyAcc-bandsEnergy()-17,24"|"fBodyAcc.bandsEnergy..17.24_Z"|
|334|"fBodyAcc-bandsEnergy()-25,32"|"fBodyAcc.bandsEnergy..25.32_Z"|
|335|"fBodyAcc-bandsEnergy()-33,40"|"fBodyAcc.bandsEnergy..33.40_Z"|
|336|"fBodyAcc-bandsEnergy()-41,48"|"fBodyAcc.bandsEnergy..41.48_Z"|
|337|"fBodyAcc-bandsEnergy()-49,56"|"fBodyAcc.bandsEnergy..49.56_Z"|
|338|"fBodyAcc-bandsEnergy()-57,64"|"fBodyAcc.bandsEnergy..57.64_Z"|
|339|"fBodyAcc-bandsEnergy()-1,16"|"fBodyAcc.bandsEnergy..1.16_Z"|
|340|"fBodyAcc-bandsEnergy()-17,32"|"fBodyAcc.bandsEnergy..17.32_Z"|
|341|"fBodyAcc-bandsEnergy()-33,48"|"fBodyAcc.bandsEnergy..33.48_Z"|
|342|"fBodyAcc-bandsEnergy()-49,64"|"fBodyAcc.bandsEnergy..49.64_Z"|
|343|"fBodyAcc-bandsEnergy()-1,24"|"fBodyAcc.bandsEnergy..1.24_Z"|
|344|"fBodyAcc-bandsEnergy()-25,48"|"fBodyAcc.bandsEnergy..25.48_Z"|
|345|"fBodyAccJerk-mean()-X"|"fBodyAccJerk.mean..X"|
|346|"fBodyAccJerk-mean()-Y"|"fBodyAccJerk.mean..Y"|
|347|"fBodyAccJerk-mean()-Z"|"fBodyAccJerk.mean..Z"|
|348|"fBodyAccJerk-std()-X"|"fBodyAccJerk.std..X"|
|349|"fBodyAccJerk-std()-Y"|"fBodyAccJerk.std..Y"|
|350|"fBodyAccJerk-std()-Z"|"fBodyAccJerk.std..Z"|
|351|"fBodyAccJerk-mad()-X"|"fBodyAccJerk.mad..X"|
|352|"fBodyAccJerk-mad()-Y"|"fBodyAccJerk.mad..Y"|
|353|"fBodyAccJerk-mad()-Z"|"fBodyAccJerk.mad..Z"|
|354|"fBodyAccJerk-max()-X"|"fBodyAccJerk.max..X"|
|355|"fBodyAccJerk-max()-Y"|"fBodyAccJerk.max..Y"|
|356|"fBodyAccJerk-max()-Z"|"fBodyAccJerk.max..Z"|
|357|"fBodyAccJerk-min()-X"|"fBodyAccJerk.min..X"|
|358|"fBodyAccJerk-min()-Y"|"fBodyAccJerk.min..Y"|
|359|"fBodyAccJerk-min()-Z"|"fBodyAccJerk.min..Z"|
|360|"fBodyAccJerk-sma()"|"fBodyAccJerk.sma."|
|361|"fBodyAccJerk-energy()-X"|"fBodyAccJerk.energy..X"|
|362|"fBodyAccJerk-energy()-Y"|"fBodyAccJerk.energy..Y"|
|363|"fBodyAccJerk-energy()-Z"|"fBodyAccJerk.energy..Z"|
|364|"fBodyAccJerk-iqr()-X"|"fBodyAccJerk.iqr..X"|
|365|"fBodyAccJerk-iqr()-Y"|"fBodyAccJerk.iqr..Y"|
|366|"fBodyAccJerk-iqr()-Z"|"fBodyAccJerk.iqr..Z"|
|367|"fBodyAccJerk-entropy()-X"|"fBodyAccJerk.entropy..X"|
|368|"fBodyAccJerk-entropy()-Y"|"fBodyAccJerk.entropy..Y"|
|369|"fBodyAccJerk-entropy()-Z"|"fBodyAccJerk.entropy..Z"|
|370|"fBodyAccJerk-maxInds-X"|"fBodyAccJerk.maxInds.X"|
|371|"fBodyAccJerk-maxInds-Y"|"fBodyAccJerk.maxInds.Y"|
|372|"fBodyAccJerk-maxInds-Z"|"fBodyAccJerk.maxInds.Z"|
|373|"fBodyAccJerk-meanFreq()-X"|"fBodyAccJerk.meanFreq..X"|
|374|"fBodyAccJerk-meanFreq()-Y"|"fBodyAccJerk.meanFreq..Y"|
|375|"fBodyAccJerk-meanFreq()-Z"|"fBodyAccJerk.meanFreq..Z"|
|376|"fBodyAccJerk-skewness()-X"|"fBodyAccJerk.skewness..X"|
|377|"fBodyAccJerk-kurtosis()-X"|"fBodyAccJerk.kurtosis..X"|
|378|"fBodyAccJerk-skewness()-Y"|"fBodyAccJerk.skewness..Y"|
|379|"fBodyAccJerk-kurtosis()-Y"|"fBodyAccJerk.kurtosis..Y"|
|380|"fBodyAccJerk-skewness()-Z"|"fBodyAccJerk.skewness..Z"|
|381|"fBodyAccJerk-kurtosis()-Z"|"fBodyAccJerk.kurtosis..Z"|
|382|"fBodyAccJerk-bandsEnergy()-1,8"|"fBodyAccJerk.bandsEnergy..1.8_X"|
|383|"fBodyAccJerk-bandsEnergy()-9,16"|"fBodyAccJerk.bandsEnergy..9.16_X"|
|384|"fBodyAccJerk-bandsEnergy()-17,24"|"fBodyAccJerk.bandsEnergy..17.24_X"|
|385|"fBodyAccJerk-bandsEnergy()-25,32"|"fBodyAccJerk.bandsEnergy..25.32_X"|
|386|"fBodyAccJerk-bandsEnergy()-33,40"|"fBodyAccJerk.bandsEnergy..33.40_X"|
|387|"fBodyAccJerk-bandsEnergy()-41,48"|"fBodyAccJerk.bandsEnergy..41.48_X"|
|388|"fBodyAccJerk-bandsEnergy()-49,56"|"fBodyAccJerk.bandsEnergy..49.56_X"|
|389|"fBodyAccJerk-bandsEnergy()-57,64"|"fBodyAccJerk.bandsEnergy..57.64_X"|
|390|"fBodyAccJerk-bandsEnergy()-1,16"|"fBodyAccJerk.bandsEnergy..1.16_X"|
|391|"fBodyAccJerk-bandsEnergy()-17,32"|"fBodyAccJerk.bandsEnergy..17.32_X"|
|392|"fBodyAccJerk-bandsEnergy()-33,48"|"fBodyAccJerk.bandsEnergy..33.48_X"|
|393|"fBodyAccJerk-bandsEnergy()-49,64"|"fBodyAccJerk.bandsEnergy..49.64_X"|
|394|"fBodyAccJerk-bandsEnergy()-1,24"|"fBodyAccJerk.bandsEnergy..1.24_X"|
|395|"fBodyAccJerk-bandsEnergy()-25,48"|"fBodyAccJerk.bandsEnergy..25.48_X"|
|396|"fBodyAccJerk-bandsEnergy()-1,8"|"fBodyAccJerk.bandsEnergy..1.8_Y"|
|397|"fBodyAccJerk-bandsEnergy()-9,16"|"fBodyAccJerk.bandsEnergy..9.16_Y"|
|398|"fBodyAccJerk-bandsEnergy()-17,24"|"fBodyAccJerk.bandsEnergy..17.24_Y"|
|399|"fBodyAccJerk-bandsEnergy()-25,32"|"fBodyAccJerk.bandsEnergy..25.32_Y"|
|400|"fBodyAccJerk-bandsEnergy()-33,40"|"fBodyAccJerk.bandsEnergy..33.40_Y"|
|401|"fBodyAccJerk-bandsEnergy()-41,48"|"fBodyAccJerk.bandsEnergy..41.48_Y"|
|402|"fBodyAccJerk-bandsEnergy()-49,56"|"fBodyAccJerk.bandsEnergy..49.56_Y"|
|403|"fBodyAccJerk-bandsEnergy()-57,64"|"fBodyAccJerk.bandsEnergy..57.64_Y"|
|404|"fBodyAccJerk-bandsEnergy()-1,16"|"fBodyAccJerk.bandsEnergy..1.16_Y"|
|405|"fBodyAccJerk-bandsEnergy()-17,32"|"fBodyAccJerk.bandsEnergy..17.32_Y"|
|406|"fBodyAccJerk-bandsEnergy()-33,48"|"fBodyAccJerk.bandsEnergy..33.48_Y"|
|407|"fBodyAccJerk-bandsEnergy()-49,64"|"fBodyAccJerk.bandsEnergy..49.64_Y"|
|408|"fBodyAccJerk-bandsEnergy()-1,24"|"fBodyAccJerk.bandsEnergy..1.24_Y"|
|409|"fBodyAccJerk-bandsEnergy()-25,48"|"fBodyAccJerk.bandsEnergy..25.48_Y"|
|410|"fBodyAccJerk-bandsEnergy()-1,8"|"fBodyAccJerk.bandsEnergy..1.8_Z"|
|411|"fBodyAccJerk-bandsEnergy()-9,16"|"fBodyAccJerk.bandsEnergy..9.16_Z"|
|412|"fBodyAccJerk-bandsEnergy()-17,24"|"fBodyAccJerk.bandsEnergy..17.24_Z"|
|413|"fBodyAccJerk-bandsEnergy()-25,32"|"fBodyAccJerk.bandsEnergy..25.32_Z"|
|414|"fBodyAccJerk-bandsEnergy()-33,40"|"fBodyAccJerk.bandsEnergy..33.40_Z"|
|415|"fBodyAccJerk-bandsEnergy()-41,48"|"fBodyAccJerk.bandsEnergy..41.48_Z"|
|416|"fBodyAccJerk-bandsEnergy()-49,56"|"fBodyAccJerk.bandsEnergy..49.56_Z"|
|417|"fBodyAccJerk-bandsEnergy()-57,64"|"fBodyAccJerk.bandsEnergy..57.64_Z"|
|418|"fBodyAccJerk-bandsEnergy()-1,16"|"fBodyAccJerk.bandsEnergy..1.16_Z"|
|419|"fBodyAccJerk-bandsEnergy()-17,32"|"fBodyAccJerk.bandsEnergy..17.32_Z"|
|420|"fBodyAccJerk-bandsEnergy()-33,48"|"fBodyAccJerk.bandsEnergy..33.48_Z"|
|421|"fBodyAccJerk-bandsEnergy()-49,64"|"fBodyAccJerk.bandsEnergy..49.64_Z"|
|422|"fBodyAccJerk-bandsEnergy()-1,24"|"fBodyAccJerk.bandsEnergy..1.24_Z"|
|423|"fBodyAccJerk-bandsEnergy()-25,48"|"fBodyAccJerk.bandsEnergy..25.48_Z"|
|424|"fBodyGyro-mean()-X"|"fBodyGyro.mean..X"|
|425|"fBodyGyro-mean()-Y"|"fBodyGyro.mean..Y"|
|426|"fBodyGyro-mean()-Z"|"fBodyGyro.mean..Z"|
|427|"fBodyGyro-std()-X"|"fBodyGyro.std..X"|
|428|"fBodyGyro-std()-Y"|"fBodyGyro.std..Y"|
|429|"fBodyGyro-std()-Z"|"fBodyGyro.std..Z"|
|430|"fBodyGyro-mad()-X"|"fBodyGyro.mad..X"|
|431|"fBodyGyro-mad()-Y"|"fBodyGyro.mad..Y"|
|432|"fBodyGyro-mad()-Z"|"fBodyGyro.mad..Z"|
|433|"fBodyGyro-max()-X"|"fBodyGyro.max..X"|
|434|"fBodyGyro-max()-Y"|"fBodyGyro.max..Y"|
|435|"fBodyGyro-max()-Z"|"fBodyGyro.max..Z"|
|436|"fBodyGyro-min()-X"|"fBodyGyro.min..X"|
|437|"fBodyGyro-min()-Y"|"fBodyGyro.min..Y"|
|438|"fBodyGyro-min()-Z"|"fBodyGyro.min..Z"|
|439|"fBodyGyro-sma()"|"fBodyGyro.sma."|
|440|"fBodyGyro-energy()-X"|"fBodyGyro.energy..X"|
|441|"fBodyGyro-energy()-Y"|"fBodyGyro.energy..Y"|
|442|"fBodyGyro-energy()-Z"|"fBodyGyro.energy..Z"|
|443|"fBodyGyro-iqr()-X"|"fBodyGyro.iqr..X"|
|444|"fBodyGyro-iqr()-Y"|"fBodyGyro.iqr..Y"|
|445|"fBodyGyro-iqr()-Z"|"fBodyGyro.iqr..Z"|
|446|"fBodyGyro-entropy()-X"|"fBodyGyro.entropy..X"|
|447|"fBodyGyro-entropy()-Y"|"fBodyGyro.entropy..Y"|
|448|"fBodyGyro-entropy()-Z"|"fBodyGyro.entropy..Z"|
|449|"fBodyGyro-maxInds-X"|"fBodyGyro.maxInds.X"|
|450|"fBodyGyro-maxInds-Y"|"fBodyGyro.maxInds.Y"|
|451|"fBodyGyro-maxInds-Z"|"fBodyGyro.maxInds.Z"|
|452|"fBodyGyro-meanFreq()-X"|"fBodyGyro.meanFreq..X"|
|453|"fBodyGyro-meanFreq()-Y"|"fBodyGyro.meanFreq..Y"|
|454|"fBodyGyro-meanFreq()-Z"|"fBodyGyro.meanFreq..Z"|
|455|"fBodyGyro-skewness()-X"|"fBodyGyro.skewness..X"|
|456|"fBodyGyro-kurtosis()-X"|"fBodyGyro.kurtosis..X"|
|457|"fBodyGyro-skewness()-Y"|"fBodyGyro.skewness..Y"|
|458|"fBodyGyro-kurtosis()-Y"|"fBodyGyro.kurtosis..Y"|
|459|"fBodyGyro-skewness()-Z"|"fBodyGyro.skewness..Z"|
|460|"fBodyGyro-kurtosis()-Z"|"fBodyGyro.kurtosis..Z"|
|461|"fBodyGyro-bandsEnergy()-1,8"|"fBodyGyro.bandsEnergy..1.8_X"|
|462|"fBodyGyro-bandsEnergy()-9,16"|"fBodyGyro.bandsEnergy..9.16_X"|
|463|"fBodyGyro-bandsEnergy()-17,24"|"fBodyGyro.bandsEnergy..17.24_X"|
|464|"fBodyGyro-bandsEnergy()-25,32"|"fBodyGyro.bandsEnergy..25.32_X"|
|465|"fBodyGyro-bandsEnergy()-33,40"|"fBodyGyro.bandsEnergy..33.40_X"|
|466|"fBodyGyro-bandsEnergy()-41,48"|"fBodyGyro.bandsEnergy..41.48_X"|
|467|"fBodyGyro-bandsEnergy()-49,56"|"fBodyGyro.bandsEnergy..49.56_X"|
|468|"fBodyGyro-bandsEnergy()-57,64"|"fBodyGyro.bandsEnergy..57.64_X"|
|469|"fBodyGyro-bandsEnergy()-1,16"|"fBodyGyro.bandsEnergy..1.16_X"|
|470|"fBodyGyro-bandsEnergy()-17,32"|"fBodyGyro.bandsEnergy..17.32_X"|
|471|"fBodyGyro-bandsEnergy()-33,48"|"fBodyGyro.bandsEnergy..33.48_X"|
|472|"fBodyGyro-bandsEnergy()-49,64"|"fBodyGyro.bandsEnergy..49.64_X"|
|473|"fBodyGyro-bandsEnergy()-1,24"|"fBodyGyro.bandsEnergy..1.24_X"|
|474|"fBodyGyro-bandsEnergy()-25,48"|"fBodyGyro.bandsEnergy..25.48_X"|
|475|"fBodyGyro-bandsEnergy()-1,8"|"fBodyGyro.bandsEnergy..1.8_Y"|
|476|"fBodyGyro-bandsEnergy()-9,16"|"fBodyGyro.bandsEnergy..9.16_Y"|
|477|"fBodyGyro-bandsEnergy()-17,24"|"fBodyGyro.bandsEnergy..17.24_Y"|
|478|"fBodyGyro-bandsEnergy()-25,32"|"fBodyGyro.bandsEnergy..25.32_Y"|
|479|"fBodyGyro-bandsEnergy()-33,40"|"fBodyGyro.bandsEnergy..33.40_Y"|
|480|"fBodyGyro-bandsEnergy()-41,48"|"fBodyGyro.bandsEnergy..41.48_Y"|
|481|"fBodyGyro-bandsEnergy()-49,56"|"fBodyGyro.bandsEnergy..49.56_Y"|
|482|"fBodyGyro-bandsEnergy()-57,64"|"fBodyGyro.bandsEnergy..57.64_Y"|
|483|"fBodyGyro-bandsEnergy()-1,16"|"fBodyGyro.bandsEnergy..1.16_Y"|
|484|"fBodyGyro-bandsEnergy()-17,32"|"fBodyGyro.bandsEnergy..17.32_Y"|
|485|"fBodyGyro-bandsEnergy()-33,48"|"fBodyGyro.bandsEnergy..33.48_Y"|
|486|"fBodyGyro-bandsEnergy()-49,64"|"fBodyGyro.bandsEnergy..49.64_Y"|
|487|"fBodyGyro-bandsEnergy()-1,24"|"fBodyGyro.bandsEnergy..1.24_Y"|
|488|"fBodyGyro-bandsEnergy()-25,48"|"fBodyGyro.bandsEnergy..25.48_Y"|
|489|"fBodyGyro-bandsEnergy()-1,8"|"fBodyGyro.bandsEnergy..1.8_Z"|
|490|"fBodyGyro-bandsEnergy()-9,16"|"fBodyGyro.bandsEnergy..9.16_Z"|
|491|"fBodyGyro-bandsEnergy()-17,24"|"fBodyGyro.bandsEnergy..17.24_Z"|
|492|"fBodyGyro-bandsEnergy()-25,32"|"fBodyGyro.bandsEnergy..25.32_Z"|
|493|"fBodyGyro-bandsEnergy()-33,40"|"fBodyGyro.bandsEnergy..33.40_Z"|
|494|"fBodyGyro-bandsEnergy()-41,48"|"fBodyGyro.bandsEnergy..41.48_Z"|
|495|"fBodyGyro-bandsEnergy()-49,56"|"fBodyGyro.bandsEnergy..49.56_Z"|
|496|"fBodyGyro-bandsEnergy()-57,64"|"fBodyGyro.bandsEnergy..57.64_Z"|
|497|"fBodyGyro-bandsEnergy()-1,16"|"fBodyGyro.bandsEnergy..1.16_Z"|
|498|"fBodyGyro-bandsEnergy()-17,32"|"fBodyGyro.bandsEnergy..17.32_Z"|
|499|"fBodyGyro-bandsEnergy()-33,48"|"fBodyGyro.bandsEnergy..33.48_Z"|
|500|"fBodyGyro-bandsEnergy()-49,64"|"fBodyGyro.bandsEnergy..49.64_Z"|
|501|"fBodyGyro-bandsEnergy()-1,24"|"fBodyGyro.bandsEnergy..1.24_Z"|
|502|"fBodyGyro-bandsEnergy()-25,48"|"fBodyGyro.bandsEnergy..25.48_Z"|
|503|"fBodyAccMag-mean()"|"fBodyAccMag.mean."|
|504|"fBodyAccMag-std()"|"fBodyAccMag.std."|
|505|"fBodyAccMag-mad()"|"fBodyAccMag.mad."|
|506|"fBodyAccMag-max()"|"fBodyAccMag.max."|
|507|"fBodyAccMag-min()"|"fBodyAccMag.min."|
|508|"fBodyAccMag-sma()"|"fBodyAccMag.sma."|
|509|"fBodyAccMag-energy()"|"fBodyAccMag.energy."|
|510|"fBodyAccMag-iqr()"|"fBodyAccMag.iqr."|
|511|"fBodyAccMag-entropy()"|"fBodyAccMag.entropy."|
|512|"fBodyAccMag-maxInds"|"fBodyAccMag.maxInds"|
|513|"fBodyAccMag-meanFreq()"|"fBodyAccMag.meanFreq."|
|514|"fBodyAccMag-skewness()"|"fBodyAccMag.skewness."|
|515|"fBodyAccMag-kurtosis()"|"fBodyAccMag.kurtosis."|
|516|"fBodyBodyAccJerkMag-mean()"|"fBodyAccJerkMag.mean."|
|517|"fBodyBodyAccJerkMag-std()"|"fBodyAccJerkMag.std."|
|518|"fBodyBodyAccJerkMag-mad()"|"fBodyAccJerkMag.mad."|
|519|"fBodyBodyAccJerkMag-max()"|"fBodyAccJerkMag.max."|
|520|"fBodyBodyAccJerkMag-min()"|"fBodyAccJerkMag.min."|
|521|"fBodyBodyAccJerkMag-sma()"|"fBodyAccJerkMag.sma."|
|522|"fBodyBodyAccJerkMag-energy()"|"fBodyAccJerkMag.energy."|
|523|"fBodyBodyAccJerkMag-iqr()"|"fBodyAccJerkMag.iqr."|
|524|"fBodyBodyAccJerkMag-entropy()"|"fBodyAccJerkMag.entropy."|
|525|"fBodyBodyAccJerkMag-maxInds"|"fBodyAccJerkMag.maxInds"|
|526|"fBodyBodyAccJerkMag-meanFreq()"|"fBodyAccJerkMag.meanFreq."|
|527|"fBodyBodyAccJerkMag-skewness()"|"fBodyAccJerkMag.skewness."|
|528|"fBodyBodyAccJerkMag-kurtosis()"|"fBodyAccJerkMag.kurtosis."|
|529|"fBodyBodyGyroMag-mean()"|"fBodyGyroMag.mean."|
|530|"fBodyBodyGyroMag-std()"|"fBodyGyroMag.std."|
|531|"fBodyBodyGyroMag-mad()"|"fBodyGyroMag.mad."|
|532|"fBodyBodyGyroMag-max()"|"fBodyGyroMag.max."|
|533|"fBodyBodyGyroMag-min()"|"fBodyGyroMag.min."|
|534|"fBodyBodyGyroMag-sma()"|"fBodyGyroMag.sma."|
|535|"fBodyBodyGyroMag-energy()"|"fBodyGyroMag.energy."|
|536|"fBodyBodyGyroMag-iqr()"|"fBodyGyroMag.iqr."|
|537|"fBodyBodyGyroMag-entropy()"|"fBodyGyroMag.entropy."|
|538|"fBodyBodyGyroMag-maxInds"|"fBodyGyroMag.maxInds"|
|539|"fBodyBodyGyroMag-meanFreq()"|"fBodyGyroMag.meanFreq."|
|540|"fBodyBodyGyroMag-skewness()"|"fBodyGyroMag.skewness."|
|541|"fBodyBodyGyroMag-kurtosis()"|"fBodyGyroMag.kurtosis."|
|542|"fBodyBodyGyroJerkMag-mean()"|"fBodyGyroJerkMag.mean."|
|543|"fBodyBodyGyroJerkMag-std()"|"fBodyGyroJerkMag.std."|
|544|"fBodyBodyGyroJerkMag-mad()"|"fBodyGyroJerkMag.mad."|
|545|"fBodyBodyGyroJerkMag-max()"|"fBodyGyroJerkMag.max."|
|546|"fBodyBodyGyroJerkMag-min()"|"fBodyGyroJerkMag.min."|
|547|"fBodyBodyGyroJerkMag-sma()"|"fBodyGyroJerkMag.sma."|
|548|"fBodyBodyGyroJerkMag-energy()"|"fBodyGyroJerkMag.energy."|
|549|"fBodyBodyGyroJerkMag-iqr()"|"fBodyGyroJerkMag.iqr."|
|550|"fBodyBodyGyroJerkMag-entropy()"|"fBodyGyroJerkMag.entropy."|
|551|"fBodyBodyGyroJerkMag-maxInds"|"fBodyGyroJerkMag.maxInds"|
|552|"fBodyBodyGyroJerkMag-meanFreq()"|"fBodyGyroJerkMag.meanFreq."|
|553|"fBodyBodyGyroJerkMag-skewness()"|"fBodyGyroJerkMag.skewness."|
|554|"fBodyBodyGyroJerkMag-kurtosis()"|"fBodyGyroJerkMag.kurtosis."|
|555|"angle(tBodyAccMean,gravity)"|"angle.tBodyAccMean.gravity"|
|556|"angle(tBodyAccJerkMean),gravityMean)"|"angle.tBodyAccJerkMean.gravityMean"|
|557|"angle(tBodyGyroMean,gravityMean)"|"angle.tBodyGyroMean.gravityMean"|
|558|"angle(tBodyGyroJerkMean,gravityMean)"|"angle.tBodyGyroJerkMean.gravityMean"|
|559|"angle(X,gravityMean)"|"angle.X.gravityMean"|
|560|"angle(Y,gravityMean)"|"angle.Y.gravityMean"|
|561|"angle(Z,gravityMean)"|"angle.Z.gravityMean"|

The meaning of these features is described in more detail in the file features_info.txt supplied with the data set.  The identifiers are constructed from segments that specify the type of measurement along several categories:
- time domain (observed) vs. frequency domain (obtained by applying FFT): initial 't' or 'f'
- type of measurement: 'Acc' => acceleration (accelerometer), "Gyro' => orientation (gyroscope)
- type of statistic: mean, std, max, min, etc.

Test and train activity labels, y_test.txt and y_train.txt, are each just a single column of numbers identifying the activity for the corresponding row in the data set.  These values can be mapped to a descriptive name using the activity_label table (described above).

Test and train subject labels, subject_test.txt and subject_train.txt, are each just a single column of numbers identifying the subject (human individual) carrying the device providing the observation.  

The actual data sets, X_test.txt and X_train.txt, are rows of 561 floating point numbers corresponding to the features identified above (per column).  Each row is an observation which is identified by the labels in the two associated files (y_*.txt and subject_*.txt).

There are 7352 observations in the training set and 2947 in the test set, for a total of 10,299 observations in the combined data set.

After processing, the dta_tidy and dta_summ DFs have this structure:
|column name|
|-----------|
|activity.name         |
|subject.id            |
|tBodyAcc.mean..X      |
|tBodyAcc.mean..Y      |
|tBodyAcc.mean..Z      |
|tGravityAcc.mean..X   |
|tGravityAcc.mean..Y   |
|tGravityAcc.mean..Z   |
|tBodyAccJerk.mean..X  |
|tBodyAccJerk.mean..Y  |
|tBodyAccJerk.mean..Z  |
|tBodyGyro.mean..X     |
|tBodyGyro.mean..Y     |
|tBodyGyro.mean..Z     |
|tBodyGyroJerk.mean..X |
|tBodyGyroJerk.mean..Y |
|tBodyGyroJerk.mean..Z |
|tBodyAccMag.mean.     |
|tGravityAccMag.mean.  |
|tBodyAccJerkMag.mean. |
|tBodyGyroMag.mean.    |
|tBodyGyroJerkMag.mean.|
|fBodyAcc.mean..X      |
|fBodyAcc.mean..Y      |
|fBodyAcc.mean..Z      |
|fBodyAccJerk.mean..X  |
|fBodyAccJerk.mean..Y  |
|fBodyAccJerk.mean..Z  |
|fBodyGyro.mean..X     |
|fBodyGyro.mean..Y     |
|fBodyGyro.mean..Z     |
|fBodyAccMag.mean.     |
|fBodyAccJerkMag.mean. |
|fBodyGyroMag.mean.    |
|fBodyGyroJerkMag.mean.|
|tBodyAcc.std..X       |
|tBodyAcc.std..Y       |
|tBodyAcc.std..Z       |
|tGravityAcc.std..X    |
|tGravityAcc.std..Y    |
|tGravityAcc.std..Z    |
|tBodyAccJerk.std..X   |
|tBodyAccJerk.std..Y   |
|tBodyAccJerk.std..Z   |
|tBodyGyro.std..X      |
|tBodyGyro.std..Y      |
|tBodyGyro.std..Z      |
|tBodyGyroJerk.std..X  |
|tBodyGyroJerk.std..Y  |
|tBodyGyroJerk.std..Z  |
|tBodyAccMag.std.      |
|tGravityAccMag.std.   |
|tBodyAccJerkMag.std.  |
|tBodyGyroMag.std.     |
|tBodyGyroJerkMag.std. |
|fBodyAcc.std..X       |
|fBodyAcc.std..Y       |
|fBodyAcc.std..Z       |
|fBodyAccJerk.std..X   |
|fBodyAccJerk.std..Y   |
|fBodyAccJerk.std..Z   |
|fBodyGyro.std..X      |
|fBodyGyro.std..Y      |
|fBodyGyro.std..Z      |
|fBodyAccMag.std.      |
|fBodyAccJerkMag.std.  |
|fBodyGyroMag.std.     |
|fBodyGyroJerkMag.std. |
