/*SQL database created to PowerBI*/


SELECT
OD.[OrderID],
OD.[QuantityOrdered],
OD.[OrderDate],
AC.[Address],
CC.[City],
RC.[Region],
CONCAT(CC.city, ' ', RC.region) AS CityRegion,
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
