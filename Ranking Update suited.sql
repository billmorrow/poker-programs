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