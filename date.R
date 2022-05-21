# -- Date formats --

# -- Variable initial --
# %d 	Day as a number 	19
# %a 	Abbreviated weekday 	Sun
# %A 	Unabbreviated weekday 	Sunday
# %m 	Month as a number 	04
# %b 	Abbreviated month 	Feb
# %B 	Unabbreviated month 	February
# %y 	2-digit year 	14
# %Y 	4-digit year 	2014

data <- data.frame(
  initialDiagnose = c("01-02-2009", "12-12-2020", # %d-%m-%Y
                            "01/04/2009", # %d/%m/%Y
                            "9/22/2005", "4/21/2010", "3/28/2005", "9/17/2010", # %m/%d/%Y
                            "4/22/15", # %m/%d/%y
                            "15-Jan-2019", # %d-%b-%Y
                            "15-January-2019", # %d-%B-%Y
                            "14.01.2009", "28.01.2010", "09.01.2009", "04.01.2005",  "04.01.2005", # %d.%m.%Y
                            "03 01 2010", # %d %m %Y
                            "03 14 2010", # %m %d %Y
                            "03-May-22", # %d-%b-%y
                            "03-December-22", # %d-%B-%y
                            "30 April 2022" # %d %B %Y
                            )
)

# Formats in the data frame
formats <- c("%d-%m-%Y", "%d/%m/%Y", "%m/%d/%Y", "%m/%d/%y",
             "%d-%b-%Y", "%d-%B-%Y", "%d.%m.%Y", "%d %m %Y",
             "%m %d %Y", "%d-%b-%y", "%d-%B-%y", "%d %B %Y")

data %>% mutate_all( ~parse_date_time(., orders = formats)) %>%
  mutate_all(~format(., "%d-%b-%Y"))


cva$Month <- factor(cva$Month , levels=c("Mar 2021", "Apr 2021", "May 2021", "Jun 2021", "Jul 2021", "Aug 2021", "Sep 2021", "Oct 2021",
                                         "Nov 2021", "Dec 2021", "Jan 2022", "Feb 2022", "Mar 2022"))


