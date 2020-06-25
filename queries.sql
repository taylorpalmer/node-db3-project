-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p."ProductName", c."CategoryName"
FROM "Product" AS p
    JOIN "Category" as c
    on p."CategoryId" = c."Id"

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o."Id", s."CompanyName"
FROM "Order" AS o
    JOIN "Shipper" AS s
    ON o."ShipVia" = s."Id"
WHERE "OrderDate" < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT o."OrderId",
    p."ProductName",
    o."Quantity" AS "ProductQuantity"
FROM "OrderDetail" AS o
    JOIN "Product" AS p
    ON o."ProductId" = p."Id"
WHERE o."OrderId" = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o."Id" AS "OrderId",
    c."CompanyName" AS "CustomerCompanyName",
    e."LastName" AS "EmployeeLastName"
FROM "Order" AS o
    JOIN "Customer" AS c
    JOIN "Employee" AS e  
WHERE o."CustomerId" = c."Id"
    AND o."EmployeeId" = e."Id"