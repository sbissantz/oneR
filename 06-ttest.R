

# .xlsx

install.packages("xlsx")
library(xlsx)

data3 <- read.xlsx("Daten3.xlsx", sheetIndex=1)

# readxl::read_excel ergibt keinen Data Frame, sondern tbl_df

# Exercise 1
#
# Simulate data 
######################################################
set.seed(123)                                        #
N <- 1e2                                             #
glas_ml <- c(rnorm(N, mean = 360, sd = 50))          #
######################################################

# TODO: Imagine we produce wine glasses. We want make sure, our wine glass are
# nearly equal sized. Thus we randomly draw a sample out of a bunch and check,
# wheter it is significantly lower than usual (ml=360).

# Ho: mu = 365ml 
t.test(glas_ml, mu = 370) 

# Your code!

# TODO: Change the value of "N" in the simulated data section systematically.
# Increase it by 10 units. What do you observe for the t-value, p-vale and the
# confidence interval.

# Visualize
#
N <- seq(2, 1000, 1)
calc_p <- function(N) { 
    set.seed(123)
    glas_ml <- c(rnorm(N,360, 50))
    t.test(glas_ml, mu = 370)$p.value
}                                      
res <- sapply(N, calc_p)
plot(res, pch=20, col="steelblue", cex=0.5, xlab="N (sample size)",
     ylab="p-Value")
abline(h=0.05, lty=2)















