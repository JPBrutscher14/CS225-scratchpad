BR main, i
string1: .ASCII "give me a character \x00" 
string2: .ASCII "\nnow \x00"
string3: .ASCII "a number \x00"
size: .equate 4 ;frame size
char1: .equate 0 ;local variable #1d
char2: .equate 1 ;local variable #1d
dec1: .equate  2;local variable #2d
main: NOP0
SUBSP size, i ;allocate #char1 #char2 #dec1
STRO string1, d
CHARI char1, s
STRO string2, d
STRO string3, d
DECI dec1, s
STRO string2,d
STRO string1, d
CHARI char2, s
CHARO char2, s
CHARO char1, s
DECO dec1, s
ADDSP size, i ;deallocate #char1 #char2 #dec1
STOP
.END