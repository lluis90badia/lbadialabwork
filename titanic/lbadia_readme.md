# Lab - Titanic approaches (feature engineering)

By [Lluis Badia Planes](https://github.com/lluis90badia), 10/2/2022

## 1st Part:

## Summarise ([analysis file](https://github.com/lluis90badia/lbadialabwork/blob/main/titanic/Titanic_10F.ipynb)):

After importing the data (train.csv) and checking the columns with the describe function, it seems that there are outliers in 'Age', 'SibSp' and 'Parch' columns; hoewever, after visualise column 'Age', there are none. Therefore, in this column it has only been done a replace of Null values with the Median of all those values. The other two columns, there are neither because, for example, it can be the possibility that a person has two parents and four children (6 members in total in the 'Parch' column); or a person has six siblings.

Subsequently, columns 'Cabin', 'PassengerId', 'Ticket', 'Name', 'Fare' and 'Embarked' has been deleted because they are not relevant with the column 'Survive'.

Finally, after doing a correlation matrix and the subsequent heatmap for the numerical columns (all of them because there are no categorical columns after column 'Sex' has been converted to numerical binary), there is a strong correlation between 'Sex' and 'Pclass' with 'Survived' columns.

In my opinion, giving the circumstances and the time of the incident, it seems surprising that the amount men it was greater than women. Perhaps the person's influence ('Class' column) was a strong motive to be the ones who were able to get on the boats.

## 2nd Part:
