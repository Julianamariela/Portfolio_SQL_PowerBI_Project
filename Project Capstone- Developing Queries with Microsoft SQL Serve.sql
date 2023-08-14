/* Capstone Project - Developing Queries with Microsoft SQL Server*/

--Develop a Database and populate the data using the Excel files from Part 1 "EletronicsTrend"--
/* summarizing my work:
1.The files were imported into Excel using Power Query and underwent cleaning.
2.Excel was used to perform schema and normalization tasks.
3.After normalization, the files were saved in CSV format to facilitate importing into SQL.
4.Due to the absence of SSIS or SSDT on my computer, the files were imported one at a time.
5.Following the import of the tables, foreign key constraints were manually created using SQL statements as needed.
*/


--Creating the FK

ALTER TABLE City_Customer
ADD CONSTRAINT FK_City_Customer_Region_Customer FOREIGN KEY (RegionID) REFERENCES Region_Customer(RegionID);

ALTER TABLE Address_Customer
ADD CONSTRAINT FK_AddressCustomer_CityCustomer FOREIGN KEY (CityID) REFERENCES City_Customer(CityID);

ALTER TABLE Order_Detail
ADD CONSTRAINT FK_OrderDetail_ProductDetail FOREIGN KEY (ProductID) REFERENCES [dbo].[Product_Detail.xlsx](ProductID);

ALTER TABLE Order_Detail
ADD CONSTRAINT FK_Order_Detail_Address_Customer FOREIGN KEY (AddressID) REFERENCES [dbo].[Address_Customer](AddressID);


--Testing--

SELECT
OD.[OrderID],
OD.[QuantityOrdered],
OD.[OrderDate],
AC.[Address],
CC.[City],
RC.[Region],
RC.[PostCode],
PD.[Product],
PD.[UnitPrice]

FROM
[dbo].[Order_Detail] AS OD

INNER JOIN [dbo].[Address_Customer] AS AC
ON OD.AddressID = AC.AddressID

INNER JOIN [dbo].[City_Customer] AS CC
ON AC.CityID = CC.CityID

INNER JOIN [dbo].[Region_Customer] AS RC
ON CC.RegionID = RC.RegionID

INNER JOIN [dbo].[Product_Detail.xlsx] AS PD
ON OD.ProductID = PD.ProductID

ORDER BY 
OD.OrderDate