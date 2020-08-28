import pyodbc

connection = pyodbc.connect(
    "Driver={SQL Server};"
    "Server=DESKTOP-8JA7PQG;"
    "Database=CSDB;"
    "Trusted_Connection=yes;"
)

cursor = connection.cursor()

print("\n")

#QUERY 1
e1 = cursor.execute('SELECT E.EMP_ID, E.EMP_NAME, E.DSGN_ID \
FROM EMPLOYEES AS E \
WHERE E.EMP_ID IN \
	(SELECT ORDERS.EMP_ID \
	FROM ORDERS \
	WHERE E.GENDER = \'F\');'
        )
print("1. (A) Select only female employees who are assigned to the customers currently shopping today \
across all outlets of the store (nested):")
for row in e1:
    print(row)
print("\n")

#QUERY 1 USING CORRELATION
e1c = cursor.execute("SELECT DISTINCT E.EMP_ID, E.EMP_NAME, E.DSGN_ID \
FROM EMPLOYEES AS E, ORDERS AS O \
WHERE E.EMP_ID=O.EMP_ID AND E.GENDER = \'F\';")
print("1. (B) The same query condensed using correlation gives the same output:")
for row in e1c:
    print(row)
print("\n")

#QUERY 2 
e2 = cursor.execute('SELECT DISTINCT EMPLOYEES.EMP_ID, EMPLOYEES.EMP_NAME \
FROM EMPLOYEES \
WHERE EMPLOYEES.EMP_ID IN \
    (SELECT EMPLOYEES.EMP_ID \
    FROM EMPLOYEES, ORDERS \
    WHERE EMPLOYEES.EMP_ID = ORDERS.EMP_ID) \
    OR EMPLOYEES.EMP_ID IN \
    (SELECT EMPLOYEES.EMP_ID \
    FROM EMPLOYEES, BILLS \
    WHERE EMPLOYEES.EMP_ID = BILLS.CASHIER_ID);')
print("2. Display the names and IDs of all employees who are working today, i.e only the employees who \
carried out orders for customers or billed them at the cash counter (nested): ")
for row in e2:
    print(row)
print("\n")

#QUERY 3
e3 = cursor.execute("SELECT SUM(AMOUNT) FROM BILLS;")
print("3. Display the total bill amount in a day (aggregate function: SUM):")
for row in e3:
    print(row)
print("\n")

#QUERY 4
e4 = cursor.execute('SELECT AVG(AGE) FROM EMPLOYEES WHERE GENDER = \'M\';')
print("4. Display the average age of male employees (aggregate function: AVG):")
for row in e4:
    print(row)
print("\n")

#QUERY 5
e5 = cursor.execute('SELECT MIN(AGE) \
FROM EMPLOYEES \
WHERE EMPLOYEES.DSGN_ID = \'11\';')
print("5. Display the age of the youngest manager for this brand in the city (aggregate function: MIN)")
for row in e5:
    print(row)
print("\n")

print("THANK YOU!\n")