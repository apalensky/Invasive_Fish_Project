# State Invasive Species Data Frame Compilation

## 1-12 ##

# Maine
Maine_fish_species_df = read.csv("Maine_Fish.csv", 
                                 stringsAsFactors = FALSE)
Maine_fish_species_df = Maine_fish_species_df[-c(40,48), ]
Maine_fish_species_df[c(4)] = NULL
Maine_fish_species_df$State = 'Maine'

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
Oregon_fish_species_df <- read.csv("Oregon_Fish.csv",
                                   stringsAsFactors = FALSE)
Oregon_fish_species_df <- Oregon_fish_species_df[-c(63,66),]
Oregon_fish_species_df[c(4)] <- NULL
Oregon_fish_species_df$State <- 'Oregon'

#Ohio
Ohio_fish_species_df <- read.csv("Ohio_Fish.csv",
                                 stringsAsFactors = FALSE)
Ohio_fish_species_df <- Ohio_fish_species_df[-c(64),]
Ohio_fish_species_df[c(4)] <- NULL
Ohio_fish_species_df$State <- 'Ohio'

#Alaska
Alaska_fish_species_df <- read.csv("Alaska_Fish.csv",
                                   stringsAsFactors = FALSE)
Alaska_fish_species_df[c(4)] <- NULL
Alaska_fish_species_df$State <- 'Alaska'

#Nevada
Nevada_fish_species_df <- read.csv("Nevada_Fish.csv",
                                   stringsAsFactors = FALSE)
Nevada_fish_species_df <- Nevada_fish_species_df[-c(86),]
Nevada_fish_species_df[c(4)] <- NULL
Nevada_fish_species_df$State <- 'Nevada'

#Montana
Montana_fish_species_df <- read.csv("Montana_Fish.csv",
                                    stringsAsFactors = FALSE)
Montana_fish_species_df <- Montana_fish_species_df[-c(40),]
Montana_fish_species_df[c(4)] <- NULL
Montana_fish_species_df$State <- 'Montana'

#Arizona
Arizona_fish_species_df <- read.csv("Arizona_Fish.csv",
                                    stringsAsFactors = FALSE)
Arizona_fish_species_df <- Arizona_fish_species_df[-c(31,42),]
Arizona_fish_species_df[c(4)] <- NULL
Arizona_fish_species_df$State <- 'Arizona'

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


# Bind all state data frames
Invasive_species_df = rbind(Maine_fish_species_df, Utah_fish_species_df, 
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
                            Indiana_fish_species_df)



