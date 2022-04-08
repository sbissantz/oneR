
data(iris)
d <- iris

#
#

# Frequency tables
#
table(d$Species) 

#
#





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

