```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified column names are missing.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols <- c("a", "d", "c")
subset_df <- df[, cols]
print(subset_df)
```