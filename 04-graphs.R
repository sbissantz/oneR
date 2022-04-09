# Prepare!
#
data(iris)

# plot()
#
?plot

# Index plots
#
plot(iris$Sepal.Length)

# TODO: Draw an index plot. Use "Petal Width"!

# Scatter plot
#
plot(iris$Petal.Length, iris$Sepal.Length)

# TODO: Draw an scatter plot. Use "Petal Width" and "Sepal Width"!

# hist()
#
?hist
hist(iris$Sepal.Length)

# TODO: Draw a histogram. Use "Petal Width"!

# barplot() 
#
?barplot
table(iris$Species)
barplot( table(iris$Species) )

# Coding style!
species_freq <- table(iris$Species)
barplot( species_freq )

# Piecharts
#
pie( table(iris$Species) )

# Coding style!
species_freq <- table(iris$Species)
pie( species_freq )

# boxplot() 
#
boxplot(iris$Species)
boxplot(iris$Species, iris$Sepal.Length)


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# plot() 2.0
#
?plot
?class

# TODO: Play around with plot! Match the functions you used before with
# the "plot" version!
#

# class(iris)
plot(iris)
# Document!

# class(iris$Sepal.Length)
plot(iris$Sepal.Length)
# Document!

# class(iris$Petal) ; class(iris$Sepal.Length)
plot(iris$Petal.Length, iris$Sepal.Length)
# Document!

# class(iris$Species)
plot(iris$Species)
# Document!

# class(table(iris$Species))
plot(table(iris$Species))
# Document!

# Directionality matters
# plot(iris$Species, iris$Sepal.Length)
plot(iris$Sepal.Length, iris$Species)
# Document!

# TODO: uncomment class(), look at the classes of each object. 
# What does plot conditional on each class? Why?


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# Rising graphs
#

# Get a list of graphic parameter 
?par
par()

# Get a list of colors 
?colors
colors()

# Index plots
#
plot(iris$Sepal.Length)

# TODO: Vary the number!
plot(iris$Sepal.Length, pch=20)

# Colors!
# TODO: Vary the colors!

plot(iris$Sepal.Length, pch=20, col="steelblue")

# Headings
#
plot(iris$Sepal.Length, pch=20, col="steelblue", main="Test123")

# Labels
#
# xlab
plot(iris$Sepal.Length, pch=20, col="steelblue", main="Test123", 
     xlab="x_lab", ylab="ylab")
# ylab
plot(iris$Sepal.Length, pch=20, col="steelblue", main="Test123", 
     xlab="x_lab", ylab="ylab")

# TODO: Play around!
#
# type "p"
plot(iris$Sepal.Length, pch=20, col="steelblue", main="Test123", 
     xlab="x_lab", ylab="ylab", type="p")
# type "l"
plot(iris$Sepal.Length, pch=20, col="steelblue", main="Test123", 
     xlab="x_lab", ylab="ylab", type="l")
# type "b"
plot(iris$Sepal.Length, pch=20, col="steelblue", main="Test123", 
     xlab="x_lab", ylab="y_lab", type="b")


# Treasure box!
##########################################
#                                        #
# TODO: Keep your favourite R arguments! #
#                                        #  
##########################################


# TODO: Play around with all parameters to create an informative graph!
# Use ?iris to get alle necessary info on the variable "Sepal.Length"
hist(iris$Sepal.Width, breaks=30,
      main=NULL,
      xlim=c(1,7), ylim=c(0,40),
      xlab="Reappraisal", ylab="Häufigkeit",
      col="lightblue",
      right=FALSE)

# TODO: Create an informative barplot! Use "iris$Species" 
# Don't forget table()!

# TODO: Create an informative index plot! Use "iris$Sepa.Width"

#
# Low-level plots
#

# abline()
#
?abline
plot(iris$Petal.Length, iris$Sepal.Length)
abline(h=6, lwd=2)
abline(v=6, lty=2)
abline(a=0, b=3, lwd=3, col="red")

plot(iris$Petal.Length, iris$Sepal.Length)
text(5,5, labels = "text")

# text() 
#
?text
# Example: Advanced (3-Dimensions)
plot(iris$Petal.Length, iris$Sepal.Length, type="n")
abbrev_species <- abbreviate(iris$Species, minlength = 3)
text(iris$Petal.Length,iris$Sepal.Length, labels = abbrev_species)

plot(iris$Petal.Length, iris$Sepal.Length)
text(5,5, labels = "text")

# grid()
#
?grid
plot(iris$Petal.Length, iris$Sepal.Length, pch=21, col="yellow")
grid(3,3, col="red", lwd=2)

# box()
#
?box
plot(iris$Petal.Length, iris$Sepal.Length)
box(lty=2, lwd=5, col="yellow")
box(lwd=10, col="red", which="figure")

# Onion-style!
#
?lines
?points
plot(NULL, xlim=c(3,10), ylim=c(0,3))
# Layer!
points(iris$Sepal.Length, iris$Petal.Width)
# Layer!
lines(iris$Sepal.Length, iris$Petal.Width, lty=2, lwd=0.5)
# Layer!
abbrev_species <- abbreviate(iris$Species, minlength = 3)
abbrev_species <- abbreviate(iris$Species, minlength = 3)
# Layer!
text(iris$Sepal.Length + 0.1, iris$Petal.Width + 0.1, labels = abbrev_species)

# Important: Graphs grow! They increase in complexity. Mastering them means
# to add layer by layer -- until the desired result is reached
#

# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################

# Save! 
#

# .png
# Note: Stores it in the current WD! See: getwd(9)
png("beatiful_graph", width=400, height=500)
plot(iris$Sepal.Length, pch=20)
# Photo finish!
dev.off()

# .jpeg
# Note: Stores it in the current WD! See: getwd(9)
jpeg("Boxplot_Untergruppen.jpg", width=400, height=500)
plot(iris$Sepal.Length, pch=20)
# Photo finish!
dev.off()

# General! 
# Note: Stores it in "~/Desktop/boxplot.png"
dev.print(device=png, filename="~/Desktop/boxplot.png", width=400, height=500)

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
#
# TODO: Load R's internal data set "cars"
#
# TODO: Load R's internal data set "cars"
#
# TODO: Familiarize yourself with the data set!
#
# TODO: Create a boxplot, a scatter plot, and index plots from the data!
#
# TODO: Use the appropriate arguments to make the graph informative
#
# TODO: Save the graph as .png
#
# TODO: Send the graph to your neighbour!
#
# TODO: Use data() and select a data set of choice!
# Note: Use a different one than your fellow!
#
# TODO: Repeat the previous exercise!
#
# TODO: Send your buddy the code & the graph via mail! 
#
# TODO: Stick the whole data set in pairs() or use plot(), what is the result?

