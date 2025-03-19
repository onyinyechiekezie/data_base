-- Question 2.17
SELECT SKU, SKU_Description FROM inventory;

-- Question 2.18
SELECT SKU_Description, SKU FROM inventory;

-- Question 2.19
SELECT WarehouseID FROM inventory;
 
-- Question 2.20
SELECT distinct WarehouseID FROM inventory;
 
-- Question 2.21
SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder 
FROM inventory;

-- Question 2.22
SELECT * FROM inventory;

-- Question 2.23
SELECT * 
FROM inventory 
WHERE QuantityOnHand > 0;

-- Question 2.24
SELECT SKU, SKU_Description 
FROM inventory 
WHERE QuantityOnHand = 0;

-- Question 2.25
SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC;

-- Question 2.26
SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- Question 2.27
SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0 OR QuantityOnOrder > 0 
ORDER BY WarehouseID DESC, SKU ASC;

-- Question 2.28
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory
WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0 
ORDER BY WarehouseID DESC, SKU ASC;

-- Question 2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory
WHERE QuantityOnHand > 1 and QuantityOnHand < 10;

-- Question 2.30
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory
WHERE QuantityOnHand BETWEEN 1 AND 10;

-- Question 2.31
SELECT distinct SKU, SKU_Description  
FROM inventory
WHERE SKU_Description LIKE 'Half-dome%';

-- Question 2.32
SELECT distinct SKU, SKU_Description  
FROM inventory
WHERE SKU AND SKU_Description like '%climb%';

-- Question 2.33
SELECT distinct SKU, SKU_Description  
FROM inventory
WHERE SKU_Description LIKE '__d%';

-- Question 2.34
SELECT min(QuantityOnHand) AS MIN_QUANTITY,
max(QuantityOnHand) as Max_Quantity,
avg(QuantityOnHand) as avg_Quantity,
sum(QuantityOnHand) as Total_Quantity,
count(QuantityOnHand) as Count_Quantity FROM inventory;

-- Question 3.35




 
