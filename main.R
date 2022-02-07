hosp_df <- data.frame(
  freq = c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2),
  blood_p = c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176),
  first = c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1),
  second = c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1),
  final = c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
)

par(mfrow=c(1,1))
boxplot(hosp_df$blood_p ~ hosp_df$final, 
        main = "Blood Pressure and MD Final Decision",
        xlab = "MD Final Decision",
        ylab = "Blood Pressure")

par(mfrow=c(1,3))
hist(hosp_df$first, breaks = 2, main = "1st Assessment", ylim = c(0, 6))
hist(hosp_df$second, breaks = 2, main = "2nd Assessment")
hist(hosp_df$final, breaks = 2, main = "Final Assessment")
