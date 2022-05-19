#
# Simulated data
#
set.seed(123)
N <- 1e4
male_indicator <- c(0,1)
male <- sample(male_indicator, N, replace=TRUE)
sex <- male + 1
age <- runif(N, min=1, 100)
education_index <- abs(rnorm(N, 3, 2))
education <- ifelse(education_index > 4, 2, ceiling(education_index))
religion <-  runif(N, 0, 5)
maritial_index <- abs(rnorm(N, 2, 2))
maritial_status <- ifelse(education_index > 4, 2, ceiling(education_index))
income <- round(abs(rnorm(N, 2e4, 2e4)), digits=2)
data <- data.frame(male, sex, age, education, religion, maritial_status, income)
pos_data <- which(ls() == "data")
rm(list=ls()[-pos_data])
comment(data) <-  c("male (0: no, 1: yes)",
                    "sex (1: female, 2: female)",
                    "age (in years)",
                    "education (1: Hauptschule, 2: Realschule, 3: Gymnasium 4. Bachelor, 4. Master",
                    "religion (1: christianity, 2: islam, 3: hinduism, 4: buddhism, 4: other 5:none",
                    "maritial_status (1: married, 2: single, 3: divorced, 4: widowed")
