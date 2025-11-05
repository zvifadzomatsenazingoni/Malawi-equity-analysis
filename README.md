# Socio-spatial equity analysis of access to hospitals in Malawi

## SOURCE DATA FILES    

1)   Dataset of ultra-poverty at the district-level (WQ1 district.csv): This file contains the percentage of ultra-poor households in each district. The column variable labels are:
     
     id_1: District identifier.
     
     name_1: District name. 
     
     WQ1prop: The percentage of ultra-poor households in each district.

These source data are used in ArcGIS to construct the district-level poverty map (Fig. 1a).

**2) Dataset of cluster-level wealth (WQ1 data.csv)**: This file contains data on the Wealth Index for each cluster. The column variable labels are:
    
     centroidid: Cluster location identifier.
     
     wealthscorecont: The average Wealth Index for each cluster.
     
     HHID: The number of households in each cluster.
     
     WQ1: The number of households in each cluster that have a Wealth Index in the lowest quintile (i.e., ultra-poor).
     
     WQ2: The number of households in each cluster that have a Wealth Index in the second lowest quintile.
     
     WQ3: The number of households in each cluster that have a Wealth Index in the middle quintile.
     
     WQ4: The number of households in each cluster that have a Wealth Index in the second highest quintile.
     
     WQ5: The number of households in each cluster that have a Wealth Index in the highest quintile. 
     
     WQ1prop: The percentage of households in each cluster that have a Wealth Index in the lowest quintile (they are ultra-poor).
     
     PovertyWQ4: The number of households in each cluster that have a Wealth Index that is not in the lowest quintile (i.e., they
     are not ultra-poor). This is the sum of WQ2, WQ3, WQ4 and WQ5.

These source data are used as an input for: (i) conducting Empirical Bayesian Kriging in ArcGIS to generate the poverty map of the percentage of ultra-poor households per km2 (Fig. 1b), and (ii) performing a hot-spot analysis of the number of ultra-poor households in SaTScan (Fig. 1c). 

**3)  Dataset for LISA analysis (GA SecondTert.csv)**: This file contains the number of hospitals that each community can access by walking for 3 hours, and the results from the LISA analysis. The column variable labels are:

     OBJECTID/ EACODE: Community identifier.
     
     SecTer_in_180: The number of hospitals that each community can access by walking for 3 hours.
     
     LISA_CL_secter: Results from the LISA analysis identifying the type of cluster each community belongs to. Communities in High-      high clusters have higher than average access to hospitals, communities in Low-Low clusters have lower than average access to       hospitals. 
     
These source data are used in ArcGIS to map the number of accessible hospitals for each community in Malawi (Fig. 2b), and to plot the LISA cluster map (Fig. 2c). 

**4) Dataset for Lee’s analysis (Lees.csv)**: This file contains the percentage of households in each community that have a Wealth Index in one of the top four quintiles, the number of hospitals that each community can access by walking for 3 hours, and the results from the Lees analysis. The column variable labels are:

     SOURCE_ID: Community identifier. 
     
     PovertyEBK: The percentage of households in each community that have a Wealth Index in one of the top four quintiles
     
     geoDA_esti: The number of hospitals that each community can access by walking for 3 hours.  
     
     ASSOC_CAT: Results from the Lee’s analysis identifying the Local Spatial Association Category (LSAC) for each community. 
     Communities in the High-High LSAC have higher than average wealth associated with higher than average access to hospitals,          communities in the High-Low LSAC have higher than average wealth associated with lower than average access to hospitals,            communities in the Low-High LSAC have lower than average wealth associated with higher than average access to hospitals, and        communities in the Low-Low LSAC have lower than average wealth associated with lower than average access to hospitals. 

These source data are used in ArcGIS to plot the Lee’s scatterplot (Fig. 3a) and the Lee’s map (Fig. 3b).

## CODE FILES

**1. STATA code**: This is a do file that uses: (i) the MPHIA2 dataset to estimate the average (and median) percentage of ultra-poor households at the national-level, and the range of the Wealth Index at the household-level, (ii) the dataset for the LISA analysis (GA SecondTert.csv) to calculate the average, median, and range for the number of hospitals that can be accessed at the national-level; to calculate the average number of hospitals that can be accessed in each LISA cluster; to count the number of communities that cannot access any of the hospitals and the number of communities in each LISA cluster, (iii) the dataset for Lee’s analysis (Lees.csv) to calculate the percentage of communities that are in each LSAC; to calculate the average number of hospitals that communities in each LSAC can access; to calculate the average percentage of ultra-poor households in each LSAC. 

**2. R code**: This is an R script for raster partitioning using a high-resolution map of Malawi and a raster map for the percentage of ultra-poor households.  

## ACKNOWLEDGMENTS

This script was developed by Zvifadzo Matsena Zingoni, Ph.D., as part of a project analyzing socio-spatial equity in access to healthcare. PHIA data are freely available for registered users at the PHIA project website (https://phia-data.icap.columbia.edu). Geolocations of hospitals in Malawi were obtained from the Ministry of Health in Malawi, and cannot be provided for reasons of confidentiality.


