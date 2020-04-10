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