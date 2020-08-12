# Sorting a presence value as a factor in a new columns

df<- data.frame(japanese = c(1,0,0), kiwi=c(0,1,2))

df

df$ethnicity <- ifelse(df$japanese == 1, "japanese", ifelse(df$kiwi == 1, "kiwi", "not declared"))

df$ethnicity
