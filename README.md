# Title: LM Tech Data Science Capstone Project 1


## Problem Definition

**Problem**

*Details in "capstone question.txt"*

**Objective**

*To perform data cleaning and draw insight through exploratory data analyis*Problem Definition

## Project Steps and Tools

**Programming Languages**

- *Python*
- *PostgreSQL*

**Libraries**
- NumPY
- Pandas
- Matplotlib
- Seaborn
- re
- Roman

**Data**

*The movies dataset which was provided by us by our tutor was used for this project.*

**Data Structure**

- *Type: csv*
- *Number of rows: 9,999*
- *Number of columns: 9*

**Columns Information**
 
| #  | Column   | Non-Null Count | Dtype   |
|----|----------|----------------|---------|
| 0  | MOVIES   | 9999 non-null  | object  |
| 1  | YEAR     | 9355 non-null  | object  |
| 2  | GENRE    | 9919 non-null  | object  |
| 3  | RATING   | 8179 non-null  | float64 |
| 4  | ONE-LINE | 9999 non-null  | object  |
| 5  | STARS    | 9999 non-null  | object  |
| 6  | VOTES    | 8179 non-null  | object  |
| 7  | RunTime  | 7041 non-null  | float64 |
| 8  | Gross    | 460 non-null   | object  |

**Observations from Columns Information**

- Missing values in some columns such as Gross
- Some columns having wrong Dtype format such VOTES

**Handling Missing Values**

Missing values were removed using the values contained in reference columns with same movie name

*Why?*

| Movies              | Year      | Genre                          | Rating | Logline       | Stars                          | Votes | RunTime | Gross |
|---------------------|-----------|--------------------------------|--------|---------------|--------------------------------|-------|---------|-------|
| Mighty Little Bheem | (2019– )  | Animation, Short, Adventure    | NaN    | Add a Plot    | Directors: Rajiv Chilaka, Krishna Moh... | NaN   | NaN     | NaN   |
| Mighty Little Bheem | (2019– )  | Animation, Short, Adventure    | 9.0    | Add a Plot    | Directors: Rajiv Chilaka, Krishna Moh... | 6     | NaN     | NaN   |

From the table above. In one section, Mighty Little Bheem had NaN for it rating, but 9.0 in another. 

I discovered this was common across several other videos.

So I grouped movies with same movie name together, and used forward and backward fill to fill missing values using the values of their reference columns.

**Handling Duplicates**

After dealing with missing values, I dropped all duplicates. 

**Other Data Manipulation**
- Renaming of columns.
- ReleaseYear and MovieType was engineered from the YEAR Column.
- Removing white trailing spaces and \n sequences from GENRE Column.
- ONE-LINE later changed to Logline column was dropped.
- Stars/Directors engineered from STARS Column. 
- Removing comma "," and converting the VOTES column to integer. 
- Dollar symbol and M removed from Gross column and values converted to float and multiplied by 1 million
- Basic descriptive statistics of both numerical and categorical columns.
- Correlation analysis of numerical features or columns.
- Relationship and distribution of the numerical features or columns.
- Saving the data 

**Information extracted from data visualization**
1. Top 10 Longest movies
2. Top 10 Stars/Directors
3. Top 5 Genres
4. Top 10 Movies with highest revenues
5. Movies with highest ratings
6. Movies with highest votes
7. Comparing ratings and votes
8. Comparing votes and gross
9. Comparing runtime and ratings
10. Average rating over years
11. Average votes over years
12. Average gross over years
13. Average gross by movietype

**SQL and SQL Query**

*After cleaning the data. It was saved as "movies_capstone" and exported to PosgreSQL using PdAdmin 16*

*SQL query found in "capstone sql.sql"*

**Information Retrieved**

*Details in "capstone question.txt"*