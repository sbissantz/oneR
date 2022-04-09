#
# Projects!
#

# Store your R projects in a separate folder -- a "WD" 

# Get your WD!
#
?getwd

# Set your WD!
#
?setwd

# TODO: Set your working directory!

# Trick
#
?file.choose
setwd( file.choose() )

# Coding style!
path <- file.choose()
setwd(path)

#
# TODO: RStudio projects (.Rproj)
#

# dir()?
#
?dir

# TODO: Try it!
dir()

#
# Once in a while!
#

# .libPaths()
#
?.libPaths

# TODO: Try it!

# search()
#
?search

# TODO: Try it!

# searchpaths()
#
?searchpaths

# TODO: Try it!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


#
# Install! 
#

# Law of baseR: As long as you can do it in baseR -- you do not need to load an
# external package! But...

# install.packages()
#
?install.packages

# install the MASS package
install.packages("MASS")

# TODO: install "psych"! 

# remove.packages()
#
?remove.packages

# Remove the MASS package
remove.packages("MASS")

# TODO: remove "psych"
#

# update.packages()
#
?update.packages

# Update "MASS"!
update.packages("MASS")
# Tip: You cannot update what isn't there..

# Install multiple packages
#

# Coding style
pkgs <- c("MASS", "psych")
install.packages(pkgs)

# library()
#
?library

# TODO: Load 6 attach "MASS"!

# (loadNamespace()) 
#
# ?loadNamespace

# Fancy!
pkgs <- c("MASS", "psych")
lapply(pkgs, library, character.only=TRUE)

# Remove multiple packages
#
remove.packages(c("MASS", "psych"))

# You can get my package on CRAN, too!
#
install.packages("elisr")

#
# Once in a while!
#

# citation()
#
?citation

# Cite it!
citation("elisr")

# Note: Should be always in your, if you used R!
citation("base")

# TODO: Cite "psych"!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


#
# Read in! 
#

# Internal data sets!
#

# data()
#
?data
data("iris")
iris

# TODO: Load "USArrests"

# TODO: Load "mtcars"

# See all available data sets
data()

# TODO: Load a data set you like!

# External data sets
#

# TODO: What does read.table()?
#

# please, see:
args("read.table")
# TODO: What does "header" argument?
# TODO: What does "sep" argument?
# TODO: What does "dec" argument?
# TODO: What does "quote" argument?
# TODO: What does "na.strings")
# Note: quote="\"'" the most common version! 

# CODE & Description goes here!

# Helpers
#####################
# space bar: (" ")  #
# tabulator: ("\t") #  
# comma: (",")      #
# semicolon: (";")  #
#####################

# Load text files from URL!
#

# browse("http://www.ats.ucla.edu/stat/examples/ara/angell.txt")
read.table("http://www.ats.ucla.edu/stat/examples/ara/angell.txt")

# Coding style!
#
url <- "http://www.ats.ucla.edu/stat/examples/ara/angell.txt"
# browseURL(url)
dat <- read.table(url)

# Load CSV data from URL!
# (CSV: Comma-Separated Values)
#
url <- "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
# browseURL(url)
dat1 <- read.csv(url)
# TODO: What do they have incommon?
dat2 <- read.table(url, sep=",")

# Load files from for computer
#
(dat1 <- read.table("Daten1.dat", header=TRUE, na.strings="-99"))

# Tip: Look at the file before reading it! Use an editor.

# Trick
path <- file.choose()
dat2 <- read.table(path, header=TRUE, na.strings="-99")

# TODO: What is the difference between
# (a) read.table()
# (b) read.csv()
# (c) read.csv2()
# (c) read.delim() 
# ?

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

# TODO: Recap! Remove all of your objects from your workspace!
#

# Inspecting your data!
#
# TODO: load the internal data set "iris".

# Noodle around with the following functions

# TODO: Experimt!
str(iris)
# Document!

# Tip: Look at the man pages, too!

# TODO: Experimt!
View(iris)
# Document!

# TODO: Experimt!
head(iris)
# Document!

# TODO: Experimt!
head(iris, n=10)
# Document!

# TODO: Experimt!
tail(iris)
# Document!

# TODO: Experimt!
summary(iris)
# Document!

# TODO: Experimt!
colnames(iris)
# Document!

# TODO: Experimt!
names(iris)
# Document!

# TODO: Experimt!
rownames(iris)
# Document!

# TODO: Experimt!
dimnames(iris)
# Document!

# TODO: Experimt!
length(iris)
# Document!

# TODO: Experimt!
ncol(iris)
NCOL(iris)
# Document!

# TODO: Experimt!
nrow(iris)
NROW(iris)
# Document!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# TODO: Experiment!
?colnames
colnames(iris) <- paste0("V",1:5)
iris
# Document!

# TODO: Experiment!
?colnames
colnames(iris) <- c("a", "b", "c", "d", "e") 
# Document!

# TODO: Change the column names of iris to 
# c("a", "b", "c", "d", "e") 

# TODO: Change the ROW names of iris to 
# c("a", "b", "c", "d", "e") 
# What's the problem?

# TODO: What is the difference between..
# (a) colnames(iris)
# (b) colnames(iris) <- paste0("V",1:5)

# TODO: Change iris row names!
#
# TiP:
nrow(iris)


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
######################################### 


#
# Vector Index!
#

data(iris) ; d <- iris

# TODO: Experiment!
d$Sepal.Length
d$Sepal.Width
d$Species
# Document!

# TODO: Compare! 
d$Sepal.Length
d[["Sepal.Length"]]
# Document!

# TODO: Compare!
d["Sepal.Length"]
d[["Sepal.Length"]]
# Document!

# TODO: Compare!
d[1]
d[[1]]
# Document!

# TODO: Read! ("[[]]" manual)
?"[["

# TODO: Match the snippets, that yield the same output!
# ...use the following categories!
#
# Tip: Use "class()" to check your result!
?class

# one-element sub-data set
#
# 1.

# 2.

# 3.

# A vector of elements
#
# 1.

# 2.

# 3.

#
# Matrix index!
#

#  TODO: Play around with the following funcitons!
# Document your results!
#

# TODO: Experiment!
d[1,1]
d[1,-1]
d[-1,-1]
# Document!

# TODO: Experiment!
d[,]
d[1,]
d[2,]
d[,1]
d[,2]
# Document!


#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
######################################### 

#
# Character index!
#

# TODO: Experiment!
d[,"Sepal.Length"]
# Document!

# TODO: What happens inside the machinery?
(vars <- c("Sepal.Length", "Petal.Width"))
d[,vars]
# Document!

# Explain!
(vars <- c(1,3))
d[,vars]
# Document!

# Explain!
(vars <- c(1:3))
d[,vars]
# Document!


#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
######################################### 


#
# Logical indexing
#

# TODO: Experiment!
d[,TRUE]
d[TRUE,TRUE]
d[,c(TRUE,FALSE)]
d[c(TRUE,FALSE), ]
# Document!

# Coding style!
#
cond <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)
d[,cond]

# TODO: Explain
cond <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)
d[,cond]
# Document!

# is.na()
#

# 1.
is.na(d$Sepal.Length)
# 2.
!is.na(d$Sepal.Length)
# 3.
pat <- !is.na(d$Sepal.Length)
# 4.
d[pat,]

# TODO: Experiment!
#
d[pat, cond]
# Document!

#
# Once in a while!
#

# complete.cases()
#
?complete.cases

# TODO: Compare!
# is.na() vs. complete.cases()?
#
complete.cases(d$Sepal.Length)
cc <- complete.cases(d$Sepal.Length)
d[pat,]


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
######################################### 


#
# Homework
# 

###############################################################################
# TODO: Run the code again. Document all the functions to your understanding! #
# More is more in this case. When you start documenting, think of your future #
# self as a nincompoop, knowing nothing about R. Document the hell out of your#
# brain. Add links, comments, etc. That's what I do when programming new      #
# stuff. The strategy may seem to your present self as a waste of time. But   #
# trust me, it will save your future self a lot of time. I had to learn this  #
# the hard way!                                                               #
###############################################################################


# TODO: DIY! In RStudio go to "Import Dataset" and import your data!
# Choose 3 different data set we used in the lecture!

# TODO: Rpackage data sets
# install 2 of the following packages...
# babynames
# fueleconomy
# nasaweather
# nycflights13
# usdanutrients
# Load all of their internal data sets and store them in
# different objects!

# TODO: What is the difference?
# Inspect the data sets to find out!
(dat1 <- read.table("Daten1.dat", header=TRUE))
(dat2 <- read.table("Daten1.dat", header=TRUE, na.strings="-99"))

# TODO: What is the difference?
# Inspect the data sets to find out!
dat1 <- read.table("Daten_Befragung_2020.csv", header=TRUE, sep="\t", dec=".")
dat2 <- read.delim2("Daten_Befragung_2020.csv")

# TODO: What does... 
?readRDS
?saveRDS
# Read the help site or do a google search!
# Document your result and code 2 examples. Use mtcars & iris!

# TODO: What does... 
?save.image
?load
# Read the help site or do a google search!
# Document your result and code 2 examples. Use mtcars & iris!

# TODO: Install the psych package!
# TODO: What does the describe function in psych?
# TODO: Use iris to find out!

