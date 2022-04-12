
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
glas_ml <- rnorm(N, mean = 360, sd = 50)             #
######################################################

# TODO: Imagine we produce wine glasses. We want make sure, our wine glass are
# nearly equal sized. Thus we randomly draw glasses out of a bunch and check,
# whether the glass is equal -- on average -- to the desired result (360ml).

# Ho: mu = 360ml
t.test(glas_ml, mu = 360)

# TODO: Interpret!

# TODO: Evaluate! Why may I found the following snippet 'better'?
t.test(glas_ml, mu = 360, alternative = "two.sided")

# TODO: Evaluate! Why may I found the following snippet even 'better'?
t.test(glas_ml, mu = 360, alternative = "two.sided", var.equal = FALSE)

# TODO: Change the value of "N" in the simulated data section systematically.
# Increase it by 10 units. What do you observe for the t-value, p-vale and the
# confidence interval.

# You don't need to understand the code!
################################################################################
# Calculate: ci=f(N)
#
N <- seq(2, 1e3, 1)
calc_p <- function(N) {
    set.seed(123)
    glas_ml <- rnorm(N,360, 50)
    t.test(glas_ml, mu = 375)$p.value
}
res <- sapply(N, calc_p)
# Visualize: p=f(N)
#
plot(res, pch=20, col="steelblue", cex=0.5, xlab="N (sample size)",
     ylab="p-Value")
abline(h=0.05, lty=2)

# Calculate: ci=f(N)
#
N <- seq(2, 1e2, 1)
calc_ci <- function(N) {
    set.seed(123)
    glas_ml <- rnorm(N,360, 50)
    t.test(glas_ml, mu = 375)$conf.int
}
res <- sapply(N, calc_ci)

# Visualize: ci=f(N)
#
plot(NULL, xlim=range(N), ylim=c(100,600), xlab="N (sample size)",
     ylab="CI (boundaries)")
visualize_ci <- function(N) {
  points(rep(N,2), c(res[1,N],res[2,N]), pch=20, cex=.5)
  lines(rep(N,2), c(res[1,N],res[2,N]), lty=2, col="steelblue")
}
lapply(N-1, visualize_ci)
################################################################################
# TODO: Try to interpret the plots! What can we learn from them?

# Simulate data
##################################
set.seed(123)                    #
N <- 10                          #
spendings <- rnorm(N, 25, 20)    #
##################################

# TODO: Do psychology students spend--on average--less than 25 Euro for a
# visit at the hairdresser?

t.test(spendings, alternative="less", mu=25, var.equal = FALSE)

# TODO: Interpret the result using the p-Value!

# TODO: Interpret the result using the CI!

# TODO: Do psychology students spend --on average-- more than 25 Euro for a
# visit at the hairdresser? Test the hypothesis!

# Simulate data
#####################################################
set.seed(123)                                       #
N <- 1e2                                            #
time <- rnorm(N, 120, 20)                           #
sex <- sample(c("male", "female"), N, replace=TRUE) #
df <- cbind.data.frame(time, sex)                   #
#####################################################

# TODO: Do male psychology students spend --on average-- less time (per week in
# minutes) at the gym then their female fellows? Assume equal variances!
# Crux: HO: mu_male > mu_female
# reformulate: mu_male - mu_female > 0
time_m <- df$time[df$sex == "male"]
# Alternative coding
time_f <- with(df, time[sex == "female"])

# Test!
t.test(time_m, time_f, alternative="less", mu=0, paired=FALSE, var.equal=TRUE)

# Note: We set "paired=FALSE", since we have two groups (male, female) and one
# feature (time at the gym)!

# TODO: Reflect! Why "alternative=less"?
# Tip: Which hypothesis you aim to reject/keep?

# TODO: What happens inside the machinery if you set "var.equal=FALSE"?
# Tip: Welch...

# TODO: Test for equal variances! Repeat. Does the result change? Why (not)??

# TODO: Do female psychology students spend --on avergae-- 30 minutes more time
# at the gym then their male fellows?
# Tip: Use the snippet above!
# HO: mu_male + 30 > mu_female
# equal to: mu_male - mu_female > 30(!)





