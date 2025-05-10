---1


SELECT employees (
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(50),
    officeCode VARCHAR(10),
);
FROM employees

INNER JOIN offices
ON employees.officeCode =offices.officeCode;


---2

SELECT products(
    productName VARCHAR(50),
    productVendor VARCHAR(50),
    productLines VARCHAR(50),
);
FROM products
LEFT JOIN 
productlines AS pl ON products = pl.productLines

---3


SELECT 
orders(
    0rderDate timestamp,
    ShippedDate timestamp,
    Status VARCHAR(50),
    customerNumber INT,
);
FROM customers
RIGHT JOIN orders
ON customers.customerNumber = orders.customerNumber
ORDER BY orderDate ASC
limit 10;
