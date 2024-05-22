## Data Sources

1. The dataset for the point-by-point footpad temperature available in [VL_Point-by-Point_Footpad_Temp](VL_Point-by-Point_Footpad_Temp) can be accessed from [here](https://atmos.nmsu.edu/data_and_services/atmospheres_data/MARS/viking/pt_by_pt_footpad_temp.html) under the name [vl_ftpd.dat](https://atmos.nmsu.edu/PDS/data/vl_1002/data/vl_ftpd.dat).
	1. **Citation :** Tillman, J.E., VL1/VL2-M-FTS-3-FOOTPAD-TEMP-V1.0, NASA Planetary Data System, 1989. 

2. The dataset for the average footpad temperature available in [VL_Avg_Footpad_Temp](VL_Avg_Footpad_Temp) can be accessed from [here](https://atmos.nmsu.edu/data_and_services/atmospheres_data/MARS/viking/sol_avg_footpad_temp.html) under the name [vl_avet.dat](https://atmos.nmsu.edu/PDS/data/vl_1002/data/vl_avet.dat).
	1. **Citation :** Tillman, J.E., VL1/VL2-M-FTS-4-SOL-AVG-FTPD-TEMP-V1.0, NASA Planetary Data System, 1989.
	
3. The dataset and relevant documents containing the atmospheric density, pressure and temperature during the descent of the Curiosity mission available in [Curiosity_Descent_Atmosphere](Curiosity_Descent_Atmosphere) and can be accessed from [here](https://atmos.nmsu.edu/PDS/data/PDS4/msledl_bundle/data/) under the name [BU_PDS_EDLData.tab](https://atmos.nmsu.edu/PDS/data/PDS4/msledl_bundle/data/BU_PDS_EDLdata.tab)
	1. **Citation :** C. Holstein-Rathlou, A Maue, P. Withers (2015), MSL Entry, Descent and Landing atmospheric structure, NASA Planetary Data System
	2. **Citation :** Holstein-Rathlou, 2016, Atmospheric studies from the Mars Science Laboratory Entry, Descent and Landing atmospheric structure reconstruction, Planetary and Space Science, Volume 120, p. 15-23, [https://doi.org/10.1016/j.pss.2015.10.015](https://doi.org/10.1016/j.pss.2015.10.015).
	
4. The datasets and the relevant documents containing Martian sample analysis data avalaiable in [Curiosity_SAM](Curiosity_SAM) can be accessed from [here](https://pds-geosciences.wustl.edu/missions/msl/sam.htm).
	1. There are four levels of data available and they are discussed below : -
		1. **Level 0 :**  Raw instrument readings
		2. **Level 1A :** Readings converted to scientific units
		3. **Level 1B :** Corrected scientific data
		4. **Level 2 :** Results of data interpretation
	2. If we go to the [data directory](https://pds-geosciences.wustl.edu/msl/msl-m-sam-2-rdr-l0-v1/mslsam_1xxx/data/) inside the Reduced Data Records (RDR), we can see a list of directories containing experimental data with the naming format `eidxxxxx` where _xxxxx_ represents the experiment ID.
	3. Within each of the experiment directory, there are 4 levels of data available (as described above) in different directories. Note that all levels of data are not available for every experiment. I have collected Level 2 data from all experiments in the [Curiosity_SAM](Curiosity_SAM) folder.
	4. Within Level 2 data, I have collected `.csv` files that give atmospheric composition data in terms of volume mixing ratios[^1].
	5. These data are stored in directories with names `eidxxxxx` in the [Curiosity_SAM](Curiosity_SAM) folder. Each of these directories contains a `.csv` file. The nomenculature of these files is explained in [RDR_SIS.pdf](Curiosity_SAM/RDR_SIS.pdf) in pages 20-21.
	6. Additionally, there are also `.png` files in each of the `eidxxxxx` directories that plot the volume mixing ratios[^1] of the various compounds detected in the atmospheric sample.
	7. THe code for scraping and plotting the data is given in [Data_Fetcher.py](Curiosity/SAM/Data_Fetcher.py) and [Data_Visualizer.py](Curiosity/SAM/Data_Visualizer.py) respectively.
	
[^1]: Number of moles of gas divided by the number of moles of air
