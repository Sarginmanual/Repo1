CREATE TABLE Hotels 
(
	HotelId int IDENTITY NOT NULL PRIMARY KEY,
	HotelName varchar(20) NOT NULL,
	StarsCount int NOT NULL,
	CreationYear int NOT NULL,
	Adress varchar(40)
)

CREATE TABLE Rooms
(
	RoomId int IDENTITY NOT NULL PRIMARY KEY,
	RoomNumber int NOT NULL,
	HotelIdy int NOT NULL FOREIGN KEY REFERENCES Hotels(HotelId),
)

CREATE TABLE Clients
(
	ClientId int IDENTITY NOT NULL PRIMARY KEY,
	ClientName varchar(30),
	Age int NOT NULL,
	Email varchar(50)
)

	SELECT * FROM Rooms WHERE HotelIdy = 2
	SELECT * FROM Hotels WHERE HotelName LIKE ('The%')
	SELECT * FROM Hotels WHERE HotelName LIKE ('%r_')
	
	INSERT INTO Rooms(RoomNumber, HotelIdy) VALUES
	(1, 1),
	(100, 2),
	(200, 2)

	INSERT INTO Clients (ClientName, Age, Email) VALUES
	('Vasya Pupkin', 18, 'vasyapupkin@gmail.com'),
	('Anya Anya', 30, 'anya@gmail.com'),
	('Ogun Ogun', 30, 'ogun@gmail.com')

	SELECT Count(Age) as AgeCount FROM Clients WHERE Age=30
	SELECT Sum(Age) as AgeSum FROM Clients WHERE ClientName LIKE ('Anya%')
	SELECT AVG(Age) as AVGAge FROM Clients
	SELECT MAX(Age) as MAXAge FROM Clients
	SELECT MIN(Age) as MAXAge FROM Clients

	SELECT TOP (1000) [RoomId]
      ,[RoomNumber]
      ,[HotelIdy]
  FROM [HotelDB].[dbo].[Rooms]

	INSERT INTO Hotels (HotelName, StarsCount, CreationYear, Adress) VALUES
	('The Corner Park', 4, 2000, 'Konyalti, Antalya, Turkey'),
	('Su Hotel', 5, 1900, 'Konyalti, Antalya, Turkey')

	SELECT TOP (1000) [HotelId]
      ,[HotelName]
      ,[StarsCount]
      ,[CreationYear]
      ,[Adress]
  FROM [HotelDB].[dbo].[Hotels]

	UPDATE Hotels SET StarsCount=3 WHERE HotelId=1
	UPDATE Hotels SET Adress='Muratpasha, Antalya' WHERE HotelId=2
	DELETE FROM Hotels WHERE HotelId=2
	DROP TABLE Hotels

	SELECT Age, Count(Age) as AgeCount FROM Clients GROUP BY Age HAVING Age<20
	SELECT * FROM Clients ORDER BY ClientName
	SELECT * FROM Clients ORDER BY Age
	SELECT * FROM Clients ORDER BY Age DESC
	SELECT * FROM Clients ORDER BY Age ASC

	SELECT * FROM Rooms JOIN Hotels on Rooms.RoomId = Hotels.HotelId