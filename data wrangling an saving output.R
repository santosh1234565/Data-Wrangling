library(dplyr)
library(tidyr)
library(readr)

library(readxl)
df <- read_xlsx(file.choose())
df1<-df[-3:-9 ]
df1

mean(df2$pH1998, na.omit= T)
df2 <- df1[-6:-8]
na.omit(df2)
df2

#gather and spread for data manipulation
df3 <- df2 %>% gather("Year", "Soil pH", pH1998, pH2008, pH2015)
df6 <- df3 %>% spread("Year", "Soil pH")

# subsetting
filter(df4, Year == "pH2015")
slice(df4,1:15)
#adding a new column
mutate(df4, `H ion` = `Soil pH`^10)

 # renaming the column
df4 <- rename(df3, Series = `Soil Series`)
df4

arrange(df4, `Soil pH`) # by default ascending order
arrange(df4, desc(`Soil pH`))#desc for descending order
#writing in diff format

write.csv(df3, file = "gathertrial.csv")

write_excel_csv(df3, "gathers.xlsx")
write_tsv(df4, "Gathers.txt")

sink(file = "gather1.doc")
df4 %>% filter(Year == 'pH2015' & `Soil pH` >= 5)
sink()



