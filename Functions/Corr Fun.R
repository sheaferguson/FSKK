# Custom function to find correlation
# between SES and Reading Score

corr.fun <- function(data, idx)
{
  df <- data[idx, ]
  
  # Find the spearman correlation between
  # the 4th (SES) and 7th (Read Score) columns of dataset
  c(cor(df[, 4], df[, 7], method = 'spearman'))
}