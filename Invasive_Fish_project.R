# National Park state invasive fish species populations

library(rvest)
library(devtools)
library(choroplethr)
library(choroplethrMaps)
library(dplyr)
library(ggplot2)


# Introduce kaggle csv files on national parks and wildlife species

wildlife_species_df = read.csv("species.csv", 
                               stringsAsFactors = FALSE)

fish_species_df = subset(wildlife_species_df, Category == 'Fish') # subset wildlife_species to focus only on fish species

# Introduce the National Parks present in the United States scraped from Wikipedia 

national_parks_url = 'https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States'

national_parks_pg = read_html(national_parks_url)
national_parks_tb = html_table(national_parks_pg, fill = TRUE)

national_parks_df = national_parks_tb[[2]]

# Edit national parks data frame to be more useful

split1 = strsplit(national_parks_df$Location, '°', fixed = TRUE)
altdf = split1

source_gist(4676064, filename = 'as.data.frame.list.R')

altdf = as.data.frame(altdf)  

altdf[c(2:5)] = NULL

national_parks_df$Location = altdf$X1
national_parks_df[c(2)] = NULL
names(national_parks_df)[1] = 'Park Name'
names(national_parks_df)[3] = 'Date Established'
names(national_parks_df)[4] = 'Area'
names(national_parks_df)[5] = '2018 Visitors'
names(national_parks_df)[6] = 'Description'

# splits to remove odd and distracting formatting

split2 = strsplit(national_parks_df$Area, '♠', fixed = TRUE)
altdf2 = split2
altdf2 = as.data.frame(altdf2)

national_parks_df$Area = altdf2$X2
national_parks_df = national_parks_df[-c(2,55), ]
national_parks_df$Location = str_sub(national_parks_df$Location,1,str_length(national_parks_df$Location)-2)

split4 = strsplit(national_parks_df$`Park Name`, ' *', fixed = TRUE)
altdf4 = split4
altdf4 = as.data.frame(altdf4)

national_parks_df$`Park Name` = altdf4$matrix.unlist.x...nrow...length.x...byrow...TRUE.

split3 = strsplit(fish_species_df$Park.Name, ' National', fixed = TRUE)
altdf3 = split3
altdf3 = as.data.frame(altdf3)

fish_species_df$Park.Name = altdf3$X1
fish_species_df = subset(fish_species_df, Occurrence == 'Present')
fish_species_df[c(1, 3:5, 8:14)] = NULL


# State Invasive Species Data Frame Compilation

## 1-12 ##

# Maine
Maine_fish_species_df = read.csv("Maine_Fish.csv", 
                                 stringsAsFactors = FALSE)
Maine_fish_species_df = Maine_fish_species_df[-c(40,48), ]
Maine_fish_species_df[c(4)] = NULL
Maine_fish_species_df$State = 'Maine'

# Missouri
Missouri_fish_species_df = read.csv("Missouri_Fish.csv", 
                                    stringsAsFactors = FALSE)
Missouri_fish_species_df = Missouri_fish_species_df[-c(60), ]
Missouri_fish_species_df[c(4)] = NULL
Missouri_fish_species_df$State = 'Missouri'

# North Dakota 
North_Dakota_fish_species_df = read.csv("North_Dakota_Fish.csv", 
                                        stringsAsFactors = FALSE)
North_Dakota_fish_species_df = North_Dakota_fish_species_df[-c(33), ]
North_Dakota_fish_species_df[c(4)] = NULL
North_Dakota_fish_species_df$State = 'North Dakota'

# South Carolina
South_Carolina_fish_species_df = read.csv("South_Carolina_Fish.csv", 
                                          stringsAsFactors = FALSE)
South_Carolina_fish_species_df = South_Carolina_fish_species_df[-c(53), ]
South_Carolina_fish_species_df[c(4)] = NULL
South_Carolina_fish_species_df$State = 'South Carolina'

# Utah
Utah_fish_species_df = read.csv("Utah_Fish.csv", 
                                stringsAsFactors = FALSE)
Utah_fish_species_df = Utah_fish_species_df[-c(67), ]
Utah_fish_species_df[c(4)] = NULL
Utah_fish_species_df$State = 'Utah'

# South Dakota
South_Dakota_fish_species_df = read.csv("South_Dakota_Fish.csv", 
                                        stringsAsFactors = FALSE)
South_Dakota_fish_species_df = South_Dakota_fish_species_df[-c(46), ]
South_Dakota_fish_species_df[c(4)] = NULL
South_Dakota_fish_species_df$State = 'South Dakota'

# Texas
Texas_fish_species_df = read.csv("Texas_Fish.csv", 
                                 stringsAsFactors = FALSE)
Texas_fish_species_df = Texas_fish_species_df[-c(120,129), ]
Texas_fish_species_df[c(4)] = NULL
Texas_fish_species_df$State = 'Texas'

# Florida
Florida_fish_species_df = read.csv("Utah_Fish.csv", 
                                   stringsAsFactors = FALSE)
Florida_fish_species_df = Florida_fish_species_df[-c(67), ]
Florida_fish_species_df[c(4)] = NULL
Florida_fish_species_df$State = 'Florida'

# Colorado
Colorado_fish_species_df = read.csv("Colorado_Fish.csv", 
                                    stringsAsFactors = FALSE)
Colorado_fish_species_df = Colorado_fish_species_df[-c(93), ]
Colorado_fish_species_df[c(4)] = NULL
Colorado_fish_species_df$State = 'Colorado'

# New Mexico
New_Mexico_fish_species_df = read.csv("New_Mexico_Fish.csv", 
                                      stringsAsFactors = FALSE)
New_Mexico_fish_species_df = New_Mexico_fish_species_df[-c(65), ]
New_Mexico_fish_species_df[c(4)] = NULL
New_Mexico_fish_species_df$State = 'New Mexico'

# California
California_fish_species_df = read.csv("California_Fish.csv", 
                                      stringsAsFactors = FALSE)
California_fish_species_df = California_fish_species_df[-c(159), ]
California_fish_species_df[c(4)] = NULL
California_fish_species_df$State = 'California'

## 13-24 ##

#Oregon
Oregon_fish_species_df = read.csv("Oregon_Fish.csv",
                                  stringsAsFactors = FALSE)
Oregon_fish_species_df = Oregon_fish_species_df[-c(63,66),]
Oregon_fish_species_df[c(4)] = NULL
Oregon_fish_species_df$State = 'Oregon'

#Ohio
Ohio_fish_species_df = read.csv("Ohio_Fish.csv",
                                stringsAsFactors = FALSE)
Ohio_fish_species_df = Ohio_fish_species_df[-c(64),]
Ohio_fish_species_df[c(4)] = NULL
Ohio_fish_species_df$State = 'Ohio'

#Alaska
Alaska_fish_species_df = read.csv("Alaska_Fish.csv",
                                  stringsAsFactors = FALSE)
Alaska_fish_species_df[c(4)] = NULL
Alaska_fish_species_df$State = 'Alaska'

#Nevada
Nevada_fish_species_df = read.csv("Nevada_Fish.csv",
                                  stringsAsFactors = FALSE)
Nevada_fish_species_df = Nevada_fish_species_df[-c(86),]
Nevada_fish_species_df[c(4)] = NULL
Nevada_fish_species_df$State = 'Nevada'

#Montana
Montana_fish_species_df = read.csv("Montana_Fish.csv",
                                   stringsAsFactors = FALSE)
Montana_fish_species_df = Montana_fish_species_df[-c(40),]
Montana_fish_species_df[c(4)] = NULL
Montana_fish_species_df$State = 'Montana'

#Arizona
Arizona_fish_species_df = read.csv("Arizona_Fish.csv",
                                   stringsAsFactors = FALSE)
Arizona_fish_species_df = Arizona_fish_species_df[-c(31,42),]
Arizona_fish_species_df[c(4)] = NULL
Arizona_fish_species_df$State = 'Arizona'

## 25-36 ##

# Michigan
Michigan_fish_species_df = read.csv("Michigan_Fish.csv", 
                                    stringsAsFactors = FALSE)
Michigan_fish_species_df = Michigan_fish_species_df[-c(59), ]
Michigan_fish_species_df[c(4)] = NULL
Michigan_fish_species_df$State = "Michigan"

# Wyoming
Wyoming_fish_species_df=read.csv("Wyoming_Fish.csv", stringsAsFactors = FALSE)
Wyoming_fish_species_df[c(4,8,9)]=NULL
Wyoming_fish_species_df$State= 'Wyoming'

# North Carolina
North_Carolina_fish_species_df=read.csv("North_Carolina_Fish.csv", stringsAsFactors = FALSE)
North_Carolina_fish_species_df[c(4,8)]=NULL
North_Carolina_fish_species_df$State= 'North Carolina'

# Tennessee
Tennessee_fish_species_df=read.csv("Tennessee_Fish.csv", stringsAsFactors = FALSE)
Tennessee_fish_species_df[c(4,8)]=NULL
Tennessee_fish_species_df$State= 'Tennessee'

# Hawaii
Hawaii_fish_species_df=read.csv("Hawaii_Fish.csv", stringsAsFactors = FALSE)
Hawaii_fish_species_df[c(4,8)]=NULL
Hawaii_fish_species_df$State= 'Hawaii'

# Arkansas
Arkansas_fish_species_df=read.csv("Arkansas_Fish.csv", stringsAsFactors = FALSE)
Arkansas_fish_species_df[c(4,8)]=NULL
Arkansas_fish_species_df$State= 'Arkansas'

# Indiana
Indiana_fish_species_df=read.csv("Indiana_Fish.csv", stringsAsFactors = FALSE)
Indiana_fish_species_df[c(4,8)]=NULL
Indiana_fish_species_df$State= 'Indiana'


## 37-48 ##

# Kentucky
Kentucky_fish_species_df = read.csv("Kentucky_Fish.csv", 
                                    stringsAsFactors = FALSE)
Kentucky_fish_species_df = Kentucky_fish_species_df[-c(52,56), ]
Kentucky_fish_species_df[c(4)] = NULL
Kentucky_fish_species_df$State = "Kentucky"

# Washington
Washington_fish_species_df = read.csv("Washington_Fish.csv", 
                                      stringsAsFactors = FALSE)
Washington_fish_species_df = Washington_fish_species_df[-c(53), ]
Washington_fish_species_df[c(4)] = NULL
Washington_fish_species_df$State = "Washington"


## 49-61 ##

# Virginia
Virginia_fish_species_df = read.csv("Virginia_Fish.csv", 
                                    stringsAsFactors = FALSE)
Virginia_fish_species_df = Virginia_fish_species_df[-c(98), ]
Virginia_fish_species_df[c(4)] = NULL
Virginia_fish_species_df$State = 'Virginia'


# Minnesota
Minnesota_fish_species_df = read.csv("Minnesota_Fish.csv", 
                                     stringsAsFactors = FALSE)
Minnesota_fish_species_df = Minnesota_fish_species_df[-c(62), ]
Minnesota_fish_species_df[c(4)] = NULL
Minnesota_fish_species_df$State = 'Minnesota'

# Idaho
Idaho_fish_species_df = read.csv("Idaho_Fish.csv", 
                                 stringsAsFactors = FALSE)
Idaho_fish_species_df = Idaho_fish_species_df[-c(53, 57, 72), ]
Idaho_fish_species_df[c(4)] = NULL
Idaho_fish_species_df$State = 'Idaho'


# Vertically merge all state data frames
US_invasive_fish_species_df = rbind(Maine_fish_species_df, Utah_fish_species_df, 
                                    South_Dakota_fish_species_df, Texas_fish_species_df, 
                                    Florida_fish_species_df, Colorado_fish_species_df, 
                                    New_Mexico_fish_species_df, California_fish_species_df, 
                                    Oregon_fish_species_df, Ohio_fish_species_df, 
                                    Alaska_fish_species_df, Nevada_fish_species_df, 
                                    Montana_fish_species_df, Arizona_fish_species_df, 
                                    Kentucky_fish_species_df, Washington_fish_species_df, 
                                    Michigan_fish_species_df, Wyoming_fish_species_df, 
                                    North_Carolina_fish_species_df, Tennessee_fish_species_df, 
                                    Hawaii_fish_species_df, Arkansas_fish_species_df, 
                                    Indiana_fish_species_df, Missouri_fish_species_df, 
                                    North_Dakota_fish_species_df, South_Carolina_fish_species_df, 
                                    Minnesota_fish_species_df, Virginia_fish_species_df, 
                                    Idaho_fish_species_df)

US_invasive_fish_species_df[c(1, 2, 5, 6)] = NULL # remove columns unimportant to our investigation

# merge data frames

US_national_parks_fish_species = merge(national_parks_df, fish_species_df, by.x="Park Name", by.y = "Park.Name")
US_national_parks_fish_species[c(3:6)] = NULL


US_national_parks_invasive_fish_species_df = merge(US_national_parks_fish_species, US_invasive_fish_species_df, by.x="Scientific.Name", by.y = "Scientific.Name")


US_national_parks_invasive_fish_species_df = subset(US_national_parks_invasive_fish_species_df, Location == State )



invasive_fish_df = US_national_parks_invasive_fish_species_df
invasive_fish_df[c(2, 3:5)] = NULL
invasive_fish_df = group_by(invasive_fish_df, State, Scientific.Name)
invasive_fish_df = summarize(invasive_fish_df)


tempdf1 = count(invasive_fish_df) # invasive count

# include states not included in data because of lack of fish or being compared to other states
tempdf1[24,2] = 0
tempdf1[24, 1] = 'Missouri'
tempdf1[25,2] = 0
tempdf1[25, 1] = 'Indiana'
tempdf1[26,2] = tempdf1[23,2]
tempdf1[26, 1] = 'Idaho'

US_national_parks_fish_species = group_by(US_national_parks_fish_species, Location)
tempdf2 = count(US_national_parks_fish_species) # total fish count

# fix nf integrity of data frame
tempdf2[4,2] = tempdf2[4,2] + tempdf2[5,2]
tempdf2[13,2] = tempdf2[13,2] + tempdf2[5,2]
tempdf2[25,2] = tempdf2[25,2] + tempdf2[26,2]
tempdf2[12,2] = tempdf2[12,2] + tempdf2[26,2]
tempdf2[28,2] = tempdf2[26,2]
tempdf2[27, 1] = 'North Carolina'
tempdf2[27,2] = tempdf2[20,2] # Creates North Carolina
tempdf2[20, 1] = 'Tennessee'
tempdf2[28, 1] = 'Idaho'
tempdf2[29,2] = 0
tempdf2[29, 1] = 'Missouri'
tempdf2[30,2] = 0
tempdf2[30, 1] = 'Indiana'

tempdf2 = tempdf2[-c(5, 26),]

tempdf3 = merge(tempdf1, tempdf2, by.x="State", by.y = "Location")

colnames(tempdf3)[colnames(tempdf3)== 'n.x'] = 'InvasiveCount'
colnames(tempdf3)[colnames(tempdf3)== 'n.y'] = 'ParkCount'
tempdf3$InvasivePercent = 100 * tempdf3$InvasiveCount / tempdf3$ParkCount

names(tempdf3)[names(tempdf3) == 'State'] = 'region'
names(tempdf3)[names(tempdf3) == 'InvasivePercent'] = 'value'
tempdf3$region = tolower(tempdf3$region)

# create choropleth
p = state_choropleth(tempdf3, title = 'Map', legend = 'Ratio')
p = p + scale_fill_brewer(palette = "Greens") # change color to green because fish are green
p

tempdf5 = tempdf3[order(tempdf3$InvasiveCount), ]

tempdf5$region = factor(tempdf5$region, levels = tempdf5[order(tempdf5$InvasiveCount), 'region']) # top down organization

p2 = qplot(InvasiveCount, # plotting total count of invasive fish by state top down most to least
      region,
      data = tempdf5,   
      geom = "point"
      )

p2

tempdf6 = tempdf3[order(tempdf3$InvasiveCount), ]
tempdf6$region = factor(tempdf6$region, levels = tempdf6[order(tempdf6$value), 'region']) #top down organization

p3 = qplot(value, # plotting percent of invasive fish by state top down most to least
      region,
      data = tempdf6,   
      geom = "point")

p3

