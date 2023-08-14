# Superstores Sales Data Analysis with SQL and Power BI

Superstores is an American-based retailer specializing in electronic appliances and accessories, with a diverse range of products including phones, laptops, and related accessories. The company operates in 10 cities and 8 regions, making it a prominent player in the electronics retail industry.

## Overview
The objective of this project is to conduct a comprehensive analysis of Superstores' sales data, which is initially prepared and normalized in Excel before being imported into a SQL database. The project focuses on leveraging SQL queries to extract, manipulate, aggregate, and summarize the data for various analytical needs. Additionally, the SQL query results are integrated into Power BI for further analysis. The project culminates in the creation of a dynamic and interactive sales dashboard, which includes detailed customer analysis to identify growth opportunities in key products and market segments. Moreover, predictive models are developed utilizing Decision Tree, Logistic Regression, and Gradient Boosting techniques to predict existing customers and prospective high-value customers, enhancing strategic decision-making.

## Project Structure
The project follows these main steps:

1. Excel Schema and Normalization:
   Initially, Excel was used to perform schema and normalization tasks on the sales data. This step ensures that the data is organized into a structured format, eliminating redundancy and inconsistencies.

2. Saving Data in CSV Format:
   After normalization, the data is saved in CSV format, which facilitates the process of importing the data into a SQL database.

3. Importing Data into SQL:
   Due to the absence of SQL Server Integration Services (SSIS) or SQL Server Data Tools (SSDT), the CSV files are imported into the SQL database one at a time. This step involves creating the necessary tables and defining the appropriate data types.

4. Creating Foreign Key Constraints:
   Once the tables are imported, foreign key constraints are manually created using SQL statements to establish relationships between the tables as needed.

5. Power BI Dashboard Creation:
   The SQL database is connected to Power BI using the Direct Query option, enabling live data analysis. A sales dashboard is built in Power BI, incorporating various visuals such as charts, tables, and slicers to present the sales performance and trends in an interactive manner.

## Tools Used
- Microsoft Excel: Utilized for schema design and normalization of the sales data.
- SQL: Used for importing and structuring the data in a relational database, as well as for querying and analysing the sales data.
- Power BI: Connected to the SQL database using Direct Query to create an interactive and visually appealing sales dashboard.

## Additional Notes
Feel free to reach out if you have any questions, feedback, or suggestions regarding the project. Your input is highly appreciated and will contribute to the enhancement of this data analysis.

Thank you for your interest in this SQL and Power BI data analysis project!
