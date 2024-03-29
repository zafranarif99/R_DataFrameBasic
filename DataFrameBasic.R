# In this instance, I will be creating a data frame where we have 5 people
# with their salary and start date of working in a company.
employeeData <- data.frame(
  employeeID = c(1:5), # We're creating a column of numbers from 1 to 5.
  employeeName = c("Goku","Naruto","Luffy","Ichigo","Leo"),
  employeeSalary = c(623549.49,51588.14,1119870.05,823789.0,84110703.25), 
  
  startDate = as.Date(c("2011-10-16", "2013-04-09", "2015-09-16", "2017-08-08",
                        "2023-04-19")),
  stringsAsFactors = FALSE
)
# To see the data frame, we can use print() function.		
print(employeeData) 

# Get the structure of the data frame.
str(employeeData)

# To see the summary of the data frame we have created above, we can use 
# summary() function.
print(summary(employeeData))  

# We can extract some data from our data frame. Here, I will show you
# how to extract the columns, rows, or a specific data.

# Extract Specific columns. For instance, let's extract the names and salaries.
extractColumn <- data.frame(employeeData$employeeName,employeeData$employeeSalary)
print(extractColumn)

# Extract some specific rows. Let's do the first three rows 
# and take all of the columns.
extractRow <- employeeData[1:3,]
print(extractRow)

# Extract 3rd and 5th row with 2nd and 4th column.
extractSpecific <- employeeData[c(3,5),c(2,4)]
print(extractSpecific)

# Let's say we need a new column to describe our data to be more specific.
# Let's add a new column.

# Add the "Department" column.
employeeData$Department <- c("Marketing","IT","Risk","Finance","Compliance")
ndata <- employeeData
print(ndata)

# Create another data frame
employeeNewData <- data.frame(
  employeeID = c(6:8), 
  employeeName = c("Gojo","Eren","Kawaki"),
  employeeSalary = c(987178.0,723252.25,63324.48), 
  startDate = as.Date(c("2009-02-21","2014-04-12","2019-07-03")),
  Department = c("Risk","Compliance","IT"),
  stringsAsFactors = FALSE
)

# We can combine the two data frames by using rbind() function.
combinedData <- rbind(employeeData,employeeNewData)
print(combinedData)

# Extract 1st and 8th row, and the 2nd to the 5th column of the combinedData.
result <- combinedData[c(1,8),c(2:5)]
print(result)

