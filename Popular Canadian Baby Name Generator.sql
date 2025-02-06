
-- Check if the database exists
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'CanadianBabyNameDB')
BEGIN
    -- Drop the existing database if it exists
    DROP DATABASE CanadianBabyNameDB;
END
GO

-- Create the database
CREATE DATABASE CanadianBabyNameDB1;
GO

-- Use the newly created database
USE CanadianBabyNameDB1;
GO

-- Check if the table exists
IF OBJECT_ID('dbo.BabyName', 'U') IS NOT NULL
BEGIN
    -- Drop the existing table if it exists
    DROP TABLE dbo.BabyName;
END
GO

-- Create the table
CREATE TABLE BabyName (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Gender NVARCHAR(50),
    Ethnicity NVARCHAR(100),
    Popularity INT
);
GO

-- Check if the stored procedure exists
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'GetPopularName')
BEGIN
    -- Drop the existing stored procedure if it exists
    DROP PROCEDURE GetPopularName;
END
GO

-- Create the stored procedure
CREATE PROCEDURE GetPopularName
    @Gender NVARCHAR(50),
    @Ethnicity NVARCHAR(100)
AS
BEGIN
    SELECT TOP 1 Name
    FROM BabyName
    WHERE Gender = @Gender AND Ethnicity = @Ethnicity
    ORDER BY Popularity DESC; -- Order by popularity to get the most popular name
END;
GO













INSERT INTO BabyName (Name, Gender, Ethnicity, Popularity) VALUES
('Liam', 'Male', 'Caucasian', 1),
('Olivia', 'Female', 'Caucasian', 2),
('Noah', 'Male', 'Caucasian', 3),
('Emma', 'Female', 'Caucasian', 4),
('James', 'Male', 'African-American', 5),
('Aaliyah', 'Female', 'African-American', 6),
('Ethan', 'Male', 'Asian', 7),
('Sophia', 'Female', 'Asian', 8),
('Elijah', 'Male', 'Hispanic', 9),
('Isabella', 'Female', 'Hispanic', 10),
('Lucas', 'Male', 'Middle Eastern', 11),
('Mia', 'Female', 'Middle Eastern', 12),
('Alexander', 'Male', 'Caucasian', 13),
('Charlotte', 'Female', 'Caucasian', 14),
('Benjamin', 'Male', 'African-American', 15),
('Aria', 'Female', 'African-American', 16),
('Aiden', 'Male', 'Asian', 17),
('Luna', 'Female', 'Asian', 18),
('Matthew', 'Male', 'Hispanic', 19),
('Camila', 'Female', 'Hispanic', 20),
('Jackson', 'Male', 'Middle Eastern', 21),
('Amelia', 'Female', 'Middle Eastern', 22),
('Henry', 'Male', 'Caucasian', 23),
('Harper', 'Female', 'Caucasian', 24),
('Sebastian', 'Male', 'African-American', 25),
('Riley', 'Female', 'African-American', 26),
('Jack', 'Male', 'Asian', 27),
('Victoria', 'Female', 'Asian', 28),
('William', 'Male', 'Hispanic', 29),
('Penelope', 'Female', 'Hispanic', 30),
('Owen', 'Male', 'Middle Eastern', 31),
('Hannah', 'Female', 'Middle Eastern', 32),
('Daniel', 'Male', 'Caucasian', 33),
('Zoey', 'Female', 'Caucasian', 34),
('David', 'Male', 'African-American', 35),
('Layla', 'Female', 'African-American', 36),
('Michael', 'Male', 'Asian', 37),
('Ella', 'Female', 'Asian', 38),
('Joseph', 'Male', 'Hispanic', 39),
('Grace', 'Female', 'Hispanic', 40),
('Samuel', 'Male', 'Middle Eastern', 41),
('Nora', 'Female', 'Middle Eastern', 42),
('Christopher', 'Male', 'Caucasian', 43),
('Lily', 'Female', 'Caucasian', 44),
('John', 'Male', 'African-American', 45),
('Aubrey', 'Female', 'African-American', 46),
('Nathan', 'Male', 'Asian', 47),
('Ellie', 'Female', 'Asian', 48),
('Isaac', 'Male', 'Hispanic', 49),
('Zoey', 'Female', 'Hispanic', 50),
('Thomas', 'Male', 'Middle Eastern', 51),
('Scarlett', 'Female', 'Middle Eastern', 52),
('Andrew', 'Male', 'Caucasian', 53),
('Aria', 'Female', 'Caucasian', 54),
('Isaiah', 'Male', 'African-American', 55),
('Aurora', 'Female', 'African-American', 56),
('Ryan', 'Male', 'Asian', 57),
('Hazel', 'Female', 'Asian', 58),
('Joshua', 'Male', 'Hispanic', 59),
('Avery', 'Female', 'Hispanic', 60),
('Connor', 'Male', 'Middle Eastern', 61),
('Stella', 'Female', 'Middle Eastern', 62),
('Charles', 'Male', 'Caucasian', 63),
('Nova', 'Female', 'Caucasian', 64),
('Aaron', 'Male', 'African-American', 65),
('Leah', 'Female', 'African-American', 66),
('Christian', 'Male', 'Asian', 67),
('Zoe', 'Female', 'Asian', 68),
('Hunter', 'Male', 'Hispanic', 69),
('Savannah', 'Female', 'Hispanic', 70),
('Adrian', 'Male', 'Middle Eastern', 71),
('Brooklyn', 'Female', 'Middle Eastern', 72),
('Jonathan', 'Male', 'Caucasian', 73),
('Bella', 'Female', 'Caucasian', 74),
('Cameron', 'Male', 'African-American', 75),
('Claire', 'Female', 'African-American', 76),
('Adam', 'Male', 'Asian', 77),
('Skylar', 'Female', 'Asian', 78),
('Jason', 'Male', 'Hispanic', 79),
('Violet', 'Female', 'Hispanic', 80),
('Luke', 'Male', 'Middle Eastern', 81),
('Lucy', 'Female', 'Middle Eastern', 82),
('Josiah', 'Male', 'Caucasian', 83),
('Paisley', 'Female', 'Caucasian', 84),
('Nicholas', 'Male', 'African-American', 85),
('Mackenzie', 'Female', 'African-American', 86),
('Mateo', 'Male', 'Asian', 87),
('Kinsley', 'Female', 'Asian', 88),
('Robert', 'Male', 'Hispanic', 89),
('Addison', 'Female', 'Hispanic', 90),
('Jeremiah', 'Male', 'Middle Eastern', 91),
('Willow', 'Female', 'Middle Eastern', 92),
('Anthony', 'Male', 'Caucasian', 93),
('Alexa', 'Female', 'Caucasian', 94),
('Gabriel', 'Male', 'African-American', 95),
('Peyton', 'Female', 'African-American', 96),
('Jackson', 'Male', 'Asian', 97),
('Nevaeh', 'Female', 'Asian', 98),
('Caleb', 'Male', 'Hispanic', 99),
('Naomi', 'Female', 'Hispanic', 100),
('Grayson', 'Male', 'Middle Eastern', 101),
('Taylor', 'Female', 'Middle Eastern', 102),
('Leo', 'Male', 'Caucasian', 103),
('Ivy', 'Female', 'Caucasian', 104),
('Wyatt', 'Male', 'African-American', 105),
('Elena', 'Female', 'African-American', 106),
('Jaxon', 'Male', 'Asian', 107),
('Aubree', 'Female', 'Asian', 108),
('Maverick', 'Male', 'Hispanic', 109),
('Quinn', 'Female', 'Hispanic', 110),
('Asher', 'Male', 'Middle Eastern', 111),
('Sydney', 'Female', 'Middle Eastern', 112),
('Milo', 'Male', 'Caucasian', 113),
('Jade', 'Female', 'Caucasian', 114),
('Nolan', 'Male', 'African-American', 115),
('Katherine', 'Female', 'African-American', 116),
('Colton', 'Male', 'Asian', 117),
('Lila', 'Female', 'Asian', 118),
('Dominic', 'Male', 'Hispanic', 119),
('Georgia', 'Female', 'Hispanic', 120),
('Roman', 'Male', 'Middle Eastern', 121),
('Callie', 'Female', 'Middle Eastern', 122),
('Bentley', 'Male', 'Caucasian', 123),
('Delilah', 'Female', 'Caucasian', 124),
('Xavier', 'Male', 'African-American', 125),
('Madeline', 'Female', 'African-American', 126),
('Zachary', 'Male', 'Asian', 127),
('Iris', 'Female', 'Asian', 128),
('Ayden', 'Male', 'Hispanic', 129),
('Samantha', 'Female', 'Hispanic', 130),
('Easton', 'Male', 'African-American', 131),
('Everly', 'Female', 'African-American', 132),
('Angel', 'Male', 'Asian', 133),
('Ruby', 'Female', 'Asian', 134),
('Lincoln', 'Male', 'Hispanic',135);


GO

-- Create stored procedure to get the most popular name based on gender and ethnicity

CREATE PROCEDURE GetPopularName1
    @Gender NVARCHAR(50),
    @Ethnicity NVARCHAR(100)
AS
BEGIN
    SELECT TOP 1 Name
    FROM BabyName
    WHERE Gender = @Gender AND Ethnicity = @Ethnicity
    ORDER BY Popularity DESC; -- Order by popularity to get the most popular name
END;
GO

-- Execute stored procedure with parameters to get the popular name
EXEC GetPopularName1 @Gender = 'Female', @Ethnicity = 'Caucasian';
GO

SELECT * FROM BabyName;  -- Just to see all the data inserted



-- Check if the stored procedure already exists
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'GetPopularName')
BEGIN
    -- Drop the existing stored procedure if it exists
    DROP PROCEDURE GetPopularName;
END
GO

-- Create the stored procedure
CREATE PROCEDURE GetPopularName
    @Gender NVARCHAR(50),
    @Ethnicity NVARCHAR(100)
AS
BEGIN
    SELECT TOP 1 Name
    FROM BabyName
    WHERE Gender = @Gender AND Ethnicity = @Ethnicity
    ORDER BY Popularity DESC; -- Order by popularity to get the most popular name
END;
GO