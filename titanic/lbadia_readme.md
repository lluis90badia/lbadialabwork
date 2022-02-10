# Lab - Titanic approaches (feature engineering)

By [Lluis Badia Planes](https://github.com/lluis90badia), 10/2/2022

## 1st Part:

## Summarise ([analysis file](https://github.com/lluis90badia/lbadialabwork/blob/main/titanic/Titanic_10F.ipynb)):

After importing the data (train.csv) and checking the columns with the describe function, it seems that there are outliers in 'Age', 'SibSp' and 'Parch' columns; hoewever, after visualise column 'Age', there are none. Therefore, in this column it has only been done a replace of Null values with the Median of all those values. The other two columns, there are neither because, for example, it can be the possibility that a person has two parents and four children (6 members in total in the 'Parch' column); or a person has six siblings.

Subsequently, columns 'Cabin', 'PassengerId', 'Ticket', 'Name', 'Fare' and 'Embarked' has been deleted because they are not relevant with the column 'Survive'.

Finally, after doing a correlation matrix and the subsequent heatmap for the numerical columns (all of them because there are no categorical columns after column 'Sex' has been converted to numerical binary), there is a strong correlation between 'Sex' and 'Pclass' with 'Survived' columns.

In my opinion, giving the circumstances and the time of the incident, it seems surprising that the amount men it was greater than women. Perhaps the person's influence ('Class' column) was a strong motive to be the ones who were able to get on the boats.

## 2nd Part:

Unfortunately, because of little time left, it could only be possible to review two notebooks for comparing:

- Gunes Evitan: [Titanic - Advanced Feature Engineering Tutorial](https://www.kaggle.com/gunesevitan/titanic-advanced-feature-engineering-tutorial)
- Nadin Tamer: [Titanic Survival Predictions (Beginner)](https://www.kaggle.com/nadintamer/titanic-survival-predictions-beginner)

### Any feature engineering or feature wrangling methods which you have seen? 

In the first notebook, 'Fare' and 'Age' are bined to convert them into categorical features to check the groups located towards if they survived or not using subplots. In the second notebook, column 'Age' is sorted into logical categories ('Baby', 'Child', 'Teenager', 'Adult', etc.). It is interesting to check that babies are the group with the highest chance to survive.

About dropping columns, 'Cabin' column is dropped because 'Deck' is used instead of that one; whereas in the second notebook, 'Cabin' and 'Ticket' are the ones to be dropped because of their lack of relevancy.

### Did they impute any missing values? 

On the one hand, looking at the first notebook, he fill the missing values from 'Age' column with the median age grouped from 'Pclass' because of the high correlation between 'Age' and 'Survived'; on the other hand in the second notebook, uses the mode grouping the values from their title from the column 'Name' (Mr., Mrs., etc.) to fill the null values in 'Age'.

### What about scaling methods for numerical variables?

In the second notebook, there is no scaling, whereas in the first notebook it is used StandardSacler model and 'StratifiedKFold' stratify the target variable and ensure the same proportion for each class.

### What about encoding categorical variables?

Categorical features are encoded (one-hot encoded) in the first notebook, whereas in the second one they are not.

### Any evidence of overfit or sampling bias? 

In the first notebook, it is mentioned in the missing values paragraph that it would be useful to concatenate the training and the test sets while dealing with missing values, otherwise replacing those nulls could overfit the training or test set samples. Whereas there is no mention in the second notebook.
