library(tidyverse)
 
# Computer-friendly data data is no problem
ymd("2023-03-10")

mdy("03-10-2023")

dmy("10-03-2023")

# Using pesky US-style dates
mdy("03/10/2022")

# Making more modifications and adding more stuff!
ymd_hm("2023/03/10 19:45")

mdy_hms("03/10/2023 19:45:50")


# Now, human-friendly date strings
mdy("March 3rd, 2023")

mdy("March 3, 2023")

mdy("Mar 3, 2023")

mdy("Friday, March 10, 2023")


# Dates & Times
mdy_hm("Friday, March 10, 2023 19:45")

mdy_hms("Friday, March 10, 2023 19:45:50")

mdy_hms("Friday, March 10, 2023 07:45:50 PM")

# Additional features
my_date_time = mdy_hms("Friday, March 10, 2023 19:45:50")

year(my_date_time)

month(my_date_time)

day(my_date_time)

quarter(my_date_time)

yday(my_date_time)

wday(my_date_time)

wday(my_date_time, label = TRUE)

hour(my_date_time)

minute(my_date_time)

second(my_date_time)
