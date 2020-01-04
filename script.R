#computer architecture: CPU(intel i5)
#operating system: Windows 10 Pro 8 x64 (build 9200)
#software toolchain:RStudio Version 1.1.453 & R version 3.3.2 (2016-10-31)
#attached base packages:stats, graphics, grDevices, utils, datasets, methods, base
#other attached packages:RevoUtilsMath_10.0.0, RevoUtils_10.0.2, RevoMods_10.0.0, MicrosoftML_1.0.0, mrsdeploy_1.0, RevoScaleR_9.0.1, lattice_0.20-34, rpart_4.1-10
#loaded via a namespace (and not attached):Rcpp_0.12.7, RColorBrewer_1.1-2, plyr_1.8.4, iterators_1.0.8, tools_3.3.2, jsonlite_1.1, tibble_1.2, mrupdate_1.0.0, gtable_0.2.0, Matrix_1.2-7.1, foreach_1.4.3, DBI_0.5-1, CompatibilityAPI_1.1.0 curl_2.2, gridExtra_2.2.1, cluster_2.0.5, nnet_7.3-12, grid_3.3.2, data.table_1.9.6, R6_2.2.0, foreign_0.8-67, latticeExtra_0.6-28, magrittr_1.5, scales_0.4.0, codetools_0.2-15, splines_3.3.2, assertthat_0.1, colorspace_1.2-7, labeling_0.3, stringi_1.1.2, acepack_1.4.1, lazyeval_0.2.0, munsell_0.4.3, chron_2.3-47


setwd("C:/Users/Elias/Desktop/weather/weather")

#2. step two - read the csv file

weather<-read.csv("../weather/weather.csv")
#2. step three - remove leap days 
not_leap_days<-weather[weather$Date!="2012-02-29" & weather$Date!="2008-02-29" ,]

#3.You need to take the max of the TMAX and the min of the TMIN records, for each day
#remove 2015 year first from dates
#len is 352 days