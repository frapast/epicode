1 Crea database e tabelle

create database Toys;
use  Toys;

CREATE TABLE Product (
    ProductID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) ,
    Category VARCHAR(100) ,
    Size VARCHAR(50) ,
    AgeTarget VARCHAR(50)
    );
    
CREATE TABLE Region (
    RegionID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    RegionName VARCHAR(20) 
);


CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    SalesDate DATE,
    Quantity INT,
    SalesAmount DECIMAL(10, 2),
    ProductID INT,
    RegionID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
);


INSERT INTO Product (ProductName, Category, Size, AgeTarget) VALUES
('Labyrinth', 'Board Game', '2-4', 'Child'),
('Chess', 'Board Game', '2', 'Adult'),
('Scrabble', 'Board Game', '2-4', 'Adult'),
('Monopoly', 'Board Game', '2-6', 'Adult'),
('Uno', 'Card Game', '2-10', 'Teen'),
('Jenga', 'Stacking Game', '2+', 'Child'),
('Connect Four', 'Board Game', '2', 'Child'),
('Pandemic', 'Board Game', '2-4', 'Adult'),
('Codenames', 'Board Game', '4-8', 'Teen'),
('Clue', 'Board Game', '3-6', 'Teen'),
('Ticket to Ride', 'Board Game', '2-5', 'Adult'),
('Battleship', 'Board Game', '2', 'Teen'),
('Go', 'Board Game', '2', 'Adult'),
('Guess Who?', 'Family Game', '2', 'Child'),
('Risk', 'Board Game', '2-6', 'Adult'),
('The Game of Life', 'Family Game', '2-6', 'Teen'),
('Tigris & Euphrates', 'Board Game', '2-4', 'Adult'),
('Splendor', 'Card Game', '2-4', 'Adult'),
('Carcassonne', 'Board Game', '2-5', 'Teen'),
('Dixit', 'Card Game', '3-6', 'Teen'),
('Catan', 'Board Game', '3-4', 'Teen'),
('Sushi Go!', 'Card Game', '2-8', 'Child'),
('Pictionary', 'Drawing Game', '4+', 'Teen'),
('Joking Hazard', 'Party Game', '2-6', 'Adult'),
('Exploding Kittens', 'Card Game', '2-5', 'Teen'),
('King of Tokyo', 'Dice Game', '2-6', 'Teen'),
('Telestrations', 'Drawing Game', '4-8', 'Adult'),
('Arkham Horror', 'Board Game', '1-4', 'Adult'),
('Azul', 'Board Game', '2-4', 'Teen'),
('Love Letter', 'Card Game', '2-4', 'Teen'),
('Pandemic Legacy', 'Board Game', '2-4', 'Adult'),
('Twilight Struggle', 'Board Game', '2', 'Adult'),
('Carcassonne: The Castle', 'Board Game', '2-4', 'Teen'),
('Kingdomino', 'Board Game', '2-4', 'Child'),
('Ticket to Ride: Nordic Countries', 'Board Game', '2-3', 'Adult'),
('Splendor: Cities of Splendor', 'Card Game', '2-4', 'Adult'),
('Five Tribes', 'Board Game', '2-4', 'Teen'),
('Elder Sign', 'Board Game', '1-8', 'Adult'),
('Takenoko', 'Board Game', '2-4', 'Child'),
('Zombie Dice', 'Dice Game', '2-8', 'Teen'),
('Dominion: Intrigue', 'Card Game', '2-4', 'Adult'),
('Ticket to Ride: Germany', 'Board Game', '2-5', 'Adult'),
('Clank!', 'Deck-Building Game', '2-4', 'Teen'),
('Flash Point: Fire Rescue', 'Board Game', '2-6', 'Adult'),
('Fluxx', 'Card Game', '2-6', 'Teen'),
('Tigris & Euphrates: The Card Game', 'Card Game', '2-4', 'Adult'),
('Through the Ages', 'Board Game', '2-4', 'Adult'),
('Machi Koro', 'Card Game', '2-4', 'Teen'),
('Betrayal at House on the Hill', 'Board Game', '3-6', 'Teen'),
('Terraforming Mars', 'Board Game', '1-5', 'Adult');

INSERT INTO Region (RegionName) VALUES
('North America'),
('Europe'),
('Asia'),
('Africa'),
('South America'),
('Oceania')
;

INSERT INTO Sales (SalesDate, Quantity, SalesAmount, ProductID, RegionID) VALUES
('2024-11-01', 2, 50.00, 5, 1),
('2024-11-02', 1, 30.00, 21, 2),
('2024-11-03', 5, 120.00, 40, 1),
('2024-11-04', 3, 75.00,  8, 3),
('2024-11-05', 4, 100.00, 29, 2),
('2024-11-06', 2, 60.00,  13, 1),
('2024-11-07', 1, 25.00,  9, 3),
('2024-11-08', 3, 90.00,  34, 2),
('2024-11-09', 4, 110.00,  16, 1),
('2024-11-10', 5, 150.00,  41, 3),
('2024-11-11', 2, 55.00, 44, 2),
('2024-11-12', 1, 28.00, 1, 3),
('2024-11-13', 3, 80.00, 26, 1),
('2024-11-14', 4, 95.00, 38, 2),
('2024-11-15', 5, 125.00, 31, 1),
('2024-11-16', 2, 70.00, 45, 3),
('2024-11-17', 1, 32.00, 4, 2),
('2024-11-18', 3, 85.00, 14, 1),
('2024-11-19', 4, 100.00, 18, 3),
('2024-11-20', 5, 130.00, 33, 2),
('2024-11-21', 2, 60.00, 28, 1),
('2024-11-22', 1, 22.00, 11, 3),
('2024-11-23', 3, 75.00, 2, 2),
('2024-11-24', 4, 110.00,19, 1),
('2024-11-25', 5, 140.00, 46, 3),
('2024-11-26', 2, 55.00, 20, 2),
('2024-11-27', 1, 35.00, 36, 1),
('2024-11-28', 3, 90.00, 12, 3),
('2024-11-29', 4, 105.00, 48, 2),
('2024-11-30', 5, 125.00, 25, 1),
('2024-12-01', 2, 60.00, 30, 3),
('2024-12-02', 1, 28.00, 23, 2),
('2024-12-03', 3, 75.00, 3, 1),
('2024-12-04', 4, 100.00, 42, 3),
('2024-12-05', 5, 125.00, 6, 2),
('2024-12-06', 2, 50.00, 7, 1),
('2024-12-07', 1, 30.00, 43, 3),
('2024-12-08', 3, 90.00, 24, 2),
('2024-12-09', 4, 110.00, 27, 1),
('2024-12-10', 5, 140.00, 32, 3),
('2024-12-11', 2, 60.00, 22, 2),
('2024-12-12', 1, 25.00, 47, 3),
('2024-12-13', 3, 85.00, 10, 1),
('2024-12-14', 4, 105.00, 5, 2),
('2024-12-15', 5, 130.00, 1, 1),
('2024-12-16', 2, 55.00, 9, 3),
('2024-12-17', 1, 35.00, 15, 2),
('2024-12-18', 3, 80.00, 29, 1),
('2024-12-19', 4, 95.00, 13, 3),
('2024-12-20', 5, 120.00, 16, 2),
('2024-12-21', 2, 70.00, 14, 1),
('2024-12-22', 1, 32.00, 44, 3),
('2024-12-23', 3, 75.00, 32, 2),
('2024-12-24', 4, 105.00, 12, 1),
('2024-12-25', 5, 140.00, 49, 3),
('2024-12-26', 2, 60.00, 28, 2),
('2024-12-27', 1, 28.00, 37, 1),
('2024-12-28', 3, 75.00, 39, 3),
('2024-12-29', 4, 110.00, 46, 2),
('2024-12-30', 5, 125.00, 11, 1),
('2024-12-31', 2, 50.00, 31, 3),
('2023-12-01', 1, 30.00, 8, 2),
('2023-12-02', 3, 90.00, 43, 1),
('2023-12-03', 4, 110.00, 5, 3),
('2023-12-04', 5, 125.00, 21, 2),
('2023-12-05', 2, 55.00, 19, 1),
('2023-12-06', 1, 25.00, 49, 3),
('2023-12-07', 3, 80.00, 38, 2),
('2023-12-08', 4, 95.00, 33, 1),
('2023-12-09', 5, 120.00, 48, 3),
('2023-12-10', 2, 60.00, 24, 2),
('2023-12-11', 1, 32.00, 18, 1),
('2023-12-12', 3, 75.00, 42, 3),
('2023-12-13', 4, 100.00, 27, 2),
('2023-12-14', 5, 130.00, 4, 1),
('2023-12-15', 2, 50.00, 30, 3);

1.Verificare che i campi definiti come PK siano univoci.

-- Verifica PK Region
SELECT RegionID, COUNT(*) 
FROM Region
GROUP BY RegionID
HAVING COUNT(*) > 1;

-- Verifica PK Sales
SELECT SaleID, COUNT(*) 
FROM Sales
GROUP BY SaleID
HAVING COUNT(*) > 1;

-- Verifica PK Product
SELECT ProductID, COUNT(*) 
FROM Product
GROUP BY ProductID
HAVING COUNT(*) > 1;

Le PK sono tutte univoche non avendo nessuna due o più valori uguali

2. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.

SELECT 
    p.ProductID,
    p.ProductName,
    SUM(s.SalesAmount) AS TotA,
    YEAR(s.SalesDate) AS Y
FROM sales s
JOIN product p ON s.ProductID = p.ProductID
GROUP BY YEAR(s.SalesDate), p.ProductID
ORDER BY p.ProductName;
    
3. Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.
    
SELECT 
    r.RegionID,
    r.RegionName AS Region,
    EXTRACT(YEAR FROM s.SalesDate) AS Y,
    SUM(s.SalesAmount) AS TotA
FROM Sales s
JOIN Region r ON s.RegionID = r.RegionID
GROUP BY r.RegionID, EXTRACT(YEAR FROM s.SalesDate)
ORDER BY TotA DESC,Y DESC;

4. Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?

SELECT 
    p.Category AS Cat,
    SUM(s.Quantity) AS TQ
FROM sales s
JOIN product p ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TQ DESC
LIMIT 1;

5. Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti. 

SELECT 
    p.ProductID,
    p.ProductName AS NoSellProduct
FROM Product p
WHERE p.ProductID NOT IN (SELECT ProductID FROM Sales);

SELECT 
    p.ProductID,
    p.ProductName AS NoSellProduct
FROM Product p
LEFT JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.SaleID IS NULL;

6. Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).
  
SELECT 
    p.ProductID,
    p.ProductName AS ProductName,
    MAX(s.SalesDate) AS LastSaleDate
FROM Sales s
JOIN Product p ON s.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY p.ProductID;
