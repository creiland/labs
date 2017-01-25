#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
install.packages("MASS")
require(MASS)
require(dplyr)

#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment
cbt_positive <- filter(anorexia, Treat == "CBT") %>% filter(Postwt > Prewt)

#       2. the number of patients who recieved a treatment who either did not respond or responded negatively to treatment
cbt_negative <- filter(anorexia, Treat == "CBT") %>% filter(Postwt <= Prewt)

#       3. the number of patients who were in the control group who responded positively to treatment
cont_positive <- filter(anorexia, Treat == "Cont") %>% filter(Postwt > Prewt)

#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment
cont_negative <- filter(anorexia, Treat == "Cont") %>% filter(Postwt <= Prewt)

#Such that you end up with a 2 by 2 table
cbt <- c(nrow(cbt_positive), nrow(cbt_negative))
cont <- c(nrow(cont_positive), nrow(cont_negative))
agg <- data.frame(cbt, cont)
rownames(agg) <- c("Positive Response", "Negative Response")
colnames(agg) <- c("CBT", "Control")

#What kind of analysis appropriate to perform on a study like this?
##Since it is a case control study, you would perform an odds ratio analysis.



#Perform the appropriate choice on the dataset
odds_ratio <- (agg[1,1] / agg[1,2])/(agg[2,1] / agg[2,2])



#What does your result tell you?
##The odds of an anorexia patient




#Write a function that allows you to perform your analysis based on what kind of treatment you want 
#that returns the appropriate calculation





#Which treatment worked better?





