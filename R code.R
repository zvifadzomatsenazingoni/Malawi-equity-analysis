#####Poverty project R code

#Load necessary libraries

library(raster)
library(terra)

# Setting a working directory to the Poverty code folder

setwd ("~/Poverty code")

# Reading the ultra-poverty Malawi raster file generated from EBK in ArcGIS

MWIraster<-rast("Raster.tif") 

#Plotting the raster map

plot(MWIraster)
range(MWIraster)

#Creating a file with a higher resolution

MWIdisaggregate <- disagg(MWIraster, fact = 10)

# Reading the Malawi 9208 polygon shapefile

EAs <- vect("ECHOS_prioritization_mdf_fixedgeom.shp")

# Creating a raster of the disaggregated map with same resolution as the Malawi shapefile. 

MWIrasterize<-rasterize(EAs,MWIdisaggregate)

#Extracting the mean ultra-poverty values for each of the Malawi 9208 communities

WQ1 <- extract(MWIdisaggregate, EAs, fun = mean, na.rm = TRUE)[,2]

#To join the mean ultra-poverty values to each ID
cbind(EAs$OBJECTID,WQ1)[1:5,]
WQ1<-cbind(EAs$EACODE,WQ1)


#Output file to use for Figure 3 A and B
write.csv(WQ1,"WQ1_partitionedEBK.csv")
