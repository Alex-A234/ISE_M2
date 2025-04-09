-- Query Statement to find the total number of items purchased by each customer
SELECT  
    c.CustomerID,
    c.Name AS Customer,
    i.Name AS Item,
    i.Price,
    s.Name AS Seller,
    w.Name AS Warehouse,
    i.Available_Quantity AS RemainingStock
FROM Customer_Buys_Item cbi
JOIN Customer c ON cbi.CustomerID = c.CustomerID
JOIN Item i ON cbi.ItemID = i.ItemID
JOIN Seller s ON i.SellerID = s.SellerID
JOIN Item_Stored_In_Shelf iss ON i.ItemID = iss.ItemID
JOIN Warehouse w ON iss.WarehouseID = w.WarehouseID    
WHERE c.CustomerID = 1001
ORDER BY i.Price DESC;
