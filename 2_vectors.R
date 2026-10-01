ls()
[1] "age"      "eligible" "name"    
> rm(list=ls())
> 
> ls()
character(0)
> 
> v=c(1,3,7)
> v
[1] 1 3 7
> 
> v=c(1,2,3,4,5)
> v
[1] 1 2 3 4 5
> ## But there is an easier way to write this.
> 
> v=c(1:5)
> v
[1] 1 2 3 4 5
> 
> 
> ## Join together several series of numbers
> v=c(1:5, 12:16, 35:43)
> v
 [1]  1  2  3  4  5 12 13 14 15 16 35 36 37 38 39 40 41 42 43
> 
> 
> ## seq() creates numberical sequences only. 
> 
> w=seq(4,10)
> w
[1]  4  5  6  7  8  9 10
> 
> ## It assumes the integer (step up) is 1, unless specified. Ex:
> w=seq(4,10,1)
> w
[1]  4  5  6  7  8  9 10
> 
> w=seq(4,10,2)
> w
[1]  4  6  8 10
> 
> 
> ## rep() function replicated an object the desired amount of times. 
> 
> z=rep)(1,10)
Error: unexpected ')' in "z=rep)"
> z
Error: object 'z' not found
> z=rep(1,10)
> z
 [1] 1 1 1 1 1 1 1 1 1 1
> 
> z=rep("hi",10)
> z
 [1] "hi" "hi" "hi" "hi" "hi" "hi" "hi" "hi" "hi" "hi"
> 
> ## you can also replicated a vector
> 
> z=rep(c(2,5,7),4)
> z
 [1] 2 5 7 2 5 7 2 5 7 2 5 7
> 
> 
> ## we can provide a sequence for how many times the object is replicated
> 
> z=(rep(c(2,5,7)), 2:4)
Error: unexpected ',' in "z=(rep(c(2,5,7)),"
> z=(rep(c(2,5,7)),2:4)
Error: unexpected ',' in "z=(rep(c(2,5,7)),"
> z=rep(c(2,5,7)),2:4)
Error: unexpected ',' in "z=rep(c(2,5,7)),"
> z=rep(c(2,5,7),2:4)
> z
[1] 2 2 5 5 5 7 7 7 7
> 
> v=c(9:1)
> v
[1] 9 8 7 6 5 4 3 2 1
> 
> v=seq(9,1,2)
Error in seq.default(9, 1, 2) : wrong sign in 'by' argument
> v=seq(9,1,1)
Error in seq.default(9, 1, 1) : wrong sign in 'by' argument
> v=seq(9,1)
> v
[1] 9 8 7 6 5 4 3 2 1
> 
> v=seq(1,9)
> rev(v)
[1] 9 8 7 6 5 4 3 2 1
> v=seq(1,9,2)
> x=rev(v)
> x
[1] 9 7 5 3 1
> 
> ## Have to use rev() if you specify spacing. 
> 
> v=seq(9,1,2)
Error in seq.default(9, 1, 2) : wrong sign in 'by' argument
> 
> v=seq(9,1,-2)
> v
[1] 9 7 5 3 1
> 
> letters
 [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
> LETTERS
 [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
> month.name
 [1] "January"   "February"  "March"     "April"     "May"       "June"      "July"      "August"    "September" "October"   "November" 
[12] "December" 
> 
> 
> paste("A",3,sep="")
[1] "A3"
> paste("A",3,sep="_)
+ paste("A",3,sep="_")
Error: unexpected symbol in:
"paste("A",3,sep="_)
paste("A"
> paste("A",3,sep="_")
[1] "A_3"
> 
> 
> labels=paste(rep("A",10),1:10,sep="_")
> labels
 [1] "A_1"  "A_2"  "A_3"  "A_4"  "A_5"  "A_6"  "A_7"  "A_8"  "A_9"  "A_10"
> 
> 
> ## Vectors can contain qualitative or categorical variables 
> f=c(rep("treatment_A", 3), rep("treatment_B",5), rep("treatment_C",4))
> f
 [1] "treatment_A" "treatment_A" "treatment_A" "treatment_B" "treatment_B" "treatment_B" "treatment_B" "treatment_B" "treatment_C" "treatment_C"
[11] "treatment_C" "treatment_C"
> 
> is.character(f)
[1] TRUE
> f=factor(f)
> is.factor(f)
[1] TRUE
> is.character(f)
[1] FALSE
> levels(f)
[1] "treatment_A" "treatment_B" "treatment_C"
> 
2026-09-29 10:58:55.888 R[12858:1178387] The class 'NSSavePanel' overrides the method identifier.  This method is implemented by class 'NSWindow'
> ## ^ changing F from a character to a factor.
