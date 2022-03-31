#
# Get information about ...everything!
#
Sys.locale()


#
# R? A calculator?
#

# +, - , * , /

2+2

# Every function has "()"
"+"(2,2)

2-2

# TODO: Fool around!

2^2

# Advanced: Getting crazy

# Invert a matrix
X <- matrix(c(5, 10, 1, 3), ncol = 2)
solve(X)

# Transpose a matrix
example("t")
t(X)

# Sqaurte root of a complex number
sqrt(-17+0i)

# LGS
# 5x + y = 15
# 10x + 3y = 9
X <- matrix(c(5, 10, 1, 3), ncol = 2)
Y <- matrix(c(15, 9), ncol=1)
solve(X,Y)

# Matrix multiplication
X%*%Y

# TODO: Manipulate the code to solve your own LGS!

# integrate
example("integrate")

# Own example!
f <- function(x) 2 * x + x^2 + 5 * x^3
integrate(f, lower = 0, upper = 10)

# TODO: Manipulate the code to integrate your own function!

# 
# Note: You don't need to know that! I rarely use it in applied research.
# However, you should get an impression of what R is capable of!
#

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# Let's start with the most basic data type...

#
# Vectors!
#

# TODO: google! What is a vector in R? (not in general!)


# Numeric vectors
#


# Numeric vector of length 1 
# aka. scalar!
x <- 1
x

# Booooooring! Alright, check...

# TODO: What does c() do? Let's follow our basic workflow to find out!

?c
example("c")

# Happy? No?
# 2. Check google!

# Let's try it!
# TODO: Build a three element vector and store it in "X"

#
# Trick: the "further assignment" using c()
#
y <- c(X,X)
y

# Recycling!
#
# TODO: X is shorter than y. Guess what happen if you multiply them!
# Check your result!

x <- c(1,2)
y <- c(1,2,3,4,5)
x * y
# [1] 1 4 3 8 5
# WTF?! (..the official international scientific term for confusion!)

# Vector arithmetic
#
x <- c(1,2,3,4,5)
y <- c(1,2,3,4,5)
# Pointwise(!) addition
x + y
# Pointwise exponentiation! 
x^y

#
# c()'s bros
#

# seq()
#

# TODO: What does seq() do? 

# Example!

# : or ":()"
#

# TODO: What does ":" do? 

# Example!

# Other useful functions
#

# sum()
# TODO: What does sum do? Create an example!

# prod()
# TODO: What does prod do? Create an example!

# range()
# TODO: What does prod do? Create an example!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

# Logical vectors
#
x_logic <- c(TRUE, FALSE)
y_logic <- c(T, F)

# Logical vectors are created by conditions!
c(3,4,5,6) >= 4
c(3,4,5,6) < 7

# Top tip!
#
# Q: How many of you are true?
sum(c(3,4,5,6) < 7)
# more readable...
cond <- c(3,4,5,6) >= 4
sum(cond)

# Missing values (NA) are logicals!
#
# NA, are you a numeric? A character?
is.numeric(NA) ; is.character(NA)
# ..or a logical?
# 
# TODO: Test, if NA is a logical

# Missing values interfer with functions!
#
sum(c(1,2,3,NA))

# TODO: Read sum()'s man page! Is there away to get rid of NA's?

# NaN
#

# TODO: What does NaN stands for?
?'NaN'

# H2 produce a NaN (rarely seen beasts!)
0/0

# Inf
#
4/0

# Character vectors
#
a <- "Hihihihi"
a

# Trick: unpack the invisible assignment!
(a <- "Hihihihi")

# Use intuitive object names!
# I like...
(X_char <- c("I", "am", "a", "Nerd"))

# paste()
#

?paste

# TIP: Cool feature to create names!
paste("X", 1:10, sep="")

# TODO: Which concept we meet earlier does R use here?
# Hint: Think of streatching vector of different lentgths!


# paste0 ()
# Slightly more efficient but less convenient!
?paste0


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

#
# Tough stuff! ..Vector indexing
#

# TODO: Find out about!

?"["

# TODO: What do you expect "[]" to do?
# Give a few examples!



#
# YOUR CODE
#



# Approaching "["
# ..systematically!
x <- seq(10, 100, by=10)

# TODO: Guess! What is the result of...
x[1]

# TODO: Guess! What is the result of...
x[2]

# TODO: Guess! What is the result of...
x[3]

# ... You got it, right? (SELECT!)


# TODO: Guess! What is the result of...

x[-1]

# TODO: Guess! What is the result of...
x[-2]

# TODO: Guess! What is the result of...
x[-3]

# ... You got it, right? (DON'T SELECT!)


# TODO: Guess! What is the result of...

x[c(1,2)]

# TODO: Reformulate "x[c(1,2)]" to get the same output. 
# Tipp: ":"

# TODO: Guess! What is the result of...
x[c(1,3,4)]

# ... You got it, right? (SELECT MULTIPLE!)

# TODO: Test yourself! Select all elements from x, but NOT the first and second
# element. Tip: Use "-" and "c()"


# Reformulating the statement to produce the desired output!
x[-(1:2)]

# ... You got it, right? (DON'T SELECT MULTIPLE!)







# Define a vector
x <- 1:



# Top tip!
#
x[!is.na(x)]


> source("commands.R")
For Windows Source is also available on the File menu. The function sink,
> sink("record.lis")
will divert all subsequent output from the console to an external file, record.lis. The command
> sink()
restores it to the console once again.






#
# Homework
#

########################################################################
#                                                                      #
# TODO: Revise our code! Move through each example again. Delete the   #
# unnecessary bits. Meticulously document the remaining code nuancely! #
#                                                                      #
########################################################################

# TODO: Write down 3 ways to assign c(1,2,3) to the name "x"
# What is your prefered way to do it? Why?

# TODO: What is the difference between the function "*" and prod()? 
# Explain with an example! Tip: Read the help sites!

# TODO: Explore the use of log, exp, sin, cos, tan, sqrt!

# TODO: What does prod() do if you feed it a logical vector?
# Give an example!

# TODO: What's the difference between "I am a Nerd" and c("I", "am", "a",
# "Nerd") in R?

# TODO: What is the difference between ":" and seq()? Give an example.

# TODO: What is vector indexing in R; descibe it in your own words!


