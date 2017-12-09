#read the excel file
library(readxl)
> X373201_new <- read_excel("D:/AIT/Thesis/Rainfall_Discharge Data/Rainfall/Station_Year/373201_new.xlsx", 
                            +     col_types = c("date", "numeric"))
View(X373201_new)
#make variable from excel file
x = X373201_new
#Convert data type of rainfall coulmn
x$`Rainfall  `= as.double(as.character(x$`Rainfall  `))
#add 3 rows to create cumulative rainfall
movsum <- function(x,n=3){filter(x,rep(1,n), sides=1)}
x1 = movsum(x)
#create new variable with every 3rd row value
x.new = x[seq(1, nrow(df), 3), ]
x_new <- x1[c(rep(FALSE,2),TRUE),]
x_new

