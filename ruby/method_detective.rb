# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#Suspect #1
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

#Examples for Suspect #1
"oMiD".swapcase
# => "OmId"
"jAhIdA".swapcase
# => "JaHiDa"

#Suspect #2
"zom".insert(1, 'o')
# => “zoom”

#Examples for Suspect #2
"beak".insert(1, 'r')
# => "break"
"hat".insert(1, 'e')
# => "heat"

#Suspect #3
"enhance".center(15)
# => "    enhance    "

#Examples for Suspect #3
"check".center(15)
# => "     check     "
"inbox".center(20)
# => "       inbox        "

#Suspect #4
"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

#Examples for Suspect #4
"You're fired!".upcase
# => "YOU'RE FIRED!"
"Everybody freeze!".upcase
# => "EVERYBODY FREEZE!"

#Suspect #5
"the usual".concat(" suspects")
#=> "the usual suspects"

#Examples for Suspect #5
"The".concat(" Rock")
# => "The Rock"
"Deep Blue".concat(" Sea")
# => "Deep Blue Sea"

#Suspect #6
" suspects".prepend("the usual")
# => "the usual suspects"

#Examples for Suspect #6
" Rock".prepend("The")
# => "The Rock"
" Sea".prepend("Deep Blue")
# => "Deep Blue Sea"

#Suspect #7
"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

#Examples for Suspect #7
"12345".chop
# => "1234"
"Omid".chop
# => "Omi"

#Suspect #8
"The mystery of the missing first letter".slice(1..38)
# => "he mystery of the missing first letter"

#Examples for Suspect #8
"Heat".slice(1..3)
# => "eat"
"A mystery of the missing first letter (which can be considered a word).".slice(2..70)
# => "mystery of the missing first letter (which can be considered a word)."

#Suspect #9
"Elementary,    my   dear        Watson!".squeeze("         ")
# => "Elementary, my dear Watson!"

#Examples of Suspect #9
"To   be,    or     not      to       be!".squeeze("       ")
# => "To be, or not to be!"
"Squeeze        me!".squeeze("        ")
# => "Squeeze me!"

#Suspect #10
"z".ord		
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

#Examples of Suspect #10
"y".ord
# => 121
"x".ord
# => 120

#Suspect #11
"How many times does the letter 'a' appear in this string?".count "a"
# => 4

#Examples of Suspect #11
"How many times does the letter 't' appear in this string?".count "t"
# => 7
"You can only count on 1 person, it depends if you can count that 1 person".count "1"
# => 2