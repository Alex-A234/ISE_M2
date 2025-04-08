SELECT
	Seller.Name AS Seller,
	Item.Name AS Item,
	Item_Stored_In_Shelf.Quantity AS Quantity,
	Warehouse.Name AS Warehouse,
	Shelf.ShelfNr AS Shelf
FROM Seller
	INNER JOIN Item
		ON Seller.SellerID = Item.SellerID
	INNER JOIN Item_Stored_In_Shelf
		ON Item.ItemID = Item_Stored_In_Shelf.ItemID
	INNER JOIN Shelf
		ON Item_Stored_In_Shelf.ShelfNr = Shelf.ShelfNr
	INNER JOIN Warehouse
		ON Shelf.WarehouseID = Warehouse.WarehouseID
WHERE Seller.Name = 'Tor Books'
ORDER BY Item ASC, Shelf ASC, Warehouse ASC;