'BlueDisk Engine
'By Daniel Armstrong
'Copyright 2018
DIM KeyPress AS STRING
DIM h AS INTEGER
DIM v AS INTEGER
DIM score AS INTEGER
CONST size = 4
h = 280
v = 180
score = 0
SCREEN 1
CLS
PRINT score
DO
KeyPress = UCASE$(INKEY$)
IF KeyPress = CHR$(0) + CHR$(72) AND v > size THEN
CLS
v = v - 2
PRINT score
ELSEIF KeyPress = CHR$(0) + CHR$(80) AND v < 150 - size THEN
CLS
v = v + 2
PRINT score
ELSEIF KeyPress = CHR$(0) + CHR$(75) AND h > size THEN
CLS
h = h - 2
PRINT score
ELSEIF KeyPress = CHR$(0) + CHR$(77) AND h < 250 - size THEN
CLS
h = h + 2
PRINT score
ELSEIF KeyPress = CHR$(0) + CHR$(83) THEN
PRINT "Paused, press any key to resume"
SLEEP 100
CLS
PRINT score
END IF
CIRCLE (h, v), size, 1
LOOP UNTIL KeyPress = "Q"

