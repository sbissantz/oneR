#
# Summarize!
#

# summary()
# 
?summary

# TODO: Explore!
summary(iris)
# Document!

# TODO: Explore!
summary(iris$Sepal.Length)
# Document!

# TODO: Explore!
summary(iris$Species)
# Document!

# TODO: Explore!
table(iris$Species)
# Document!

# TODO: Explore!
summary(iris$Sepal.Length)
# Document!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# fivenum()
#
?fivenum

# TODO: Explore!
fivenum(iris$Sepal.Length)
# Document!

# TODO: Explore!
fivenum(iris$Species)
# Document!

# plot()
# 

plot(iris)

# table()
#
# Frequencies!
table(iris$Species)


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# Mode
#
# Oh no!
mode(x)
# What went wrong?
?mode

# Solution!
table(iris$Species)
freq_species <- table(iris$Species)
which(freq_species == max(freq_species))

# Solution!
which.max(table(iris$Species)) 

# Note: That's only the POSITION of the maximum!
pos_max <- which.max(freq_species) 
freq_species[pos_max]

# Advanced: calc_mode()!
# 
# You don't need to know that!
###################################################
calc_mode <- function(x) {                        #
    cond <- is.factor(x) ; if(cond) x <- table(x) #
    max_pos <- which.max(x)                       #
    x[max_pos]                                    #
}                                                 #
# Repeat!                                         #
lapply(iris[,1:4], calc_mode)                     #
###################################################
# Note: But feel free to use it!

# median()
#
# Oh no! What went wrong?
median(iris$Species)

median(iris$Sepal.Length)

# Repeat!
#
median(iris$Sepal.Length)
median(iris$Sepal.Width)
median(iris$Petal.Width)
median(iris$Petal.Length)
# ...

# Coding style!
lapply(iris[,1:4], median)
# Why 1:4? 

# mean()
#

# TODO: Repeat for "mean"!

# quantile()
#

# TODO: Repeat for "quantile"!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# ...(na.rm=TRUE)
#

# You don't need to know that!
#############################################
d <- iris                                   #
# Modify!                                   #
N <- nrow(iris)                             #
smpl <- sample(seq(N), N/2, replace=TRUE)   #
d[smpl,] <- NA                              #
#############################################

# 2nd look!
# 

# TODO: Inspect "d". What happened?

# Inspect 
#

# TODO: Experiment
# 
median(d$Sepal.Length)
mean(d$Sepal.Length)
# Document

# TODO: Read about na.rm=TRUE
#
?mean
?median

# TODO: Add na.rm=TRUE as an argument to your code!

# Additional
#
# Repeat!
lapply(iris[,1:4], median, na.rm=TRUE)
# Repeat!
lapply(iris[,1:4], mean, na.rm=TRUE)
# Repeat!
lapply(iris[,1:4], calc_mode, na.rm=TRUE)

# sd() 
#
?sd

# TODO: Calculate! Sd for Petal.Length

# TODO: Calculate! Use "d" instead of iris!

# TODO: Use lapply() to apply "sd()" to all columns!
# Note: Caution! Species...

# TODO: Calculate! Use "d" instead of iris!

# range()
#
?range
range(iris$Sepal.Length)

#TODO: Calculate! Use "d" instead of iris!

# Oh no!
range(iris$Species)

# TODO: Calculate! Use "d" instead of iris!

# Coding style!
sapply(iris[,1:4], range)


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


# rowMeans()
#
# TODO: Experiment
rowMeans(iris[,1:4])
# Document! 

# rowSums()
#
# TODO: Experiment
rowSums(iris)
# Document! 

# colMeans()
#

# TODO: Calculate the column means for the iris data!

# colSums()
#

# TODO: Calculate the column sums for the iris data!


# Treasure box!
#########################################
#                                       #
# TODO: Keep your favourite R commands! #
#                                       #  
#########################################


#
# Local Scope!
#
? with

# TODO: Experiment
with(iris[,1:4], mean(Sepal.Length))
# Document! 

#
# Recoding!
#

# within()
#
?within

# TODO: Experiment
within(iris, {Sepal.Length <- Sepal.Length * 100})
# Document! 

# TODO: Compare!
#

# transform()
#
transform(iris, Sepal.Length=-Sepal.Length)
transform(iris, Sepal.Length=Sepal.Length*100)

# Recode!
#
# 3=1, 2=2, 1=3
4 - as.numeric(iris$Species)

# Requires numeric data!
iris$species_no <- as.numeric(iris$Species)
# Combine!
(iris <- within(iris, {species_no2 <- 4-species_no}))

# Note: You dont need an external function, e.g. dplyr::recode()!


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
# TODO: Easy! Repeat every function you learned today with "cars".
#
# TODO: Document your code! I am the incompoop now! Explain it to me, so I
# understand what you did! 
#
# Note: That's important reproducibility practice! If you share your code and
# data, others should be able to understand, what you did!
#
# TODO: Run...
#############################################
d <- mtcars                                 #
# Modify!                                   #
N <- nrow(mtcars)                           #
smpl <- sample(seq(N), N/2, replace=TRUE)   #
d[smpl,] <- NA                              #
#############################################
#
# TODO: Do a descriptive analysis for the adapted data set "d". Keep just the
# necessary code! Nothing more. Interpret your results.

# TODO: Visit R Studio! Go to "Tools > Global Options > Code > Diagnostics"
# then select "Provide R Style diagnostics (e.g. whitespace)". Click on "Apply"
# to confirm. Now your code is covered with little "i"s. Read them. Apply all
# suggestions to shape your code! Please hand in only the shaped version of
# your code! 


