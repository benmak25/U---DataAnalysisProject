This Repository contains Data Analysis files for a task assigned from U+ Education. 

Data Used: Economy_of_US.csv (https://www.kaggle.com/datasets/shizzaasherfastnulhr/summer-camp-datasets/data)

1. SQL Analysis (Queries.sql)

I used SQLite (DB Browser) to build simple and complex queries to analyze an Economic Dataset. Using various queries and window functions, I was able to find information of the following:
 
  - Which years had GDP growth rates > 5%? 
  - What is the correlation between GDP_PPP and GDP_Nominal? (using window functions) 
  - Calculate moving averages (3-year, 5-year) for GDP metrics 
  - Identify decade with highest average GDP growth 
  - Find years with anomalous values (>2 standard deviations from mean) 

2. Initial Statistical Analysis (Python, Python_Analysis.ipynb) *Currently in Progress

I conducted a Statistical Analysis using Python (Version 3.1), where I used libraries Numpy, Pandas, Matplotlib and Seaborn to clean, analyze and visualize the dataset.

File Content:
Descriptive Statistics & Data Validation 

Load data using Pandas and perform initial data quality checks 

- Calculate comprehensive descriptive statistics (mean, median, std, skewness, kurtosis) 
- Create distribution plots using Matplotlib/Seaborn 
- Identify and visualize outliers using box plots and z-scores 

Hypothesis Testing 

- Test whether mean GDP growth differs significantly across decades (ANOVA) 
- Test correlation significance between GDP metrics (Pearson's r, p-values) 
- Perform stationarity tests (Augmented Dickey-Fuller test) for time series 

Correlation & Multicollinearity Analysis 
Create correlation matrix heatmap for all GDP variables 
Calculate Variance Inflation Factor (VIF) to detect multicollinearity 

Document relationships and implications for modeling 

3. Time Series Analysis (R)

4. Predictive Modelling (^)

5. Visualizations (R, Tableau)

Link to Live Dashboard: https://public.tableau.com/app/profile/benjamin.mak2285/viz/EconomyofUS/Dashboard1#1

To draw more insights from the data, I created a dashboard using Tableau Public, here, I used the following visualizations to capture the time series data:
Time Series Plots - Multi-line chart showing GDP trends with event annotations 

- Statistical Distributions - Histograms and QQ-plots for normality assessment 
- Correlation Heatmap - Seaborn heatmap with correlation coefficients 
- Regression Diagnostics - Residual plots, actual vs. predicted, Q-Q plots 
- Forecast Visualization - Historical data + predictions with confidence bands 
- Model Comparison - Bar chart comparing model performance metrics 

6.  Business Intelligence Report (R, Microsoft Word)
