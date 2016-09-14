30 : PRINT "Welcome to Spooky House."
40 : PRINT
50 : PRINT "The object is to exit the Spooky House with 2 treasures without getting killed."
60 : PRINT "To play, enter a number choice the game asks for and press enter."
70 : INPUT "You enter the spooky house. Will you go upstairs (1), or stay on the floor you are on (2)?", a%
IF a% = 1 THEN GOTO 80
IF a% = 2 THEN GOTO 90
IF a% > 2 THEN GOTO 70
IF a% < 1 THEN GOTO 70
80 : INPUT "You have entered upstairs and find an oddly long hallway. There is a door to your right. Will you go to the end of the hallway (1) or into the door (2) or back downstairs (3)", b%
IF b% = 1 THEN GOTO 100
IF b% = 2 THEN GOTO 110
IF b% = 3 THEN GOTO 70
IF b% > 3 THEN GOTO 80
IF b% < 1 THEN GOTO 80
90 : INPUT "You enter a strange ballroom and see 2 doors. Will you go into door 1 (1) or door 2 (2) or back (3)?", g%
IF g% = 1 THEN GOTO 130
IF g% = 2 THEN GOTO 140
IF g% = 3 THEN GOTO 70
IF g% > 3 THEN GOTO 90
IF g% < 1 THEN GOTO 90
100 : PRINT "You head through the hallway, seeing strange portriats on either side of you. You come to the end and see 2 doors."
INPUT "Will you go into door 1 (1) or door 2 (2)?", c%
GOTO 111
110 : INPUT "You enter the door and see 2 more doors. Will you go to door 1 (1) or door 2 (2) or back to the hallway (3)?", d%
IF d% = 1 THEN GOTO 111
IF d% = 2 THEN GOTO 120
IF d% = 3 THEN GOTO 80
IF d% > 3 THEN GOTO 110
IF d% < 1 THEN GOTO 110
111 : PRINT "You open the door and find horrible zombies. They quickly surround you. You are dead."
PLAY "<<<<G."
END
120 : INPUT "You enter a room with a window that you could climb out if you had a rope. Will you go back (1) Try to climb out the window (2) or go to the next room (3)?", e%
IF e% = 1 THEN GOTO 110
IF e% = 2 AND r% = 1 AND t% = 1 AND u% = 1 THEN GOTO 200
IF e% = 2 AND t% = 0 OR u% = 0 THEN GOTO 132
IF e% = 2 AND r% = 0 THEN GOTO 131
IF e% = 3 THEN GOTO 111
IF e% > 3 THEN GOTO 120
IF e% < 1 THEN GOTO 120
130 : INPUT "You open the door and find a treasure! Hit 1 to save the treasure.", t%
IF t% = 1 THEN GOTO 133
IF t% > 1 THEN GOTO 130
IF t% < 1 THEN GOTO 130
131 : PRINT "You try to climb out without a rope! You fall and break your back. You are dead."
END
132 : INPUT "Sorry, you don't have enough treasures. Hit 1 to go back to the beginning.", f%
LET f% = 1
IF f% = 1 THEN GOTO 70
133 : INPUT "Now you see 2 doors. Will you go to door 1 (1), door 2 (2), or back to the ballroom (3)?", h%
IF h% = 1 THEN GOTO 111
IF h% = 2 THEN GOTO 141
IF h% = 3 THEN GOTO 90
IF h% > 3 THEN GOTO 133
IF h% < 3 THEN GOTO 133
140 : INPUT "You open the door and see three more doors. Will you enter door 1 (1), 2 (2), or 3 (3), or go back (4)?", i%
IF i% = 1 THEN GOTO 111
IF i% = 2 THEN GOTO 150
IF i% = 3 THEN GOTO 160
IF i% = 4 THEN GOTO 90
IF i% < 1 THEN GOTO 140
IF i% > 1 THEN GOTO 140
141 : INPUT "You open the door and find a rope. Maybe you could use this... Hit 1 to save the rope and go back.", r%
IF r% = 1 THEN GOTO 133
IF r% > 1 THEN GOTO 141
IF r% < 1 THEN GOTO 141
150 : INPUT "You enter the door and find 2 doors. Will you go in door 1 (1), door 2 (2), or go back (3)", j%
IF j% = 1 THEN GOTO 170
IF j% = 2 THEN GOTO 111
IF j% = 3 THEN GOTO 140
IF j% < 1 THEN GOTO 150
IF j% > 2 THEN GOTO 150
160 :  INPUT "You enter the door and see 2 more doors. Will you go in door (1), door 2 (2), or back (3)?", k%
IF k% = 1 THEN GOTO 111
IF k% = 2 THEN GOTO 180
IF k% = 3 THEN GOTO 140
IF k% > 3 THEN GOTO 160
IF k% < 1 THEN GOTO 160
170 : INPUT "You found a treasure! Hit 1 to save the treasure and go back.", u%
IF u% = 1 THEN GOTO 150
IF u% > 1 THEN GOTO 170
IF u% < 1 THEN GOTO 170
180 : INPUT "You see the exit. Hit 1 to leave or 2 to go back. Bear in mind that you need 2 treasures to leave.", l%
IF l% = 1 AND u% = 1 AND t% = 1 THEN GOTO 200
IF l% = 1 AND u% = 0 OR t% = 0 THEN GOTO 132
IF l% = 2 THEN GOTO 160
IF l% > 2 THEN GOTO 180
IF l% < 1 THEN GOTO 180
200 : PRINT "YOU WIN!!!!"
END
