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


# Low-level plots
#
?abline
?lines
?points

# TODO: Play around!
#
plot(iris$Petal.Length, iris$Sepal.Length)
abline(h=6, lwd=2)
abline(v=6, lty=2)
abline(a=0, b=3, lwd=3, col="red")

# TODO: Play around!
#
plot(iris$Petal.Length, iris$Sepal.Length)
text(5,5, labels = "text")

# Example: Advanced (3-Dimensions)
#
plot(iris$Petal.Length, iris$Sepal.Length, type="n")
abbrev_species <- abbreviate(iris$Species, minlength = 3)
text(iris$Petal.Length,iris$Sepal.Length, labels = abbrev_species)





#
#








# 5. Allgemeines zu Grafiken -----------------------------------

##### Grafiken speichen, z.B. als png:

# 1. Start des Speicherbefehls
png("Boxplot_Untergruppen.png", width=400, height=500)

# 2. Funktion, die die Grafik erzeugt
boxplot(daten$REAP ~ daten$geschl.f, ylim=c(1,7),
        main="Boxplots Reappraisal \n getrennt nach Geschlecht",
        xlab="Geschlecht", ylab="Reappraisal")

# 3. Ende des Speicherbefehls
dev.off()


