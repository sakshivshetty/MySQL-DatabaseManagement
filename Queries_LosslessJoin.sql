--TESTING FOR LOSSLESS JOIN:

CREATE TABLE R1 (
BILL_ID INT,
AMOUNT FLOAT, 
PAYMENT_TYPE VARCHAR(4)
);

INSERT INTO R1
SELECT BILL_ID, AMOUNT, PAYMENT_TYPE FROM BILLS;
GO

SELECT * FROM R1;
GO

CREATE TABLE R2 (
BILL_ID INT,
ORDER_ID INT,
CUST_ID INT
);

INSERT INTO R2
SELECT BILL_ID, ORDER_ID, CASHIER_ID FROM BILLS;
GO

SELECT * FROM R2 JOIN R1 ON R2.BILL_ID = R1.BILL_ID ORDER BY R2.BILL_ID;
GO

/*Due to normalisation, we can see that only those
that match in both tables are displayed. Achieving 3NF automatically makes the decomposition and joining of every table
lossless. Thus, lossless join has been achieved by ensuring that the schema has been normalised to
3NF. */
-----------------------------

/*Select only female employees who are assigned to the customers currently shopping today \
across all outlets of the store (nested)
There are 2 ways of doing this - one using nested queries and another using correlation:
*/
SELECT E.EMP_ID, E.EMP_NAME, E.DSGN_ID
FROM EMPLOYEES AS E
WHERE E.EMP_ID IN
	(SELECT ORDERS.EMP_ID
	FROM ORDERS
	WHERE E.GENDER = 'F');
GO

--OR, CONVERTING THE SAME INTO CORRELATION QUERY:
SELECT DISTINCT E.EMP_ID, E.EMP_NAME, E.DSGN_ID
FROM EMPLOYEES AS E, ORDERS AS O
WHERE E.EMP_ID=O.EMP_ID AND E.GENDER = 'F';
GO
-----------------------------

/*Display the names and IDs of all employees who are working today, i.e only the employees who
carried out orders for customers or billed them at the cash counter (nested):*/
SELECT DISTINCT EMPLOYEES.EMP_ID, EMPLOYEES.EMP_NAME
FROM EMPLOYEES
WHERE EMPLOYEES.EMP_ID IN
    (SELECT EMPLOYEES.EMP_ID
    FROM EMPLOYEES, ORDERS
    WHERE EMPLOYEES.EMP_ID = ORDERS.EMP_ID)
    OR EMPLOYEES.EMP_ID IN
    (SELECT EMPLOYEES.EMP_ID
    FROM EMPLOYEES, BILLS
    WHERE EMPLOYEES.EMP_ID = BILLS.CASHIER_ID);
GO
-----------------------------

--Display the total bill amount in a day (aggregate function: SUM):
SELECT SUM(AMOUNT) FROM BILLS;
GO
-----------------------------

--Display the average age of male employees (aggregate function: AVG):
SELECT AVG(AGE) FROM EMPLOYEES WHERE GENDER = 'M';
GO
-----------------------------

--Display the age of the youngest manager for this brand in the city (aggregate function: MIN):
SELECT MIN(AGE)
FROM EMPLOYEES 
WHERE EMPLOYEES.DSGN_ID = '11';
GO
-----------------------------

