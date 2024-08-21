# HR-Analytics-Job-Prediction
About Dataset: This dataset contains information about employees who worked in a company.

Content

This dataset contains columns: Satisfactory Level, Number of Project, Average Monthly Hours, Time Spend Company, Promotion Last 5 Years, Department, Salary

Questions

My goals in this project are to analyze the data collected by the HR department and to build a model that predicts whether or not an employee will leave the company. If I can predict employees likely to quit, it might be possible to identify factors that contribute to their leaving (because it is time-consuming and expensive to find, interview, and hire new employees, increasing employee retention will be beneficial to the company).
1- Do Exploratory Data analysis to figure out which variables have a direct and clear impact on employee retention
2- Plot bar charts showing the impact of employee salaries on retention
3- Plot bar charts showing a correlation between department and employee retention
4- Now build a logistic regression model using variables that were narrowed down in step 1
5- Measure the accuracy of the model


**Data Cleaning
**1. Remove Duplicate Rows
2. Check and Standardize Categorical Columns
3. Save the Cleaned Dataset
After cleaning the dataset, it's a good practice to save it for further analysis.

**Next Steps: Exploratory Data Analysis (EDA)

1. Summary Statistics
•	Generate summary statistics for numerical columns to get an overview of the central tendency, dispersion, and shape of the dataset’s distribution.

3. Visualize Distributions
•	Plot histograms or density plots to visualize the distribution of key numerical variables, such as satisfaction_level, last_evaluation, average_montly_hours, and time_spend_company.
 <img width="468" alt="image" src="https://github.com/user-attachments/assets/e9e16d9e-ceec-4635-9c40-c101cc537ebb">
<img width="468" alt="image" src="https://github.com/user-attachments/assets/51cd079e-fa69-4e72-85ac-100e46c0d0da">

 
4. Correlation Analysis
•	Create a correlation matrix to examine relationships between numerical variables to help identify any strong correlations that may be useful for predictive modeling.
 <img width="468" alt="image" src="https://github.com/user-attachments/assets/d5949a4a-9618-41e6-840d-f5d07aa1b82c">

5. Analyze Employee Attrition
•	Compare characteristics between employees who stayed and those who left the company. Use bar plots, box plots, and other visualizations to identify any differences.
<img width="200" alt="image" src="https://github.com/user-attachments/assets/fbcb765a-a109-45ee-95a4-7f6e892a8ee9">
<img width="201" alt="image" src="https://github.com/user-attachments/assets/279bb963-1aa5-4f79-953f-75ae76e1f737">

6. Department-wise Analysis
•	Analyze differences in employee satisfaction, average monthly hours, etc., across different departments. This can help identify departments with higher turnover rates or lower satisfaction levels.  
 <img width="468" alt="image" src="https://github.com/user-attachments/assets/181d0770-217a-4d07-b872-9cd984e1bb7a">
<img width="464" alt="image" src="https://github.com/user-attachments/assets/c967e992-d84c-4eac-a987-2f0208d76784">

7. Salary Analysis
•	Investigate how salary levels relate to employee attrition, satisfaction, and other key metrics.
 <img width="468" alt="image" src="https://github.com/user-attachments/assets/c2702e7f-fcdf-4655-87ea-dc50ef5856d0">

Summary:
•	Goal: Perform exploratory data analysis to understand key patterns and relationships in the dataset.
•	Outcome: Identify significant factors related to employee attrition and performance, which can later inform predictive modeling.


