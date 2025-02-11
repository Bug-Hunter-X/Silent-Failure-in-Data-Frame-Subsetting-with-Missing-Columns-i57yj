```r
# This improved code uses more robust subsetting methods to handle missing columns gracefully.
# It checks for the existence of each column before subsetting.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols <- c("a", "d", "c")

# Check if all columns exist before subsetting
if (all(cols %in% names(df))) {
  subset_df <- df[, cols]
} else {
  missing_cols <- setdiff(cols, names(df))
  warning(paste("Columns", paste(missing_cols, collapse = ", "), "are missing."))
  # Choose an appropriate action here (e.g., use only existing columns)
  subset_df <- df[, intersect(cols, names(df))]
}

print(subset_df)
```