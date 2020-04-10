USE master;
GO

IF  EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Poker')
DROP DATABASE [Poker];
GO
CREATE DATABASE [Poker];
GO

USE [Poker];
GO

CREATE TABLE Cards
(CardRank nchar(1) NOT NULL,
Val tinyint NOT NULL);
GO

CREATE TABLE Suits
(Suit nchar(1) NOT NULL);
GO

INSERT INTO Cards (CardRank, Val)
VALUES ('A', 14), ('K', 13), ('Q', 12), ('J', 11), ('T', 10),
	('9', 9), ('8', 8), ('7', 7), ('6', 6), ('5', 5),
	('4', 4), ('3', 3), ('2', 2);
GO

INSERT INTO Suits (Suit)
VALUES (N'♦'), (N'♥'), (N'♠'), (N'♣');
GO

SELECT 
	c.cardrank + s.suit AS CardDeck,
	c.Val
	INTO Deck
FROM Cards AS c
CROSS APPLY Suits AS s;
GO


SELECT StartingHand INTO Hands
FROM (SELECT
	CASE WHEN d2.Val >= d1.Val THEN	
	d2.CardDeck + d1.CardDeck 
	ELSE 
	d1.CardDeck + d2.CardDeck
	END AS StartingHand
FROM Deck AS d1, Deck AS d2
WHERE d1.CardDeck <> d2.CardDeck AND d2.CardDeck > d1.CardDeck) AS sub;
GO
--1326 hands


--Creates a table to throw randomized hands into for statistical history
--Identity column to know the order the hands were dealt

CREATE TABLE Deals 
(	DealID int IDENTITY(1,1) not null,
	DealtHand nvarchar(4) not null,
	Ranking tinyint not null);
GO


--I wanted to add ranks to the Starting Hands based on 
--http://holdemtight.com/pgs/od/oddpgs/3-169holdemhands.htm

ALTER TABLE Hands
ADD Ranking tinyint;
GO
--Long ass update statement
--Suited first

UPDATE Hands
SET Ranking = CASE StartingHand

	WHEN N'A♦K♦' THEN 4
	WHEN N'A♥K♥' THEN 4
	WHEN N'A♠K♠' THEN 4
	WHEN N'A♣K♣' THEN 4

	WHEN N'A♦Q♦' THEN 6
	WHEN N'A♥Q♥' THEN 6
	WHEN N'A♠Q♠' THEN 6
	WHEN N'A♣Q♣' THEN 6

	WHEN N'K♦Q♦' THEN 7
	WHEN N'K♥Q♥' THEN 7
	WHEN N'K♠Q♠' THEN 7
	WHEN N'K♣Q♣' THEN 7

	WHEN N'A♦J♦' THEN 8
	WHEN N'A♥J♥' THEN 8
	WHEN N'A♠J♠' THEN 8
	WHEN N'A♣J♣' THEN 8

	WHEN N'K♦J♦' THEN 9
	WHEN N'K♥J♥' THEN 9
	WHEN N'K♠J♠' THEN 9
	WHEN N'K♣J♣' THEN 9

	WHEN N'A♦10♦' THEN 12
	WHEN N'A♥10♥' THEN 12
	WHEN N'A♠10♠' THEN 12
	WHEN N'A♣10♣' THEN 12

	WHEN N'Q♦J♦' THEN 13
	WHEN N'Q♥J♥' THEN 13
	WHEN N'Q♠J♠' THEN 13
	WHEN N'Q♣J♣' THEN 13

	WHEN N'K♦10♦' THEN 14
	WHEN N'K♥10♥' THEN 14
	WHEN N'K♠10♠' THEN 14
	WHEN N'K♣10♣' THEN 14

	WHEN N'Q♦10♦' THEN 15
	WHEN N'Q♥10♥' THEN 15
	WHEN N'Q♠10♠' THEN 15
	WHEN N'Q♣10♣' THEN 15

	WHEN N'J♦10♦' THEN 16
	WHEN N'J♥10♥' THEN 16
	WHEN N'J♠10♠' THEN 16
	WHEN N'J♣10♣' THEN 16

	WHEN N'A♦9♦' THEN 19
	WHEN N'A♥9♥' THEN 19
	WHEN N'A♠9♠' THEN 19
	WHEN N'A♣9♣' THEN 19

	WHEN N'K♦9♦' THEN 22
	WHEN N'K♥9♥' THEN 22
	WHEN N'K♠9♠' THEN 22
	WHEN N'K♣9♣' THEN 22

	WHEN N'10♦9♦' THEN 23
	WHEN N'10♥9♥' THEN 23
	WHEN N'10♠9♠' THEN 23
	WHEN N'10♣9♣' THEN 23

	WHEN N'A♦8♦' THEN 24
	WHEN N'A♥8♥' THEN 24
	WHEN N'A♠8♠' THEN 24
	WHEN N'A♣8♣' THEN 24

	WHEN N'Q♦9♦' THEN 25
	WHEN N'Q♥9♥' THEN 25
	WHEN N'Q♠9♠' THEN 25
	WHEN N'Q♣9♣' THEN 25

	WHEN N'J♦9♦' THEN 26
	WHEN N'J♥9♥' THEN 26
	WHEN N'J♠9♠' THEN 26
	WHEN N'J♣9♣' THEN 26

	WHEN N'A♦5♦' THEN 28
	WHEN N'A♥5♥' THEN 28
	WHEN N'A♠5♠' THEN 28
	WHEN N'A♣5♣' THEN 28

	WHEN N'A♦7♦' THEN 30
	WHEN N'A♥7♥' THEN 30
	WHEN N'A♠7♠' THEN 30
	WHEN N'A♣7♣' THEN 30

	WHEN N'A♦4♦' THEN 32
	WHEN N'A♥4♥' THEN 32
	WHEN N'A♠4♠' THEN 32
	WHEN N'A♣4♣' THEN 32

	WHEN N'A♦3♦' THEN 33
	WHEN N'A♥3♥' THEN 33
	WHEN N'A♠3♠' THEN 33
	WHEN N'A♣3♣' THEN 33

	WHEN N'A♦6♦' THEN 34
	WHEN N'A♥6♥' THEN 34
	WHEN N'A♠6♠' THEN 34
	WHEN N'A♣6♣' THEN 34

	WHEN N'K♦8♦' THEN 37
	WHEN N'K♥8♥' THEN 37
	WHEN N'K♠8♠' THEN 37
	WHEN N'K♣8♣' THEN 37

	WHEN N'10♦8♦' THEN 38
	WHEN N'10♥8♥' THEN 38
	WHEN N'10♠8♠' THEN 38
	WHEN N'10♣8♣' THEN 38

	WHEN N'A♦2♦' THEN 39
	WHEN N'A♥2♥' THEN 39
	WHEN N'A♠2♠' THEN 39
	WHEN N'A♣2♣' THEN 39

	WHEN N'9♦8♦' THEN 40
	WHEN N'9♥8♥' THEN 40
	WHEN N'9♠8♠' THEN 40
	WHEN N'9♣8♣' THEN 40

	WHEN N'J♦8♦' THEN 41
	WHEN N'J♥8♥' THEN 41
	WHEN N'J♠8♠' THEN 41
	WHEN N'J♣8♣' THEN 41

	WHEN N'Q♦8♦' THEN 43
	WHEN N'Q♥8♥' THEN 43
	WHEN N'Q♠8♠' THEN 43
	WHEN N'Q♣8♣' THEN 43

	WHEN N'K♦7♦' THEN 44
	WHEN N'K♥7♥' THEN 44
	WHEN N'K♠7♠' THEN 44
	WHEN N'K♣7♣' THEN 44

	WHEN N'8♦7♦' THEN 48
	WHEN N'8♥7♥' THEN 48
	WHEN N'8♠7♠' THEN 48
	WHEN N'8♣7♣' THEN 48

	WHEN N'K♦6♦' THEN 53
	WHEN N'K♥6♥' THEN 53
	WHEN N'K♠6♠' THEN 53
	WHEN N'K♣6♣' THEN 53

	WHEN N'9♦7♦' THEN 54
	WHEN N'9♥7♥' THEN 54
	WHEN N'9♠7♠' THEN 54
	WHEN N'9♣7♣' THEN 54

	WHEN N'K♦5♦' THEN 55
	WHEN N'K♥5♥' THEN 55
	WHEN N'K♠5♠' THEN 55
	WHEN N'K♣5♣' THEN 55

	WHEN N'7♦6♦' THEN 56
	WHEN N'7♥6♥' THEN 56
	WHEN N'7♠6♠' THEN 56
	WHEN N'7♣6♣' THEN 56

	WHEN N'10♦7♦' THEN 57
	WHEN N'10♥7♥' THEN 57
	WHEN N'10♠7♠' THEN 57
	WHEN N'10♣7♣' THEN 57

	WHEN N'K♦4♦' THEN 58
	WHEN N'K♥4♥' THEN 58
	WHEN N'K♠4♠' THEN 58
	WHEN N'K♣4♣' THEN 58

	WHEN N'K♦2♦' THEN 59
	WHEN N'K♥2♥' THEN 59
	WHEN N'K♠2♠' THEN 59
	WHEN N'K♣2♣' THEN 59

	WHEN N'K♦3♦' THEN 60
	WHEN N'K♥3♥' THEN 60
	WHEN N'K♠3♠' THEN 60
	WHEN N'K♣3♣' THEN 60

	WHEN N'Q♦7♦' THEN 61
	WHEN N'Q♥7♥' THEN 61
	WHEN N'Q♠7♠' THEN 61
	WHEN N'Q♣7♣' THEN 61

	WHEN N'8♦6♦' THEN 62
	WHEN N'8♥6♥' THEN 62
	WHEN N'8♠6♠' THEN 62
	WHEN N'8♣6♣' THEN 62

	WHEN N'6♦5♦' THEN 63
	WHEN N'6♥5♥' THEN 63
	WHEN N'6♠5♠' THEN 63
	WHEN N'6♣5♣' THEN 63

	WHEN N'J♦7♦' THEN 64
	WHEN N'J♥7♥' THEN 64
	WHEN N'J♠7♠' THEN 64
	WHEN N'J♣7♣' THEN 64

	WHEN N'5♦4♦' THEN 65
	WHEN N'5♥4♥' THEN 65
	WHEN N'5♠4♠' THEN 65
	WHEN N'5♣4♣' THEN 65

	WHEN N'Q♦6♦' THEN 66
	WHEN N'Q♥6♥' THEN 66
	WHEN N'Q♠6♠' THEN 66
	WHEN N'Q♣6♣' THEN 66

	WHEN N'7♦5♦' THEN 67
	WHEN N'7♥5♥' THEN 67
	WHEN N'7♠5♠' THEN 67
	WHEN N'7♣5♣' THEN 67

	WHEN N'9♦6♦' THEN 68
	WHEN N'9♥6♥' THEN 68
	WHEN N'9♠6♠' THEN 68
	WHEN N'9♣6♣' THEN 68

	WHEN N'Q♦5♦' THEN 69
	WHEN N'Q♥5♥' THEN 69
	WHEN N'Q♠5♠' THEN 69
	WHEN N'Q♣5♣' THEN 69

	WHEN N'6♦4♦' THEN 70
	WHEN N'6♥4♥' THEN 70
	WHEN N'6♠4♠' THEN 70
	WHEN N'6♣4♣' THEN 70

	WHEN N'Q♦4♦' THEN 71
	WHEN N'Q♥4♥' THEN 71
	WHEN N'Q♠4♠' THEN 71
	WHEN N'Q♣4♣' THEN 71

	WHEN N'Q♦3♦' THEN 72
	WHEN N'Q♥3♥' THEN 72
	WHEN N'Q♠3♠' THEN 72
	WHEN N'Q♣3♣' THEN 72

	WHEN N'10♦6♦' THEN 74
	WHEN N'10♥6♥' THEN 74
	WHEN N'10♠6♠' THEN 74
	WHEN N'10♣6♣' THEN 74

	WHEN N'Q♦2♦' THEN 75
	WHEN N'Q♥2♥' THEN 75
	WHEN N'Q♠2♠' THEN 75
	WHEN N'Q♣2♣' THEN 75

	WHEN N'5♦3♦' THEN 77
	WHEN N'5♥3♥' THEN 77
	WHEN N'5♠3♠' THEN 77
	WHEN N'5♣3♣' THEN 77

	WHEN N'8♦5♦' THEN 78
	WHEN N'8♥5♥' THEN 78
	WHEN N'8♠5♠' THEN 78
	WHEN N'8♣5♣' THEN 78

	WHEN N'J♦6♦' THEN 79
	WHEN N'J♥6♥' THEN 79
	WHEN N'J♠6♠' THEN 79
	WHEN N'J♣6♣' THEN 79

	WHEN N'J♦5♦' THEN 82
	WHEN N'J♥5♥' THEN 82
	WHEN N'J♠5♠' THEN 82
	WHEN N'J♣5♣' THEN 82

	WHEN N'4♦3♦' THEN 84
	WHEN N'4♥3♥' THEN 84
	WHEN N'4♠3♠' THEN 84
	WHEN N'4♣3♣' THEN 84

	WHEN N'7♦4♦' THEN 85
	WHEN N'7♥4♥' THEN 85
	WHEN N'7♠4♠' THEN 85
	WHEN N'7♣4♣' THEN 85

	WHEN N'J♦4♦' THEN 86
	WHEN N'J♥4♥' THEN 86
	WHEN N'J♠4♠' THEN 86
	WHEN N'J♣4♣' THEN 86

	WHEN N'J♦3♦' THEN 87
	WHEN N'J♥3♥' THEN 87
	WHEN N'J♠3♠' THEN 87
	WHEN N'J♣3♣' THEN 87

	WHEN N'9♦5♦' THEN 88
	WHEN N'9♥5♥' THEN 88
	WHEN N'9♠5♠' THEN 88
	WHEN N'9♣5♣' THEN 88

	WHEN N'J♦2♦' THEN 89
	WHEN N'J♥2♥' THEN 89
	WHEN N'J♠2♠' THEN 89
	WHEN N'J♣2♣' THEN 89

	WHEN N'6♦3♦' THEN 90
	WHEN N'6♥3♥' THEN 90
	WHEN N'6♠3♠' THEN 90
	WHEN N'6♣3♣' THEN 90

	WHEN N'5♦2♦' THEN 92
	WHEN N'5♥2♥' THEN 92
	WHEN N'5♠2♠' THEN 92
	WHEN N'5♣2♣' THEN 92

	WHEN N'10♦5♦' THEN 93
	WHEN N'10♥5♥' THEN 93
	WHEN N'10♠5♠' THEN 93
	WHEN N'10♣5♣' THEN 93

	WHEN N'8♦4♦' THEN 94
	WHEN N'8♥4♥' THEN 94
	WHEN N'8♠4♠' THEN 94
	WHEN N'8♣4♣' THEN 94

	WHEN N'10♦4♦' THEN 95
	WHEN N'10♥4♥' THEN 95
	WHEN N'10♠4♠' THEN 95
	WHEN N'10♣4♣' THEN 95

	WHEN N'10♦3♦' THEN 96
	WHEN N'10♥3♥' THEN 96
	WHEN N'10♠3♠' THEN 96
	WHEN N'10♣3♣' THEN 96

	WHEN N'4♦2♦' THEN 97
	WHEN N'4♥2♥' THEN 97
	WHEN N'4♠2♠' THEN 97
	WHEN N'4♣2♣' THEN 97

	WHEN N'10♦2♦' THEN 98
	WHEN N'10♥2♥' THEN 98
	WHEN N'10♠2♠' THEN 98
	WHEN N'10♣2♣' THEN 98

	WHEN N'7♦3♦' THEN 103
	WHEN N'7♥3♥' THEN 103
	WHEN N'7♠3♠' THEN 103
	WHEN N'7♣3♣' THEN 103

	WHEN N'3♦2♦' THEN 105
	WHEN N'3♥2♥' THEN 105
	WHEN N'3♠2♠' THEN 105
	WHEN N'3♣2♣' THEN 105

	WHEN N'9♦4♦' THEN 106
	WHEN N'9♥4♥' THEN 106
	WHEN N'9♠4♠' THEN 106
	WHEN N'9♣4♣' THEN 106

	WHEN N'9♦3♦' THEN 107
	WHEN N'9♥3♥' THEN 107
	WHEN N'9♠3♠' THEN 107
	WHEN N'9♣3♣' THEN 107

	WHEN N'6♦2♦' THEN 110
	WHEN N'6♥2♥' THEN 110
	WHEN N'6♠2♠' THEN 110
	WHEN N'6♣2♣' THEN 110

	WHEN N'9♦2♦' THEN 111
	WHEN N'9♥2♥' THEN 111
	WHEN N'9♠2♠' THEN 111
	WHEN N'9♣2♣' THEN 111

	WHEN N'8♦3♦' THEN 116
	WHEN N'8♥3♥' THEN 116
	WHEN N'8♠3♠' THEN 116
	WHEN N'8♣3♣' THEN 116

	WHEN N'8♦2♦' THEN 118
	WHEN N'8♥2♥' THEN 118
	WHEN N'8♠2♠' THEN 118
	WHEN N'8♣2♣' THEN 118

	WHEN N'7♦2♦' THEN 120
	WHEN N'7♥2♥' THEN 120
	WHEN N'7♠2♠' THEN 120
	WHEN N'7♣2♣' THEN 120

	END;

GO

--Unsuited and pair hands ranks using wildcards

UPDATE Hands
SET Ranking = CASE 
	WHEN StartingHand LIKE N'A%A%' THEN 1
	WHEN StartingHand LIKE N'K%K%' THEN 2
	WHEN StartingHand LIKE N'Q%Q%' THEN 3
	WHEN StartingHand LIKE N'A%K%' THEN 11
	WHEN StartingHand LIKE N'J%J%' THEN 5
	WHEN StartingHand LIKE N'A%Q%' THEN 18
	WHEN StartingHand LIKE N'K%Q%' THEN 20
	WHEN StartingHand LIKE N'A%J%' THEN 27
	WHEN StartingHand LIKE N'K%J%' THEN 31
	WHEN StartingHand LIKE N'T%T%' THEN 10
	WHEN StartingHand LIKE N'A%T%' THEN 42
	WHEN StartingHand LIKE N'Q%J%' THEN 35
	WHEN StartingHand LIKE N'K%T%' THEN 45
	WHEN StartingHand LIKE N'Q%T%' THEN 49
	WHEN StartingHand LIKE N'J%T%' THEN 47
	WHEN StartingHand LIKE N'9%9%' THEN 17
	WHEN StartingHand LIKE N'A%9%' THEN 76
	WHEN StartingHand LIKE N'8%8%' THEN 21
	WHEN StartingHand LIKE N'K%9%' THEN 81
	WHEN StartingHand LIKE N'T%9%' THEN 73
	WHEN StartingHand LIKE N'A%8%' THEN 91
	WHEN StartingHand LIKE N'Q%9%' THEN 83
	WHEN StartingHand LIKE N'J%9%' THEN 80
	WHEN StartingHand LIKE N'A%5%' THEN 101
	WHEN StartingHand LIKE N'7%7%' THEN 29
	WHEN StartingHand LIKE N'A%7%' THEN 102
	WHEN StartingHand LIKE N'A%4%' THEN 104
	WHEN StartingHand LIKE N'A%3%' THEN 109
	WHEN StartingHand LIKE N'A%6%' THEN 113
	WHEN StartingHand LIKE N'6%6%' THEN 36
	WHEN StartingHand LIKE N'K%8%' THEN 112
	WHEN StartingHand LIKE N'T%8%' THEN 100
	WHEN StartingHand LIKE N'A%2%' THEN 117
	WHEN StartingHand LIKE N'9%8%' THEN 99
	WHEN StartingHand LIKE N'J%8%' THEN 108
	WHEN StartingHand LIKE N'Q%8%' THEN 115
	WHEN StartingHand LIKE N'K%7%' THEN 122
	WHEN StartingHand LIKE N'5%5%' THEN 46
	WHEN StartingHand LIKE N'8%7%' THEN 114
	WHEN StartingHand LIKE N'4%4%' THEN 50
	WHEN StartingHand LIKE N'2%2%' THEN 51
	WHEN StartingHand LIKE N'3%3%' THEN 52
	WHEN StartingHand LIKE N'K%6%' THEN 125
	WHEN StartingHand LIKE N'9%7%' THEN 119
	WHEN StartingHand LIKE N'K%5%' THEN 128
	WHEN StartingHand LIKE N'7%6%' THEN 121
	WHEN StartingHand LIKE N'T%7%' THEN 124
	WHEN StartingHand LIKE N'K%4%' THEN 132
	WHEN StartingHand LIKE N'K%2%' THEN 135
	WHEN StartingHand LIKE N'K%3%' THEN 133
	WHEN StartingHand LIKE N'Q%7%' THEN 131
	WHEN StartingHand LIKE N'8%6%' THEN 126
	WHEN StartingHand LIKE N'6%5%' THEN 123
	WHEN StartingHand LIKE N'J%7%' THEN 129
	WHEN StartingHand LIKE N'5%4%' THEN 127
	WHEN StartingHand LIKE N'Q%6%' THEN 137
	WHEN StartingHand LIKE N'7%5%' THEN 130
	WHEN StartingHand LIKE N'9%6%' THEN 134
	WHEN StartingHand LIKE N'Q%5%' THEN 141
	WHEN StartingHand LIKE N'6%4%' THEN 136
	WHEN StartingHand LIKE N'Q%4%' THEN 143
	WHEN StartingHand LIKE N'Q%3%' THEN 144
	WHEN StartingHand LIKE N'T%6%' THEN 140
	WHEN StartingHand LIKE N'Q%2%' THEN 146
	WHEN StartingHand LIKE N'5%3%' THEN 138
	WHEN StartingHand LIKE N'8%5%' THEN 139
	WHEN StartingHand LIKE N'J%6%' THEN 147
	WHEN StartingHand LIKE N'J%5%' THEN 149
	WHEN StartingHand LIKE N'4%3%' THEN 142
	WHEN StartingHand LIKE N'7%4%' THEN 145
	WHEN StartingHand LIKE N'J%4%' THEN 152
	WHEN StartingHand LIKE N'J%3%' THEN 153
	WHEN StartingHand LIKE N'9%5%' THEN 150
	WHEN StartingHand LIKE N'J%2%' THEN 155
	WHEN StartingHand LIKE N'6%3%' THEN 148
	WHEN StartingHand LIKE N'5%2%' THEN 151
	WHEN StartingHand LIKE N'T%5%' THEN 157
	WHEN StartingHand LIKE N'8%4%' THEN 156
	WHEN StartingHand LIKE N'T%4%' THEN 158
	WHEN StartingHand LIKE N'T%3%' THEN 160
	WHEN StartingHand LIKE N'4%2%' THEN 154
	WHEN StartingHand LIKE N'T%2%' THEN 162
	WHEN StartingHand LIKE N'7%3%' THEN 161
	WHEN StartingHand LIKE N'3%2%' THEN 159
	WHEN StartingHand LIKE N'9%4%' THEN 164
	WHEN StartingHand LIKE N'9%3%' THEN 165
	WHEN StartingHand LIKE N'6%2%' THEN 163
	WHEN StartingHand LIKE N'9%2%' THEN 166
	WHEN StartingHand LIKE N'8%3%' THEN 167
	WHEN StartingHand LIKE N'8%2%' THEN 168
	WHEN StartingHand LIKE N'7%2%' THEN 169

	END
	WHERE Ranking IS NULL;

GO

--Proc accepts @Deals parameter to deal as many hands as indicated
--To deal a higher or lower number of hands, match the column datatype with DealID
--NEWID used to simulate randomness

CREATE PROCEDURE AutoDealer @Deals int
AS
SET NOCOUNT ON
DECLARE @i int
SET @i = 0
WHILE @i < @Deals
BEGIN
INSERT INTO Deals (DealtHand, Ranking)
SELECT TOP (1) StartingHand, Ranking
FROM Hands
ORDER BY NEWID()
SET @i = @i + 1
END;
GO