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

# Loading .Rda files
#








##### Übungsaufgabe 3.1 #####

# Datensatz öffnen
load("Datensatz_nach_03c.rda") # Objektname: daten_red

# berufswunsch = Variable DE01
# table(daten_red$DE01) # Häufigkeitstabelle

# Konvertierung in einen Faktor (vorher als integer erkannt)
daten_red$DE01.f <- factor(daten_red$DE01,
                           levels=1:5, # oder c(1,2,3,4,5) statt 1:5
                           labels=c("klinische Psychologie",
                                    "pädagogische Psychologie",
                                    "Wirtschaftspsychologie",
                                    "Forschung",
                                    "sonstiges"))

# Konvertierung überprüfen
str(daten_red$DE01.f)


# table(daten_red$DE01.f) # Häufigkeitstabelle



##### Übungsaufgabe 3.2 #####

# Datensatz öffnen
load("Datensatz_für_03c.rda") # Objektname: uebungsdaten

library(car)
uebungsdaten$ros_2.r <- recode(uebungsdaten$ros_2, '1=4; 2=3; 3=2; 4=1')
uebungsdaten$ros_5.r <- recode(uebungsdaten$ros_5, '1=4; 2=3; 3=2; 4=1')
uebungsdaten$ros_6.r <- recode(uebungsdaten$ros_6, '1=4; 2=3; 3=2; 4=1')
uebungsdaten$ros_8.r <- recode(uebungsdaten$ros_8, '1=4; 2=3; 3=2; 4=1')
uebungsdaten$ros_9.r <- recode(uebungsdaten$ros_9, '1=4; 2=3; 3=2; 4=1')

# oder

uebungsdaten$ros_2.r <- 5 - uebungsdaten$ros_2
uebungsdaten$ros_5.r <- 5 - uebungsdaten$ros_5
uebungsdaten$ros_6.r <- 5 - uebungsdaten$ros_6
uebungsdaten$ros_8.r <- 5 - uebungsdaten$ros_8
uebungsdaten$ros_9.r <- 5 - uebungsdaten$ros_9


# Skalenmittelwert bilden
uebungsdaten$SW_mean <- rowMeans(uebungsdaten[c("ros_1", "ros_2.r", "ros_3", "ros_4",
                                                "ros_5.r", "ros_6.r", "ros_7", "ros_8.r",
                                                "ros_9.r", "ros_10")], na.rm=TRUE)

# Daten anschauen
View(uebungsdaten[c("ros_1", "ros_2.r", "ros_3", "ros_4",
                    "ros_5.r", "ros_6.r", "ros_7", "ros_8.r",
                    "ros_9.r", "ros_10", "SW_mean")])
# (der Selbstwert wurde erst ab der Vpn 133 erhoben)



# Installing packages
#



# install.packages("MASS")
# #

# .xlsx

install.packages("xlsx")
library(xlsx)

data3 <- read.xlsx("Daten3.xlsx", sheetIndex=1)

# readxl::read_excel ergibt keinen Data Frame, sondern tbl_df


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




