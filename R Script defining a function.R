# A function to transform a dataset by calculating the mean of each numeric column

transform_dataset <- function(data) {
  # Check if the input is a dataframe
  if (!is.data.frame(data)) {
    stop("Input must be a dataframe.")
    
  # Select only the numeric columns from the dataset
  numeric_data <- data[sapply(data, is.numeric)]
  
  # Calculate the mean of each numeric column, ignoring NA values
  data_means <- sapply(numeric_data, mean, na.rm = TRUE)
  # Return the means as a named vector
  return(data_means)
  }
}
