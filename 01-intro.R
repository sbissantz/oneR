#
# 01-intro.R
#

#
# Start & quit  
#

# I guess R is running?! No? Shame on you.
# If you're using RStudo R is runinng within the IDE
# If your using a Terminal, type "R" to start it

# Quit
q()
# To remove the closing question!
q(save="no")


#
# Help! I need somebody, Help...! -- Beatles
#

# Listen to that song?!
# 1. Remove the comment symbol '#' (pound sign)
# 2. Run the function 'browseURL()'

# browseURL("https://www.youtube.com/watch?v=2Q_ZzBGPdqE")

#
# What did we already learn about R?
# 

# 1. Comment things using the pound sign ('#') -- vice versa!
# 2. Functions are always suffixed by parantheses '()'.
# Try to avoid them...
browseURL                              # WTF?! 


#
# What does browseURL do?
# 
# You experienced it! 
# But that's not always possible, so we need learn about help functions!

# help() & '?'
#

# Help on help!
help("?")
?help

# Help on a function
help("browseURL")

# TODO: Compare! How do they differ? 
help("browseURL")
?browseURL

# Get help on special symbols
help("?") 
?"?"
?help

# Hold on, each function needs '()', don't they?
?("?")
?("browseURL")

# TODO: Which one do you prefere, why? 
# Discuss with you neighbor!
# t: 2 min

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

# help.search() & '??' 
#

# 1. Open the help page and read!
?help.search

# 2. Try it out!
??browseURL
help.search("browseURL")
# Fuzzy matching..FTW!

# apropos()
#

# 1. Open the help page and read!
?apropos

# 2. Extend
??apropos

# 3. Try it!
apropos("browse")

# TODO: Comparte your results against:
??browse

# TODO: Which one do you prefere, why? 
# Discuss with you neighbor!
# t: 2 min

# example()
#
example(browseURL)
example("browseURL")
# 
# brwURL> ## Not run: 
# brwURL> ##D ## for KDE users who want to open files in a new tab
# brwURL> ##D options(browser = "kfmclient newTab")
# brwURL> ##D 
# brwURL> ##D browseURL("https://www.r-project.org")
# brwURL> ##D 
# brwURL> ##D ## On Windows-only, something like
# brwURL> ##D browseURL("file://d:/R/R-2.5.1/doc/html/index.html",
# brwURL> ##D           browser = "C:/Program Files/Mozilla Firefox/firefox.exe")
# brwURL> ## End(Not run)
# brwURL> 
# brwURL> 
# NULL

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

#
# Case-sensitivity
#

# TODO: What is case sensitivity? 
# Do a google search and explain it! (5 min)

#
# Objects
#
# The entities that R creates and manipulates... 
objects()
ls()
# character(0)
# None! Damn, let's create on!

# Creating objects!
#
x <- 1
y = 1                                  # NO! Why not? 
1 -> Z                                 # NO! Why not?

# What does "->"? Heeeelp!
?"->"

# Important: 2-in-1: Create "1" & assign "1" to "x"
assign("b", 5)

# Show me!
#
objects()
ls()

# Remove! 
#
rm(x)
rm(y,Z)
ls()

# Trick!
#
x <- y <- Z <- 1                       # NO! Why not?
rm(list=ls())
# rm(list=ls()) ; gc(reset=TRUE)
objects()

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################



#
# R? A calculator?
#







#
# Vectors!
#

# Numeric vector
#
x <- 1
x

# What does c() do?

# Workflow
# 1. Check man page, examples, vignettes
?c
example("c")

# Happy? No?
# 2. Check google!


# Let's try it!
X <- c(1,2,3)
X

# Character vector
#
a <- "Hihihihi"
a

X <- c("I", "am", "a", "Nerd")
X

# Trick
(a <- "Hihihihi")



> source("commands.R")
For Windows Source is also available on the File menu. The function sink,
> sink("record.lis")
will divert all subsequent output from the console to an external file, record.lis. The command
> sink()
restores it to the console once again.


#
# Asking questions on stackoverflow
#












#
# Homework
#

# TODO: What do we mean by saying "R is case sensitve"? Give two examples.

# TODO: How can case sensitivity bias your search query? Compare!
?browseURL
?BrowseURL

# TODO: What does the following function?
?RSiteSearch


# TODO: What does "]]" do? 
# (1) Read the help page & (2) Document your result!

# TODO: Start an online search for browseURL()
# Check if you did choose:
# https://search.r-project.org/R/refmans/utils/html/browseURL.html

# TODO: What does the browseVignettes function?
# See the man page, examples, ... internet

# TODO: What does the 'elisr' package in R?
# Use an appropriate function (you previously learned) to find out!
# Note: If you are on the online page, select "HTML". 

# TODO: What does the browseVignettes function?
# Refine your definition if needed!

# TODO: When would you choose "apropos()" and "??" versus "?"
# Two search scenarios!

# TODO: Oh no! What went wrong?!
# See the output and modify the following functions to get help! 
browseURL








