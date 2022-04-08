#
# Projects
#

# Store your R projects in a separate folder -- a "WD" 

# Set your working directory!
#
?setwd

# Get your working directory!
#
?getwd

# Trick
#
# ?file.choose
setwd(file.choose())

# What does dir()?
#

# Try it!
# ?dir

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

#
# Installing packages
#

# The R-universe!
?install.packages

# install the MASS package
install.packages("MASS")

# Remove the MASS package
remove.packages("MASS")

?update.packages
update.packages("MASS")

# Install multiple packages
#
pkgs <- c("MASS", "psych")
install.packages(pkgs)

# Remove multiple packages
#
remove.packages(c("MASS", "psych"))

# You can get my package on CRAN, too!
#
install.packages("elisr")
# Cite it!
citation("elisr")

# Cite any package!
#
citation("psych")
# Should be always part of your paper, if you use R!
citation("base")

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

#
# Reading in data 
#

# Internal data sets
#
# ?iris
data("iris")
data("mtcars")
data("USArrests")

# See all available data sets
data()


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
dat1 <- read.table(file.choose(), header=TRUE, na.strings="-99")

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

str(iris)
# Documentation!

# Tip: Look at the man pages, too!

View(iris)
# Documentation!

head(iris)
# Documentation!

head(iris, n=10)
# Documentation!

tail(iris)
# Documentation!

summary(iris)
# Documentation!

colnames(iris)
# Documentation!

names(iris)
# Documentation!

rownames(iris)
# Documentation!

dimnames(iris)
# Documentation!

length(iris)
# Documentation!

ncol(iris)
NCOL(iris)
# Documentation!

nrow(iris)
NROW(iris)
# Documentation!

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

# What is the result of?
# TODO: Inspect the data to find out!
colnames(iris) <- paste0("V",1:5)
# Documentation!

# What is the result of?
# TODO: Inspect the data to find out!
colnames(iris) <- c("a", "b", "c", "d", "e") 
# Documentation!

# TODO: Change the column names of iris to 
# c("a", "b", "c", "d", "e") 

# TODO: Change the ROW names of iris to 
# c("a", "b", "c", "d", "e") 
# What's the problem?

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
######################################### 

#
# Get inside a data set!
#

data(iris)
d <- iris

# TODO: What does...
d$Sepal.Length
d$Sepal.Width
d$Species

# TODO: Compare the result to... 
d[["Sepal.Length"]]

# TODO: What is the difference between... 
d["Sepal.Length"]
d[["Sepal.Length"]]

# TODO: What is the difference between... 
d[1]
d[[1]]

# TODO: Read the "[[]]" manpage
?"[["

# TODO: Match the snippets together, that yield the same output 
# ...use the following categories!
#
# Tip: Use "class()" to check your result!

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


# Matrix indexing
#

#  TODO: Play around with the following funcitons!
# Document your results!
#

d[1,1]
d[1,-1]
d[-1,-1]

d[,]
d[1,]
d[2,]
d[,1]
d[,2]

# Character indexing
#
d[,"Sepal.Length"]

# What happens inside the machinery?
(vars <- c("Sepal.Length", "Petal.Width"))
d[,vars]

# What happens inside the machinery?
(vars <- c(1,3))
d[,vars]

# What happens inside the machinery?
(vars <- c(1:3))
d[,vars]

# Logical indexing
#

# Neat!
#
# 1.
is.na(d$Sepal.Length)
# 2.
!is.na(d$Sepal.Length)
# 3.
pat <- !is.na(d$Sepal.Length)
# 4.
d[pat,]

# What is the difference between
# is.na() and complete.cases() ?
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



# load a Workspace




# load a Single R-Object


library(MASS)
data(survey)

# install the psych package
# What does the describe function?
# use the internal iris data to find out!




