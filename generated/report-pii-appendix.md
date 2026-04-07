## Appendix: Detailed PII Detection Results

*Generated on 2026-04-07 10:20:27*

This appendix lists all detected instances of potential personally identifiable information (PII) in the project files. Each entry shows the matched PII terms and, for data files, sample values to help verify whether the flagged content is indeed sensitive.

### Data Files

**/replication-package/Replication_Package_Tincani-20180648/code/excel/donut_graph_construction_types.xlsx**

- Variable: `variable names and labels in census data`
  - Matched terms: census, name
  - Sample values: v4a, 1, 2

**/replication-package/Replication_Package_Tincani-20180648/code/stata/eb_map_iv_f.txt**

- Variable: `name`
  - Matched terms: name
  - Sample values: o._cons, _cons, 1bno.C

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/census_parents_clean_2023.dta**

- Variable: `cod_com` (label: *Code of the town where household head resides*)
  - Matched terms: house
  - Sample values: 1101.0, 13101.0, 1401.0
- Variable: `father_hh`
  - Matched terms: father
  - Sample values: 1.0
- Variable: `mother_hh`
  - Matched terms: mother
  - Sample values: 1.0
- Variable: `school_aged_child`
  - Matched terms: child, school
  - Sample values: 1.0
- Variable: `univ_degree_head`
  - Matched terms: degree
  - Sample values: 0.0, 1.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/census_parents_clean_wclass_all.dta**

- Variable: `cod_com` (label: *Code of the town where household head resides*)
  - Matched terms: house
  - Sample values: 13130.0, 13114.0, 13115.0
- Variable: `father_hh`
  - Matched terms: father
  - Sample values: 1.0
- Variable: `mother_hh`
  - Matched terms: mother
  - Sample values: 1.0
- Variable: `school_aged_child`
  - Matched terms: child, school
  - Sample values: 1.0
- Variable: `univ_degree_head`
  - Matched terms: degree
  - Sample values: 0.0, 1.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/census_with_class_type_true_predicted_all.dta**

- Variable: `cod_com` (label: *Code of the town where household head resides*)
  - Matched terms: house
  - Sample values: 13130.0, 13114.0, 13115.0
- Variable: `father_hh`
  - Matched terms: father
  - Sample values: 1.0
- Variable: `mother_hh`
  - Matched terms: mother
  - Sample values: 1.0
- Variable: `school_aged_child`
  - Matched terms: child, school
  - Sample values: 1.0
- Variable: `univ_degree_head`
  - Matched terms: degree
  - Sample values: 0.0, 1.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/comuna_alu_geocoded.dta**

- Variable: `latitude_alu`
  - Matched terms: lat
  - Sample values: -20.214066, -20.270048, -20.259706
- Variable: `longitude_alu`
  - Matched terms: lon
  - Sample values: -70.152465, -70.100916, -69.786137

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/data_final_for_regs_all.dta**

- Variable: `M` (label: *Public school*)
  - Matched terms: school
  - Sample values: 1.0, 0.0
- Variable: `cov_dam_same_town` (label: *Covariance of st_exp_reconstruction_alu_lca same_town_school*)
  - Matched terms: school
- Variable: `cov_female_same_town` (label: *Covariance of female_r same_town_school*)
  - Matched terms: school
  - Sample values: 0.0158730158730159, 0.0, -0.0172043010752688
- Variable: `cov_peduc_same_town` (label: *Covariance of peduc same_town_school*)
  - Matched terms: school
  - Sample values: 0.0277777777777778, 0.0, 0.0022988505747126
- Variable: `cov_simce_same_town` (label: *Covariance of simce_avg_st same_town_school*)
  - Matched terms: school
  - Sample values: -0.0458748322592353, 0.0, -0.0269376529891262
- Variable: `earth_region_rbd` (label: *School is located in earthquake region*)
  - Matched terms: loc, school
  - Sample values: 0.0
- Variable: `feduc` (label: *Father's educ (yrs)*)
  - Matched terms: father
  - Sample values: 12.0, 10.0, 17.0
- Variable: `hhincome_lagged` (label: *household income per month in CLP*)
  - Matched terms: house
  - Sample values: 250000.0, 1.9e6, 150000.0
- Variable: `intensity_rbd` (label: *Intensity of shaking in school's town'*)
  - Matched terms: school
  - Sample values: 0.0
- Variable: `meduc` (label: *Mother's educ (yrs)*)
  - Matched terms: mother
  - Sample values: 12.0, 11.0, 17.0
- Variable: `rural_rbd` (label: *Rural school*)
  - Matched terms: school
  - Sample values: 0.0, 1.0
- Variable: `same_town_school` (label: *Student resides in same town as school's*)
  - Matched terms: school
  - Sample values: 1.0, 0.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/data_final_for_regs_teach_all.dta**

- Variable: `M` (label: *Public school*)
  - Matched terms: school
  - Sample values: 1.0, 0.0
- Variable: `cov_dam_same_town` (label: *Covariance of st_exp_reconstruction_alu_lca same_town_school*)
  - Matched terms: school
- Variable: `cov_female_same_town` (label: *Covariance of female_r same_town_school*)
  - Matched terms: school
  - Sample values: 0.0158730158730159, 0.0, -0.0172043010752688
- Variable: `cov_peduc_same_town` (label: *Covariance of peduc same_town_school*)
  - Matched terms: school
  - Sample values: 0.0277777777777778, 0.0, 0.0022988505747126
- Variable: `cov_simce_same_town` (label: *Covariance of simce_avg_st same_town_school*)
  - Matched terms: school
  - Sample values: -0.0458748322592353, 0.0, -0.0269376529891262
- Variable: `earth_region_rbd` (label: *School is located in earthquake region*)
  - Matched terms: loc, school
  - Sample values: 0.0
- Variable: `feduc` (label: *Father's educ (yrs)*)
  - Matched terms: father
  - Sample values: 12.0, 10.0, 17.0
- Variable: `hhincome_lagged` (label: *household income per month in CLP*)
  - Matched terms: house
  - Sample values: 250000.0, 1.9e6, 150000.0
- Variable: `intensity_rbd` (label: *Intensity of shaking in school's town'*)
  - Matched terms: school
  - Sample values: 0.0
- Variable: `meduc` (label: *Mother's educ (yrs)*)
  - Matched terms: mother
  - Sample values: 12.0, 11.0, 17.0
- Variable: `rural_rbd` (label: *Rural school*)
  - Matched terms: school
  - Sample values: 0.0, 1.0
- Variable: `same_town_school` (label: *Student resides in same town as school's*)
  - Matched terms: school
  - Sample values: 1.0, 0.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/data_for_map_2025_all.csv**

- Variable: `latitude`
  - Matched terms: lat
  - Sample values: -33.369172, -34.037086, -37.835996
- Variable: `longitude`
  - Matched terms: lon
  - Sample values: -71.668053, -71.084499, -71.414109

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/post_for_predict_2025.dta**

- Variable: `feduc` (label: *Father's educ (yrs)*)
  - Matched terms: father
  - Sample values: 10.0, 12.0, 15.0
- Variable: `female_r` (label: *Gender from rendimiento*)
  - Matched terms: gender
  - Sample values: 1.0, 0.0
- Variable: `hhincome_lagged` (label: *household income per month in CLP*)
  - Matched terms: house
  - Sample values: 150000.0, 550000.0, 1.1e6
- Variable: `meduc` (label: *Mother's educ (yrs)*)
  - Matched terms: mother
  - Sample values: 11.0, 12.0, 13.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/pre_for_predict_2025.dta**

- Variable: `feduc` (label: *Father's educ (yrs)*)
  - Matched terms: father
  - Sample values: 12.0, 10.0, 15.0
- Variable: `female_r` (label: *Gender from rendimiento*)
  - Matched terms: gender
  - Sample values: 0.0, 1.0
- Variable: `hhincome_lagged` (label: *household income per month in CLP*)
  - Matched terms: house
  - Sample values: 150000.0, 1.9e6, 50000.0
- Variable: `meduc` (label: *Mother's educ (yrs)*)
  - Matched terms: mother
  - Sample values: 11.0, 12.0, 10.0

**/replication-package/Replication_Package_Tincani-20180648/confidential-data-not-for-publication/processed/towns_with_distance_to_coast.csv**

- Variable: `latitude_alu`
  - Matched terms: lat
  - Sample values: -20.214066, -20.270048, -20.259706
- Variable: `longitude_alu`
  - Matched terms: lon
  - Sample values: -70.152465, -70.100916, -69.786137

**/replication-package/Replication_Package_Tincani-20180648/data/raw/comuna_alu_geocoded.csv**

- Variable: `latitude_alu`
  - Matched terms: lat
  - Sample values: -20.214066, -20.270048, -20.259706
- Variable: `longitude_alu`
  - Matched terms: lon
  - Sample values: -70.152465, -70.100916, -69.786137

**/replication-package/Replication_Package_Tincani-20180648/data/raw/earthquake_catalog_6.csv**

- Variable: `latitude`
  - Matched terms: lat
  - Sample values: 0.0054, 31.0643, -32.7244
- Variable: `locationSource`
  - Matched terms: loc, location
  - Sample values: us, nc, ak
- Variable: `longitude`
  - Matched terms: lon
  - Sample values: 119.7709, -8.3907, -179.3069

### Code Files

**/replication-package/Replication_Package_Tincani-20180648/code/R/plot_histogram_earthquakes.R**

- Line 15: name
  ```
  script_dir <- dirname(normalizePath(script_path))
  ```
- Line 52: name
  ```
  filename = file.path(out_dir, "earthquake_distribution.png"),
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/python/calculate_coastal_proximity.py**

- Line 25: coord
  ```
  # === STEP 1: Load CSV with town coordinates ===
  ```
- Line 26: lat, lon
  ```
  # CSV file contains: nom_com_alu, latitude_alu, longitude_alu
  ```
- Line 33: lat, lon, zip
  ```
  geometry=[Point(xy) for xy in zip(towns_df["longitude_alu"], towns_df["latitude_alu"])],
  ```
- Line 38: lat
  ```
  # Make sure all related files (.shp, .shx) are in the same folder
  ```
- Line 57: lat
  ```
  # Flatten all exterior lines into a list
  ```
- Line 59: lat
  ```
  flat_lines = [LineString(line) for sublist in exterior_lines for line in sublist]
  ```
- Line 60: lat
  ```
  coastline_multiline = gpd.GeoSeries(flat_lines, crs="EPSG:4326").unary_union
  ```
- Line 66: lat
  ```
  (coastline_multiline.interpolate(coastline_multiline.project(point)).y,
  ```
- Line 67: lat
  ```
  coastline_multiline.interpolate(coastline_multiline.project(point)).x)
  ```
- Line 71: lat
  ```
  towns_gdf["distance_to_coast_km"] = towns_gdf.geometry.apply(calculate_distance)
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/python/create_map.py**

- Line 23: coord
  ```
  # === STEP 1: Load CSV with town coordinates ===
  ```
- Line 24: lat, lon
  ```
  # CSV file contains: nom_com_alu cod_com_alu	mean_damage_usd_college	mean_damage_usd_no_college	shar
  ```
- Line 29: lat, lon
  ```
  "share_college_k","share_nocollege_k","latitude","longitude"]:
  ```
- Line 37: lat, lon
  ```
  geometry=gpd.points_from_xy(df.longitude, df.latitude),
  ```
- Line 43: zip
  ```
  #ne_countries = "https://naciscdn.org/naturalearth/110m/cultural/ne_110m_admin_0_countries.zip"
  ```
- Line 44: zip
  ```
  ne_countries = os.path.join(ROOT, "data", "raw", "ne_110m_admin_0_countries.zip")
  ```
- Line 50: name
  ```
  no  = gdf.rename(columns={"mean_damage_usd_no_college": "damage",
  ```
- Line 52: name
  ```
  col = gdf.rename(columns={"mean_damage_usd_college": "damage",
  ```
- Line 82: zip
  ```
  for ax, (d, title) in zip(
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/0_Peer_Effects_and_Rank_Concerns.do**

- Line 35: name
  ```
  * Move to the directory containing this do-file (if c(filename) is available)
  ```
- Line 36: name
  ```
  capture noisily cd "`=subinstr("`c(filename)'", "/0_Peer_Effects_and_Rank_Concerns.do", "", .)'"
  ```
- Line 38: name
  ```
  * If the above fails (e.g., c(filename) not set), assume user started Stata in root
  ```
- Line 40: loc
  ```
  local pwd "`c(pwd)'"
  ```
- Line 43: loc
  ```
  local root "`pwd'"
  ```
- Line 48: loc
  ```
  local root "`c(pwd)'"
  ```
- Line 142: school
  ```
  global controls_indiv_nodamdet = "simce_avg_st female_r same_town_school "
  ```
- Line 144: school
  ```
  global controls_indiv_nodamdet_noa = " female_r same_town_school "
  ```
- Line 169: census, minute
  ```
  do "$code/2_clean_census.do"  // Clean census data. Takes around 2 minutes.
  ```
- Line 171: minute
  ```
  do "$code/3_clean_simce_4alu_8alu.do" // Cleans admin data on students, including baseline simce and
  ```
- Line 173: minute
  ```
  do "$code/4_clean_simce_8calu.do" // Cleans survey data on students (requires package rmiss2)  Takes
  ```
- Line 175: minute
  ```
  do "$code/5_clean_4cpad_8cpad.do"  // Cleans survey data on parents. Takes less than 1 minute.
  ```
- Line 177: minute
  ```
  do "$code/6_clean_simce_8prof.do" // Clean survey data on teachers. Takes less than 1 minute.
  ```
- Line 179: minute
  ```
  do "$code/7_clean_rendimiento.do" // Cleans classrooms roasters over time to analyze classroom forma
  ```
- Line 181: minute
  ```
  do "$code/8_merge.do"  // Combines cleaned datasets to prepare final dataset for analysis. Takes les
  ```
- Line 204: census
  ```
  do "$code/14_analyze_census.do"
  ```
- Line 212: lat
  ```
  do "$code/18_med_relationships.do"
  ```
- Line 214: school
  ```
  do "$code/19_school_resources.do"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/10_predict_vulnerability.do**

- Line 7: census
  ```
  * and saves a census dataset withthe actual and predicted building types, used to evaluate the GoF
  ```
- Line 17: census
  ```
  use  "$cleaned/census_parents_clean_wclass_all.dta"
  ```
- Line 35: son
  ```
  gen cpr_low=cpr2  // Cat C or D (reinforced masonry)
  ```
- Line 36: son
  ```
  gen cpr_medium=cpr1  // Cat B (unreinforced masonry)
  ```
- Line 37: dob
  ```
  gen cpr_high=cpr3 // Cat A (adobe)
  ```
- Line 40: son
  ```
  gen cpr_low_hat=cpr2_hat  // Cat C or D (reinforced masonry)
  ```
- Line 41: son
  ```
  gen cpr_medium_hat=cpr1_hat  // Cat B (unreinforced masonry)
  ```
- Line 42: dob
  ```
  gen cpr_high_hat=cpr3_hat // Cat A (adobe)
  ```
- Line 46: census
  ```
  save "$cleaned/census_with_class_type_true_predicted_all.dta", replace
  ```
- Line 50: census, second
  ```
  * The second part of this do file uses the same predictive model estimated on the census data, and u
  ```
- Line 56: census
  ```
  * Load census data
  ```
- Line 58: census
  ```
  use "$cleaned/census_parents_clean_wclass_all.dta"
  ```
- Line 60: son
  ```
  gen cpr_low=cpr2  // Cat C or D (reinforced masonry)
  ```
- Line 61: son
  ```
  gen cpr_medium=cpr1  // Cat B (unreinforced masonry)
  ```
- Line 62: dob
  ```
  gen cpr_high=cpr3 // Cat A (adobe)
  ```
- Line 67: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 77: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 88: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 100: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 110: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 121: name
  ```
  rename cod_reg cod_reg_alu
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/11_geog_coastal_proximity.do**

- Line 8: school
  ```
  * and of each town in which there is a school
  ```
- Line 13: house
  ```
  * 1: Households: generate dataset with list of all towns in which students in the
  ```
- Line 52: name
  ```
  * Now merge in the name of the town
  ```
- Line 68: name
  ```
  * I could not add the name only to 5 towns
  ```
- Line 89: name
  ```
  rename distance_to_coast_km distance_coast
  ```
- Line 115: school
  ```
  * 2: Schools: generate dataset with list of all towns in which schools in the
  ```
- Line 116: loc
  ```
  *     sample are located, and their coastal proximity.
  ```
- Line 136: school
  ```
  save $trash/towns_schools_post, replace
  ```
- Line 154: name
  ```
  * Now merge in the name of the town
  ```
- Line 164: name
  ```
  * Only one duplicate due to misspelled duplicate name
  ```
- Line 175: name
  ```
  * I could not add the name only to 4 towns
  ```
- Line 190: name
  ```
  rename cod_com_alu cod_com_rbd
  ```
- Line 191: name
  ```
  rename nom_com_alu nom_com_rbd
  ```
- Line 192: school
  ```
  save $cleaned/school_towns_with_distance_to_coast.dta, replace
  ```
- Line 202: name
  ```
  rename distance_to_coast_km distance_coast
  ```
- Line 228: school
  ```
  capture noisily erase $trash/towns_schools_post.dta
  ```
- Line 230: school
  ```
  capture noisily erase $cleaned/school_towns_with_distance_to_coast.dta
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/12_gen_variables.do**

- Line 51: lat
  ```
  ** generate intensity categories, to be used to calculate damage
  ```
- Line 94: dob
  ```
  * high  vulnerability  cat A (adobe)
  ```
- Line 95: son
  ```
  * low vulnerability -- C or D (reinforced masonry)
  ```
- Line 96: son
  ```
  * medium vulnerability cat B (unreinforced masonry)
  ```
- Line 98: name
  ```
  rename cpr_high_hat cprA_hat
  ```
- Line 99: name
  ```
  rename cpr_low_hat cprCD_hat
  ```
- Line 100: name
  ```
  rename cpr_medium_hat  cprB_hat
  ```
- Line 113: lat
  ```
  Calculate expected damages:
  ```
- Line 133: school
  ```
  * variable U identifies students enrolled in private unsubsidized schools
  ```
- Line 152: loc
  ```
  gen relocated_student=1 if _merge==3
  ```
- Line 153: loc
  ```
  replace relocated_student=0 if _merge==1
  ```
- Line 161: loc
  ```
  tab relocated_student
  ```
- Line 165: loc
  ```
  drop relocated_student
  ```
- Line 184: school
  ```
  * normalise damages among all students who are in schools that are in earthquake regions
  ```
- Line 205: school
  ```
  gen same_town_school=1 if cod_com_alu ==cod_com_rbd
  ```
- Line 206: school
  ```
  replace same_town_school=0 if cod_com_alu!=cod_com_rbd
  ```
- Line 211: school
  ```
  label var M "Public school"
  ```
- Line 216: school
  ```
  label var same_town_school "Student resides in same town as school's"
  ```
- Line 266: lat
  ```
  ** generate intensity categories, to be used to calculate damage.
  ```
- Line 308: name
  ```
  * Rename variables as in damage ratio formula
  ```
- Line 309: dob
  ```
  *  high  vulnerability  cat A (adobe)
  ```
- Line 310: son
  ```
  *  low vulnerability -- C or D (reinforced masonry)
  ```
- Line 311: son
  ```
  *  medium vulnerability cat B (unreinforced masonry)
  ```
- Line 313: name
  ```
  rename cpr_high_hat cprA_hat
  ```
- Line 314: name
  ```
  rename cpr_low_hat cprCD_hat
  ```
- Line 315: name
  ```
  rename cpr_medium_hat  cprB_hat
  ```
- Line 328: lat
  ```
  Calculate expected damages:
  ```
- Line 348: school
  ```
  * variable U identifies students enrolled in private unsubsidized schools
  ```
- Line 364: loc
  ```
  gen relocated_student=1 if _merge==3
  ```
- Line 365: loc
  ```
  replace relocated_student=0 if _merge==1
  ```
- Line 373: loc
  ```
  tab relocated_student
  ```
- Line 386: loc
  ```
  drop relocated_student
  ```
- Line 425: school
  ```
  gen same_town_school=1 if cod_com_alu ==cod_com_rbd
  ```
- Line 426: school
  ```
  replace same_town_school=0 if cod_com_alu!=cod_com_rbd
  ```
- Line 431: school
  ```
  label var M "Public school"
  ```
- Line 436: school
  ```
  label var same_town_school "Student resides in same town as school's"
  ```
- Line 483: school
  ```
  bysort post rbd codigo: egen mean_same_town=mean(same_town_school)
  ```
- Line 500: lon
  ```
  *** [following takes long time to run]
  ```
- Line 505: school
  ```
  bysort post rbd codigo: egen cov_dam_same_town=corr(st_exp_reconstruction_alu_lca same_town_school),
  ```
- Line 510: school
  ```
  bysort post rbd codigo: egen cov_simce_same_town = corr(simce_avg_st same_town_school ), covariance
  ```
- Line 512: school
  ```
  bysort post rbd codigo: egen cov_peduc_same_town = corr(peduc same_town_school), covariance
  ```
- Line 513: school
  ```
  bysort post rbd codigo: egen cov_female_same_town = corr(female_r same_town_school), covariance
  ```
- Line 516: lon
  ```
  *** [end of part taking long time]
  ```
- Line 521: school
  ```
  label var rural_rbd "Rural school"
  ```
- Line 534: name
  ```
  rename distance_asperity distance_asperity_rbd
  ```
- Line 535: school
  ```
  save "$trash/school_distance_asperity", replace
  ```
- Line 557: school
  ```
  label var intensity_rbd "Intensity of shaking in school's town'"
  ```
- Line 564: name
  ```
  rename hugo avg_simce_8_std
  ```
- Line 583: loc, school
  ```
  label var earth_region_rbd "School is located in earthquake region"
  ```
- Line 586: dob
  ```
  * High vulnerability   -- cat A (adobe)
  ```
- Line 587: son
  ```
  * Medium vulnerability -- cat B (unreinforced masonry)
  ```
- Line 588: son
  ```
  * Low vulnerability    -- C or D (reinforced masonry)
  ```
- Line 629: lat
  ```
  * Standardize in the population
  ```
- Line 632: school
  ```
  gen rbd_unique=rbd+post*100000  // for FE and clustering at the school-by-cohort level
  ```
- Line 638: lat
  ```
  * Step 1: Calculate the total sum of damage for each classroom
  ```
- Line 641: lat
  ```
  * Step 2: Calculate the total number of students in each classroom
  ```
- Line 644: lat
  ```
  * Step 3: Calculate the sum of damage for each student by subtracting their own damage
  ```
- Line 647: lat
  ```
  * Step 4: Calculate the number of students excluding oneself
  ```
- Line 650: lat
  ```
  * Step 5: Calculate the leave-one-out mean
  ```
- Line 658: lat
  ```
  * Calculate squared difference between each student's damage and the leave-one-out mean
  ```
- Line 661: lat
  ```
  * Calculate the total of these squared differences for each classroom
  ```
- Line 676: lon
  ```
  * Build covariance terms  - take long time to run
  ```
- Line 771: lat
  ```
  * Step 1: Calculate the total sum of damage for each classroom
  ```
- Line 774: lat
  ```
  * Step 2: Calculate the total number of students in each classroom
  ```
- Line 777: lat
  ```
  * Step 3: Calculate the sum of damage for each student by subtracting their own damage
  ```
- Line 780: lat
  ```
  * Step 4: Calculate the number of students excluding oneself
  ```
- Line 783: lat
  ```
  * Step 5: Calculate the leave-one-out mean
  ```
- Line 791: lat
  ```
  * Calculate squared difference between each student's damage and the leave-one-out mean
  ```
- Line 794: lat
  ```
  * Calculate the total of these squared differences for each classroom
  ```
- Line 814: lat
  ```
  * Step 1: Calculate the total sum of damage for each classroom
  ```
- Line 817: lat
  ```
  * Step 2: Calculate the total number of students in each classroom
  ```
- Line 820: lat
  ```
  * Step 3: Calculate the sum of damage for each student by subtracting their own damage
  ```
- Line 823: lat
  ```
  * Step 4: Calculate the number of students excluding oneself
  ```
- Line 826: lat
  ```
  * Step 5: Calculate the leave-one-out mean
  ```
- Line 834: lat
  ```
  * Calculate squared difference between each student's damage and the leave-one-out mean
  ```
- Line 837: lat
  ```
  * Calculate the total of these squared differences for each classroom
  ```
- Line 875: lat
  ```
  * Step 1: Calculate the total sum of damage for each classroom
  ```
- Line 878: lat
  ```
  * Step 2: Calculate the total number of students in each classroom
  ```
- Line 881: lat
  ```
  * Step 3: Calculate the sum of damage for each student by subtracting their own damage
  ```
- Line 884: lat
  ```
  * Step 4: Calculate the number of students excluding oneself
  ```
- Line 887: lat
  ```
  * Step 5: Calculate the leave-one-out mean
  ```
- Line 895: lat
  ```
  * Calculate squared difference between each student's damage and the leave-one-out mean
  ```
- Line 898: lat
  ```
  * Calculate the total of these squared differences for each classroom
  ```
- Line 924: lat
  ```
  * Calculate leave-one-out totals
  ```
- Line 929: lat
  ```
  * Calculate leave-one-out means
  ```
- Line 933: lat
  ```
  * Calculate leave-one-out covariance
  ```
- Line 997: name
  ```
  rename norm_rank_GPA rank_GPA
  ```
- Line 1054: school
  ```
  Section 2.1: ``The full constructed dataset consists of 354,133 students in 13,268 classrooms across
  ```
- Line 1058: school
  ```
  * School identifier: rbd
  ```
- Line 1066: school
  ```
  bysort post rbd: gen school_identifier=1 if _n== 1
  ```
- Line 1067: school
  ```
  sum mrun class_identifier school_identifier
  ```
- Line 1070: loc, school
  ```
  Section 2.1: around 15% of observations, corresponding to schools located in coastal towns
  ```
- Line 1071: loc
  ```
  Variable coastal_1k identifies students in coastal towns, defined as those located within 1 km of th
  ```
- Line 1077: school
  ```
  drop class_identifier school_identifier
  ```
- Line 1084: school
  ```
  capture noisily erase "$trash/school_distance_asperity.dta"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/13_gen_data_for_map.do**

- Line 31: name
  ```
  rename max mean_damage_usd_college
  ```
- Line 34: name
  ```
  rename max mean_damage_usd_no_college
  ```
- Line 37: name
  ```
  rename max  obs_college
  ```
- Line 41: name
  ```
  rename max  obs_no_college
  ```
- Line 51: lat
  ```
  label var perc_college "Town population of college educated parents as a fraction of all parents wit
  ```
- Line 52: lat
  ```
  label var perc_no_college "Town population of not college educated parents as a fraction of all pare
  ```
- Line 61: lat, name
  ```
  rename latitude_alu latitude
  ```
- Line 62: lon, name
  ```
  rename longitude_alu longitude
  ```
- Line 90: lon
  ```
  replace nom_com_alu="LONGAVI" if cod_com_alu==7403
  ```
- Line 102: lon
  ```
  replace nom_com_alu="QUELLON" if cod_com_alu==10208
  ```
- Line 103: lon
  ```
  replace nom_com_alu="QUILLON" if cod_com_alu==8413
  ```
- Line 127: coord
  ```
  * Coordinates
  ```
- Line 128: lat
  ```
  format latitude  %11.6f
  ```
- Line 129: lon
  ```
  format longitude %12.6f
  ```
- Line 147: lat, lon
  ```
  order nom_com_alu cod_com_alu mean_damage_usd_college mean_damage_usd_no_college share_college_k sha
  ```
- Line 153: lat, lon
  ```
  keep nom_com_alu cod_com_alu mean_damage_usd_college  share_college_k   latitude longitude
  ```
- Line 161: lat, lon
  ```
  keep nom_com_alu cod_com_alu  mean_damage_usd_no_college  share_nocollege_k latitude longitude
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/14_analyze_census.do**

- Line 7: house
  ```
  * figures that show goodness of prediction of house type
  ```
- Line 15: lat
  ```
  * Describe distribution of building materials in entire population
  ```
- Line 16: child, house, school
  ```
  * of households with at least one school-aged child (nearly 1 million observations)
  ```
- Line 22: census
  ```
  use "$cleaned/census_parents_clean_2023.dta", clear
  ```
- Line 24: child, house, lat, school
  ```
  Size of the population of households with at least one school-aged child, as reported in
  ```
- Line 25: house
  ```
  the introduction ("nearly one million") and in the notes to Figures 3, 4, 5 and A2 (929,647 househol
  ```
- Line 33: lat
  ```
  ** Generate descriptive stats of the distribution of building materials in the population (Appendix 
  ```
- Line 51: lat, name
  ```
  * Build LaTeX table with material names
  ```
- Line 54: loc
  ```
  local outtex "$output_tables/distrib_materials.tex"
  ```
- Line 55: name
  ```
  tempname fout
  ```
- Line 58: lat
  ```
  *---- LaTeX header
  ```
- Line 73: name
  ```
  syntax varname(numeric) , SECTION(string) MAP(string) OUT(name)
  ```
- Line 84: name
  ```
  rename `varlist' code
  ```
- Line 93: loc, name
  ```
  local nm = name[`i']
  ```
- Line 95: lat
  ```
  * Escape a few LaTeX special chars (expand if needed)
  ```
- Line 96: loc
  ```
  local nm : subinstr local nm "&" "\&", all
  ```
- Line 97: loc
  ```
  local nm : subinstr local nm "%" "\%", all
  ```
- Line 98: loc
  ```
  local nm : subinstr local nm "_" "\_", all
  ```
- Line 99: loc
  ```
  local nm : subinstr local nm "#" "\#", all
  ```
- Line 102: loc
  ```
  local fstr : display %12.0f Freq[`i']
  ```
- Line 103: loc
  ```
  local pstr : display %6.2f  Percent[`i']
  ```
- Line 122: name
  ```
  input code str80 name
  ```
- Line 128: dob
  ```
  6 "Adobe, soggy mud"
  ```
- Line 137: name
  ```
  input code str80 name
  ```
- Line 142: lat
  ```
  5 "Slate"
  ```
- Line 154: name
  ```
  input code str80 name
  ```
- Line 176: lat
  ```
  *---- LaTeX footer
  ```
- Line 178: census, child, house, lat, school
  ```
  file write `fout' "\caption{Distribution of building materials in the population of households with 
  ```
- Line 197: census
  ```
  use "$cleaned/census_with_class_type_true_predicted_all.dta"
  ```
- Line 200: father, lon, mother
  ```
  graph twoway (lpoly  cpr_low   peduc,   acolor(blue) ) (lpoly cpr_medium peduc  , acolor(green) lpat
  ```
- Line 207: father, mother
  ```
  graph twoway (lpoly  cpr_high   peduc,   acolor(blue) ) (lpoly cpr_high_hat peduc  , lcolor(green) l
  ```
- Line 208: father, mother
  ```
  graph twoway (lpoly  cpr_medium   peduc,   acolor(blue) ) (lpoly cpr_medium_hat peduc  , lcolor(gree
  ```
- Line 209: father, mother
  ```
  graph twoway (lpoly   cpr_low   peduc,   acolor(blue) ) (lpoly cpr_low_hat peduc  , lcolor(green) lp
  ```
- Line 213: house
  ```
  graph twoway (lpoly  cpr_high   age_hh_head,   acolor(blue) ) (lpoly cpr_high_hat age_hh_head  , lco
  ```
- Line 214: house
  ```
  graph twoway (lpoly  cpr_medium  age_hh_head,   acolor(blue) ) (lpoly cpr_medium_hat age_hh_head  , 
  ```
- Line 215: house
  ```
  graph twoway (lpoly   cpr_low   age_hh_head,   acolor(blue) ) (lpoly cpr_low_hat age_hh_head  , lcol
  ```
- Line 232: lon
  ```
  * Erase data file no longer needed - toggle one once replication package ready
  ```
- Line 233: census
  ```
  * capture noisily erase "$data/cleaned/census_parents_clean_2023.dta"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/15_descriptive_tables_figures.do**

- Line 17: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 20: name
  ```
  * Rename outcome variables for eststo to work
  ```
- Line 21: name
  ```
  rename simce_math_std ts_math
  ```
- Line 22: name
  ```
  rename simce_span_std ts_span
  ```
- Line 85: house
  ```
  p. 3 Introduction "USD 1,552 vs. USD 759, or 47% vs. 23% of annual household income"
  ```
- Line 102: school
  ```
  * Numbers of students, schools and classrooms in sample:
  ```
- Line 127: school
  ```
  * fraction of students in post==1 & earth_region_rbd==1  & ${proximity}==0  who go to school in clas
  ```
- Line 137: school
  ```
  school in affected non-coastal areas were enrolled in classrooms
  ```
- Line 147: school
  ```
  p. 16: "This fraction is nearly the same across public and private schools
  ```
- Line 149: school
  ```
  than rural ($95.9\%$) schools."
  ```
- Line 186: lon
  ```
  loneway st_exp_reconstruction_alu_lca rbd_unique if post==1 & earth_region_rbd ==1 & ${proximity}==0
  ```
- Line 191: school
  ```
  "There was also variation in the classroom-level dispersion in damages: 87.4\% of its total variance
  ```
- Line 193: lon
  ```
  loneway loo_sd_damage_class rbd_unique if  post==1 & earth_region_rbd ==1 & ${proximity}==0
  ```
- Line 196: school
  ```
  "By contrast, virtually all the variation in the classroom-level mean in damages was across schools 
  ```
- Line 198: lon
  ```
  loneway loo_mean_damage_class rbd_unique  if post==1 & earth_region_rbd ==1 & ${proximity}==0
  ```
- Line 229: loc
  ```
  local variables  simce_avg_st peduc female_r rural_rbd M earth_region_rbd
  ```
- Line 234: school
  ```
  lab var rural_rbd "Rural school"
  ```
- Line 235: school
  ```
  lab var M "Public school"
  ```
- Line 239: loc
  ```
  local k=1
  ```
- Line 242: loc
  ```
  local mean: display %9.3g r(mean)
  ```
- Line 243: loc
  ```
  local sd: display %9.3g r(sd)
  ```
- Line 244: loc
  ```
  local N: display %9.0g r(N)
  ```
- Line 246: loc
  ```
  local meanT: display %9.3g r(mean)
  ```
- Line 247: loc
  ```
  local sdT: display %9.3g r(sd)
  ```
- Line 248: loc
  ```
  local NT: display %9.0g r(N)
  ```
- Line 255: loc
  ```
  local k=`k'+1
  ```
- Line 258: name
  ```
  matrix rownames A = `variables'
  ```
- Line 259: lname, name
  ```
  matrix colnames A = Mean SD N Mean SD N
  ```
- Line 264: school
  ```
  `"\caption{\label{summaryprepost} Summary statistics of student and school characteristics}"' ///
  ```
- Line 271: loc
  ```
  local k=1
  ```
- Line 274: loc
  ```
  local mean: display %9.3g r(mean)
  ```
- Line 275: loc
  ```
  local sd: display %9.3g r(sd)
  ```
- Line 276: loc
  ```
  local N: display %9.0g r(N)
  ```
- Line 278: loc
  ```
  local meanT: display %9.3g r(mean)
  ```
- Line 279: loc
  ```
  local sdT: display %9.3g r(sd)
  ```
- Line 280: loc
  ```
  local NT: display %9.0g r(N)
  ```
- Line 287: loc
  ```
  local k=`k'+1
  ```
- Line 290: name
  ```
  matrix rownames B = `variables'
  ```
- Line 291: lname, name
  ```
  matrix colnames B = Mean SD N Mean SD N
  ```
- Line 308: loc
  ```
  local k=1
  ```
- Line 311: loc
  ```
  local mean: display %9.3g r(mean)
  ```
- Line 312: loc
  ```
  local sd: display %9.3g r(sd)
  ```
- Line 313: loc
  ```
  local N: display %9.0g r(N)
  ```
- Line 315: loc
  ```
  local meanT: display %9.3g r(mean)
  ```
- Line 316: loc
  ```
  local sdT: display %9.3g r(sd)
  ```
- Line 317: loc
  ```
  local NT: display %9.0g r(N)
  ```
- Line 324: loc
  ```
  local k=`k'+1
  ```
- Line 327: name
  ```
  matrix rownames D = `variables'
  ```
- Line 328: lname, name
  ```
  matrix colnames D = Mean SD N Mean SD N
  ```
- Line 366: lat
  ```
  label var damage_over_income                      "Damage relative to income"
  ```
- Line 370: lat
  ```
  label var mean_damageratio_class_oi               "Class mean: damage relative to income"
  ```
- Line 373: lat
  ```
  label var sd_damageratio_class_oi                 "Class SD: damage relative to income"
  ```
- Line 376: loc
  ```
  local student_vars damageratiopp damage_usd damage_over_income
  ```
- Line 377: loc
  ```
  local class_vars   mean_damageratio_class mean_damageratio_class_usd mean_damageratio_class_oi ///
  ```
- Line 401: loc
  ```
  local k = 1
  ```
- Line 402: loc
  ```
  foreach v of local student_vars {
  ```
- Line 404: loc
  ```
  local m  : display %9.2f r(mean)
  ```
- Line 405: loc
  ```
  local s  : display %9.2f r(sd)
  ```
- Line 406: loc
  ```
  local n  : display %9.0f r(N)
  ```
- Line 414: loc
  ```
  local ++k
  ```
- Line 416: name
  ```
  matrix rownames A_i = `student_vars'
  ```
- Line 417: lname, name
  ```
  matrix colnames A_i = Mean SD N
  ```
- Line 421: loc
  ```
  local k = 1
  ```
- Line 422: loc
  ```
  foreach v of local class_vars {
  ```
- Line 424: loc
  ```
  local m  : display %9.2f r(mean)
  ```
- Line 425: loc
  ```
  local s  : display %9.2f r(sd)
  ```
- Line 426: loc
  ```
  local n  : display %9.0f r(N)
  ```
- Line 434: loc
  ```
  local ++k
  ```
- Line 436: name
  ```
  matrix rownames A_ii = `class_vars'
  ```
- Line 437: lname, name
  ```
  matrix colnames A_ii = Mean SD N
  ```
- Line 441: loc
  ```
  local k = 1
  ```
- Line 442: loc
  ```
  foreach v of local student_vars {
  ```
- Line 444: loc
  ```
  local m  : display %9.2f r(mean)
  ```
- Line 445: loc
  ```
  local s  : display %9.2f r(sd)
  ```
- Line 446: loc
  ```
  local n  : display %9.0f r(N)
  ```
- Line 454: loc
  ```
  local ++k
  ```
- Line 456: name
  ```
  matrix rownames B_i = `student_vars'
  ```
- Line 457: lname, name
  ```
  matrix colnames B_i = Mean SD N
  ```
- Line 461: loc
  ```
  local k = 1
  ```
- Line 462: loc
  ```
  foreach v of local class_vars {
  ```
- Line 464: loc
  ```
  local m  : display %9.2f r(mean)
  ```
- Line 465: loc
  ```
  local s  : display %9.2f r(sd)
  ```
- Line 466: loc
  ```
  local n  : display %9.0f r(N)
  ```
- Line 474: loc
  ```
  local ++k
  ```
- Line 476: name
  ```
  matrix rownames B_ii = `class_vars'
  ```
- Line 477: lname, name
  ```
  matrix colnames B_ii = Mean SD N
  ```
- Line 480: lat
  ```
  * Export LaTeX: Panel A (Ai, Aii) and Panel B (Bi, Bii)
  ```
- Line 482: loc
  ```
  local outfile "$output_tables/descriptives_treatvars_damage.tex"
  ```
- Line 522: lat
  ```
  * Appendix Table A4: correlates of damages
  ```
- Line 529: lat
  ```
  est store correlates_damage
  ```
- Line 532: lat
  ```
  est store correlates_cpr_A
  ```
- Line 535: lat
  ```
  est store correlates_cpr_B
  ```
- Line 538: lat
  ```
  est store correlates_cpr_CD
  ```
- Line 545: loc
  ```
  local varlabeld: variable label  st_exp_reconstruction_alu_lca
  ```
- Line 546: loc
  ```
  local varlabelA: variable label cprA_hat
  ```
- Line 547: loc
  ```
  local varlabelB: variable label cprB_hat
  ```
- Line 548: loc
  ```
  local varlabelCD: variable label cprCD_hat
  ```
- Line 556: lat
  ```
  `"\caption{Correlates of damages and of seismic vulnerability of students' homes }"' ///
  ```
- Line 557: lat
  ```
  `"\label{tab:correlates}"' ///
  ```
- Line 570: lat
  ```
  * FIGURE 6: RELATIONSHIP BETWEEN HOME DAMAGE AND PARENTAL
  ```
- Line 571: school
  ```
  *           EDUCATION BY SCHOOL CHARACTERISTICS
  ```
- Line 579: father, mother, school
  ```
  graph twoway (lpolyci  st_exp_reconstruction_alu_lca  peduc if M==1 & pre==0 & earth_region==1 & ${p
  ```
- Line 580: father, mother, school
  ```
  graph twoway (lpolyci  st_exp_reconstruction_alu_lca  peduc if rural_rbd==1 & pre==0 & earth_region=
  ```
- Line 581: school
  ```
  graph combine $trash/damages_peduc_by_school_type_2023.gph  $trash/damages_peduc_by_school_rurality_
  ```
- Line 582: name
  ```
  graph export "$output_figures\damages_peduc.png", as(png) name("Graph") replace
  ```
- Line 588: lat
  ```
  * FIGURE A3: RELATIONSHIP BETWEEN RESPORTED EFFORT
  ```
- Line 603: school
  ```
  capture erase "$trash/damages_peduc_by_school_type_2023.gph"
  ```
- Line 604: school
  ```
  capture erase "$trash/damages_peduc_by_school_rurality_2023.gph"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/16_main_effects_and_rob.do**

- Line 17: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 20: name
  ```
  * Rename outcome variables for eststo to work
  ```
- Line 21: name
  ```
  rename simce_math_std ts_math
  ```
- Line 22: name
  ```
  rename simce_span_std ts_span
  ```
- Line 53: loc
  ```
  local varlabel : variable label ts
  ```
- Line 82: loc
  ```
  local varlabel : variable label `var'
  ```
- Line 95: loc
  ```
  local varlabelspan : variable label ts_span
  ```
- Line 96: loc
  ```
  local varlabelmath : variable label ts_math
  ```
- Line 149: loc
  ```
  local varlabel : variable label ts
  ```
- Line 182: loc
  ```
  estadd local controls "No"
  ```
- Line 185: loc
  ```
  estadd local controls "No"
  ```
- Line 190: loc
  ```
  estadd local controls "Yes"
  ```
- Line 193: loc
  ```
  estadd local controls "Yes"
  ```
- Line 196: loc
  ```
  local varlabel : variable label ts
  ```
- Line 237: loc
  ```
  estadd local km  "1.5 km"
  ```
- Line 241: loc
  ```
  estadd local km  "1.5 km"
  ```
- Line 246: loc
  ```
  estadd local km  "1 km"
  ```
- Line 249: loc
  ```
  estadd local km  "1 km"
  ```
- Line 254: loc
  ```
  estadd local km  "0.5 km"
  ```
- Line 257: loc
  ```
  estadd local km  "0.5 km"
  ```
- Line 262: loc
  ```
  estadd local km  "All towns"
  ```
- Line 265: loc
  ```
  estadd local km  "All towns"
  ```
- Line 270: loc
  ```
  local varlabel : variable label ts
  ```
- Line 292: lat
  ```
  * TABLE A12: SPATIAL CORRELATION OF THE RESIDUALS
  ```
- Line 295: municipality, school
  ```
  * Clustering SE at school-municipality-by-cohort-level.
  ```
- Line 311: loc
  ```
  local varlabel : variable label ts
  ```
- Line 320: lat
  ```
  `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA, accounting
  ```
- Line 333: school
  ```
  *            SCHOOL-BY-COHORT FE
  ```
- Line 351: loc
  ```
  local varlabel : variable label ts
  ```
- Line 360: school
  ```
  `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA, with schoo
  ```
- Line 381: name
  ```
  rename st_exp_reconstruction_alu_lca damage_indiv
  ```
- Line 399: school
  ```
  global controls_indiv_nodamdet_tilde = "simce_avg_st_tilde female_r_tilde same_town_school_tilde "
  ```
- Line 406: school
  ```
  * FE-equivalent regression (within-school)
  ```
- Line 452: school
  ```
  global controls_indiv_nodamdet_tilde2 = "simce_avg_st_tilde2 female_r_tilde2 same_town_school_tilde2
  ```
- Line 459: school
  ```
  * FE-equivalent regression (within-school)
  ```
- Line 466: name
  ```
  * Look at names of equations and coefficients
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/17_het_effects.do**

- Line 16: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 19: name
  ```
  * Rename outcome variables for eststo to work
  ```
- Line 20: name
  ```
  rename simce_math_std ts_math
  ```
- Line 21: name
  ```
  rename simce_span_std ts_span
  ```
- Line 130: loc
  ```
  local varlabel : variable label ts
  ```
- Line 138: loc
  ```
  local variables SIMCE ///
  ```
- Line 245: lon
  ```
  `"\scriptsize \begin{longtable}{@{}lcc@{}}"' ///
  ```
- Line 253: lon
  ```
  `"\end{longtable}"' ///
  ```
- Line 270: loc
  ```
  local varlabel : variable label ts
  ```
- Line 313: loc
  ```
  local varlabel : variable label ts
  ```
- Line 330: loc
  ```
  estadd local controls "No"
  ```
- Line 335: loc
  ```
  estadd local controls "No"
  ```
- Line 342: loc
  ```
  estadd local controls "Yes"
  ```
- Line 347: loc
  ```
  estadd local controls "Yes"
  ```
- Line 436: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 442: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 479: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 485: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 531: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 537: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 583: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 589: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 673: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 679: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 717: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 723: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 782: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 788: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 836: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 842: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 919: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 925: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 961: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 967: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 1012: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 1018: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 1061: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 1067: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/18_med_relationships.do**

- Line 25: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 28: name
  ```
  * Rename outcome variables for eststo to work
  ```
- Line 29: name
  ```
  rename simce_math_std ts_math
  ```
- Line 30: name
  ```
  rename simce_span_std ts_span
  ```
- Line 70: name
  ```
  rename curriculum_leng cl
  ```
- Line 72: name
  ```
  rename curriculum_mate cm
  ```
- Line 78: loc
  ```
  local varlabel : variable label `var'
  ```
- Line 88: loc
  ```
  local models "nofe_cl   nofe_cm  "
  ```
- Line 89: loc
  ```
  local params "post_mean_damage post_sd_damage"
  ```
- Line 91: name
  ```
  tempname fh
  ```
- Line 94: loc
  ```
  foreach m of local models {
  ```
- Line 96: loc
  ```
  local tcrit = invttail(e(df_r), 0.025)  // two-sided 95%
  ```
- Line 97: loc
  ```
  foreach p of local params {
  ```
- Line 98: loc
  ```
  local lo  = _b[`p'] - `tcrit' * _se[`p']
  ```
- Line 99: loc
  ```
  local hi  = _b[`p'] + `tcrit' * _se[`p']
  ```
- Line 100: loc
  ```
  local lo3 : display %9.3f `lo'
  ```
- Line 101: loc
  ```
  local hi3 : display %9.3f `hi'
  ```
- Line 103: lat, name
  ```
  // Build a simple macro name: remove underscores just to be LaTeX-safe
  ```
- Line 104: loc
  ```
  local mac = subinstr("`m'_`p'", "_", "", .)
  ```
- Line 106: lat
  ```
  // Write a LaTeX macro to use in the text body
  ```
- Line 170: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 173: name
  ```
  * Rename outcome variables for eststo to work
  ```
- Line 174: name
  ```
  rename simce_math_std ts_math
  ```
- Line 175: name
  ```
  rename simce_span_std ts_span
  ```
- Line 212: loc
  ```
  local varlabeleffortc : variable label effort_cost_std
  ```
- Line 213: loc
  ```
  local varlabelengage : variable label engagement_std
  ```
- Line 264: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 270: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```
- Line 310: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
  ```
- Line 316: name
  ```
  rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/19_school_resources.do**

- Line 5: school
  ```
  * 19_school_resources_selected_outputs.do analyses school expendiotures.
  ```
- Line 9: sex
  ```
  *   - rendidosexp.tex
  ```
- Line 30: son
  ```
  * Personnel
  ```
- Line 52: son
  ```
  save "$trash/personnel_expenditures_descriptions.dta", replace
  ```
- Line 76: son
  ```
  save "$trash/personnel_expenditures.dta", replace
  ```
- Line 79: sex
  ```
  * Output 1: Rendidosexp.tex
  ```
- Line 82: son
  ```
  use "$trash/personnel_expenditures_descriptions.dta", clear
  ```
- Line 85: son
  ```
  1 "{\bf Personnel}" ///
  ```
- Line 104: son
  ```
  13 "Personnel - other" ///
  ```
- Line 124: son
  ```
  label define cat_en 1 "{\bf Personnel}" 2 "{\bf External ATE services}" 3 "{\bf Emergency}" 4 "{\bf 
  ```
- Line 144: son
  ```
  13 "Personnel - other" ///
  ```
- Line 156: sex
  ```
  collect export "$output_tables/rendidosexp.tex", as(tex) replace tableonly
  ```
- Line 175: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 211: school
  ```
  * Drop small school with simce nonmissing only for one student,
  ```
- Line 212: lat, school
  ```
  * in this school sd simce cannot be calcualated and therefore it is
  ```
- Line 232: school
  ```
  "representing 42\% of the sample schools."
  ```
- Line 238: school
  ```
  sum nonmissing  if post==0 & earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0
  ```
- Line 254: school
  ```
  reg missing_exp post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd if earth_region_r
  ```
- Line 255: school
  ```
  su missing_exp if post==0 & earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0
  ```
- Line 280: loc
  ```
  local variables class_size_rbd M rural_rbd mean_simce_avg_st_rbd mean_peduc_rbd sd_simce_avg_st_rbd 
  ```
- Line 291: loc
  ```
  label var mean_same_town_rbd "Fraction local residents"
  ```
- Line 294: school
  ```
  quietly reg missing_exp post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd if earth_
  ```
- Line 296: loc
  ```
  local k=1
  ```
- Line 298: school
  ```
  quietly summarize `var' if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0 & e(sample)==
  ```
- Line 299: loc
  ```
  local mean  = string(r(mean), "%9.2f")
  ```
- Line 300: loc
  ```
  local sd    = string(r(sd), "%9.2f")
  ```
- Line 301: loc
  ```
  local N     = string(r(N), "%9.0f")
  ```
- Line 303: school
  ```
  quietly summarize `var' if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0 & missing_exp
  ```
- Line 304: loc
  ```
  local meanT = string(r(mean), "%9.2f")
  ```
- Line 305: loc
  ```
  local sdT   = string(r(sd), "%9.2f")
  ```
- Line 306: loc
  ```
  local NT    = string(r(N), "%9.0f")
  ```
- Line 314: loc
  ```
  local k=`k'+1
  ```
- Line 317: name
  ```
  matrix rownames A = `variables'
  ```
- Line 318: lname, name
  ```
  matrix colnames A = Mean SD N Mean SD N
  ```
- Line 323: school
  ```
  `"\caption{\label{summarymissingexp} Summary statistics of school characteristics.}"' ///
  ```
- Line 326: school
  ```
  `"      &  \multicolumn{3}{c}{\textsc{All }} &  \multicolumn{3}{c}{\textsc{Schools with non-missing}
  ```
- Line 327: school
  ```
  `"      &  \multicolumn{3}{c}{\textsc{ schools}} &  \multicolumn{3}{c}{\textsc{ expenditure data}}  
  ```
- Line 356: school
  ```
  * Panel A: with school damage controls
  ```
- Line 359: school
  ```
  reg `var' post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd $controls_rbd $intensit
  ```
- Line 363: loc
  ```
  estadd local hasfe "No"
  ```
- Line 374: school
  ```
  `"\caption{Impacts of earthquake damages on category-specific school expenditures}"' ///
  ```
- Line 378: school
  ```
  `"& \multicolumn{9}{c}{\textbf{A. With school damage controls}}  \\ "') ///
  ```
- Line 381: school
  ```
  * Panel B: without school damage controls
  ```
- Line 385: school
  ```
  reg `var' post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd $controls_rbd if earth_
  ```
- Line 389: loc
  ```
  estadd local hasfe "No"
  ```
- Line 396: school
  ```
  prehead(`"& \multicolumn{9}{c}{\textbf{B. Without school damage controls}}  \\ "') ///
  ```
- Line 426: loc
  ```
  levelsof sort_order, local(levels)
  ```
- Line 427: loc
  ```
  foreach lvl of local levels {
  ```
- Line 428: loc, name
  ```
  quietly levelsof category if sort_order == `lvl', clean local(catname)
  ```
- Line 429: loc, name
  ```
  local catname = subinstr(`"`catname'"', `"""', "", .)
  ```
- Line 430: name
  ```
  label define cat_label `lvl' "`catname'", add
  ```
- Line 463: loc
  ```
  levelsof sort_order, local(levels)
  ```
- Line 464: loc
  ```
  foreach lvl of local levels {
  ```
- Line 465: loc, name
  ```
  quietly levelsof category if sort_order == `lvl', clean local(catname)
  ```
- Line 466: loc, name
  ```
  local catname = subinstr(`"`catname'"', `"""', "", .)
  ```
- Line 467: name
  ```
  label define cat_label `lvl' "`catname'", add
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/1_geog_codes_rendimiento.do**

- Line 12: name
  ```
  rename cod_reg_rbd cod_reg
  ```
- Line 13: name
  ```
  rename cod_com_rbd cod_com
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/20_identifying.do**

- Line 15: school
  ```
  bysort post rbd: gen school_index=1 if _n==1
  ```
- Line 18: name
  ```
  * Rename outcome variables for eststo to work
  ```
- Line 19: name
  ```
  rename simce_math_std ts_math
  ```
- Line 20: name
  ```
  rename simce_span_std ts_span
  ```
- Line 35: school
  ```
  * Table with descriptive stats of switches across classrooms and schools
  ```
- Line 44: school
  ```
  drop if prom_gral==0 // estudiantes retirados, not in that school anymore
  ```
- Line 56: name
  ```
  * Rename
  ```
- Line 57: name
  ```
  rename rbd     rbd_7_2010
  ```
- Line 58: name
  ```
  rename let_cur let_cur_7_2010
  ```
- Line 68: school
  ```
  drop if prom_gral==0 // estudiantes retirados, not in that school anymore
  ```
- Line 79: name
  ```
  * Rename
  ```
- Line 80: name
  ```
  rename rbd rbd_7_2008
  ```
- Line 81: name
  ```
  rename let_cur let_cur_7_2008
  ```
- Line 97: name
  ```
  rename _merge _merge_2010
  ```
- Line 103: name
  ```
  rename _merge _merge_2008
  ```
- Line 123: school
  ```
  gen switch_school=1 if rbd_7!=rbd & missing_7_grade_info==0
  ```
- Line 124: school
  ```
  replace switch_school=0 if rbd_7==rbd
  ```
- Line 126: school
  ```
  * among those who DID NOT change school, how many changed classroom?
  ```
- Line 129: school
  ```
  label var switch_classroom "% who changed classroom | not changing school"
  ```
- Line 137: loc, school
  ```
  local variables switch switch_school switch_classroom
  ```
- Line 139: school
  ```
  label var switch "Switched school or classroom"
  ```
- Line 140: school
  ```
  label var switch_school "Switched school"
  ```
- Line 141: school
  ```
  label var switch_classroom "Switched classroom within school"
  ```
- Line 144: loc
  ```
  local k=1
  ```
- Line 147: loc
  ```
  local mean: display %9.3g r(mean)
  ```
- Line 148: loc
  ```
  local sd: display %9.3g r(sd)
  ```
- Line 149: loc
  ```
  local N: display %9.0g r(N)
  ```
- Line 151: loc
  ```
  local meanT: display %9.3g r(mean)
  ```
- Line 152: loc
  ```
  local sdT: display %9.3g r(sd)
  ```
- Line 153: loc
  ```
  local NT: display %9.0g r(N)
  ```
- Line 160: loc
  ```
  local k=`k'+1
  ```
- Line 163: name
  ```
  matrix rownames A = `variables'
  ```
- Line 164: lname, name
  ```
  matrix colnames A = Mean SD N Mean SD N
  ```
- Line 169: school
  ```
  `"\caption{\label{summaryswitches} Descriptive statistics of classroom and school changes between gr
  ```
- Line 176: school
  ```
  `"\item	\scriptsize {\it Notes:}  The main estimation sample corresponds to the sample of observatio
  ```
- Line 190: loc
  ```
  estadd local hasc  "No"
  ```
- Line 192: school
  ```
  reg switch_school  post if earth_region_rbd ==1  & ${proximity}==0  , cluster(rbd_unique)
  ```
- Line 193: loc
  ```
  estadd local hasc  "No"
  ```
- Line 194: school
  ```
  eststo switch_school_noc
  ```
- Line 196: loc
  ```
  estadd local hasc  "No"
  ```
- Line 200: loc
  ```
  estadd local hasc  "Yes"
  ```
- Line 202: school
  ```
  reg switch_school  post   $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity
  ```
- Line 203: loc
  ```
  estadd local hasc  "Yes"
  ```
- Line 204: school
  ```
  eststo switch_school_c
  ```
- Line 206: loc
  ```
  estadd local hasc  "Yes"
  ```
- Line 210: school
  ```
  label var switch_school "School"
  ```
- Line 222: school
  ```
  `"\caption{Classroom and school changes between grades 7 and 8: cohort and earthquake-region differe
  ```
- Line 225: school
  ```
  " & Any & Any & School & School & Classroom & Classroom \\" ///
  ```
- Line 243: loc
  ```
  estadd local hasc  "No"
  ```
- Line 245: school
  ```
  reg switch_school post earth_region_rbd post_earth if ${proximity}==0 , cluster(rbd_unique)
  ```
- Line 246: loc
  ```
  estadd local hasc  "No"
  ```
- Line 247: school
  ```
  eststo switch_school_noc
  ```
- Line 249: loc
  ```
  estadd local hasc  "No"
  ```
- Line 253: loc
  ```
  estadd local hasc  "Yes"
  ```
- Line 255: school
  ```
  reg switch_school post earth_region_rbd post_earth  $controls_indiv_nodamdet $controls_indiv_damdet 
  ```
- Line 256: loc
  ```
  estadd local hasc  "Yes"
  ```
- Line 257: school
  ```
  eststo switch_school_c
  ```
- Line 259: loc
  ```
  estadd local hasc  "Yes"
  ```
- Line 263: school
  ```
  label var switch_school "School"
  ```
- Line 302: loc
  ```
  local varlabel : variable label ts
  ```
- Line 346: loc
  ```
  estadd local earthreg  "Yes"
  ```
- Line 351: loc
  ```
  estadd local earthreg  "Yes"
  ```
- Line 357: loc
  ```
  estadd local earthreg  "No"
  ```
- Line 362: loc
  ```
  estadd local earthreg  "No"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/21_conley.do**

- Line 9: lat
  ```
  * By spatial correlation kernel cutoff distance:
  ```
- Line 15: minute
  ```
  * Total time required to run this do file sequentially: 60 hours and 50 minutes
  ```
- Line 37: son
  ```
  global controls_indiv_damdet_con = "age_hh_head peduc "  // without region of residence, for computa
  ```
- Line 45: name
  ```
  rename simce_math_std ts_math
  ```
- Line 46: name
  ```
  rename simce_span_std ts_span
  ```
- Line 47: name
  ```
  rename avg_simce_8_std ts
  ```
- Line 74: lat
  ```
  * Print table with these two outcomes and just first columns populated, adjust manually to add the c
  ```
- Line 123: lat, name
  ```
  rename latitude_alu latitude
  ```
- Line 124: lon, name
  ```
  rename longitude_alu longitude
  ```
- Line 127: lat, lon
  ```
  drop if latitude==. | longitude==.
  ```
- Line 137: lat, lon
  ```
  ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var
  ```
- Line 139: lat, lon
  ```
  ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatmen
  ```
- Line 143: lat, lon
  ```
  ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var
  ```
- Line 145: lat, lon
  ```
  ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatmen
  ```
- Line 149: lat, lon
  ```
  ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var
  ```
- Line 151: lat, lon
  ```
  ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatmen
  ```
- Line 164: lat, lon
  ```
  ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var
  ```
- Line 172: lat, lon
  ```
  ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatmen
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/2_clean_census.do**

- Line 10: house
  ```
  * Then merge household and building modules
  ```
- Line 14: son
  ```
  *The unique identifier is portafolio vn hn pn, where vn= vivienda numero, hn = hogar numero, pn = pe
  ```
- Line 17: son
  ```
  save "$trash/CPV2002_PERSONA.dta", replace
  ```
- Line 24: house
  ```
  * Merge household and building modules
  ```
- Line 34: census
  ```
  * Clean census data
  ```
- Line 38: child, house, school
  ```
  * 1. Generate education of parents and select sample of households with at least one school-aged chi
  ```
- Line 40: father, house, mother, wife
  ```
  *   If head of household is male, assume that is the father, record father's education. Then record 
  ```
- Line 41: father, house, husband, mother
  ```
  *   If head of household is female, assume that is the mother, record mother's education. Then recor
  ```
- Line 42: child
  ```
  *   Finally, only keep families where there is at least one child of k-12 age. (between 3 and 18)
  ```
- Line 44: father
  ```
  gen father_hh=1 if p17==1 & p18==1
  ```
- Line 45: mother
  ```
  gen mother_hh=1 if p17==1 & p18==2
  ```
- Line 52: degree
  ```
  gen univ_degree_head=1 if p26a==15 & p17==1
  ```
- Line 53: degree
  ```
  replace univ_degree_head=0 if p26a!=15 & p17==1
  ```
- Line 55: father, house
  ```
  * education of head of household when head of household is male, = father
  ```
- Line 56: father
  ```
  gen feduc=0 if p26a==1 & father_hh==1
  ```
- Line 57: father
  ```
  replace feduc=0 if p26a==2 & father_hh==1
  ```
- Line 58: father
  ```
  replace feduc=1 if p26a==4 & p26b==1 & father_hh==1
  ```
- Line 59: father
  ```
  replace feduc=2 if p26a==4 & p26b==2 & father_hh==1
  ```
- Line 60: father
  ```
  replace feduc=3 if p26a==4 & p26b==3 & father_hh==1
  ```
- Line 61: father
  ```
  replace feduc=4 if p26a==4 & p26b==4 & father_hh==1
  ```
- Line 62: father
  ```
  replace feduc=5 if p26a==4 & p26b==5 & father_hh==1
  ```
- Line 63: father
  ```
  replace feduc=6 if p26a==4 & p26b==6 & father_hh==1
  ```
- Line 64: father
  ```
  replace feduc=7 if p26a==4 & p26b==7 & father_hh==1
  ```
- Line 65: father
  ```
  replace feduc=8 if p26a==4 & p26b==8 & father_hh==1
  ```
- Line 66: father
  ```
  replace feduc=9 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==1  & father_hh==1
  ```
- Line 67: father
  ```
  replace feduc=10 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==2  & father_hh==1
  ```
- Line 68: father
  ```
  replace feduc=11 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==3  & father_hh==1
  ```
- Line 69: father
  ```
  replace feduc=12 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & (p26b==4 | p26b==5)  & fathe
  ```
- Line 70: father
  ```
  replace feduc=13 if (p26a==13 | p26a==14 | p26a==15) & p26b==1 & father_hh==1
  ```
- Line 71: father
  ```
  replace feduc=14 if (p26a==13 | p26a==14 | p26a==15) & p26b==2 & father_hh==1
  ```
- Line 72: father
  ```
  replace feduc=15 if (p26a==13 | p26a==14 | p26a==15) & p26b==3 & father_hh==1
  ```
- Line 73: father
  ```
  replace feduc=13 if  p26a==15 & p26b==1 & father_hh==1
  ```
- Line 74: father
  ```
  replace feduc=14 if  p26a==15 & p26b==2 & father_hh==1
  ```
- Line 75: father
  ```
  replace feduc=15 if  p26a==15 & p26b==3 & father_hh==1
  ```
- Line 76: father
  ```
  replace feduc=16 if  p26a==15 & p26b==4 & father_hh==1
  ```
- Line 77: father
  ```
  replace feduc=17 if  p26a==15 & p26b==5 & father_hh==1
  ```
- Line 78: father
  ```
  replace feduc=18 if  p26a==15 & p26b==6 & father_hh==1
  ```
- Line 79: father
  ```
  replace feduc=19 if  p26a==15 & p26b==7 & father_hh==1
  ```
- Line 80: father
  ```
  replace feduc=20 if  p26a==15 & p26b==8 & father_hh==1
  ```
- Line 82: father, house
  ```
  * education of partner of head of household, when partner is male = father
  ```
- Line 110: house, mother
  ```
  * education of head of household when head of household is female = mother
  ```
- Line 111: mother
  ```
  gen meduc=0 if p26a==1 & mother_hh==1
  ```
- Line 112: mother
  ```
  replace meduc=0 if p26a==2 & mother_hh==1
  ```
- Line 113: mother
  ```
  replace meduc=1 if p26a==4 & p26b==1 & mother_hh==1
  ```
- Line 114: mother
  ```
  replace meduc=2 if p26a==4 & p26b==2 & mother_hh==1
  ```
- Line 115: mother
  ```
  replace meduc=3 if p26a==4 & p26b==3 & mother_hh==1
  ```
- Line 116: mother
  ```
  replace meduc=4 if p26a==4 & p26b==4 & mother_hh==1
  ```
- Line 117: mother
  ```
  replace meduc=5 if p26a==4 & p26b==5 & mother_hh==1
  ```
- Line 118: mother
  ```
  replace meduc=6 if p26a==4 & p26b==6 & mother_hh==1
  ```
- Line 119: mother
  ```
  replace meduc=7 if p26a==4 & p26b==7 & mother_hh==1
  ```
- Line 120: mother
  ```
  replace meduc=8 if p26a==4 & p26b==8 & mother_hh==1
  ```
- Line 121: mother
  ```
  replace meduc=9 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==1  & mother_hh==1
  ```
- Line 122: mother
  ```
  replace meduc=10 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==2  & mother_hh==1
  ```
- Line 123: mother
  ```
  replace meduc=11 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==3  & mother_hh==1
  ```
- Line 124: mother
  ```
  replace meduc=12 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & (p26b==4 | p26b==5)  & mothe
  ```
- Line 125: mother
  ```
  replace meduc=13 if (p26a==13 | p26a==14 | p26a==15) & p26b==1 & mother_hh==1
  ```
- Line 126: mother
  ```
  replace meduc=14 if (p26a==13 | p26a==14 | p26a==15) & p26b==2 & mother_hh==1
  ```
- Line 127: mother
  ```
  replace meduc=15 if (p26a==13 | p26a==14 | p26a==15) & p26b==3 & mother_hh==1
  ```
- Line 128: mother
  ```
  replace meduc=13 if  p26a==15 & p26b==1 & mother_hh==1
  ```
- Line 129: mother
  ```
  replace meduc=14 if  p26a==15 & p26b==2 & mother_hh==1
  ```
- Line 130: mother
  ```
  replace meduc=15 if  p26a==15 & p26b==3 & mother_hh==1
  ```
- Line 131: mother
  ```
  replace meduc=16 if  p26a==15 & p26b==4 & mother_hh==1
  ```
- Line 132: mother
  ```
  replace meduc=17 if  p26a==15 & p26b==5 & mother_hh==1
  ```
- Line 133: mother
  ```
  replace meduc=18 if  p26a==15 & p26b==6 & mother_hh==1
  ```
- Line 134: mother
  ```
  replace meduc=19 if  p26a==15 & p26b==7 & mother_hh==1
  ```
- Line 135: mother
  ```
  replace meduc=20 if  p26a==15 & p26b==8 & mother_hh==1
  ```
- Line 137: house, mother
  ```
  * education of partner of head of household, when partner is female = mother
  ```
- Line 166: child, school
  ```
  gen school_age_child=0
  ```
- Line 167: child, school
  ```
  replace school_age_child=1 if offspring==1 & p19<=19
  ```
- Line 169: child, house, school
  ```
  ** Build variables at household level: meduc, feduc, meduc, has school-aged child, code of comuna
  ```
- Line 172: child, school
  ```
  bysort portafolio vn hn : egen max_school_aged_child=max(school_age_child)
  ```
- Line 177: child, school
  ```
  drop meduc feduc offspring school_age_child age_hh_head town_hh_head
  ```
- Line 179: name
  ```
  rename meduc_min meduc
  ```
- Line 180: name
  ```
  rename feduc_min feduc
  ```
- Line 181: child, name, school
  ```
  rename max_school_aged_child school_aged_child
  ```
- Line 182: name
  ```
  rename min_age_hh_head age_hh_head
  ```
- Line 183: name
  ```
  rename min_town_hh_head cod_com
  ```
- Line 184: house
  ```
  label var cod_com "Code of the town where household head resides"
  ```
- Line 186: house
  ```
  * keep one observation per household
  ```
- Line 189: child, school
  ```
  * sample selection: only families with at least one school-aged child
  ```
- Line 190: child, school
  ```
  keep if school_aged_child==1
  ```
- Line 223: census
  ```
  save "$cleaned/census_parents_clean_2023.dta", replace
  ```
- Line 226: son
  ```
  capture noisily erase "$trash/CPV2002_PERSONA.dta"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/3_clean_simce_4alu_8alu.do**

- Line 73: school
  ```
  label var rural_rbd "1 means rural school"
  ```
- Line 76: birth
  ```
  gen yearbirth=int(fec_nac_alu/10000)
  ```
- Line 77: birth
  ```
  gen age=2005-yearbirth
  ```
- Line 134: name
  ```
  rename prom_gral GPA_4
  ```
- Line 235: school
  ```
  label var rural_rbd "1 means rural school"
  ```
- Line 238: birth
  ```
  gen yearbirth=int(fec_nac_alu/10000)
  ```
- Line 239: birth
  ```
  gen age=2005-yearbirth
  ```
- Line 314: name
  ```
  rename prom_gral GPA_4
  ```
- Line 333: second
  ```
  * Second part of do file cleans the following datasets, and saves them separately:
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/5_clean_4cpad_8cpad.do**

- Line 23: father
  ```
  * father's education: P6
  ```
- Line 46: mother
  ```
  * mother's education: P7
  ```
- Line 72: father, mother
  ```
  label var peduc "Average of mother's and father's education(yrs)"
  ```
- Line 73: mother
  ```
  label var meduc "Mother's educ (yrs)"
  ```
- Line 74: father
  ```
  label var feduc "Father's educ (yrs)"
  ```
- Line 76: house
  ```
  * household income: p8
  ```
- Line 90: house
  ```
  label variable hhincome "household income per month in CLP"
  ```
- Line 92: name
  ```
  rename IDALUMNO idalumno
  ```
- Line 95: name
  ```
  rename meduc meduc_lagged
  ```
- Line 96: name
  ```
  rename feduc feduc_lagged
  ```
- Line 97: name
  ```
  rename peduc peduc_lagged
  ```
- Line 98: name
  ```
  rename hhincome hhincome_lagged
  ```
- Line 118: father
  ```
  * father's education: P6
  ```
- Line 141: mother
  ```
  * mother's education: P8
  ```
- Line 167: father, mother
  ```
  label var peduc "Average of mother's and father's education(yrs)"
  ```
- Line 168: mother
  ```
  label var meduc "Mother's educ (yrs)"
  ```
- Line 169: father
  ```
  label var feduc "Father's educ (yrs)"
  ```
- Line 173: house
  ```
  * household income: p12
  ```
- Line 187: house
  ```
  label variable hhincome "household income per month in CLP"
  ```
- Line 190: name
  ```
  rename meduc meduc_lagged
  ```
- Line 191: name
  ```
  rename feduc feduc_lagged
  ```
- Line 192: name
  ```
  rename peduc peduc_lagged
  ```
- Line 193: name
  ```
  rename hhincome hhincome_lagged
  ```
- Line 200: second
  ```
  * The second part of this do file cleans the following datasets, and saves them separately:
  ```
- Line 212: name
  ```
  rename IDALUMNO idalumno
  ```
- Line 219: father
  ```
  * father's education: p08_1 to p08_21
  ```
- Line 242: mother
  ```
  * mother's education: P09
  ```
- Line 268: father, mother
  ```
  label var peduc "Average of mother's and father's education(yrs)"
  ```
- Line 269: mother
  ```
  label var meduc "Mother's educ (yrs)"
  ```
- Line 270: father
  ```
  label var feduc "Father's educ (yrs)"
  ```
- Line 272: house, son
  ```
  *head of household age (= person who fills in form, assume it's the head of household)
  ```
- Line 289: name
  ```
  rename idalumno_temp idalumno
  ```
- Line 293: name
  ```
  rename age_temp age_hh_head
  ```
- Line 300: father
  ```
  * father's education: p09p_1 to p09p_20
  ```
- Line 323: mother
  ```
  * mother's education: P09m_1 to p09m_20
  ```
- Line 349: father, mother
  ```
  label var peduc "Average of mother's and father's education(yrs)"
  ```
- Line 350: mother
  ```
  label var meduc "Mother's educ (yrs)"
  ```
- Line 351: father
  ```
  label var feduc "Father's educ (yrs)"
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/6_clean_simce_8prof.do**

- Line 20: name
  ```
  rename RBD rbd
  ```
- Line 21: name
  ```
  rename CODIGO codigo
  ```
- Line 22: school
  ```
  * the unique identifier is the combination rbd codigo, which identifies a classroom in a school
  ```
- Line 55: school
  ```
  * the unique identifier is the combination rbd codigo, which identifies a classroom in a school
  ```
- Line 69: name
  ```
  rename RBD rbd
  ```
- Line 70: name
  ```
  rename CODIGO codigo
  ```
- Line 105: name
  ```
  rename RBD rbd
  ```
- Line 106: name
  ```
  rename CODIGO codigo
  ```
- Line 110: name
  ```
  rename hugo curriculum_leng
  ```
- Line 144: name
  ```
  rename RBD rbd
  ```
- Line 145: name
  ```
  rename CODIGO codigo
  ```
- Line 149: name
  ```
  rename hugo curriculum_mate
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/7_clean_rendimiento.do**

- Line 31: school
  ```
  * these are "estudiantes retirados", not in that school anymore.
  ```
- Line 33: name
  ```
  rename prom_gral prom_gral_7_or_8 // these are students in 7th or 8th grade in 2010
  ```
- Line 55: school
  ```
  * these are "estudiantes retirados", not in that school anymore.
  ```
- Line 57: name
  ```
  rename prom_gral prom_gral_7_or_8
  ```
- Line 69: country
  ```
  *                         geographic variables of all students in all classrooms in the country
  ```
- Line 70: school
  ```
  *                         also generate info about school type (M, V, U)
  ```
- Line 101: school
  ```
  * these are "estudiantes retirados", not in that school anymore.
  ```
- Line 104: name
  ```
  rename cod_com_alu cod_com
  ```
- Line 107: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 108: name
  ```
  rename cod_com cod_com_alu
  ```
- Line 126: school
  ```
  * mrun is not unique identifier: there are 4 students who are observed in 2 schools, likely they cha
  ```
- Line 159: school
  ```
  * these are "estudiantes retirados", not in that school anymore.
  ```
- Line 162: name
  ```
  rename cod_com_alu cod_com
  ```
- Line 164: name
  ```
  rename cod_reg cod_reg_alu
  ```
- Line 165: name
  ```
  rename cod_com cod_com_alu
  ```
- Line 175: school
  ```
  * mrun is not unique identifier: there are 12 students who are observed in 2 schools, likely they ch
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/8_merge.do**

- Line 31: lon
  ```
  ** merge in longitudinally
  ```
- Line 52: school
  ```
  * mrun and rbd are identifiers of this dataset. If a student moved across schools over time, we keep
  ```
- Line 83: school
  ```
  * observations  only in SIMCE and not in rendimento -> these are students who changed school (classr
  ```
- Line 151: lon
  ```
  ** merge in longitudinally
  ```
- Line 172: school
  ```
  * mrun and rbd are identifiers of this dataset. If a student moved across schools over time, we keep
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/9_lca_all.do**

- Line 23: name
  ```
  NM  = st_sdata(., "name")
  ```
- Line 29: census
  ```
  use "$cleaned/census_parents_clean_2023.dta", clear
  ```
- Line 37: name
  ```
  S = st_matrixcolstripe("e(b)")   // S[.,1]=eq, S[.,2]=name
  ```
- Line 56: census
  ```
  use "$cleaned/census_parents_clean_2023.dta", clear
  ```
- Line 70: loc
  ```
  levelsof `v', local(vals)
  ```
- Line 73: loc
  ```
  foreach c of local vals {
  ```
- Line 86: census
  ```
  save "$cleaned/census_parents_clean_wclass_all.dta", replace
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/_gcorr.ado**

- Line 4: lat
  ```
  *! computes correlation (or covariance, or spearman correlation) between var1 and var2, optionally b
  ```
- Line 19: loc
  ```
  local x : word count `taua' `taub' `spearman'
  ```
- Line 26: loc
  ```
  local by `"by `by':"'
  ```
- Line 35: lat, loc
  ```
  local lab "Spearman Correlation"
  ```
- Line 38: lat, loc
  ```
  local lab "Tau-A Correlation"
  ```
- Line 41: lat, loc
  ```
  local lab "Tau-B Correlation"
  ```
- Line 44: loc
  ```
  local lab "Covariance"
  ```
- Line 47: lat, loc
  ```
  local lab "Correlation"
  ```
- Line 57: loc
  ```
  local stat "r(cov_12)"
  ```
- Line 60: loc
  ```
  local stat "r(tau_a)"
  ```
- Line 63: loc
  ```
  local stat "r(tau_b)"
  ```
- Line 65: lat
  ```
  else {					/* correlation and spearman */
  ```
- Line 66: loc
  ```
  local stat "r(rho)"
  ```
- Line 70: loc
  ```
  local cmd spearman
  ```
- Line 73: loc
  ```
  local cmd ktau
  ```
- Line 76: lat, loc
  ```
  local cmd corr			/* correlation and covariance */
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/_grmiss2.ado**

- Line 4: loc
  ```
  local type "`1'"
  ```
- Line 6: loc
  ```
  local g "`1'"
  ```
- Line 9: loc
  ```
  local varlist "req ex"
  ```
- Line 10: loc
  ```
  local in "opt"
  ```
- Line 11: loc
  ```
  local if "opt"
  ```
- Line 15: loc
  ```
  local VTYPE : type `1'
  ```
- Line 22: loc
  ```
  local VTYPE : type `1'
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/estadd.ado**

- Line 3: loc
  ```
  *  2. estadd_local
  ```
- Line 31: loc
  ```
  local caller : di _caller()
  ```
- Line 32: lon
  ```
  capt _on_colon_parse `0'
  ```
- Line 34: loc
  ```
  local 0 `"`s(before)'"'
  ```
- Line 35: loc, name
  ```
  local names `"`s(after)'"'
  ```
- Line 38: name
  ```
  if regexm(`"`anything'"',"^r\((.*)\)$") {  // check -estadd r(name)-
  ```
- Line 47: loc
  ```
  local anything `"matrix `anything'"'
  ```
- Line 51: loc
  ```
  local anything `"scalar `anything'"'
  ```
- Line 55: name
  ```
  capt confirm name `subcommand'
  ```
- Line 60: loc
  ```
  if `"`options'"'!="" local options `", `options'"'
  ```
- Line 61: loc
  ```
  if `"`weight'`exp'"'!="" local wgtexp `"[`weight'`exp']"'
  ```
- Line 63: name
  ```
  //expand estimates names and backup current estimates if necessary
  ```
- Line 64: name
  ```
  tempname rcurrent ecurrent
  ```
- Line 68: loc, name
  ```
  local names: list retok names
  ```
- Line 69: name
  ```
  if "`names'"=="" {
  ```
- Line 70: loc, name
  ```
  local names "."
  ```
- Line 71: loc
  ```
  local qui
  ```
- Line 73: loc
  ```
  else local qui quietly
  ```
- Line 74: loc, name
  ```
  foreach name of local names {
  ```
- Line 75: name
  ```
  if "`name'"=="." {
  ```
- Line 76: name
  ```
  capt est_expand "`name'"
  ```
- Line 77: loc, name
  ```
  if _rc local enames "`enames'`name' "
  ```
- Line 78: loc, name
  ```
  else local enames "`enames'`r(names)' "
  ```
- Line 81: name
  ```
  est_expand "`name'" //=> error if estimates not found
  ```
- Line 82: loc, name
  ```
  local enames "`enames'`r(names)' "
  ```
- Line 85: loc, name
  ```
  local names: list uniq enames
  ```
- Line 86: loc, name
  ```
  if "`names'"=="." local active
  ```
- Line 89: loc
  ```
  if _rc local active "."
  ```
- Line 90: loc, name
  ```
  else local active "`r(names)'"
  ```
- Line 91: name
  ```
  if "`active'"=="." | `:list posof "`active'" in names'==0 {
  ```
- Line 92: loc
  ```
  local active
  ```
- Line 104: name
  ```
  // - if active estimates not stored yet and "`names'"==".": simply execute
  ```
- Line 107: name
  ```
  // - else if active estimates stored but not in `names': backup/restore active estimates
  ```
- Line 110: name
  ```
  //loop over estimates names and run subcommand
  ```
- Line 112: loc, name
  ```
  foreach m of local names {
  ```
- Line 113: name
  ```
  if "`names'"!="." {
  ```
- Line 121: name
  ```
  backup_estimates_name
  ```
- Line 123: loc
  ```
  local rc = _rc
  ```
- Line 124: name
  ```
  restore_estimates_name
  ```
- Line 125: name
  ```
  if "`names'"!="." {
  ```
- Line 127: name
  ```
  else _est hold `m', estimates varname(_est_`m')
  ```
- Line 140: name
  ```
  program define backup_estimates_name, eclass
  ```
- Line 141: loc, name
  ```
  ereturn local _estadd_estimates_name `"`e(_estimates_name)'"'
  ```
- Line 142: loc, name
  ```
  ereturn local _estimates_name ""
  ```
- Line 144: name
  ```
  program define restore_estimates_name, eclass
  ```
- Line 145: loc, name
  ```
  ereturn local _estimates_name `"`e(_estadd_estimates_name)'"'
  ```
- Line 146: loc, name
  ```
  ereturn local _estadd_estimates_name ""
  ```
- Line 149: name
  ```
  program confirm_new_ename
  ```
- Line 158: loc
  ```
  local efun: e(functions)
  ```
- Line 167: loc
  ```
  local ts = index("`var'",".")
  ```
- Line 172: name
  ```
  args name
  ```
- Line 173: name
  ```
  di as txt %25s `"e(`name') : "' `""{res:`e(`name')'}""'
  ```
- Line 177: name
  ```
  args name label
  ```
- Line 178: name
  ```
  di as txt %25s `"e(`name') = "' " " as res e(`name') _c
  ```
- Line 186: name
  ```
  args name label
  ```
- Line 188: loc, name
  ```
  local r = rowsof(e(`name'))
  ```
- Line 189: loc, name
  ```
  local c = colsof(e(`name'))
  ```
- Line 192: name
  ```
  tempname tmp
  ```
- Line 193: name
  ```
  mat `tmp' = e(`name')
  ```
- Line 194: loc
  ```
  local r = rowsof(`tmp')
  ```
- Line 195: loc
  ```
  local c = colsof(`tmp')
  ```
- Line 197: name
  ```
  di as txt %25s `"e(`name') : "' " " ///
  ```
- Line 200: loc, name
  ```
  local thelabel: rownames e(`name')
  ```
- Line 201: loc
  ```
  local thelabel: list retok thelabel
  ```
- Line 203: loc
  ```
  local thelabel: subinstr local thelabel " " ", ", all
  ```
- Line 214: loc
  ```
  * -estadd- subroutine: add local
  ```
- Line 215: loc
  ```
  program estadd_loc
  ```
- Line 216: loc
  ```
  estadd_local `0'
  ```
- Line 218: loc
  ```
  program estadd_loca
  ```
- Line 219: loc
  ```
  estadd_local `0'
  ```
- Line 221: loc
  ```
  program estadd_local, eclass
  ```
- Line 223: name
  ```
  syntax anything(equalok) [, Prefix(name) Replace Quietly ]
  ```
- Line 224: name
  ```
  gettoken name def : anything , parse(" =:")
  ```
- Line 226: name
  ```
  confirm_new_ename `prefix'`name'
  ```
- Line 228: loc, name
  ```
  ereturn local `prefix'`name'`def'
  ```
- Line 230: name
  ```
  added_macro `prefix'`name'
  ```
- Line 246: name
  ```
  syntax anything(equalok) [, Prefix(name) Replace Quietly ]
  ```
- Line 247: name
  ```
  if regexm("`anything'","^r\((.*)\)$") {     // estadd scalar r(name)
  ```
- Line 248: loc, name
  ```
  local name = regexs(1)
  ```
- Line 249: name
  ```
  capt confirm name `name'
  ```
- Line 252: loc
  ```
  local equ  "`anything'"
  ```
- Line 255: loc, name
  ```
  local isname 0
  ```
- Line 256: name
  ```
  gettoken name equ0: anything, parse(" =")
  ```
- Line 257: name
  ```
  capt confirm name `name'
  ```
- Line 259: name
  ```
  else if `"`equ0'"'==""  {               // estadd scalar name
  ```
- Line 260: loc, name
  ```
  local isname 1
  ```
- Line 261: loc, name
  ```
  local equ  "scalar(`name')"
  ```
- Line 263: name
  ```
  else {                                  // estadd scalar name [=] exp
  ```
- Line 266: loc
  ```
  local equ `"`equ0'"'
  ```
- Line 271: name
  ```
  confirm_new_ename `prefix'`name'
  ```
- Line 273: name
  ```
  ereturn scalar `prefix'`name' = `equ'
  ```
- Line 275: name
  ```
  added_scalar `prefix'`name'
  ```
- Line 291: name
  ```
  syntax anything(equalok) [, Prefix(name) Replace Quietly ]
  ```
- Line 292: name
  ```
  if regexm("`anything'","^r\((.*)\)$") {     // estadd matrix r(name)
  ```
- Line 293: loc, name
  ```
  local name = regexs(1)
  ```
- Line 294: name
  ```
  capt confirm name `name'
  ```
- Line 297: loc
  ```
  local equ  "`anything'"
  ```
- Line 300: loc, name
  ```
  local isname 0
  ```
- Line 301: name
  ```
  gettoken name equ0: anything, parse(" =")
  ```
- Line 302: name
  ```
  capt confirm name `name'
  ```
- Line 304: name
  ```
  else if `"`equ0'"'==""  {               // estadd matrix name
  ```
- Line 305: loc, name
  ```
  local isname 1
  ```
- Line 306: loc, name
  ```
  local equ  "`name'"
  ```
- Line 308: name
  ```
  else {                                  // estadd matrix name [=] exp
  ```
- Line 311: loc
  ```
  local equ `"`equ0'"'
  ```
- Line 316: name
  ```
  confirm_new_ename `prefix'`name'
  ```
- Line 318: name
  ```
  tempname M
  ```
- Line 320: name
  ```
  ereturn matrix `prefix'`name' = `M'
  ```
- Line 322: name
  ```
  added_matrix `prefix'`name'
  ```
- Line 329: name
  ```
  syntax [, Prefix(name) Replace Quietly ]
  ```
- Line 332: name
  ```
  //check e()-names
  ```
- Line 333: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'mean
  ```
- Line 335: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 336: loc
  ```
  if "`wtype'"=="pweight" local wtype aweight
  ```
- Line 338: loc
  ```
  local subpop "`e(subpop)'"
  ```
- Line 339: loc
  ```
  if "`subpop'"=="" local subpop 1
  ```
- Line 340: name
  ```
  //copy coefficients matrix and determine varnames
  ```
- Line 341: name
  ```
  tempname results
  ```
- Line 343: lname, loc, name
  ```
  local vars: colnames `results'
  ```
- Line 344: lat
  ```
  //loop over variables: calculate -mean-
  ```
- Line 345: loc
  ```
  local j 0
  ```
- Line 346: loc
  ```
  foreach var of local vars {
  ```
- Line 347: loc
  ```
  local ++j
  ```
- Line 365: name
  ```
  syntax [, noBinary Prefix(name) Replace Quietly ]
  ```
- Line 368: name
  ```
  //check e()-names
  ```
- Line 369: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'sd
  ```
- Line 371: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 372: loc
  ```
  if "`wtype'"=="pweight" local wtype aweight
  ```
- Line 374: loc
  ```
  local subpop "`e(subpop)'"
  ```
- Line 375: loc
  ```
  if "`subpop'"=="" local subpop 1
  ```
- Line 376: name
  ```
  //copy coefficients matrix and determine varnames
  ```
- Line 377: name
  ```
  tempname results
  ```
- Line 379: lname, loc, name
  ```
  local vars: colnames `results'
  ```
- Line 380: lat
  ```
  //loop over variables: calculate -mean-
  ```
- Line 381: loc
  ```
  local j 0
  ```
- Line 382: loc
  ```
  foreach var of local vars {
  ```
- Line 383: loc
  ```
  local ++j
  ```
- Line 405: name
  ```
  syntax [, Prefix(name) Replace Quietly ]
  ```
- Line 408: name
  ```
  //check e()-names
  ```
- Line 409: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'beta
  ```
- Line 411: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 412: loc
  ```
  if "`wtype'"=="pweight" local wtype aweight
  ```
- Line 414: loc
  ```
  local subpop "`e(subpop)'"
  ```
- Line 415: loc
  ```
  if "`subpop'"=="" local subpop 1
  ```
- Line 416: name
  ```
  //copy coefficients matrix and determine varnames
  ```
- Line 417: name
  ```
  tempname results sddep
  ```
- Line 419: lname, loc, name
  ```
  local vars: colnames `results'
  ```
- Line 420: loc
  ```
  local eqs: coleq `results', q
  ```
- Line 421: loc
  ```
  local depv "`e(depvar)'"
  ```
- Line 422: lat
  ```
  //loop over variables: calculate -beta-
  ```
- Line 423: loc
  ```
  local j 0
  ```
- Line 424: loc
  ```
  local lastdepvar
  ```
- Line 425: loc
  ```
  foreach var of local vars {
  ```
- Line 426: loc
  ```
  local depvar: word `++j' of `eqs'
  ```
- Line 427: loc
  ```
  if "`depvar'"=="_" local depvar "`depv'"
  ```
- Line 442: loc
  ```
  local lastdepvar "`depvar'"
  ```
- Line 454: name
  ```
  syntax [, Prefix(name) Replace Quietly ]
  ```
- Line 455: name
  ```
  //check e()-names
  ```
- Line 456: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'coxsnell
  ```
- Line 458: name
  ```
  tempname results
  ```
- Line 471: name
  ```
  syntax [, Prefix(name) Replace Quietly ]
  ```
- Line 472: name
  ```
  //check e()-names
  ```
- Line 473: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'nagelkerke
  ```
- Line 475: name
  ```
  tempname results
  ```
- Line 495: loc
  ```
  if `"`prefix'"'=="" local prefix y
  ```
- Line 497: loc
  ```
  local 0 ", `prefix'"
  ```
- Line 498: name
  ```
  syntax [, prefix(name) ]
  ```
- Line 501: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 502: loc
  ```
  if "`wtype'"=="pweight" local wtype aweight
  ```
- Line 504: loc
  ```
  local subpop "`e(subpop)'"
  ```
- Line 505: loc
  ```
  if "`subpop'"=="" local subpop 1
  ```
- Line 507: name
  ```
  tempname results
  ```
- Line 508: loc
  ```
  local Stats p99 p95 p90 p75 p50 p25 p10 p5 p1 kurtosis ///
  ```
- Line 511: loc
  ```
  local stats `Stats'
  ```
- Line 512: loc
  ```
  local range range
  ```
- Line 513: loc
  ```
  local cv cv
  ```
- Line 514: loc
  ```
  local semean semean
  ```
- Line 515: loc
  ```
  local iqr iqr
  ```
- Line 516: loc
  ```
  local sumtype detail
  ```
- Line 520: loc
  ```
  local p25 p25
  ```
- Line 521: loc
  ```
  local p50 p50
  ```
- Line 522: loc
  ```
  local p75 p75
  ```
- Line 524: loc
  ```
  if "`median'"!="" local p50 p50
  ```
- Line 525: loc
  ```
  foreach stat of local Stats {
  ```
- Line 527: loc
  ```
  local stats: list stats | stat
  ```
- Line 531: loc
  ```
  "`semean'"=="" & "`iqr'"=="" local stats sd max min mean
  ```
- Line 532: loc
  ```
  local sumtype sum mean min max
  ```
- Line 534: loc
  ```
  "`semean'"=="" & "`iqr'"=="" local sumtype meanonly
  ```
- Line 536: loc
  ```
  local sumtype `sumtype' Var sd
  ```
- Line 537: loc
  ```
  if "`:list stats - sumtype'"=="" & "`iqr'"=="" local sumtype
  ```
- Line 538: loc
  ```
  else local sumtype detail
  ```
- Line 541: loc
  ```
  local Stats: subinstr local stats "var" "Var"
  ```
- Line 542: loc
  ```
  local nstats: word count `iqr' `semean' `cv' `range' `stats'
  ```
- Line 545: name
  ```
  confirm_new_ename `prefix'`=lower("`stat'")'
  ```
- Line 548: lat
  ```
  //calculate stats
  ```
- Line 549: loc
  ```
  local var: word 1 of `e(depvar)'
  ```
- Line 552: loc
  ```
  local i 0
  ```
- Line 565: loc
  ```
  foreach stat of local Stats {
  ```
- Line 569: loc
  ```
  local i 0
  ```
- Line 572: loc, name
  ```
  local sname = lower("`stat'")
  ```
- Line 573: name
  ```
  ereturn scalar `prefix'`sname' = `results'[`++i',1]
  ```
- Line 574: name
  ```
  added_scalar `prefix'`sname'
  ```
- Line 584: name
  ```
  Prefix(name) Replace Quietly ]
  ```
- Line 588: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 589: loc
  ```
  if "`wtype'"=="pweight" local wtype aweight
  ```
- Line 591: loc
  ```
  local subpop "`e(subpop)'"
  ```
- Line 592: loc
  ```
  if "`subpop'"=="" local subpop 1
  ```
- Line 594: name
  ```
  tempname results results2
  ```
- Line 595: loc
  ```
  local Stats p99 p95 p90 p75 p50 p25 p10 p5 p1 kurtosis ///
  ```
- Line 598: loc
  ```
  local stats `Stats'
  ```
- Line 599: loc
  ```
  local range range
  ```
- Line 600: loc
  ```
  local cv cv
  ```
- Line 601: loc
  ```
  local semean semean
  ```
- Line 602: loc
  ```
  local iqr iqr
  ```
- Line 603: loc
  ```
  local sumtype detail
  ```
- Line 607: loc
  ```
  local p25 p25
  ```
- Line 608: loc
  ```
  local p50 p50
  ```
- Line 609: loc
  ```
  local p75 p75
  ```
- Line 611: loc
  ```
  if "`median'"!="" local p50 p50
  ```
- Line 612: loc
  ```
  foreach stat of local Stats {
  ```
- Line 614: loc
  ```
  local stats: list stats | stat
  ```
- Line 618: loc
  ```
  "`semean'"=="" & "`iqr'"=="" local stats sd max min mean
  ```
- Line 619: loc
  ```
  local sumtype sum mean min max
  ```
- Line 621: loc
  ```
  "`semean'"=="" & "`iqr'"=="" local sumtype meanonly
  ```
- Line 623: loc
  ```
  local sumtype `sumtype' Var sd
  ```
- Line 624: loc
  ```
  if "`:list stats - sumtype'"=="" & "`iqr'"=="" local sumtype
  ```
- Line 625: loc
  ```
  else local sumtype detail
  ```
- Line 628: loc
  ```
  local Stats: subinstr local stats "var" "Var"
  ```
- Line 629: loc
  ```
  local nstats: word count `iqr' `semean' `cv' `range' `stats'
  ```
- Line 632: name
  ```
  confirm_new_ename `prefix'`=lower("`stat'")'
  ```
- Line 635: name
  ```
  //copy coefficients matrix and determine varnames
  ```
- Line 637: lname, loc, name
  ```
  local vars: colnames `results'
  ```
- Line 641: lat
  ```
  //loop over variables: calculate stats
  ```
- Line 642: loc
  ```
  local j 0
  ```
- Line 643: loc
  ```
  foreach var of local vars {
  ```
- Line 644: loc
  ```
  local ++j
  ```
- Line 649: loc
  ```
  local i 0
  ```
- Line 662: loc
  ```
  foreach stat of local Stats {
  ```
- Line 668: loc
  ```
  local i 0
  ```
- Line 671: loc, name
  ```
  local sname = lower("`stat'")
  ```
- Line 673: name
  ```
  ereturn matrix `prefix'`sname' = `results2'
  ```
- Line 674: name
  ```
  added_matrix `prefix'`sname'
  ```
- Line 679: lat
  ```
  * -estadd- subroutine: variance inflation factors
  ```
- Line 682: loc
  ```
  local caller : di _caller()
  ```
- Line 683: name
  ```
  syntax [, TOLerance SQRvif Prefix(name) Replace Quietly ]
  ```
- Line 686: name
  ```
  //check e()-names
  ```
- Line 688: name
  ```
  confirm_new_ename `prefix'vif
  ```
- Line 689: name
  ```
  if "`tolerance'"!="" confirm_new_ename `prefix'tolerance
  ```
- Line 690: name
  ```
  if "`sqrvif'"!="" confirm_new_ename `prefix'sqrvif
  ```
- Line 693: name
  ```
  tempname results results2 results3
  ```
- Line 706: loc
  ```
  local i 0
  ```
- Line 707: loc, name
  ```
  local name "`r(name_`++i')'"
  ```
- Line 708: name
  ```
  while "`name'"!="" {
  ```
- Line 709: loc, name
  ```
  local j = colnumb(`results',"`name'")
  ```
- Line 715: loc, name
  ```
  local name "`r(name_`++i')'"
  ```
- Line 736: name
  ```
  syntax [, Prefix(name) Replace Quietly ]
  ```
- Line 739: name
  ```
  //check e()-names
  ```
- Line 740: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'ebsd
  ```
- Line 742: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 743: loc
  ```
  if "`wtype'"=="pweight" local wtype aweight
  ```
- Line 745: loc
  ```
  local subpop "`e(subpop)'"
  ```
- Line 746: loc
  ```
  if "`subpop'"=="" local subpop 1
  ```
- Line 747: name
  ```
  //copy coefficients matrix and determine varnames
  ```
- Line 748: name
  ```
  tempname results
  ```
- Line 750: lname, loc, name
  ```
  local vars: colnames `results'
  ```
- Line 751: lat
  ```
  //loop over variables: calculate -mean-
  ```
- Line 752: loc
  ```
  local j 0
  ```
- Line 753: loc
  ```
  foreach var of local vars {
  ```
- Line 754: loc
  ```
  local ++j
  ```
- Line 772: name
  ```
  syntax [, noCONStant Prefix(name) Replace Quietly ]
  ```
- Line 773: name
  ```
  //check e()-names
  ```
- Line 774: name
  ```
  if "`replace'"=="" confirm_new_ename `prefix'expb
  ```
- Line 775: name
  ```
  //copy coefficients matrix and determine names of coefficients
  ```
- Line 776: name
  ```
  tempname results
  ```
- Line 778: lname, loc, name
  ```
  local coefs: colnames `results'
  ```
- Line 780: loc
  ```
  local j 0
  ```
- Line 781: loc
  ```
  foreach coef of local coefs {
  ```
- Line 782: loc
  ```
  local ++j
  ```
- Line 797: lat
  ```
  * -estadd- subroutine: partial and semi-partial correlations
  ```
- Line 800: name
  ```
  syntax [, semi Prefix(name) Replace Quietly ]
  ```
- Line 803: name
  ```
  //check e()-names
  ```
- Line 805: name
  ```
  if "`semi'"!="" confirm_new_ename `prefix'spcorr
  ```
- Line 806: name
  ```
  confirm_new_ename `prefix'pcorr
  ```
- Line 809: name
  ```
  tempname results results2
  ```
- Line 814: loc
  ```
  local eqs: coleq `results', quoted
  ```
- Line 815: loc
  ```
  local eq: word 1 of `eqs'
  ```
- Line 817: lname, loc, name
  ```
  local vars: colnames `results2'
  ```
- Line 818: loc
  ```
  foreach var of local vars {
  ```
- Line 820: loc
  ```
  if !_rc local temp "`temp'`var' "
  ```
- Line 822: loc
  ```
  local vars "`temp'"
  ```
- Line 826: loc
  ```
  local results2
  ```
- Line 828: loc
  ```
  local depv: word 1 of `e(depvar)'
  ```
- Line 830: loc
  ```
  local wtype `e(wtype)'
  ```
- Line 831: loc
  ```
  if inlist("`wtype'","pweight","iweight") local wtype aweight
  ```
- Line 848: name
  ```
  tempname hcurrent
  ```
- Line 852: loc
  ```
  local NmK = e(df_r)
  ```
- Line 853: loc
  ```
  local R2 = e(r2)
  ```
- Line 855: loc
  ```
  foreach var of local varlist {
  ```
- Line 858: loc
  ```
  local s "1"
  ```
- Line 859: loc
  ```
  if _b[`var']<0 local s "-1"
  ```
- Line 860: loc
  ```
  local c = colnumb(`results',"`eq':`var'")
  ```
- Line 873: loc
  ```
  local caller : di _caller()
  ```
- Line 874: name
  ```
  syntax anything(id="model") [, Name(name) Prefix(name) Replace Quietly * ]
  ```
- Line 875: loc, name
  ```
  if "`name'"=="" local name lrtest_
  ```
- Line 876: name
  ```
  //check e()-names
  ```
- Line 878: name
  ```
  confirm_new_ename `prefix'`name'p
  ```
- Line 879: name
  ```
  confirm_new_ename `prefix'`name'chi2
  ```
- Line 880: name
  ```
  confirm_new_ename `prefix'`name'df
  ```
- Line 885: name
  ```
  ereturn scalar `prefix'`name'p = r(p)
  ```
- Line 886: name
  ```
  ereturn scalar `prefix'`name'chi2 = r(chi2)
  ```
- Line 887: name
  ```
  ereturn scalar `prefix'`name'df = r(df)
  ```
- Line 889: name
  ```
  added_scalar `prefix'`name'p
  ```
- Line 890: name
  ```
  added_scalar `prefix'`name'chi2
  ```
- Line 891: name
  ```
  added_scalar `prefix'`name'df
  ```
- Line 895: lon
  ```
  * -estadd- subroutine: support for -brant- by Long and Freese
  ```
- Line 899: loc
  ```
  local caller : di _caller()
  ```
- Line 900: name
  ```
  syntax [ , Prefix(name) Replace Quietly * ]
  ```
- Line 907: name
  ```
  // check names
  ```
- Line 909: name
  ```
  foreach name in brant_chi2 brant_df brant_p brant {
  ```
- Line 910: name
  ```
  confirm_new_ename `prefix'`name'
  ```
- Line 920: name
  ```
  tempname mat
  ```
- Line 929: lon
  ```
  * -estadd- subroutine: support for -fitstat- by Long and Freese
  ```
- Line 933: loc
  ```
  local caller : di _caller()
  ```
- Line 934: name
  ```
  syntax [ , Prefix(name) Replace Quietly Bic * ]
  ```
- Line 942: loc
  ```
  local stats: r(scalars)
  ```
- Line 943: loc
  ```
  local allstats                                                  ///
  ```
- Line 947: loc
  ```
  local stats: list allstats & stats
  ```
- Line 949: loc
  ```
  local bic aic aic_n bic bic_p statabic stataaic
  ```
- Line 950: loc
  ```
  local stats: list bic & stats
  ```
- Line 954: name
  ```
  // check names
  ```
- Line 956: loc
  ```
  foreach stat of local stats {
  ```
- Line 957: loc, name
  ```
  if inlist("`stat'", "bic", "aic") local rname `stat'0
  ```
- Line 958: loc, name
  ```
  else local rname `stat'
  ```
- Line 959: name
  ```
  confirm_new_ename `prefix'`rname'
  ```
- Line 965: loc
  ```
  foreach stat of local stats {
  ```
- Line 966: loc, name
  ```
  if inlist("`stat'", "bic", "aic") local rname `stat'0
  ```
- Line 967: loc, name
  ```
  else local rname `stat'
  ```
- Line 968: name
  ```
  ereturn scalar `prefix'`rname' = r(`stat')
  ```
- Line 969: name
  ```
  added_scalar `prefix'`rname'
  ```
- Line 974: lon
  ```
  * -estadd- subroutine: support for -listcoef- by Long and Freese
  ```
- Line 978: loc
  ```
  local caller : di _caller()
  ```
- Line 979: name
  ```
  syntax [anything] [ , Prefix(name) Replace Quietly ///
  ```
- Line 984: loc
  ```
  local matrix matrix
  ```
- Line 993: loc
  ```
  local listcoef_matrices  "xs ys std fact facts pct pcts"
  ```
- Line 994: loc
  ```
  if "`sd'"=="" local listcoef_matrices "`listcoef_matrices' sdx"
  ```
- Line 1007: name
  ```
  confirm_new_ename `prefix'pvalue
  ```
- Line 1008: loc
  ```
  foreach matrix of local listcoef_matrices {
  ```
- Line 1009: name
  ```
  _estadd_listcoef_ChkEName b_`matrix', prefix(`prefix')
  ```
- Line 1019: loc
  ```
  foreach matrix of local listcoef_matrices {
  ```
- Line 1024: name
  ```
  program define _estadd_listcoef_ChkEName
  ```
- Line 1025: name
  ```
  syntax name [, prefix(str) ]
  ```
- Line 1026: name
  ```
  capt confirm matrix r(`namelist')
  ```
- Line 1028: name
  ```
  confirm_new_ename `prefix'`namelist'
  ```
- Line 1031: name
  ```
  syntax name [, prefix(str) ]
  ```
- Line 1032: name
  ```
  capt confirm matrix r(b_`namelist')
  ```
- Line 1034: name
  ```
  tempname tmp
  ```
- Line 1035: name
  ```
  matrix `tmp' = r(b_`namelist')
  ```
- Line 1036: name
  ```
  capt confirm matrix r(b2_`namelist')
  ```
- Line 1038: loc, name
  ```
  local eqnames: coleq e(b), quoted
  ```
- Line 1039: loc, name
  ```
  local eqnames: list uniq eqnames
  ```
- Line 1040: loc, name
  ```
  local eqname: word 1 of `eqnames'
  ```
- Line 1041: name
  ```
  mat coleq `tmp' = `"`eqname'"'
  ```
- Line 1042: name
  ```
  tempname tmp2
  ```
- Line 1043: name
  ```
  matrix `tmp2' = r(b2_`namelist')
  ```
- Line 1044: loc, name
  ```
  local eqname: word 2 of `eqnames'
  ```
- Line 1045: name
  ```
  mat coleq `tmp2' = `"`eqname'"'
  ```
- Line 1049: name
  ```
  ereturn matrix `prefix'b_`namelist' = `tmp'
  ```
- Line 1050: name
  ```
  added_matrix `prefix'b_`namelist' _rown
  ```
- Line 1053: name
  ```
  syntax anything(name=listcoef_matrices) [, prefix(str) gt lt ADJacent ]
  ```
- Line 1055: loc
  ```
  local lt lt
  ```
- Line 1056: loc
  ```
  local gt gt
  ```
- Line 1058: loc
  ```
  local adjacent = "`adjacent'"!=""
  ```
- Line 1059: loc
  ```
  local lt = "`lt'"!=""
  ```
- Line 1060: loc
  ```
  local gt = "`gt'"!=""
  ```
- Line 1063: name
  ```
  tempname outcomes
  ```
- Line 1068: loc
  ```
  local noutcomes = colsof(`outcomes')
  ```
- Line 1069: loc, name
  ```
  local eqnames `"`e(eqnames)'"'
  ```
- Line 1070: name
  ```
  if (`:list sizeof eqnames'<`noutcomes') {
  ```
- Line 1071: loc
  ```
  local ibase = e(ibase`type')
  ```
- Line 1073: loc
  ```
  else local ibase 0
  ```
- Line 1076: loc
  ```
  local outcomelab`i' `"`e(baselab)'"'
  ```
- Line 1079: name
  ```
  gettoken eq eqnames : eqnames
  ```
- Line 1080: loc
  ```
  local outcomelab`i' `"`eq'"'
  ```
- Line 1083: loc
  ```
  local outcomelab`i': di `outcomes'[1,`i']
  ```
- Line 1089: loc
  ```
  local noutcomes = colsof(`outcomes')
  ```
- Line 1091: loc
  ```
  local outcomelab`i' `"`e(out`i')'"'
  ```
- Line 1100: name
  ```
  tempname stats
  ```
- Line 1106: loc, name
  ```
  local enames "b_raw b_se b_z b_p"
  ```
- Line 1107: loc
  ```
  foreach matrix of local listcoef_matrices {
  ```
- Line 1111: loc, name
  ```
  local enames `"`enames' b_`matrix'"'
  ```
- Line 1115: loc
  ```
  local contrast "r(contrast)"
  ```
- Line 1116: loc
  ```
  local ncontrast = colsof(`contrast')
  ```
- Line 1117: name
  ```
  tempname stats0 temp
  ```
- Line 1118: name
  ```
  matrix rename `stats' `stats0'
  ```
- Line 1120: loc
  ```
  local out1 = `outcomes'[1, `i']
  ```
- Line 1121: loc
  ```
  local j 0
  ```
- Line 1123: loc
  ```
  local out2 = `outcomes'[1, `j']
  ```
- Line 1140: loc
  ```
  local i 0
  ```
- Line 1141: loc, name
  ```
  foreach ename of local enames {
  ```
- Line 1142: loc
  ```
  local ++i
  ```
- Line 1144: name
  ```
  ereturn matrix `prefix'`ename' = `temp'
  ```
- Line 1145: name
  ```
  added_matrix `prefix'`ename' _rown
  ```
- Line 1150: lon
  ```
  * -estadd- subroutine: support for -mlogtest- by Long and Freese
  ```
- Line 1154: loc
  ```
  local caller : di _caller()
  ```
- Line 1155: name
  ```
  syntax [anything] [ , Prefix(name) Replace Quietly set(passthru) * ]
  ```
- Line 1157: loc
  ```
  local rmat: r(matrices)
  ```
- Line 1159: name
  ```
  // check names
  ```
- Line 1164: loc
  ```
  local cat1 = el(r(`m'),`r',1)
  ```
- Line 1165: loc
  ```
  local cat2 = el(r(`m'),`r',2)
  ```
- Line 1166: name
  ```
  confirm_new_ename `prefix'`m'_`cat1'_`cat2'_chi2
  ```
- Line 1167: name
  ```
  confirm_new_ename `prefix'`m'_`cat1'_`cat2'_df
  ```
- Line 1168: name
  ```
  confirm_new_ename `prefix'`m'_`cat1'_`cat2'_p
  ```
- Line 1174: loc
  ```
  local cat = el(r(`m'),`r',1)
  ```
- Line 1175: name
  ```
  confirm_new_ename `prefix'`m'_`cat'_chi2
  ```
- Line 1176: name
  ```
  confirm_new_ename `prefix'`m'_`cat'_df
  ```
- Line 1177: name
  ```
  confirm_new_ename `prefix'`m'_`cat'_p
  ```
- Line 1183: loc
  ```
  local i 0
  ```
- Line 1184: loc
  ```
  local r = rownumb(r(`m'),"set_`++i'")
  ```
- Line 1186: name
  ```
  confirm_new_ename `prefix'`m'_set`i'_chi2
  ```
- Line 1187: name
  ```
  confirm_new_ename `prefix'`m'_set`i'_df
  ```
- Line 1188: name
  ```
  confirm_new_ename `prefix'`m'_set`i'_p
  ```
- Line 1189: loc
  ```
  local r = rownumb(r(`m'),"set_`++i'")
  ```
- Line 1195: loc
  ```
  local r .
  ```
- Line 1196: loc
  ```
  if `"`set'"'!="" local r = rownumb(r(`m'),"set_1")-1
  ```
- Line 1198: name
  ```
  confirm_new_ename `prefix'`m'
  ```
- Line 1202: loc
  ```
  local di_added_scalars `"di _n as txt "added scalars:"'
  ```
- Line 1207: loc
  ```
  local di_added_scalars
  ```
- Line 1209: loc
  ```
  local cat1 = el(r(`m'),`r',1)
  ```
- Line 1210: loc
  ```
  local cat2 = el(r(`m'),`r',2)
  ```
- Line 1223: loc
  ```
  local di_added_scalars
  ```
- Line 1224: loc
  ```
  if "`m'"=="smhsiao" local skip 2
  ```
- Line 1225: loc
  ```
  else                local skip 0
  ```
- Line 1227: loc
  ```
  local cat = el(r(`m'),`r',1)
  ```
- Line 1238: name
  ```
  tempname tmp
  ```
- Line 1242: loc
  ```
  local i 0
  ```
- Line 1243: loc
  ```
  local r = rownumb(r(`m'),"set_`++i'")
  ```
- Line 1246: loc
  ```
  local di_added_scalars
  ```
- Line 1254: loc
  ```
  local r = rownumb(r(`m'),"set_`++i'")
  ```
- Line 1258: loc
  ```
  local di_added_matrices `"di _n as txt "added matrices:"'
  ```
- Line 1261: loc
  ```
  local r .
  ```
- Line 1262: loc
  ```
  if `"`set'"'!="" local r = rownumb(r(`m'),"set_1")-1
  ```
- Line 1265: loc
  ```
  local di_added_matrices
  ```
- Line 1276: lon
  ```
  * -estadd- subroutine: support for -prchange- by Long and Freese
  ```
- Line 1280: loc
  ```
  local caller : di _caller()
  ```
- Line 1281: name
  ```
  syntax [anything] [if] [in] [ , Prefix(name) Replace Quietly ///
  ```
- Line 1282: name
  ```
  PAttern(str) Binary(str) Continuous(str) NOAvg Avg split SPLIT2(name) ///
  ```
- Line 1287: loc
  ```
  if `"`split2'"'!="" local split split
  ```
- Line 1304: loc
  ```
  if `"`adapt'"'!=""  local noavg noavg
  ```
- Line 1308: loc
  ```
  if `"`binary'"'==""     local binary 2
  ```
- Line 1309: loc
  ```
  if `"`continuous'"'=="" local continuous 4
  ```
- Line 1327: loc
  ```
  local nomord = (r(modeltype)=="typical nomord")
  ```
- Line 1328: loc
  ```
  if inlist(`"`e(cmd)'"',"mlogit","mprobit") local nomord = 2
  ```
- Line 1345: loc
  ```
  local outcomenum `i'
  ```
- Line 1355: loc
  ```
  local outcomenum =  colnumb(r(predval), `"`r(outcome)'"')
  ```
- Line 1359: name
  ```
  // check names
  ```
- Line 1362: name
  ```
  confirm_new_ename `prefix'predval
  ```
- Line 1364: name
  ```
  confirm_new_ename `prefix'outcome
  ```
- Line 1369: loc
  ```
  local theoutcome: di el(r(catval),1,`i')
  ```
- Line 1370: name
  ```
  confirm_new_ename `prefix'predval`theoutcome'
  ```
- Line 1373: name
  ```
  confirm_new_ename `prefix'delta
  ```
- Line 1374: name
  ```
  confirm_new_ename `prefix'centered
  ```
- Line 1375: name
  ```
  confirm_new_ename `prefix'dc
  ```
- Line 1377: name
  ```
  confirm_new_ename `prefix'dcfrom
  ```
- Line 1378: name
  ```
  confirm_new_ename `prefix'dcto
  ```
- Line 1381: name
  ```
  confirm_new_ename `prefix'X
  ```
- Line 1388: loc, name
  ```
  local split2 `"`e(_estadd_estimates_name)'"'
  ```
- Line 1390: loc
  ```
  local split2 `"`e(cmd)'"'
  ```
- Line 1392: loc
  ```
  local split2 `"`split2'_"'
  ```
- Line 1405: name
  ```
  args name list
  ```
- Line 1406: loc
  ```
  foreach l of local list {
  ```
- Line 1407: loc
  ```
  local w = length(`"`l'"')
  ```
- Line 1417: loc
  ```
  local newlist `newlist' `type'
  ```
- Line 1419: loc, name
  ```
  c_local `name' `newlist'
  ```
- Line 1437: name
  ```
  tempname predv
  ```
- Line 1441: loc
  ```
  local theoutcome: di el(r(catval),1,`outcome')
  ```
- Line 1444: lname, loc, name
  ```
  local theoutcome: colnames `predv'
  ```
- Line 1450: loc
  ```
  local cpredval = colsof(r(predval))
  ```
- Line 1459: loc
  ```
  local theoutcome: di el(r(catval),1,`i')
  ```
- Line 1477: loc
  ```
  local eq: coleq e(b)
  ```
- Line 1478: loc
  ```
  local eq: word 1 of `eq'
  ```
- Line 1481: name
  ```
  name(dc) `pattern' `binary' `continuous' `fromto' eq(`eq')
  ```
- Line 1485: loc
  ```
  if "`avg'"!="" local nomordmat "r(changemn)"
  ```
- Line 1487: name
  ```
  tempname nomordmat
  ```
- Line 1491: name
  ```
  name(dc) `pattern' `binary' `continuous' `fromto'
  ```
- Line 1499: name
  ```
  name(dc) `pattern' `binary' `continuous' `fromto' eq(`eq')
  ```
- Line 1503: name
  ```
  name(dc) `pattern' `binary' `continuous' `fromto' eq(`eq')
  ```
- Line 1508: name
  ```
  _estadd_prchange_PostMat r(baseval), prefix(`prefix') name(X)
  ```
- Line 1511: name
  ```
  _estadd_prchange_dcNote, prefix(`prefix') name(dc) `binary' `continuous'
  ```
- Line 1515: name
  ```
  syntax [ , prefix(str) name(str) binary(str) continuous(str) ]
  ```
- Line 1516: loc
  ```
  local res `""{res:minmax} change" "{res:01} change" "{res:delta} change" "{res:sd} change" "{res:mar
  ```
- Line 1517: loc
  ```
  local bres: word `binary' of `res'
  ```
- Line 1518: loc
  ```
  local cres: word `continuous' of `res'
  ```
- Line 1524: name
  ```
  syntax anything, name(str) [ Fromto eq(str) prefix(str) ///
  ```
- Line 1528: name
  ```
  tempname tmp1
  ```
- Line 1529: loc, name
  ```
  local nmlist "`name'"
  ```
- Line 1535: name
  ```
  tempname pattmat
  ```
- Line 1540: name
  ```
  tempname tmp tmp2 tmp3
  ```
- Line 1541: name
  ```
  mat rename `tmp1' `tmp'
  ```
- Line 1542: loc
  ```
  local r = rowsof(`tmp')
  ```
- Line 1543: loc
  ```
  local i = 1
  ```
- Line 1553: loc
  ```
  local i 0
  ```
- Line 1554: loc
  ```
  foreach nm of local nmlist {
  ```
- Line 1555: loc
  ```
  local ++i
  ```
- Line 1556: loc
  ```
  local rown: rown `tmp`i''
  ```
- Line 1567: name
  ```
  syntax name(name=tmp1) [, pattmat(str) pattern(str) binary(str) continuous(str) fromto ]
  ```
- Line 1568: name
  ```
  tempname tmp
  ```
- Line 1569: name
  ```
  mat rename `tmp1' `tmp'
  ```
- Line 1570: loc
  ```
  local r = cond("`fromto'"!="", 3, 1)
  ```
- Line 1573: loc
  ```
  local rtot = rowsof(`tmp')
  ```
- Line 1576: lname, loc, name
  ```
  local vars: colnames `tmp1'
  ```
- Line 1577: loc
  ```
  local eqs: coleq `tmp1', quoted
  ```
- Line 1578: loc
  ```
  local j 0
  ```
- Line 1579: loc
  ```
  foreach var of local vars {
  ```
- Line 1580: loc
  ```
  local ++j
  ```
- Line 1584: loc
  ```
  local lasteq `"`eq'"'
  ```
- Line 1587: loc
  ```
  if _rc local type `continuous'
  ```
- Line 1588: loc
  ```
  else   local type `binary'
  ```
- Line 1590: loc
  ```
  local ii = (`type'-1)*`r'+1
  ```
- Line 1605: loc
  ```
  local cmd `"`e(cmd)'"'
  ```
- Line 1606: name
  ```
  tempname tmpmat
  ```
- Line 1613: loc
  ```
  if c(stata_version) < 9 local outcat cat
  ```
- Line 1614: loc
  ```
  else local outcat out
  ```
- Line 1615: loc
  ```
  local k_cat = e(k_`outcat')
  ```
- Line 1616: loc, name
  ```
  local eqnames `"`e(eqnames)'"'
  ```
- Line 1617: name
  ```
  if `k_cat'>`:list sizeof eqnames' { // no base equation
  ```
- Line 1618: loc
  ```
  local ibase = e(ibase`outcat')
  ```
- Line 1619: loc
  ```
  local baselab `"`e(baselab)'"'
  ```
- Line 1621: loc
  ```
  local baselab `"`e(base`outcat')'"'
  ```
- Line 1625: loc
  ```
  local eq `"`"`baselab'"'"'
  ```
- Line 1627: name
  ```
  else gettoken eq eqnames : eqnames, quotes
  ```
- Line 1628: loc
  ```
  local temp `"`temp' `eq'"'
  ```
- Line 1630: loc, name
  ```
  local eqnames: list retok temp
  ```
- Line 1632: loc
  ```
  local i 0
  ```
- Line 1633: loc, name
  ```
  foreach eq of local eqnames {
  ```
- Line 1634: loc
  ```
  local ++i
  ```
- Line 1635: loc
  ```
  local theoutcome: di el(e(`outcat'),1,`i')
  ```
- Line 1642: loc, name
  ```
  local eqnames `"`e(outeqs)'"'
  ```
- Line 1643: loc
  ```
  local i 0
  ```
- Line 1644: loc, name
  ```
  foreach eq of local eqnames {
  ```
- Line 1645: loc
  ```
  local ++i
  ```
- Line 1646: loc
  ```
  local theoutcome: di el(e(outcomes),`i',1)
  ```
- Line 1653: lname, loc, name
  ```
  local eqnames : colnames r(catval)
  ```
- Line 1654: loc
  ```
  local i 0
  ```
- Line 1655: loc, name
  ```
  foreach eq of local eqnames {
  ```
- Line 1656: loc
  ```
  local ++i
  ```
- Line 1657: loc
  ```
  local theoutcome: di el(r(catval),1,`i')
  ```
- Line 1666: loc
  ```
  local cmd `"`e(cmd)'"'
  ```
- Line 1668: loc
  ```
  if c(stata_version) < 9 local outcat cat
  ```
- Line 1669: loc
  ```
  else local outcat out
  ```
- Line 1670: loc
  ```
  local k_cat = e(k_`outcat')
  ```
- Line 1671: loc, name
  ```
  local eqnames `"`e(eqnames)'"'
  ```
- Line 1672: loc, name
  ```
  local nobase = (`k_cat'>`:list sizeof eqnames')
  ```
- Line 1674: loc
  ```
  local ibase = e(ibase`outcat')
  ```
- Line 1675: loc
  ```
  local baselab `"`e(baselab)'"'
  ```
- Line 1680: loc
  ```
  local eq `"`baselab'"'
  ```
- Line 1682: name
  ```
  else gettoken eq eqnames : eqnames
  ```
- Line 1684: name
  ```
  else gettoken eq eqnames : eqnames
  ```
- Line 1686: loc
  ```
  local value `"`eq'"'
  ```
- Line 1692: loc, name
  ```
  local eqnames `"`e(outeqs)'"'
  ```
- Line 1693: loc
  ```
  local i 0
  ```
- Line 1694: loc, name
  ```
  foreach eq of local eqnames {
  ```
- Line 1696: loc
  ```
  local value `"`eq'"'
  ```
- Line 1701: loc
  ```
  if `"`value'"'=="" local value `theoutcome'
  ```
- Line 1702: loc
  ```
  c_local eq `"`value'"'
  ```
- Line 1708: name
  ```
  tempname hcurrent
  ```
- Line 1711: name
  ```
  tempname b bi V Vi
  ```
- Line 1716: loc
  ```
  local k_kat = colsof(r(predval))
  ```
- Line 1717: name
  ```
  tempname catval catvali
  ```
- Line 1721: lname, loc, name
  ```
  local catlabi: colnames `catvali'
  ```
- Line 1722: loc
  ```
  local catnumi: di `catvali'[1,1]
  ```
- Line 1730: loc
  ```
  local tmp : coleq `b', q
  ```
- Line 1743: loc
  ```
  local qui qui
  ```
- Line 1753: lon
  ```
  * -estadd- subroutine: support for -prvalue- by Long and Freese
  ```
- Line 1757: loc
  ```
  local caller : di _caller()
  ```
- Line 1799: loc
  ```
  local append = (_rc==0) & ("`replace'"=="")
  ```
- Line 1800: name
  ```
  tempname prvalue prvalue_x prvalue_x2
  ```
- Line 1805: loc
  ```
  local ires = rowsof(`prvalue') + 1
  ```
- Line 1807: loc
  ```
  else local ires 1
  ```
- Line 1809: loc
  ```
  local label "pred`ires'"
  ```
- Line 1812: loc
  ```
  local label = substr(`"`label'"', 1, 30)  // 30 characters max
  ```
- Line 1813: loc
  ```
  local problemchars `": . `"""'"'
  ```
- Line 1814: loc
  ```
  foreach char of local problemchars {
  ```
- Line 1815: loc
  ```
  local label: subinstr local label `"`char'"' "_", all
  ```
- Line 1820: name
  ```
  tempname pred
  ```
- Line 1829: loc
  ```
  local hasx2 = _rc==0
  ```
- Line 1847: lname, loc, name
  ```
  local coln: colnames `pred'
  ```
- Line 1848: loc
  ```
  local firstcol: word 1 of `coln'
  ```
- Line 1849: loc
  ```
  local nfirstcol = substr("`firstcol'",2,.)
  ```
- Line 1850: loc
  ```
  local coln : subinstr local coln "`firstcol'" "`nfirstcol'" , word
  ```
- Line 1855: name
  ```
  tempname tmp res
  ```
- Line 1856: loc
  ```
  local r = rowsof(`anything')
  ```
- Line 1859: loc, name
  ```
  local nm: rownames `tmp'
  ```
- Line 1869: lname, loc, name
  ```
  local coln1: colfullnames `prvalue'
  ```
- Line 1870: lname, loc, name
  ```
  local coln2: colfullnames `pred'
  ```
- Line 1880: loc
  ```
  if "`two'"!="" local two 2
  ```
- Line 1881: name
  ```
  tempname tmp
  ```
- Line 1887: name
  ```
  syntax [name(name=post2)] [ , Prefix(name) Replace Quietly ///
  ```
- Line 1895: name
  ```
  tempname hcurrent
  ```
- Line 1897: loc
  ```
  local cmd = e(cmd)
  ```
- Line 1898: loc
  ```
  local depvar = e(depvar)
  ```
- Line 1899: loc
  ```
  local N = e(N)
  ```
- Line 1900: loc, name
  ```
  local estname `"`e(_estadd_estimates_name)'"'
  ```
- Line 1903: name
  ```
  tempname prvalue prvalue_x prvalue_x2
  ```
- Line 1907: loc
  ```
  local hasx2 = _rc==0
  ```
- Line 1913: name
  ```
  tempname tmp tmp2 b se
  ```
- Line 1915: loc
  ```
  local eqs: coleq `prvalue', q
  ```
- Line 1916: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 1917: loc
  ```
  foreach eq of local eqs {
  ```
- Line 1931: loc
  ```
  local r = rowsof(`prvalue')
  ```
- Line 1932: loc
  ```
  local c = colsof(`prvalue')
  ```
- Line 1933: lname, loc, name
  ```
  local coln: colnames `prvalue'
  ```
- Line 1934: loc
  ```
  local eqs: coleq `prvalue', q
  ```
- Line 1937: loc
  ```
  local coln: list uniq coln
  ```
- Line 1938: loc
  ```
  local ncol: list sizeof coln
  ```
- Line 1939: loc
  ```
  local icol: list posof "SE" in coln
  ```
- Line 1942: loc, name
  ```
  local labl : rownames `tmp'
  ```
- Line 1959: loc
  ```
  ereturn local model "`cmd'"
  ```
- Line 1960: loc
  ```
  ereturn local cmd "estadd_prvalue"
  ```
- Line 1961: loc
  ```
  ereturn local depvar "`depvar'"
  ```
- Line 1973: loc
  ```
  local istat 0
  ```
- Line 1975: loc
  ```
  local elabel: word `++istat' of "lower CI bounds" "upper CI bounds" ///
  ```
- Line 1978: loc
  ```
  foreach eq of local eqs {
  ```
- Line 1979: loc
  ```
  local colnumb = colnumb(`prvalue',`"`eq':`stat'"')
  ```
- Line 1988: loc
  ```
  local icol: list posof "`stat'" in coln
  ```
- Line 1992: loc, name
  ```
  local labl : rownames `tmp2'
  ```
- Line 2019: name
  ```
  _eststo `estname'`post2', `title'
  ```
- Line 2020: name
  ```
  di as txt _n "results stored as " as res "`estname'`post2'"
  ```
- Line 2036: lon
  ```
  * -estadd- subroutine: support for -asprvalue- by Long and Freese
  ```
- Line 2040: loc
  ```
  local caller : di _caller()
  ```
- Line 2082: loc
  ```
  local append = (_rc==0) & ("`replace'"=="")
  ```
- Line 2083: name
  ```
  tempname asprval asprval_asv asprval_csv
  ```
- Line 2088: loc
  ```
  local ires = rowsof(`asprval') + 1
  ```
- Line 2090: loc
  ```
  else local ires 1
  ```
- Line 2092: loc
  ```
  local label "pred`ires'"
  ```
- Line 2095: loc
  ```
  local label = substr(`"`label'"', 1, 30)  // 30 characters max
  ```
- Line 2096: loc
  ```
  local problemchars `": . `"""'"'
  ```
- Line 2097: loc
  ```
  foreach char of local problemchars {
  ```
- Line 2098: loc
  ```
  local label: subinstr local label `"`char'"' "_", all
  ```
- Line 2103: name
  ```
  tempname res
  ```
- Line 2108: loc
  ```
  local hasasv = _rc==0
  ```
- Line 2115: loc
  ```
  local hascsv = _rc==0
  ```
- Line 2135: name
  ```
  tempname tmp res
  ```
- Line 2136: loc
  ```
  local r = rowsof(`anything')
  ```
- Line 2139: loc, name
  ```
  local nm: rownames `tmp'
  ```
- Line 2149: lname, loc, name
  ```
  local coln1: colfullnames `master'
  ```
- Line 2160: name
  ```
  tempname tmp
  ```
- Line 2166: name
  ```
  syntax [name(name=post2)] [ , Prefix(name) Replace Quietly ///
  ```
- Line 2175: name
  ```
  tempname hcurrent
  ```
- Line 2177: loc
  ```
  local cmd = e(cmd)
  ```
- Line 2178: loc
  ```
  local depvar = e(depvar)
  ```
- Line 2179: loc
  ```
  local N = e(N)
  ```
- Line 2180: loc, name
  ```
  local estname `"`e(_estadd_estimates_name)'"'
  ```
- Line 2183: name
  ```
  tempname asprval asprval_asv asprval_csv
  ```
- Line 2186: loc
  ```
  local hasasv = _rc==0
  ```
- Line 2191: loc
  ```
  local hascsv = _rc==0
  ```
- Line 2197: name
  ```
  tempname tmp tmp2 b
  ```
- Line 2199: loc
  ```
  local eqs: coleq `asprval', q
  ```
- Line 2200: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 2201: loc
  ```
  foreach eq of local eqs {
  ```
- Line 2211: loc
  ```
  local r = rowsof(`asprval')
  ```
- Line 2212: lname, loc, name
  ```
  local coln: colnames `asprval'
  ```
- Line 2213: loc
  ```
  local eqs: coleq `asprval', q
  ```
- Line 2217: loc, name
  ```
  local labl : rownames `tmp'
  ```
- Line 2224: loc
  ```
  ereturn local model "`cmd'"
  ```
- Line 2225: loc
  ```
  ereturn local cmd "estadd_asprvalue"
  ```
- Line 2226: loc
  ```
  ereturn local depvar "`depvar'"
  ```
- Line 2240: loc
  ```
  local vars: coleq `asprval_asv'
  ```
- Line 2241: loc
  ```
  local vars: list uniq vars
  ```
- Line 2242: lname, loc, name
  ```
  local cats: colnames `asprval_asv'
  ```
- Line 2243: loc
  ```
  local cats: list uniq cats
  ```
- Line 2244: loc
  ```
  foreach var of local vars {
  ```
- Line 2245: loc
  ```
  foreach cat of local cats {
  ```
- Line 2257: loc
  ```
  local r = rowsof(`asprval_asv')
  ```
- Line 2258: loc
  ```
  local vars: coleq `asprval_asv'
  ```
- Line 2259: loc
  ```
  local vars: list uniq vars
  ```
- Line 2261: loc
  ```
  foreach var of local vars {
  ```
- Line 2263: loc, name
  ```
  local lbl: rownames `tmp2'
  ```
- Line 2284: name
  ```
  _eststo `estname'`post2', `title'
  ```
- Line 2285: name
  ```
  di as txt _n "results stored as " as res "`estname'`post2'"
  ```
- Line 2303: loc
  ```
  local caller : di _caller()
  ```
- Line 2304: name
  ```
  syntax [ anything(everything equalok)] [fw aw iw pw] [, Prefix(name) Replace Quietly * ]
  ```
- Line 2307: loc
  ```
  if "`prefix'"=="" local prefix "margins_"
  ```
- Line 2310: loc
  ```
  if `"`weight'`exp'"'!="" local wgtexp `"[`weight'`exp']"'
  ```
- Line 2313: name
  ```
  // check names
  ```
- Line 2314: loc
  ```
  local rscalars: r(scalars)
  ```
- Line 2315: loc
  ```
  local rmacros: r(macros)
  ```
- Line 2316: loc
  ```
  local rmatrices: r(matrices)
  ```
- Line 2317: loc
  ```
  local rmatrices: subinstr local rmatrices "V" "se", word
  ```
- Line 2320: loc, name
  ```
  foreach name of local `nmlist' {
  ```
- Line 2321: name
  ```
  confirm_new_ename `prefix'`name'
  ```
- Line 2328: loc, name
  ```
  foreach name of local rscalars {
  ```
- Line 2329: name
  ```
  ereturn scalar `prefix'`name' = r(`name')
  ```
- Line 2330: name
  ```
  added_scalar `prefix'`name'
  ```
- Line 2333: loc, name
  ```
  foreach name of local rmacros {
  ```
- Line 2334: loc, name
  ```
  ereturn local `prefix'`name' `"`r(`name')'"'
  ```
- Line 2335: name
  ```
  added_macro `prefix'`name'
  ```
- Line 2338: name
  ```
  tempname tmpmat
  ```
- Line 2339: loc, name
  ```
  foreach name of local rmatrices {
  ```
- Line 2340: name
  ```
  if "`name'"=="se" {
  ```
- Line 2347: name
  ```
  mat `tmpmat' = r(`name')
  ```
- Line 2349: name
  ```
  eret matrix `prefix'`name' = `tmpmat'
  ```
- Line 2350: name
  ```
  added_matrix `prefix'`name'
  ```
- Line 2359: name
  ```
  syntax [anything(equalok)] [, cmd(str) noEsample Esample2(varname) REName ///
  ```
- Line 2371: loc
  ```
  local b `"`3'"'
  ```
- Line 2377: loc
  ```
  local v `"`6'"'
  ```
- Line 2387: loc
  ```
  local v `"`3'"'
  ```
- Line 2396: loc
  ```
  local sample "`esample2'"
  ```
- Line 2402: loc
  ```
  local emacros: e(macros)
  ```
- Line 2404: loc
  ```
  local emacros: subinstr local emacros "properties" "", word
  ```
- Line 2406: loc
  ```
  foreach emacro of local emacros {
  ```
- Line 2407: loc
  ```
  local e_`emacro' `"`e(`emacro')'"'
  ```
- Line 2409: loc
  ```
  local escalars: e(scalars)
  ```
- Line 2411: loc
  ```
  local escalars: subinstr local escalars "N" "", word
  ```
- Line 2414: loc
  ```
  local escalars: subinstr local escalars "df_r" "", word
  ```
- Line 2416: loc
  ```
  foreach escalar of local escalars {
  ```
- Line 2417: name
  ```
  tempname e_`escalar'
  ```
- Line 2420: loc
  ```
  local ematrices: e(matrices)
  ```
- Line 2422: name
  ```
  tempname b
  ```
- Line 2426: name
  ```
  tempname v
  ```
- Line 2429: loc
  ```
  local bV "b V"
  ```
- Line 2430: loc
  ```
  local ematrices: list ematrices - bV
  ```
- Line 2431: loc
  ```
  foreach ematrix of local ematrices {
  ```
- Line 2432: name
  ```
  tempname e_`ematrix'
  ```
- Line 2435: name
  ```
  // rename
  ```
- Line 2436: name
  ```
  if "`b'"!="" & "`v'"!="" & "`rename'"!="" {
  ```
- Line 2437: loc, name
  ```
  local eqnames: coleq `b', q
  ```
- Line 2438: lname, loc, name
  ```
  local vnames: colnames `b'
  ```
- Line 2439: name
  ```
  mat coleq `v' = `eqnames'
  ```
- Line 2440: name
  ```
  mat coln `v' = `vnames'
  ```
- Line 2441: name
  ```
  mat roweq `v' = `eqnames'
  ```
- Line 2442: name
  ```
  mat rown `v' = `vnames'
  ```
- Line 2451: loc
  ```
  foreach emacro of local emacros {
  ```
- Line 2452: loc
  ```
  eret local `emacro' `"`e_`emacro''"'
  ```
- Line 2455: loc
  ```
  eret local cmd `"`cmd'"'
  ```
- Line 2457: loc
  ```
  foreach escalar of local escalars {
  ```
- Line 2460: loc
  ```
  foreach ematrix of local ematrices {
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/estout.ado**

- Line 5: loc
  ```
  return local cmdline estout `macval(0)'
  ```
- Line 11: name
  ```
  REName(passthru) ///
  ```
- Line 58: loc
  ```
  if "`style'"!="" local defaults "`style'"
  ```
- Line 61: name
  ```
  MatrixMode, `anything' `rename' // resets the cells argument
  ```
- Line 62: loc
  ```
  // and returns r(coefs) etc. and local 'matrixmode'
  ```
- Line 65: loc
  ```
  local elnum 0
  ```
- Line 68: loc
  ```
  if `"`par'"'=="(" local qed 1
  ```
- Line 69: loc
  ```
  local cells
  ```
- Line 71: loc
  ```
  local newrow
  ```
- Line 74: loc
  ```
  local row0
  ```
- Line 88: loc
  ```
  else local opt2
  ```
- Line 105: loc, name
  ```
  local `opt'_tname "el`++elnum'"
  ```
- Line 106: loc, name
  ```
  local ``opt'_tname'_ "`opt'"
  ```
- Line 107: loc, name
  ```
  local newrow `"`newrow' ``opt'_tname'"'
  ```
- Line 108: loc
  ```
  if `"`par'"'!="(" local opt2
  ```
- Line 109: name
  ```
  ParseValueSubopts ``opt'_tname' `opt', mrow(`mrow') `macval(opt2)'
  ```
- Line 110: loc
  ```
  local mrow
  ```
- Line 114: loc
  ```
  local newrow `"`newrow' `opt'"'
  ```
- Line 134: loc
  ```
  local newrow: list retok newrow
  ```
- Line 135: loc
  ```
  if `qed' local cells `"`cells'"`newrow'" "'
  ```
- Line 136: loc
  ```
  else local cells `"`cells'`newrow' "'
  ```
- Line 138: loc
  ```
  if `"`par'"'=="(" local qed 1
  ```
- Line 140: loc
  ```
  local cells: list retok cells
  ```
- Line 143: loc
  ```
  local eform "`eform2'"
  ```
- Line 144: loc
  ```
  local eform2
  ```
- Line 150: loc
  ```
  local margin "`margin2'"
  ```
- Line 151: loc
  ```
  local margin2
  ```
- Line 153: loc
  ```
  if `"`dropped'"'!="" local dropped "(dropped)"
  ```
- Line 155: loc
  ```
  local dropped `"`macval(dropped2)'"'
  ```
- Line 156: loc
  ```
  local dropped2
  ```
- Line 162: loc
  ```
  local statslabelsnone none
  ```
- Line 163: loc
  ```
  local statslabels
  ```
- Line 173: loc
  ```
  local `opt'none none
  ```
- Line 174: loc
  ```
  local `opt'
  ```
- Line 182: loc
  ```
  local numbers `"`macval(numbers2)'"'
  ```
- Line 183: loc
  ```
  local numbers2
  ```
- Line 203: loc
  ```
  if "`no`opt''"!="" local `opt'
  ```
- Line 207: loc
  ```
  if "`defaults'"=="esttab"               local defaults "tab"
  ```
- Line 210: loc
  ```
  local varwidthfactor = (1 + ("`eqlabelsmerge'"!="" & "`unstack'"=="")*.5)
  ```
- Line 212: loc
  ```
  if `"`macval(delimiter)'"'==""   local delimiter _tab
  ```
- Line 213: loc
  ```
  if `"`macval(interaction)'"'=="" local interaction `"" # ""'
  ```
- Line 216: loc
  ```
  if "`varwidth'"==""              local varwidth = cond("`label'"=="", 12, 20) * `varwidthfactor'
  ```
- Line 217: loc
  ```
  if "`modelwidth'"==""            local modelwidth 12
  ```
- Line 218: loc
  ```
  if "`noabbrev'"==""              local abbrev abbrev
  ```
- Line 219: loc
  ```
  if `"`macval(delimiter)'"'==""   local delimiter `"" ""'
  ```
- Line 220: loc
  ```
  if "`nosmcltags'"==""            local smcltags smcltags
  ```
- Line 221: loc
  ```
  if "`nosmclrules'"==""           local smclrules smclrules
  ```
- Line 222: loc
  ```
  if "`asis'"==""                  local noasis noasis
  ```
- Line 223: loc
  ```
  if `"`macval(interaction)'"'=="" local interaction `"" # ""'
  ```
- Line 226: loc
  ```
  if "`varwidth'"==""              local varwidth = cond("`label'"=="", 12, 20) * `varwidthfactor'
  ```
- Line 227: loc
  ```
  if "`modelwidth'"==""            local modelwidth 12
  ```
- Line 228: loc
  ```
  if "`noabbrev'"==""              local abbrev abbrev
  ```
- Line 229: loc
  ```
  if `"`macval(delimiter)'"'==""   local delimiter `"" ""'
  ```
- Line 230: loc
  ```
  if `"`macval(interaction)'"'=="" local interaction `"" # ""'
  ```
- Line 233: loc
  ```
  if "`varwidth'"==""              local varwidth = cond("`label'"=="", 12, 20) * `varwidthfactor'
  ```
- Line 234: loc
  ```
  if "`modelwidth'"==""            local modelwidth 12
  ```
- Line 235: loc
  ```
  if `"`macval(delimiter)'"'==""   local delimiter &
  ```
- Line 237: loc
  ```
  local end \\\
  ```
- Line 239: loc
  ```
  if `"`macval(interaction)'"'=="" local interaction `"" $\times$ ""'
  ```
- Line 242: loc
  ```
  if "`varwidth'"==""              local varwidth = cond("`label'"=="", 12, 20) * `varwidthfactor'
  ```
- Line 243: loc
  ```
  if "`modelwidth'"==""            local modelwidth 12
  ```
- Line 244: loc
  ```
  if `"`macval(begin)'"'==""       local begin <tr><td>
  ```
- Line 245: loc
  ```
  if `"`macval(delimiter)'"'==""   local delimiter </td><td>
  ```
- Line 246: loc
  ```
  if `"`macval(end)'"'==""         local end </td></tr>
  ```
- Line 247: loc
  ```
  if `"`macval(interaction)'"'=="" local interaction `"" # ""'
  ```
- Line 250: loc
  ```
  if "`varwidth'"==""              local varwidth = cond("`label'"=="", 12, 20) * `varwidthfactor'
  ```
- Line 251: loc
  ```
  if "`modelwidth'"==""            local modelwidth 12
  ```
- Line 252: loc
  ```
  if `"`macval(begin)'"'==""       local begin "| "
  ```
- Line 253: loc
  ```
  if `"`macval(delimiter)'"'==""   local delimiter " | "
  ```
- Line 254: loc
  ```
  if `"`macval(end)'"'==""         local end " |"
  ```
- Line 255: loc
  ```
  if `"`macval(interaction)'"'=="" local interaction `"" # ""'
  ```
- Line 257: loc
  ```
  if "`nostatslabelsfirst'"=="" local statslabelsfirst first
  ```
- Line 258: loc
  ```
  if "`nostatslabelslast'"==""  local statslabelslast last
  ```
- Line 259: loc
  ```
  if "`novarlabelsfirst'"==""   local varlabelsfirst first
  ```
- Line 260: loc
  ```
  if "`novarlabelslast'"==""    local varlabelslast last
  ```
- Line 261: loc
  ```
  if "`noeqlabelsfirst'"==""    local eqlabelsfirst first
  ```
- Line 262: loc
  ```
  if "`noeqlabelslast'"==""     local eqlabelslast last
  ```
- Line 263: loc
  ```
  if "`nolz'"==""               local lz lz
  ```
- Line 267: loc
  ```
  if `"`macval(indicatelabels)'"'=="" local indicatelabels "Yes No"
  ```
- Line 268: loc
  ```
  if `"`macval(refcatlabel)'"'=="" & "`norefcatlabel'"==""    local refcatlabel "ref."
  ```
- Line 269: loc
  ```
  if `"`macval(incelldelimiter)'"'=="" local incelldelimiter " "
  ```
- Line 270: loc
  ```
  if "`noomitted'"==""          local omitted omitted
  ```
- Line 271: loc
  ```
  if "`nobaselevels'"==""       local baselevels baselevels
  ```
- Line 281: name
  ```
  tempname file
  ```
- Line 283: loc
  ```
  if c(SE) local max 244
  ```
- Line 284: loc
  ```
  else local max 80
  ```
- Line 291: name
  ```
  if `"``opt0'_tname'"'!="" {
  ```
- Line 292: loc, name
  ```
  local opt `"``opt0'_tname'`opt1'"'
  ```
- Line 297: loc
  ```
  local newline
  ```
- Line 299: loc
  ```
  if `"`par'"'=="(" local qed 1
  ```
- Line 301: loc
  ```
  local newrow
  ```
- Line 305: loc, name
  ```
  local `el'_tname "el`++elnum'"
  ```
- Line 306: loc, name
  ```
  local ``el'_tname'_ "`el'"
  ```
- Line 307: loc, name
  ```
  local newrow "`newrow' ``el'_tname'"
  ```
- Line 310: loc
  ```
  local newrow "`newrow' `el'"
  ```
- Line 314: loc
  ```
  local newrow: list retok newrow
  ```
- Line 315: loc
  ```
  if `qed' local newline `"`newline'"`newrow'" "'
  ```
- Line 316: loc
  ```
  else local newline `"`newline'`newrow' "'
  ```
- Line 318: loc
  ```
  if `"`par'"'=="(" local qed 1
  ```
- Line 320: loc
  ```
  local line `"`newline'"'
  ```
- Line 322: loc
  ```
  local line: list retok line
  ```
- Line 323: loc
  ```
  local `opt' `"`macval(line)'"'
  ```
- Line 330: loc
  ```
  if "`smcltags'"=="" & "`noasis'"=="" local asis asis
  ```
- Line 331: loc
  ```
  if "`asis'"!="" local asis "_asis"
  ```
- Line 332: loc
  ```
  if "`smclrules'"!="" & "`nosmclmidrules'"=="" local smclmidrules smclmidrules
  ```
- Line 333: loc
  ```
  if "`smclmidrules'"!="" & "`nosmcleqrules'"=="" local smcleqrules smcleqrules
  ```
- Line 334: loc
  ```
  local haslabcol2 = (`"`macval(labcol2)'"'!="")
  ```
- Line 339: loc
  ```
  local prehead `"`"`macval(title)'"'"'
  ```
- Line 342: loc
  ```
  local postfoot `"`"`macval(note)'"'"'
  ```
- Line 348: loc
  ```
  local cells b
  ```
- Line 349: loc, name
  ```
  local b_tname "b"
  ```
- Line 350: loc
  ```
  local b_ "b"
  ```
- Line 353: loc
  ```
  local cells
  ```
- Line 359: loc
  ```
  if "`level'"=="" local level $S_level
  ```
- Line 364: name
  ```
  if "`ci_tname'"!="" {
  ```
- Line 365: name
  ```
  if `"`macval(`ci_tname'_label)'"'=="" {
  ```
- Line 366: loc, name
  ```
  local `ci_tname'_label "ci`level'"
  ```
- Line 368: name
  ```
  if `"`macval(`ci_tname'_par)'"'=="" {
  ```
- Line 369: loc, name
  ```
  local `ci_tname'_par `""" , """'
  ```
- Line 371: name
  ```
  gettoken 1 2 : `ci_tname'_par
  ```
- Line 374: loc, name
  ```
  local `ci_tname'_l_par `""`macval(1)'" "`macval(2)'""'
  ```
- Line 375: loc, name
  ```
  local `ci_tname'_u_par `""" "`macval(3)'""'
  ```
- Line 377: name
  ```
  if "`ci_l_tname'"!="" {
  ```
- Line 378: name
  ```
  if `"`macval(`ci_l_tname'_label)'"'=="" {
  ```
- Line 379: loc, name
  ```
  local `ci_l_tname'_label "min`level'"
  ```
- Line 382: name
  ```
  if "`ci_u_tname'"!="" {
  ```
- Line 383: name
  ```
  if `"`macval(`ci_u_tname'_label)'"'=="" {
  ```
- Line 384: loc, name
  ```
  local `ci_u_tname'_label "max`level'"
  ```
- Line 389: loc
  ```
  local firstv: word 1 of `values'
  ```
- Line 390: loc
  ```
  if "`firstv'"=="" local firstv "b"
  ```
- Line 391: loc
  ```
  if "``firstv'_fmt'"=="" local `firstv'_fmt %9.0g
  ```
- Line 392: loc
  ```
  foreach v of local values {
  ```
- Line 393: loc
  ```
  if "``v'_fmt'"=="" local `v'_fmt "``firstv'_fmt'"
  ```
- Line 395: loc
  ```
  local `v'_label "``v'_'"
  ```
- Line 409: loc
  ```
  else local discrete
  ```
- Line 410: loc, son
  ```
  local droppedison = (`"`macval(dropped)'"'!="")
  ```
- Line 413: loc
  ```
  if "`statsfmt'"=="" local statsfmt: word 1 of ``firstv'_fmt'
  ```
- Line 416: loc
  ```
  local stats: list uniq stats
  ```
- Line 417: loc
  ```
  if "`statsstar'"!="" local p " p"
  ```
- Line 418: loc
  ```
  else local p
  ```
- Line 421: loc
  ```
  local tablehasstars 0
  ```
- Line 422: loc
  ```
  foreach v of local values {
  ```
- Line 423: loc
  ```
  local el "``v'_'"
  ```
- Line 425: loc
  ```
  if "``v'_pvalue'"=="" local `v'_pvalue p
  ```
- Line 426: loc
  ```
  local tablehasstars 1
  ```
- Line 433: loc
  ```
  local starlevels "* 0.05 ** 0.01 *** 0.001"
  ```
- Line 442: loc
  ```
  local transform "exp(@) exp(@)"
  ```
- Line 444: loc
  ```
  local transformpattern "`eform'"
  ```
- Line 448: loc
  ```
  foreach m of local transformpattern {
  ```
- Line 456: loc
  ```
  local temp
  ```
- Line 457: loc
  ```
  foreach v of local values {
  ```
- Line 458: loc
  ```
  local temp: list temp | `v'_pvalue
  ```
- Line 460: loc
  ```
  foreach v of local temp {
  ```
- Line 461: name
  ```
  if `"``v'_tname'"'=="" {
  ```
- Line 462: loc, name
  ```
  local `v'_tname "el`++elnum'"
  ```
- Line 463: loc, name
  ```
  local ``v'_tname'_ "`v'"
  ```
- Line 464: loc, name
  ```
  local values: list values | `v'_tname
  ```
- Line 469: name
  ```
  if "`ci_tname'"!="" {
  ```
- Line 470: loc, name
  ```
  local values: subinstr local values "`ci_tname'" "`ci_tname'_l `ci_tname'_u", word
  ```
- Line 471: loc, name
  ```
  local `ci_tname'_l_ "ci_l"
  ```
- Line 472: loc, name
  ```
  local ci_l_tname "`ci_tname'_l"
  ```
- Line 473: loc, name
  ```
  local `ci_tname'_u_ ci_u
  ```
- Line 474: loc, name
  ```
  local ci_u_tname "`ci_tname'_u"
  ```
- Line 476: loc
  ```
  foreach v of local values {
  ```
- Line 477: loc
  ```
  local temp = ("``v'_transpose'"!="")
  ```
- Line 478: loc
  ```
  local values1mrow `"`values1mrow' `"``v'_' `temp' ``v'_mrow'"'"'
  ```
- Line 480: name
  ```
  tempname B D St
  ```
- Line 482: name
  ```
  *   - expand model names
  ```
- Line 486: loc
  ```
  local anything `"$eststo"'
  ```
- Line 489: loc
  ```
  if `"`anything'"'=="" local anything "."
  ```
- Line 495: loc
  ```
  qui estadd local cmd "."
  ```
- Line 501: loc, name
  ```
  local models `r(names)'
  ```
- Line 507: loc, name
  ```
  local temp names(`models') coefs(`values1mrow') stats(`stats'`p') ///
  ```
- Line 508: name, son
  ```
  `rename' margin(`margin') meqs(`meqs') dropped(`droppedison') level(`level') ///
  ```
- Line 512: loc
  ```
  local ccols = r(ccols)
  ```
- Line 522: loc, name
  ```
  local models `r(names)'
  ```
- Line 530: loc
  ```
  local nmodels = r(nmodels)
  ```
- Line 531: loc
  ```
  local ccols = r(ccols)
  ```
- Line 539: loc
  ```
  local order `"`value'"'
  ```
- Line 543: loc
  ```
  local nindicate 0
  ```
- Line 544: loc
  ```
  foreach indi of local indicate {
  ```
- Line 545: loc
  ```
  local ++nindicate
  ```
- Line 560: name
  ```
  *   - names and equations of final set
  ```
- Line 563: loc
  ```
  return local coefs  ""  // erase r(coefs)
  ```
- Line 564: loc
  ```
  return local ccols  ""
  ```
- Line 565: loc
  ```
  local R 0
  ```
- Line 566: loc
  ```
  local varlist       ""
  ```
- Line 567: loc
  ```
  local eqlist        ""
  ```
- Line 568: loc
  ```
  local eqs           "_"
  ```
- Line 569: loc
  ```
  local fullvarlist   ""
  ```
- Line 573: loc
  ```
  local R = rowsof(`B')
  ```
- Line 574: loc
  ```
  local C = colsof(`B')
  ```
- Line 575: name
  ```
  QuotedRowNames `B'
  ```
- Line 576: loc
  ```
  local varlist `"`value'"'
  ```
- Line 577: loc
  ```
  local eqlist: roweq `B', q
  ```
- Line 578: loc
  ```
  local eqlist: list clean eqlist
  ```
- Line 580: lname, name
  ```
  MakeQuotedFullnames `"`varlist'"' `"`eqlist'"'
  ```
- Line 581: loc
  ```
  local fullvarlist `"`value'"'
  ```
- Line 583: loc
  ```
  local droppedpos = `ccols'
  ```
- Line 585: loc
  ```
  local droppedpos `droppedpos' - 1
  ```
- Line 602: loc
  ```
  local dash
  ```
- Line 603: name
  ```
  tempname tmpmat
  ```
- Line 605: loc
  ```
  local temp `"`fullvarlist'"'
  ```
- Line 607: loc
  ```
  local temp2: list uniq eqs
  ```
- Line 608: loc
  ```
  local `v'`dash'eqdrop: list uniq eqs
  ```
- Line 615: loc
  ```
  if _rc local temp
  ```
- Line 617: name
  ```
  QuotedRowNames `tmpmat'
  ```
- Line 618: lname, name
  ```
  MakeQuotedFullnames `"`value'"' `"`: roweq `tmpmat', q'"'
  ```
- Line 619: loc
  ```
  local temp: list temp & value
  ```
- Line 621: loc
  ```
  local value: roweq `tmpmat', q
  ```
- Line 622: loc
  ```
  local value: list uniq value
  ```
- Line 623: loc
  ```
  local temp2: list temp2 & value
  ```
- Line 632: loc
  ```
  if _rc local temp
  ```
- Line 634: name
  ```
  QuotedRowNames `tmpmat'
  ```
- Line 635: lname, name
  ```
  MakeQuotedFullnames `"`value'"' `"`: roweq `tmpmat', q'"'
  ```
- Line 636: loc
  ```
  local temp: list temp & value
  ```
- Line 638: loc
  ```
  local value: roweq `tmpmat', q
  ```
- Line 639: loc
  ```
  local value: list uniq value
  ```
- Line 640: loc
  ```
  local temp2: list temp2 & value
  ```
- Line 644: loc
  ```
  local `v'`dash'drop: list fullvarlist - temp
  ```
- Line 646: loc
  ```
  local `v'`dash'eqdrop: list `v'`dash'eqdrop - temp2
  ```
- Line 648: loc
  ```
  local dash "_"
  ```
- Line 654: loc
  ```
  local varlist: list uniq varlist
  ```
- Line 655: name
  ```
  GetVarnamesFromOrder `"`order'"'
  ```
- Line 656: loc
  ```
  local temp: list value & varlist
  ```
- Line 657: loc
  ```
  local varlist: list temp | varlist
  ```
- Line 658: loc
  ```
  local cons _cons
  ```
- Line 661: loc
  ```
  local varlist: list varlist - cons
  ```
- Line 662: loc
  ```
  local varlist: list varlist | cons
  ```
- Line 665: loc
  ```
  local R: word count `varlist'
  ```
- Line 666: loc
  ```
  local eqswide: list uniq eqs
  ```
- Line 670: loc
  ```
  local indicate`i'lbls `"`macval(value)'"'
  ```
- Line 673: loc
  ```
  else local eqswide "_"
  ```
- Line 675: lat
  ```
  *Prepare coefs for tabulation
  ```
- Line 677: loc
  ```
  local i 0
  ```
- Line 678: loc
  ```
  foreach v of local values {
  ```
- Line 679: loc
  ```
  local ++i
  ```
- Line 680: name
  ```
  tempname _`v'
  ```
- Line 700: loc
  ```
  if "`nomlabelstitles'"=="" & "`label'"!="" local mlabelstitles titles
  ```
- Line 701: loc
  ```
  local tmp: list sizeof mlabels
  ```
- Line 702: loc
  ```
  local i 0
  ```
- Line 703: loc
  ```
  foreach model of local models {
  ```
- Line 704: loc
  ```
  local ++i
  ```
- Line 706: loc
  ```
  local lab
  ```
- Line 708: loc, name
  ```
  local var `"`return(m`i'_depname)'"'
  ```
- Line 710: loc
  ```
  local temp = index(`"`var'"',".")
  ```
- Line 711: loc
  ```
  local temp2  = substr(`"`var'"',`temp'+1,.)
  ```
- Line 712: loc
  ```
  capture local lab: var l `temp2'
  ```
- Line 714: loc
  ```
  local lab `"`temp2'"'
  ```
- Line 716: loc
  ```
  local temp2 = substr(`"`var'"',1,`temp')
  ```
- Line 717: loc
  ```
  local lab `"`temp2'`macval(lab)'"'
  ```
- Line 719: loc
  ```
  else local lab `"`var'"'
  ```
- Line 722: loc
  ```
  local lab `"`return(m`i'_estimates_title)'"'
  ```
- Line 723: loc
  ```
  if `"`lab'"'=="" local lab "`model'"
  ```
- Line 726: loc
  ```
  local lab "`model'"
  ```
- Line 728: loc
  ```
  local mlabels `"`macval(mlabels)' `"`macval(lab)'"'"'
  ```
- Line 735: loc
  ```
  local eqconssubok = (`"`macval(eqlabels)'"'!=`""""')
  ```
- Line 736: loc
  ```
  local numeqs: list sizeof eqs
  ```
- Line 737: loc
  ```
  local temp: list sizeof eqlabels
  ```
- Line 740: loc
  ```
  local eq: word `i' of `eqs'
  ```
- Line 741: loc
  ```
  local value
  ```
- Line 745: loc
  ```
  local value: var l `eq'
  ```
- Line 748: loc
  ```
  if `"`value'"'=="" local value "`eq'"
  ```
- Line 749: loc
  ```
  local eqlabels `"`macval(eqlabels)' `"`value'"'"'
  ```
- Line 756: loc
  ```
  local varlabels `"`macval(value)' `macval(varlabels)'"'
  ```
- Line 764: loc
  ```
  local temp
  ```
- Line 766: loc
  ```
  local v: word `i' of `cells'
  ```
- Line 767: loc
  ```
  local v: word `j' of `v'
  ```
- Line 768: loc
  ```
  local v: subinstr local v "&" " ", all
  ```
- Line 769: loc
  ```
  local v: subinstr local v "." "", all
  ```
- Line 770: loc
  ```
  local v: list retok v
  ```
- Line 771: loc
  ```
  foreach vi of local v {
  ```
- Line 773: loc
  ```
  local temp `"`macval(temp)'/"'
  ```
- Line 775: loc
  ```
  local temp `"`macval(temp)'`macval(`vi'_label)'"'
  ```
- Line 778: loc
  ```
  local collabels `"`macval(collabels)'`"`macval(temp)'"' "'
  ```
- Line 788: loc
  ```
  local m 1
  ```
- Line 789: loc
  ```
  local starcol 0
  ```
- Line 790: loc
  ```
  foreach model of local models {
  ```
- Line 791: loc
  ```
  local e 0
  ```
- Line 792: loc
  ```
  foreach eq of local eqswide {
  ```
- Line 793: loc
  ```
  local stc 0
  ```
- Line 794: loc
  ```
  local ++e
  ```
- Line 799: loc
  ```
  local eqsrow "`eqsrow'`e' "
  ```
- Line 800: loc
  ```
  local modelsrow "`modelsrow'`m' "
  ```
- Line 801: loc
  ```
  local k 0
  ```
- Line 802: loc
  ```
  local something 0
  ```
- Line 804: loc
  ```
  local col
  ```
- Line 805: loc
  ```
  local nocol 1
  ```
- Line 806: loc
  ```
  local colhasstats 0
  ```
- Line 808: loc
  ```
  local row: word `i' of `cells'
  ```
- Line 809: loc
  ```
  local v: word `j' of `row'
  ```
- Line 810: loc
  ```
  local v: subinstr local v "&" " ", all
  ```
- Line 813: loc
  ```
  local colhasstats 1
  ```
- Line 818: loc
  ```
  local v: subinstr local v "`vi'" ".`vi'", word
  ```
- Line 821: loc
  ```
  local nocol 0
  ```
- Line 822: loc
  ```
  if `"``vi'_star'"'!="" local starcol 1
  ```
- Line 825: loc
  ```
  local v: subinstr local v " " "&", all
  ```
- Line 826: loc
  ```
  if "`v'"=="" local v "."
  ```
- Line 827: loc
  ```
  local col "`col'`v' "
  ```
- Line 829: loc
  ```
  if `colhasstats'==0 local nocol 0
  ```
- Line 831: loc
  ```
  local colsrow "`colsrow'`j' "
  ```
- Line 833: loc
  ```
  local modelsrow "`modelsrow'`m' "
  ```
- Line 834: loc
  ```
  local eqsrow "`eqsrow'`e' "
  ```
- Line 836: loc
  ```
  if `"`: word `++stc' of `statscolstar''"'=="1" local starcol 1
  ```
- Line 837: loc
  ```
  local starsrow "`starsrow'`starcol' "
  ```
- Line 838: loc
  ```
  local starcol 0
  ```
- Line 839: block, loc
  ```
  Add2Vblock `"`vblock'"' "`col'"
  ```
- Line 840: loc
  ```
  local something 1
  ```
- Line 844: loc
  ```
  local col
  ```
- Line 846: loc
  ```
  local col "`col'. "
  ```
- Line 848: block, loc
  ```
  Add2Vblock `"`vblock'"' "`col'"
  ```
- Line 849: loc
  ```
  local colsrow "`colsrow'1 "
  ```
- Line 850: loc
  ```
  if `"`: word `++stc' of `statscolstar''"'=="1" local starcol 1
  ```
- Line 851: loc
  ```
  local starsrow "`starsrow'`starcol' "
  ```
- Line 852: loc
  ```
  local starcol 0
  ```
- Line 855: loc
  ```
  local ++m
  ```
- Line 858: loc
  ```
  local neqs `value'
  ```
- Line 862: loc
  ```
  local `row'srow `"`value'"'
  ```
- Line 864: block, loc
  ```
  foreach row of local vblock {
  ```
- Line 866: block, loc
  ```
  local nvblock `"`nvblock' `"`value'"'"'
  ```
- Line 868: block, loc
  ```
  local vblock: list clean nvblock
  ```
- Line 870: loc
  ```
  local ncols = `: word count `starsrow'' + 1 + `haslabcol2'
  ```
- Line 873: loc
  ```
  if "`modelwidth'"=="" local modelwidth 0
  ```
- Line 874: loc
  ```
  if "`varwidth'"=="" local varwidth 0
  ```
- Line 875: loc
  ```
  local nmodelwidth: list sizeof modelwidth
  ```
- Line 876: loc
  ```
  local modelwidthzero: list uniq modelwidth
  ```
- Line 877: loc
  ```
  local modelwidthzero = ("`modelwidth'"=="0")
  ```
- Line 878: loc
  ```
  if "`labcol2width'"=="" local labcol2width `: word 1 of `modelwidth''
  ```
- Line 879: loc
  ```
  local starwidth 0
  ```
- Line 883: loc
  ```
  local starwidth `value'
  ```
- Line 886: loc
  ```
  if `varwidth'<2 local wrap
  ```
- Line 889: loc
  ```
  local totcharwidth `varwidth'
  ```
- Line 891: loc
  ```
  local delwidth = length(`macval(delimiter)')
  ```
- Line 894: loc
  ```
  local delwidth = length(`"`macval(delimiter)'"')
  ```
- Line 897: loc
  ```
  local totcharwidth = `totcharwidth' + `delwidth' + `labcol2width'
  ```
- Line 899: loc
  ```
  local j 0
  ```
- Line 900: loc
  ```
  foreach i of local starsrow {
  ```
- Line 901: loc
  ```
  local modelwidthj: word `=1 + mod(`j++',`nmodelwidth')' of `modelwidth'
  ```
- Line 902: loc
  ```
  local totcharwidth = `totcharwidth' + `delwidth' + `modelwidthj'
  ```
- Line 905: loc
  ```
  local ++ncols
  ```
- Line 906: loc
  ```
  local totcharwidth = `totcharwidth' + `delwidth'
  ```
- Line 908: loc
  ```
  local totcharwidth = `totcharwidth' + `starwidth'
  ```
- Line 913: loc
  ```
  local hline `totcharwidth'
  ```
- Line 914: loc
  ```
  if `hline'>400 local hline 400 // _dup(400) is limit
  ```
- Line 915: loc
  ```
  if `"`macval(hlinechar)'"'=="" local hlinechar "-"
  ```
- Line 916: loc
  ```
  local hline: di _dup(`hline') `"`macval(hlinechar)'"'
  ```
- Line 918: loc
  ```
  else local hline
  ```
- Line 922: name
  ```
  tempname file
  ```
- Line 927: loc
  ```
  local `opt' `"`"`macval(`opt')'"'"'
  ```
- Line 933: loc
  ```
  local hasrtfbrdr 0
  ```
- Line 934: loc
  ```
  local rtfbrdron 0
  ```
- Line 936: loc
  ```
  local hasrtf = `strcount'
  ```
- Line 940: loc
  ```
  local varwidth 0
  ```
- Line 941: loc
  ```
  local wrap
  ```
- Line 942: loc
  ```
  local modelwidth 0
  ```
- Line 943: loc
  ```
  local nmodelwidth 1
  ```
- Line 944: loc
  ```
  local modelwidthzero 1
  ```
- Line 945: loc
  ```
  local starwidth 0
  ```
- Line 946: loc
  ```
  local labcol2width 0
  ```
- Line 949: loc
  ```
  local hasrtfbrdr 1
  ```
- Line 950: loc
  ```
  local rtfbeginbak `"`macval(begin)'"'
  ```
- Line 952: loc
  ```
  local rtfbrdron 1
  ```
- Line 960: loc
  ```
  if `starwidth'>0 local fmt_stw "%-`starwidth's"
  ```
- Line 961: loc
  ```
  if `varwidth'>0 local fmt_v "%-`varwidth's"
  ```
- Line 962: loc
  ```
  if `labcol2width'>0 local fmt_l2 "%~`labcol2width's"
  ```
- Line 971: loc
  ```
  local delwidth = length(`"`macval(delwidth)'"')
  ```
- Line 973: loc
  ```
  else local delwidth 0
  ```
- Line 975: loc
  ```
  local stardetachon = ("`stardetach'"!="")
  ```
- Line 977: loc
  ```
  local stardetach `"`macval(delimiter)'"'
  ```
- Line 981: loc
  ```
  local atvars2 `""`nmodels'" "`neqs'" "`totcharwidth'" `"`macval(hline)'"' `hasrtf' `"`rtfrowdefbrdrt
  ```
- Line 982: loc
  ```
  local atvars3 `"`"`macval(title)'"' `"`macval(note)'"' `"`macval(discrete)'`macval(discrete2)'"' `"`
  ```
- Line 990: loc
  ```
  local prehead `"`"`macval(prehead)'"'"'
  ```
- Line 993: loc
  ```
  foreach line of local prehead {
  ```
- Line 998: loc
  ```
  local hasheader 0
  ```
- Line 999: loc
  ```
  if "`smcltags'"!="" local thesmclrule "{txt}{hline `totcharwidth'}"
  ```
- Line 1000: loc
  ```
  else                local thesmclrule "{hline `totcharwidth'}"
  ```
- Line 1007: loc
  ```
  IsInString `"""' `"`macval(labcol2title)'"' // sets local strcount
  ```
- Line 1009: loc
  ```
  local labcol2chunk `"`macval(labcol2title)'"'
  ```
- Line 1010: loc
  ```
  local labcol2rest ""
  ```
- Line 1019: loc
  ```
  local hasheader 1
  ```
- Line 1022: loc
  ```
  local mgroupsbegin `"`macval(value)'"'
  ```
- Line 1024: loc
  ```
  local mgroupsend `"`macval(value)'"'
  ```
- Line 1025: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1026: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1028: loc
  ```
  if `"`macval(mgroupsbegin)'"'!="" local tmpbegin
  ```
- Line 1029: loc
  ```
  if `"`macval(mgroupsend)'"'!=""  local tmpend
  ```
- Line 1049: loc
  ```
  local rtfbrdron 0
  ```
- Line 1056: loc
  ```
  local hasheader 1
  ```
- Line 1058: loc
  ```
  if `"`macval(numbers)'"'=="numbers" local numbers "( )"
  ```
- Line 1074: loc
  ```
  local rtfbrdron 0
  ```
- Line 1080: loc
  ```
  if "`nomlabelsnone'"=="" & "`models'"=="." & `"`macval(mlabels)'"'=="." local mlabelsnone "none"
  ```
- Line 1082: loc
  ```
  local hasheader 1
  ```
- Line 1085: loc
  ```
  local mlabelsbegin `"`macval(value)'"'
  ```
- Line 1087: loc
  ```
  local mlabelsend `"`macval(value)'"'
  ```
- Line 1088: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1089: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1091: loc
  ```
  if `"`macval(mlabelsbegin)'"'!="" local tmpbegin
  ```
- Line 1092: loc
  ```
  if `"`macval(mlabelsend)'"'!=""  local tmpend
  ```
- Line 1111: loc
  ```
  local rtfbrdron 0
  ```
- Line 1119: loc
  ```
  local eqlabelsbegin `"`macval(value)'"'
  ```
- Line 1121: loc
  ```
  local eqlabelsend `"`macval(value)'"'
  ```
- Line 1124: loc
  ```
  local hasheader 1
  ```
- Line 1125: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1126: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1128: loc
  ```
  if `"`macval(eqlabelsbegin)'"'!="" local tmpbegin
  ```
- Line 1129: loc
  ```
  if `"`macval(eqlabelsend)'"'!=""  local tmpend
  ```
- Line 1149: loc
  ```
  local rtfbrdron 0
  ```
- Line 1156: loc
  ```
  local hasheader 1
  ```
- Line 1159: loc
  ```
  local collabelsbegin `"`macval(value)'"'
  ```
- Line 1161: loc
  ```
  local collabelsend `"`macval(value)'"'
  ```
- Line 1162: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1163: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1165: loc
  ```
  if `"`macval(collabelsbegin)'"'!="" local tmpbegin
  ```
- Line 1166: loc
  ```
  if `"`macval(collabelsend)'"'!=""  local tmpend
  ```
- Line 1184: loc
  ```
  local rtfbrdron 0
  ```
- Line 1195: loc
  ```
  local posthead `"`"`macval(posthead)'"'"'
  ```
- Line 1198: loc
  ```
  foreach line of local posthead {
  ```
- Line 1214: loc
  ```
  local varlabelsbegin `"`macval(value)'"'
  ```
- Line 1216: loc
  ```
  local varlabelsend `"`macval(value)'"'
  ```
- Line 1217: name
  ```
  tempname first
  ```
- Line 1218: block, loc
  ```
  if `"`vblock'"'!="" {
  ```
- Line 1219: loc
  ```
  local RI = `R' + `nindicate'
  ```
- Line 1220: loc
  ```
  local e 0
  ```
- Line 1221: loc
  ```
  local eqdim = `R' + `nindicate'
  ```
- Line 1222: loc
  ```
  local weqcnt 0
  ```
- Line 1223: loc
  ```
  local theeqlabel
  ```
- Line 1226: loc
  ```
  local rtfbrdron 1
  ```
- Line 1228: loc
  ```
  local varlabelsbegin0 `"`macval(varlabelsbegin)'"'
  ```
- Line 1229: loc
  ```
  local eqlabelsbegin0 `"`macval(eqlabelsbegin)'"'
  ```
- Line 1230: loc
  ```
  if "`eqlabelsfirst'"=="" local eqlabelsbegin0
  ```
- Line 1232: loc
  ```
  local varlabelsend0 `"`macval(varlabelsend)'"'
  ```
- Line 1233: loc
  ```
  local var: word `r' of `varlist'
  ```
- Line 1235: name
  ```
  *Write equation name/label
  ```
- Line 1237: loc
  ```
  local eqvar: word `r' of `fullvarlist'
  ```
- Line 1239: loc
  ```
  local eqrlast `"`eqr'"'
  ```
- Line 1240: loc
  ```
  local eqr: word `r' of `eqlist'
  ```
- Line 1242: loc
  ```
  local value: word `++e' of `macval(eqlabels)'
  ```
- Line 1243: loc
  ```
  local eqdim: word `e' of `macval(eqsdims)'
  ```
- Line 1244: loc
  ```
  local weqcnt 0
  ```
- Line 1246: loc
  ```
  if "`eqlabelslast'"=="" local eqlabelsend
  ```
- Line 1247: loc
  ```
  local eqdim = `eqdim' + `nindicate'
  ```
- Line 1250: loc
  ```
  local theeqlabel `"`macval(eqlabelsprefix)'`macval(value)'`macval(eqlabelssuffix)'"'
  ```
- Line 1253: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1254: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1256: loc
  ```
  if `"`macval(eqlabelsbegin0)'"'!="" local tmpbegin
  ```
- Line 1257: loc
  ```
  if `"`macval(eqlabelsend)'"'!=""  local tmpend
  ```
- Line 1274: loc
  ```
  local rtfbrdron 0
  ```
- Line 1276: loc
  ```
  local eqlabelsbegin0 `"`macval(eqlabelsbegin)'"'
  ```
- Line 1281: loc
  ```
  local ++weqcnt
  ```
- Line 1283: loc
  ```
  if "`varlabelsfirst'"=="" local varlabelsbegin0
  ```
- Line 1287: block, loc
  ```
  local rvblock
  ```
- Line 1288: block, loc
  ```
  foreach row of local vblock {
  ```
- Line 1289: loc
  ```
  local c 0
  ```
- Line 1290: loc
  ```
  local skiprow 1
  ```
- Line 1291: loc
  ```
  local rowhasstats 0
  ```
- Line 1292: loc
  ```
  foreach v of local row {
  ```
- Line 1293: loc
  ```
  local ++c
  ```
- Line 1295: loc
  ```
  local eqr: word `:word `c' of `eqsrow'' of `eqs'
  ```
- Line 1296: loc
  ```
  if `"`eqr'"'!="" local eqvar `"`eqr':`var'"'
  ```
- Line 1297: loc
  ```
  else local eqvar "`var'"
  ```
- Line 1299: loc
  ```
  local v: subinstr local v "&" " ", all
  ```
- Line 1300: loc
  ```
  foreach vi of local v {
  ```
- Line 1303: loc
  ```
  local rowhasstats 1
  ```
- Line 1306: loc
  ```
  local skiprow 0
  ```
- Line 1312: loc
  ```
  if `rowhasstats'==0 local skiprow 0
  ```
- Line 1313: block, loc
  ```
  if `"`ferest()'"'=="" & `"`rvblock'"'=="" local skiprow 0
  ```
- Line 1315: block, loc
  ```
  local rvblock `"`rvblock'"`row'" "'
  ```
- Line 1317: block, loc
  ```
  local nrvblock: list sizeof rvblock
  ```
- Line 1321: loc
  ```
  local isref: list posof "`var'" in refcatcoefs
  ```
- Line 1324: loc
  ```
  local temp `"`eqr'"'
  ```
- Line 1325: loc
  ```
  if `"`temp'"'=="" local temp "_"
  ```
- Line 1327: loc
  ```
  else local temp `"`eqswide'"'
  ```
- Line 1329: loc
  ```
  local refcatrow `"`macval(value)'"'
  ```
- Line 1332: loc
  ```
  else local isref 0
  ```
- Line 1335: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1336: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1338: loc
  ```
  if `"`macval(varlabelsbegin0)'"'!="" local tmpbegin
  ```
- Line 1339: loc
  ```
  if `"`macval(varlabelsend0)'"'!=""  local tmpend
  ```
- Line 1342: loc, name
  ```
  local value: word `isref' of `macval(refcatnames)'
  ```
- Line 1345: loc
  ```
  else local value
  ```
- Line 1362: loc
  ```
  local rtfbrdron 0
  ```
- Line 1364: loc
  ```
  local varlabelsbegin0 `"`macval(varlabelsbegin)'"'
  ```
- Line 1367: name
  ```
  *Write variable name/label
  ```
- Line 1369: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1374: loc
  ```
  IsInString `"""' `"`value'"' // sets local strcount
  ```
- Line 1376: loc
  ```
  local value `"`"`macval(value)'"'"'
  ```
- Line 1381: loc
  ```
  local tmpbegin
  ```
- Line 1382: loc
  ```
  local varlabelsbegin0
  ```
- Line 1386: name
  ```
  CompileVarl, vname(`var') interaction(`macval(interaction)')
  ```
- Line 1388: loc
  ```
  else local varl `var'
  ```
- Line 1392: loc
  ```
  local varl `"`macval(value)'"'
  ```
- Line 1395: loc
  ```
  local temp 0
  ```
- Line 1397: loc
  ```
  if `D'[`r',1]==1 local temp 1
  ```
- Line 1400: loc
  ```
  foreach eqr of local eqswide {
  ```
- Line 1401: loc
  ```
  if `D'[rownumb(`D',`"`eqr':`var'"'),1]==1 local temp 1
  ```
- Line 1405: loc
  ```
  local varl `"`macval(varl)'`macval(discrete)'"'
  ```
- Line 1409: loc
  ```
  else local varl
  ```
- Line 1411: block, loc
  ```
  if `nrvblock'==1 {
  ```
- Line 1413: loc
  ```
  local rtfbrdron 1
  ```
- Line 1417: loc
  ```
  if `"`macval(varlabelsbegin0)'"'!="" local tmpbegin
  ```
- Line 1419: block, loc
  ```
  if "`wrap'"!="" & `nrvblock'>1 {
  ```
- Line 1420: loc
  ```
  local wrap_i 1
  ```
- Line 1421: loc
  ```
  local value: piece `wrap_i' `varwidth' of `"`macval(theeqlabel)'`macval(varl)'"', nobreak
  ```
- Line 1436: loc
  ```
  local rtfbrdron 0
  ```
- Line 1438: loc
  ```
  local varlabelsbegin0 `"`macval(varlabelsbegin)'"'
  ```
- Line 1442: loc
  ```
  local newrow 0
  ```
- Line 1444: block, loc
  ```
  foreach row of local rvblock {
  ```
- Line 1448: loc
  ```
  local rtfbrdron 1
  ```
- Line 1451: loc
  ```
  local c 0
  ```
- Line 1452: loc
  ```
  foreach v of local row {
  ```
- Line 1453: loc
  ```
  local m: word `++c' of `modelsrow'
  ```
- Line 1454: loc
  ```
  local unstackskipcoef 0
  ```
- Line 1456: loc
  ```
  capt local eqr: word `:word `c' of `eqsrow'' of `eqs'
  ```
- Line 1457: loc
  ```
  local rr=rownumb(`B',`"`eqr':`var'"')
  ```
- Line 1458: loc
  ```
  if `"`eqr'"'!="" local eqvar `"`eqr':`var'"'
  ```
- Line 1459: loc
  ```
  else local eqvar "`var'"
  ```
- Line 1460: loc
  ```
  if `rr'>=. local unstackskipcoef 1 // local v "."
  ```
- Line 1462: loc
  ```
  else local rr `r'
  ```
- Line 1465: block, loc
  ```
  if "`wrap'"!="" & `nrvblock'>1 {
  ```
- Line 1466: loc
  ```
  local value
  ```
- Line 1467: loc
  ```
  local space
  ```
- Line 1469: loc
  ```
  local temp: piece `++wrap_i' `varwidth' of `"`macval(varl)'"', nobreak
  ```
- Line 1471: loc
  ```
  local value `"`macval(value)'`space'`macval(temp)'"'
  ```
- Line 1472: block, loc
  ```
  if `wrap_i'<`nrvblock' continue, break
  ```
- Line 1473: loc
  ```
  local space " "
  ```
- Line 1476: loc
  ```
  local value `"`fmt_v' (`"`macval(varlabelsprefix)'`macval(value)'`macval(varlabelssuffix)'"')"'
  ```
- Line 1478: loc
  ```
  else local value "_skip(`varwidth')"
  ```
- Line 1485: loc
  ```
  local v: subinstr local v "&" " ", all
  ```
- Line 1486: loc
  ```
  local modelwidthj: word `=1+mod(`c'-1,`nmodelwidth')' of `modelwidth'
  ```
- Line 1487: loc
  ```
  if `modelwidthj'>0 local fmt_m "%`modelwidthj's"
  ```
- Line 1488: loc
  ```
  else local fmt_m
  ```
- Line 1489: loc
  ```
  local thevalue
  ```
- Line 1490: loc
  ```
  foreach vi of local v {
  ```
- Line 1492: loc
  ```
  if `: list eqvar in `vi'_drop' local vi "..`vi'"
  ```
- Line 1498: loc
  ```
  local value
  ```
- Line 1501: loc
  ```
  local value `"``vi'_vacant'"'
  ```
- Line 1503: son
  ```
  else if `B'[`rr',`m'*`droppedpos']==1 & `droppedison' {
  ```
- Line 1505: loc
  ```
  local value `"`macval(dropped)'"'
  ```
- Line 1508: loc
  ```
  else local value
  ```
- Line 1511: loc
  ```
  if `_`vi'_l'[`rr',`m']>=.y local value `"``vi'_vacant'"'
  ```
- Line 1513: loc
  ```
  local format: word `r' of `ci_fmt'
  ```
- Line 1515: loc
  ```
  local format: word `:word count ``vi'_fmt'' of ``vi'_fmt'
  ```
- Line 1517: loc
  ```
  local value = `_`vi'_l'[`rr',`m']
  ```
- Line 1521: loc
  ```
  local temp "`macval(value)'"
  ```
- Line 1522: loc
  ```
  local value = `_`vi'_u'[`rr',`m']
  ```
- Line 1526: loc
  ```
  local value `"`macval(temp)'`macval(value)'"'
  ```
- Line 1529: loc
  ```
  else if `_`vi''[`rr',`m']>=.y   local value `"``vi'_vacant'"'
  ```
- Line 1530: loc
  ```
  //else if `_`vi''[`rr',`m']>=.    local value .
  ```
- Line 1532: name
  ```
  CellStars `"`macval(starlevels)'"' `_```vi'_pvalue'_tname''[`rr',`m'] `"`macval(vipar)'"'
  ```
- Line 1539: name
  ```
  `"`macval(starlevels)'"' `_```vi'_pvalue'_tname''[`rr',`m']
  ```
- Line 1542: loc
  ```
  local format: word `r' of ``vi'_fmt'
  ```
- Line 1544: loc
  ```
  local format: word `:word count ``vi'_fmt'' of ``vi'_fmt'
  ```
- Line 1546: loc
  ```
  local value = `_`vi''[`rr',`m']
  ```
- Line 1550: loc
  ```
  local thevalue `"`macval(thevalue)'`macval(value)'"'
  ```
- Line 1552: loc
  ```
  if `modelwidthj'>0 | `starwidth'>0 local fmt_m "%`=`modelwidthj'+`starwidth''s"
  ```
- Line 1553: loc
  ```
  local value
  ```
- Line 1556: name
  ```
  Stars `"`macval(starlevels)'"' `_```vi'_pvalue'_tname''[`rr',`m']
  ```
- Line 1560: loc
  ```
  local value: di `fmt_stw' `"`macval(value)'"'
  ```
- Line 1562: loc
  ```
  local thevalue `"`macval(thevalue)'`macval(value)'"'
  ```
- Line 1565: loc
  ```
  local thevalue `"`macval(thevalue)'`macval(incelldelimiter)'"'
  ```
- Line 1570: loc
  ```
  local thevalue
  ```
- Line 1571: loc
  ```
  foreach vi of local v {
  ```
- Line 1573: loc
  ```
  if `: list eqvar in `vi'_drop' local vi "..`vi'"
  ```
- Line 1576: loc
  ```
  if `: list eqvar in stardrop' local value
  ```
- Line 1578: name
  ```
  Stars `"`macval(starlevels)'"' `_```vi'_pvalue'_tname''[`rr',`m']
  ```
- Line 1580: loc
  ```
  local thevalue `"`macval(thevalue)'`macval(value)'"'
  ```
- Line 1583: loc
  ```
  local thevalue `"`macval(thevalue)'`macval(incelldelimiter)'"'
  ```
- Line 1589: loc
  ```
  local newrow 1
  ```
- Line 1595: loc
  ```
  & !(`isref' & `"`refcatbelow'"'!="") local varlabelsend0
  ```
- Line 1596: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1598: loc
  ```
  if `"`macval(varlabelsend0)'"'!=""  local tmpend
  ```
- Line 1603: loc
  ```
  IsInString `"""' `"`value'"' // sets local strcount
  ```
- Line 1605: loc
  ```
  local value `"`"`macval(value)'"'"'
  ```
- Line 1608: loc
  ```
  if "`varlabelsreplace'"!="" local varlabelsend0
  ```
- Line 1617: loc
  ```
  local rtfbrdron 1
  ```
- Line 1619: loc
  ```
  if `weqcnt'==`eqdim' & "`varlabelslast'"=="" local varlabelsend0
  ```
- Line 1620: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1621: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1623: loc
  ```
  if `"`macval(varlabelsbegin0)'"'!="" local tmpbegin
  ```
- Line 1624: loc
  ```
  if `"`macval(varlabelsend0)'"'!=""  local tmpend
  ```
- Line 1627: loc, name
  ```
  local value: word `isref' of `macval(refcatnames)'
  ```
- Line 1630: loc
  ```
  else local value
  ```
- Line 1654: loc
  ```
  local rtfbrdron 1
  ```
- Line 1656: loc
  ```
  if `i'==`nindicate' & "`varlabelslast'"=="" local varlabelsend
  ```
- Line 1657: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1658: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1660: loc
  ```
  if `"`macval(varlabelsbegin0)'"'!="" local tmpbegin
  ```
- Line 1661: loc
  ```
  if `"`macval(varlabelsend)'"'!=""  local tmpend
  ```
- Line 1664: name
  ```
  Abbrev `varwidth' `"`macval(indicate`i'name)'"' "`abbrev'"
  ```
- Line 1666: loc
  ```
  else local value
  ```
- Line 1687: loc
  ```
  local prefoot `"`"`macval(prefoot)'"'"'
  ```
- Line 1690: loc
  ```
  foreach line of local prefoot {
  ```
- Line 1695: block, loc
  ```
  if ((`"`vblock'"'!="" & `R'>0) | `nindicate'>0) & "`smclmidrules'"!="" {
  ```
- Line 1703: loc
  ```
  local statslabelsbegin `"`macval(value)'"'
  ```
- Line 1705: loc
  ```
  local statslabelsend `"`macval(value)'"'
  ```
- Line 1706: loc
  ```
  local statslabelsbegin0 `"`macval(statslabelsbegin)'"'
  ```
- Line 1707: loc
  ```
  local S: list sizeof statsarray
  ```
- Line 1708: loc
  ```
  local eqr "_"
  ```
- Line 1711: loc
  ```
  local rtfbrdron 1
  ```
- Line 1716: loc
  ```
  local rtfbrdron 1
  ```
- Line 1718: loc
  ```
  local stat: word `r' of `macval(statslabels)'
  ```
- Line 1719: loc
  ```
  if `"`stat'"'=="" local stat: word `r' of `statsrowlbls'
  ```
- Line 1720: loc
  ```
  if "`statslabelsnone'"!="" local stat
  ```
- Line 1722: loc
  ```
  if `r'==1 & "`statslabelsfirst'"=="" local statslabelsbegin0
  ```
- Line 1723: loc
  ```
  local tmpbegin `"`macval(begin)'"'
  ```
- Line 1725: loc
  ```
  if `"`macval(statslabelsbegin0)'"'!="" local tmpbegin
  ```
- Line 1731: loc
  ```
  local statslabelsbegin0 `"`macval(statslabelsbegin)'"'
  ```
- Line 1739: loc
  ```
  local strow: word `r' of `statsarray'
  ```
- Line 1740: loc
  ```
  local strowlay: word `r' of `macval(statslayout)'
  ```
- Line 1741: loc
  ```
  local strowfmt: word `r' of  `statsrowfmt'
  ```
- Line 1742: loc
  ```
  local strowstar: word `r' of  `statsrowstar'
  ```
- Line 1743: loc
  ```
  local lastm
  ```
- Line 1744: loc
  ```
  local lasteq
  ```
- Line 1745: loc
  ```
  local c 0
  ```
- Line 1746: loc
  ```
  local mpos 0
  ```
- Line 1747: loc
  ```
  foreach m of local modelsrow {
  ```
- Line 1748: loc
  ```
  local ++c
  ```
- Line 1749: loc
  ```
  local modelwidthj: word `=1+mod(`c'-1,`nmodelwidth')' of `modelwidth'
  ```
- Line 1750: loc
  ```
  if `modelwidthj'>0 local fmt_m "%`modelwidthj's"
  ```
- Line 1751: loc
  ```
  else local fmt_m
  ```
- Line 1756: loc
  ```
  local value
  ```
- Line 1757: loc
  ```
  local eq: word `:word `c' of `eqsrow'' of `eqs'
  ```
- Line 1759: loc
  ```
  local stc 0
  ```
- Line 1760: loc
  ```
  local hasmestats 0
  ```
- Line 1762: loc
  ```
  if "`m'"!="`lastm'" | `"`eq'"'!="`lasteq'"  local stc_eq 0
  ```
- Line 1763: loc
  ```
  local usemestats 0
  ```
- Line 1764: loc
  ```
  local ++stc_eq
  ```
- Line 1765: loc
  ```
  local stcell: word `++stc' of `strow'
  ```
- Line 1766: loc
  ```
  local stcelllay: word `stc' of `macval(strowlay)'
  ```
- Line 1767: loc
  ```
  local stcellfmt: word `stc' of `strowfmt'
  ```
- Line 1768: loc
  ```
  local stcellstar: word `stc' of `strowstar'
  ```
- Line 1769: loc
  ```
  local cellhasstat 0
  ```
- Line 1770: loc
  ```
  foreach stat of local stcell {
  ```
- Line 1772: loc
  ```
  local rr = rownumb(`St',`"`stat'"')
  ```
- Line 1773: loc
  ```
  local value = `St'[`rr',`m']
  ```
- Line 1775: loc
  ```
  local value `"`return(m`m'_`stat')'"'
  ```
- Line 1777: loc
  ```
  local cellhasstat 1
  ```
- Line 1778: loc
  ```
  local stcelllay: subinstr local stcelllay `"`statspchar'"' ///
  ```
- Line 1783: loc
  ```
  local hasmestats 1
  ```
- Line 1786: loc
  ```
  local cellhasstat 1
  ```
- Line 1789: loc
  ```
  local stcelllay: subinstr local stcelllay `"`statspchar'"' ///
  ```
- Line 1794: loc
  ```
  local stcell: word `stc_eq' of `strow'
  ```
- Line 1795: loc
  ```
  local stcelllay: word `stc_eq' of `macval(strowlay)'
  ```
- Line 1796: loc
  ```
  local stcellfmt: word `stc_eq' of `strowfmt'
  ```
- Line 1797: loc
  ```
  local stcellstar: word `stc_eq' of `strowstar'
  ```
- Line 1798: loc
  ```
  local cellhasstat 0
  ```
- Line 1799: loc
  ```
  foreach stat of local stcell {
  ```
- Line 1801: loc
  ```
  local rr = rownumb(`St',`"`eq':`stat'"')
  ```
- Line 1802: loc
  ```
  if `rr'>=. local value .z
  ```
- Line 1803: loc
  ```
  else local value = `St'[`rr',`m']
  ```
- Line 1805: loc
  ```
  local cellhasstat 1
  ```
- Line 1808: loc
  ```
  local stcelllay: subinstr local stcelllay `"`statspchar'"' `"`macval(value)'"'
  ```
- Line 1811: loc
  ```
  if `cellhasstat' local usemestats 1
  ```
- Line 1813: loc
  ```
  if `cellhasstat'==0 local stcelllay
  ```
- Line 1818: loc
  ```
  local rr=rownumb(`St',`"`eq':p"')
  ```
- Line 1821: loc
  ```
  local rr=rownumb(`St',"p")
  ```
- Line 1830: loc
  ```
  local lastm "`m'"
  ```
- Line 1831: loc
  ```
  local lasteq `"`eq'"'
  ```
- Line 1833: loc
  ```
  if `r'==`S' & "`statslabelslast'"=="" local statslabelsend
  ```
- Line 1834: loc
  ```
  local tmpend `"`macval(end)'"'
  ```
- Line 1836: loc
  ```
  if `"`macval(statslabelsend)'"'!="" local tmpend
  ```
- Line 1842: loc
  ```
  local rtfbrdron 0
  ```
- Line 1850: loc
  ```
  local discrete: list retok discrete
  ```
- Line 1853: loc
  ```
  local postfoot `"`"`macval(postfoot)'"'"'
  ```
- Line 1856: loc
  ```
  foreach line of local postfoot {
  ```
- Line 1879: loc
  ```
  local S: word count `macval(substitute)'
  ```
- Line 1887: name
  ```
  tempname file2
  ```
- Line 1900: loc
  ```
  local temp: subinstr local temp "`=char(9)'" "<T>", all
  ```
- Line 1913: loc
  ```
  local to:  word `=`s'+1' of `macval(substitute)'
  ```
- Line 1923: loc
  ```
  local temp: subinstr local temp "`=char(9)'" "<T>", all
  ```
- Line 1939: loc
  ```
  local temp: subinstr local temp "`=char(9)'" "<T>", all
  ```
- Line 1950: loc
  ```
  return local fn `using0'
  ```
- Line 1962: loc
  ```
  local theoptions ///
  ```
- Line 1988: loc
  ```
  foreach opt of local theoptions {
  ```
- Line 1989: loc
  ```
  local opt = lower("`opt'")
  ```
- Line 1990: loc
  ```
  c_local `opt' "``opt''"
  ```
- Line 1992: loc
  ```
  c_local options
  ```
- Line 2000: loc
  ```
  local el: word 1 of `anything'
  ```
- Line 2001: lname, loc, name
  ```
  local elname: word 2 of `anything'
  ```
- Line 2002: lname, name
  ```
  CheckPattern `"`pattern'"' "`elname'"
  ```
- Line 2004: loc
  ```
  local par `"`macval(par2)'"'
  ```
- Line 2007: lname, loc, name
  ```
  if "`elname'"=="ci" local par "[ , ]"
  ```
- Line 2008: lname, loc, name
  ```
  else if "`elname'"=="ci_l" local par `"[ """'
  ```
- Line 2009: lname, loc, name
  ```
  else if "`elname'"=="ci_u" local par `""" ]"'
  ```
- Line 2010: loc
  ```
  else local par "( )"
  ```
- Line 2017: lname, loc, name
  ```
  local label "`elname'[`mrow']"
  ```
- Line 2021: loc
  ```
  local mrow `""`mrow'""'
  ```
- Line 2023: loc
  ```
  local label `mrow'
  ```
- Line 2030: loc
  ```
  local mrow `"`"`mrow'"'"'
  ```
- Line 2033: loc
  ```
  local label `mrow'
  ```
- Line 2038: loc
  ```
  if "`no`opt''"!="" c_local no`el'_`opt' 1
  ```
- Line 2039: loc
  ```
  else c_local `el'_`opt' "``opt''"
  ```
- Line 2042: loc
  ```
  c_local `el'_`opt' `"`macval(`opt')'"'
  ```
- Line 2048: loc
  ```
  foreach p of local pattern {
  ```
- Line 2060: loc
  ```
  c_local stats`opt' `"`macval(`opt')'"'
  ```
- Line 2062: loc
  ```
  if "`nostar'"!="" c_local nostatsstar 1
  ```
- Line 2064: loc
  ```
  local anything: list anything | star2
  ```
- Line 2065: loc
  ```
  c_local statsstar "`star2'"
  ```
- Line 2068: loc
  ```
  local star2: word 1 of `anything'
  ```
- Line 2069: loc
  ```
  c_local statsstar "`star2'"
  ```
- Line 2071: loc
  ```
  c_local stats "`anything'"
  ```
- Line 2072: loc
  ```
  c_local stats2
  ```
- Line 2077: loc
  ```
  local format "%9.0g"
  ```
- Line 2079: loc
  ```
  local statspchar "@"
  ```
- Line 2080: loc
  ```
  c_local statspchar "@"
  ```
- Line 2082: loc
  ```
  local statsarray
  ```
- Line 2083: loc
  ```
  local statsrowlbls
  ```
- Line 2084: loc
  ```
  local statsrowfmt
  ```
- Line 2085: loc
  ```
  local statsrowstar
  ```
- Line 2086: loc
  ```
  local space1
  ```
- Line 2087: loc
  ```
  local i 0
  ```
- Line 2088: loc
  ```
  local wmax 0
  ```
- Line 2089: loc
  ```
  foreach row of local statslayout {
  ```
- Line 2090: loc
  ```
  local statsrow
  ```
- Line 2091: loc
  ```
  local statsrowlbl
  ```
- Line 2092: loc
  ```
  local statsrfmt
  ```
- Line 2093: loc
  ```
  local statsrstar
  ```
- Line 2094: loc
  ```
  local space2
  ```
- Line 2095: loc
  ```
  local w = 0
  ```
- Line 2096: loc
  ```
  foreach cell of local row {
  ```
- Line 2097: loc
  ```
  local ++w
  ```
- Line 2098: loc
  ```
  local statscell
  ```
- Line 2099: loc
  ```
  local statsclbl `"`cell'"'
  ```
- Line 2100: loc
  ```
  local statscfmt
  ```
- Line 2101: loc
  ```
  local statscstar 0
  ```
- Line 2102: loc
  ```
  local space3
  ```
- Line 2103: loc
  ```
  local trash: subinstr local cell `"`statspchar'"' "", all count(local cnt)
  ```
- Line 2105: loc
  ```
  local stat: word `++i' of `stats'
  ```
- Line 2106: loc
  ```
  local statscell `"`statscell'`space3'`stat'"'
  ```
- Line 2107: loc
  ```
  local statsclbl: subinstr local statsclbl `"`statspchar'"' "`stat'"
  ```
- Line 2108: loc
  ```
  local tmp: word `i' of `statsfmt'
  ```
- Line 2109: loc
  ```
  if `"`tmp'"'!="" local format `"`tmp'"'
  ```
- Line 2110: loc
  ```
  local statscfmt `"`statscfmt'`space3'`format'"'
  ```
- Line 2112: loc
  ```
  local statscstar 1
  ```
- Line 2113: loc
  ```
  local statscol_`w' 1
  ```
- Line 2115: loc
  ```
  local space3 " "
  ```
- Line 2117: loc
  ```
  local statsrow `"`statsrow'`space2'"`statscell'""'
  ```
- Line 2118: loc
  ```
  local statsrowlbl `"`statsrowlbl'`space2'`statsclbl'"'
  ```
- Line 2119: loc
  ```
  local statsrfmt `"`statsrfmt'`space2'"`statscfmt'""'
  ```
- Line 2120: loc
  ```
  local statsrstar "`statsrstar'`space2'`statscstar'"
  ```
- Line 2121: loc
  ```
  local space2 " "
  ```
- Line 2123: loc
  ```
  local statsarray `"`statsarray'`space1'`"`statsrow'"'"'
  ```
- Line 2124: loc
  ```
  local statsrowlbls `"`statsrowlbls'`space1'`"`statsrowlbl'"'"'
  ```
- Line 2125: loc
  ```
  local statsrowfmt `"`statsrowfmt'`space1'`"`statsrfmt'"'"'
  ```
- Line 2126: loc
  ```
  local statsrowstar `"`statsrowstar'`space1'`"`statsrstar'"'"'
  ```
- Line 2127: loc
  ```
  local space1 " "
  ```
- Line 2128: loc
  ```
  local wmax = max(`w',`wmax')
  ```
- Line 2131: loc
  ```
  local stat: word `++i' of `stats'
  ```
- Line 2133: loc
  ```
  local tmp: word `i' of `statsfmt'
  ```
- Line 2134: loc
  ```
  if `"`tmp'"'!="" local format `"`tmp'"'
  ```
- Line 2135: loc
  ```
  local statscstar: list stat in statsstar
  ```
- Line 2136: loc
  ```
  if `statscstar' local statscol_1 1
  ```
- Line 2137: loc
  ```
  local statsarray `"`statsarray'`space1'`"`stat'"'"'
  ```
- Line 2138: loc
  ```
  local statsrowlbls `"`statsrowlbls'`space1'`"`stat'"'"'
  ```
- Line 2139: loc
  ```
  local statsrowfmt `"`statsrowfmt'`space1'`"`format'"'"'
  ```
- Line 2140: loc
  ```
  local statsrowstar `"`statsrowstar'`space1'`"`statscstar'"'"'
  ```
- Line 2141: loc
  ```
  local statslayout `"`statslayout'`space1'`statspchar'"'
  ```
- Line 2142: loc
  ```
  local space1 " "
  ```
- Line 2143: loc
  ```
  local wmax = max(1,`wmax')
  ```
- Line 2145: loc
  ```
  local statscolstar
  ```
- Line 2146: loc
  ```
  local space
  ```
- Line 2148: loc
  ```
  if "`statscol_`w''"=="" local statscol_`w' 0
  ```
- Line 2149: loc
  ```
  local statscolstar "`statscolstar'`space'`statscol_`w''"
  ```
- Line 2150: loc
  ```
  local space " "
  ```
- Line 2152: loc
  ```
  c_local statsarray   `"`statsarray'"'
  ```
- Line 2153: loc
  ```
  c_local statsrowlbls `"`statsrowlbls'"'
  ```
- Line 2154: loc
  ```
  c_local statsrowfmt  `"`statsrowfmt'"'
  ```
- Line 2155: loc
  ```
  c_local statsrowstar `"`statsrowstar'"'
  ```
- Line 2156: loc
  ```
  c_local statscolstar `"`statscolstar'"'
  ```
- Line 2157: loc
  ```
  c_local statslayout  `"`statslayout'"'
  ```
- Line 2162: loc
  ```
  local lblsubopts
  ```
- Line 2169: loc
  ```
  if "`merge'"!="" & "`nomerge'`macval(suffix)'"=="" local suffix ":"
  ```
- Line 2173: loc
  ```
  local `opt' `"`"`macval(`opt')'"'"'
  ```
- Line 2178: loc
  ```
  c_local `type'`opt' `"`macval(`opt')'"'
  ```
- Line 2181: loc
  ```
  if "`no`opt''"!="" c_local no`type'`opt' 1
  ```
- Line 2182: loc
  ```
  else c_local `type'`opt' "``opt''"
  ```
- Line 2184: loc
  ```
  c_local `type' `"`macval(anything)'"'
  ```
- Line 2189: loc
  ```
  local end 0
  ```
- Line 2191: loc
  ```
  local temp1: subinstr local temp1 "`=char(9)'" "    ", all
  ```
- Line 2193: loc
  ```
  local j 1
  ```
- Line 2194: loc
  ```
  local temp2
  ```
- Line 2195: loc
  ```
  local temp3: piece `j++' `max' of `"`macval(temp1)'"'
  ```
- Line 2199: loc
  ```
  local temp1: subinstr local temp1 "`=char(9)'" "    ", all
  ```
- Line 2203: loc
  ```
  local comment=index(`"`macval(temp3)'"'," ///")
  ```
- Line 2205: loc
  ```
  local temp3=substr(`"`macval(temp3)'"',1,`comment')
  ```
- Line 2206: loc
  ```
  local temp2 `"`macval(temp2)'`macval(temp3)'"'
  ```
- Line 2207: loc
  ```
  local end 0
  ```
- Line 2210: loc
  ```
  local comment=index(`"`macval(temp3)'"'," //")
  ```
- Line 2212: loc
  ```
  local temp3=substr(`"`macval(temp3)'"',1,`comment')
  ```
- Line 2213: loc
  ```
  local temp2 `"`macval(temp2)'`macval(temp3)'"'
  ```
- Line 2214: loc
  ```
  local end 1
  ```
- Line 2217: loc
  ```
  local temp2 `"`macval(temp2)'`macval(temp3)'"'
  ```
- Line 2218: loc
  ```
  local temp3: piece `j++' `max' of `"`macval(temp1)'"'
  ```
- Line 2219: loc
  ```
  local end 1
  ```
- Line 2222: loc
  ```
  local line `"`macval(line)'`macval(temp2)'"'
  ```
- Line 2226: loc
  ```
  local line `"`macval(line)'`macval(temp2)'"'
  ```
- Line 2228: loc
  ```
  local temp1: subinstr local temp1 "`=char(9)'" "    ", all
  ```
- Line 2231: loc
  ```
  c_local line `"`macval(line)'"'
  ```
- Line 2236: loc
  ```
  local ncols 0
  ```
- Line 2237: loc
  ```
  local nrows 0
  ```
- Line 2238: loc
  ```
  local cells: subinstr local cells "& " "&", all
  ```
- Line 2239: loc
  ```
  local cells: subinstr local cells " &" "&", all
  ```
- Line 2240: loc
  ```
  local cells: subinstr local cells `"&""' `"& ""', all
  ```
- Line 2241: loc
  ```
  local cells: subinstr local cells `""&"' `"" &"', all
  ```
- Line 2242: loc
  ```
  foreach row of local cells {
  ```
- Line 2243: loc
  ```
  local newrow
  ```
- Line 2244: loc
  ```
  foreach col of local row {
  ```
- Line 2245: loc
  ```
  local vals: subinstr local col "&" " ", all
  ```
- Line 2246: loc
  ```
  //local vals: list vals - values
  ```
- Line 2247: loc
  ```
  local values: list values | vals
  ```
- Line 2248: loc
  ```
  local vals: list retok vals
  ```
- Line 2249: loc
  ```
  local vals: subinstr local vals " " "&", all
  ```
- Line 2250: loc
  ```
  //local newrow: list newrow | vals
  ```
- Line 2251: loc
  ```
  local newrow `"`newrow'`vals' "'
  ```
- Line 2253: loc
  ```
  local newrow: list retok newrow
  ```
- Line 2255: loc
  ```
  local ncols = max(`ncols',`:list sizeof newrow')
  ```
- Line 2256: loc
  ```
  local newcells `"`newcells'"`newrow'" "'
  ```
- Line 2257: loc
  ```
  local ++nrows
  ```
- Line 2260: loc
  ```
  local newcells: list retok newcells
  ```
- Line 2261: loc
  ```
  c_local cells `"`newcells'"'
  ```
- Line 2262: loc
  ```
  c_local ncols `ncols'
  ```
- Line 2263: loc
  ```
  c_local nrows `nrows'
  ```
- Line 2264: loc
  ```
  local dot "."
  ```
- Line 2265: loc
  ```
  c_local values: list values - dot
  ```
- Line 2270: loc
  ```
  local newcells
  ```
- Line 2271: loc
  ```
  foreach row of local cells {
  ```
- Line 2272: loc
  ```
  local newrow
  ```
- Line 2273: loc
  ```
  foreach col of local row {
  ```
- Line 2275: loc
  ```
  local col "`col'star"
  ```
- Line 2277: loc
  ```
  local newrow: list newrow | col
  ```
- Line 2279: loc
  ```
  local newcells `"`newcells'"`newrow'" "'
  ```
- Line 2281: loc
  ```
  local newcells: list retok newcells
  ```
- Line 2282: loc
  ```
  c_local cells `"`newcells'"'
  ```
- Line 2287: loc
  ```
  c_local starlevels `"`macval(anything)'"'
  ```
- Line 2288: loc
  ```
  c_local starlevelslabel `"`macval(label)'"'
  ```
- Line 2289: loc
  ```
  c_local starlevelsdelimiter `"`macval(delimiter)'"'
  ```
- Line 2294: loc
  ```
  if `"`macval(label)'"'=="" local label " p<"
  ```
- Line 2295: loc
  ```
  if `"`macval(del)'"'=="" local del ", "
  ```
- Line 2296: loc
  ```
  local nstar: word count `macval(starlevels)'
  ```
- Line 2297: loc
  ```
  local nstar = `nstar'/2
  ```
- Line 2303: loc
  ```
  local istar 1
  ```
- Line 2305: loc
  ```
  local iistar: word `=`i'*2' of `macval(starlevels)'
  ```
- Line 2311: loc
  ```
  local istar `iistar'
  ```
- Line 2312: loc
  ```
  local isym: word `=`i'*2-1' of `macval(starlevels)'
  ```
- Line 2314: loc
  ```
  local legend `"`macval(legend)'`macval(del)'"'
  ```
- Line 2316: loc
  ```
  local ilabel: subinstr local label "@" "`istar'", count(local hasat)
  ```
- Line 2318: loc
  ```
  local ilabel `"`macval(label)'`istar'"'
  ```
- Line 2320: loc
  ```
  local legend `"`macval(legend)'`macval(isym)'`macval(ilabel)'"'
  ```
- Line 2322: loc
  ```
  c_local starlegend `"`macval(legend)'"'
  ```
- Line 2327: loc
  ```
  local nstar: word count `macval(starlevels)'
  ```
- Line 2329: loc
  ```
  local istar: word `=`i'-1' of `macval(starlevels)'
  ```
- Line 2330: loc
  ```
  local width = max(length("`width'"),length(`"`macval(istar)'"'))
  ```
- Line 2332: loc
  ```
  c_local value `width'
  ```
- Line 2337: name
  ```
  syntax, names(str) [ coefs(str asis) stats(str asis) equations(str) ///
  ```
- Line 2338: name
  ```
  rename(str asis) margin(str asis) meqs(str asis) ///
  ```
- Line 2342: name
  ```
  // coefs: coef "coef O/1 #" `"coef O/1 "rowname""' etc...
  ```
- Line 2344: name
  ```
  tempname bc bbc bs bbs st
  ```
- Line 2346: loc, name
  ```
  local nnames : word count `names'
  ```
- Line 2347: loc, name
  ```
  local rename : subinstr local rename "," "", all
  ```
- Line 2349: loc
  ```
  local stats : subinstr local stats "," "", all
  ```
- Line 2350: name
  ```
  confirm names `stats'
  ```
- Line 2351: loc
  ```
  local stats : list uniq stats
  ```
- Line 2352: loc
  ```
  local nstat : list sizeof stats
  ```
- Line 2353: name
  ```
  mat `bbs' = J(`nstat', `nnames', .z)
  ```
- Line 2354: lname, loc, name
  ```
  mat colnames `bbs' = `: subinstr local names "." "active", all word'
  ```
- Line 2355: name
  ```
  mat rownames `bbs' = `stats'
  ```
- Line 2359: name
  ```
  MatchNames "`equations'"
  ```
- Line 2360: loc
  ```
  local eqspec  `r(eqspec)'
  ```
- Line 2361: loc, name
  ```
  local eqnames `r(eqnames)'
  ```
- Line 2364: loc
  ```
  local ncoefs 0
  ```
- Line 2365: loc
  ```
  foreach coefn of local coefs {
  ```
- Line 2366: loc
  ```
  local ++ncoefs
  ```
- Line 2368: loc
  ```
  local coefnms `"`coefnms' `coef'"' // use more informative label? (coefn => error in Stata 8 and 10)
  ```
- Line 2370: loc
  ```
  local bVs "b se var t z p ci_l ci_u _star _sign _sigsign"
  ```
- Line 2371: loc
  ```
  local hasbVs = `"`: list coefnms & bVs'"'!=""
  ```
- Line 2372: loc
  ```
  local hastransform = (`"`transform'"'!="") & `hasbVs'
  ```
- Line 2373: loc
  ```
  local getbV = cond(`hasbVs' | `dropped', "b var ", "")
  ```
- Line 2375: name
  ```
  tempname hcurrent esample
  ```
- Line 2376: loc, name
  ```
  local estcycle = ("`names'"!=".")
  ```
- Line 2381: loc
  ```
  local ni 0
  ```
- Line 2382: loc
  ```
  local hasbbc 0
  ```
- Line 2383: loc
  ```
  local ccols = `ncoefs' + ("`margin'"!="") + `dropped'
  ```
- Line 2384: loc, name
  ```
  foreach name of local names {
  ```
- Line 2385: loc
  ```
  local ++ni
  ```
- Line 2386: loc
  ```
  local hasbc 0
  ```
- Line 2387: loc
  ```
  local hasmargin 0
  ```
- Line 2389: name
  ```
  if "`name'" != "." {
  ```
- Line 2390: loc, name
  ```
  local eqname `name'
  ```
- Line 2391: name
  ```
  *est_unhold `name' `esample'        // (why preserve missings in esample?)
  ```
- Line 2392: name
  ```
  capt confirm new var _est_`name'    // fix e(sample) if obs have been added
  ```
- Line 2393: name
  ```
  if _rc qui replace _est_`name' = 0 if _est_`name' >=.
  ```
- Line 2394: name
  ```
  _est unhold `name'
  ```
- Line 2397: loc, name
  ```
  local eqname active
  ```
- Line 2405: loc
  ```
  CheckEqs `"`getbV'`coefs'"'                 // sets local seqmerge
  ```
- Line 2406: loc
  ```
  GetCoefs `bc' `seqmerge' `"`getbV'`coefs'"' // sets local hasbc
  ```
- Line 2411: loc
  ```
  local rc = _rc
  ```
- Line 2413: name
  ```
  // set equation names and get marginal effects
  ```
- Line 2420: name
  ```
  AdjustRowEq `bc' `ni' `nnames' "`eqspec'" "`eqnames'"
  ```
- Line 2423: loc
  ```
  GetMarginals `bc' "`margin'" `"`meqs'"' // resets local hasmargin
  ```
- Line 2430: loc
  ```
  local transformthis: word `ni' of `transformpattern'
  ```
- Line 2432: loc
  ```
  else local transformthis 1
  ```
- Line 2441: loc
  ```
  local rc = _rc
  ```
- Line 2455: loc
  ```
  local rc = _rc
  ```
- Line 2458: loc, name
  ```
  local depname: word 1 of `e(depvar)'
  ```
- Line 2459: loc, name
  ```
  return local m`ni'_depname "`depname'"
  ```
- Line 2461: loc
  ```
  local title `"`e(estimates_title)'"'
  ```
- Line 2462: loc
  ```
  if `"`title'"'=="" local title `"`e(_estimates_title)'"'  // prior to Stata 10
  ```
- Line 2463: loc
  ```
  return local m`ni'_estimates_title `"`title'"'
  ```
- Line 2465: name
  ```
  if "`name'" != "." {
  ```
- Line 2466: name
  ```
  *est_hold `name' `esample'
  ```
- Line 2467: name
  ```
  _est hold `name', estimates varname(_est_`name')
  ```
- Line 2481: loc
  ```
  mata: estout_omitted_and_base() // sets local hasbc
  ```
- Line 2485: name
  ```
  mat coleq `bc' = `eqname'
  ```
- Line 2486: name
  ```
  if `"`rename'"'!="" {
  ```
- Line 2487: name
  ```
  RenameCoefs `bc' `"`rename'"'
  ```
- Line 2499: loc, name
  ```
  local eqname: word `nj' of `names'
  ```
- Line 2500: name
  ```
  if `"`eqname'"'=="." {
  ```
- Line 2501: loc, name
  ```
  local eqname active
  ```
- Line 2503: name
  ```
  mat coleq `bc' = `eqname'
  ```
- Line 2508: loc
  ```
  local hasbbc 1
  ```
- Line 2515: name
  ```
  mat coleq `bc' = `eqname'
  ```
- Line 2531: loc, name
  ```
  return local names `names'
  ```
- Line 2537: name
  ```
  tempname tmp
  ```
- Line 2540: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 2549: name
  ```
  program RenameCoefs
  ```
- Line 2550: name
  ```
  args bc rename
  ```
- Line 2551: loc
  ```
  local Stata11 = cond(c(stata_version)>=11, "version 11:", "")
  ```
- Line 2552: name
  ```
  tempname tmp
  ```
- Line 2553: loc
  ```
  local eqs: roweq `bc', q
  ```
- Line 2554: loc
  ```
  local eqs: list clean eqs
  ```
- Line 2555: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 2556: loc, name
  ```
  local newnames
  ```
- Line 2557: loc
  ```
  foreach eq of local eqs {
  ```
- Line 2559: name
  ```
  QuotedRowNames `tmp'
  ```
- Line 2560: loc
  ```
  local vars `"`value'"'
  ```
- Line 2565: name
  ```
  di as err "invalid rename()"
  ```
- Line 2570: loc
  ```
  local hasto = rownumb(`tmp', `"`to'"')
  ```
- Line 2572: name
  ```
  di as err `"`to' already exists in equation; cannot rename"'
  ```
- Line 2581: name
  ```
  di as err "invalid rename()"
  ```
- Line 2591: loc, name
  ```
  local newnames `"`newnames'`vars' "'
  ```
- Line 2593: name
  ```
  `Stata11' mat rown `bc' = `newnames'
  ```
- Line 2597: name
  ```
  program MatchNames, rclass
  ```
- Line 2600: loc
  ```
  local eqspec  : subinstr local eqspec ":" " ", all
  ```
- Line 2601: loc
  ```
  local eqspec0 : subinstr local eqspec "#" "" , all
  ```
- Line 2603: loc
  ```
  local iterm 0
  ```
- Line 2606: loc
  ```
  local ++iterm
  ```
- Line 2608: name
  ```
  // term = [name =] { # | #-list }
  ```
- Line 2609: name
  ```
  gettoken eqname oprest: term, parse("=")
  ```
- Line 2612: name
  ```
  confirm name `eqname'
  ```
- Line 2613: loc
  ```
  local term `rest'
  ```
- Line 2616: loc, name
  ```
  local eqname #`iterm'
  ```
- Line 2618: loc, name
  ```
  local eqnames `eqnames' `eqname'
  ```
- Line 2628: name
  ```
  if `"`:list dups eqnames'"' != "" {
  ```
- Line 2629: name
  ```
  dis as err "duplicate matched equation names"
  ```
- Line 2633: loc
  ```
  return local eqspec   `eqspec0'
  ```
- Line 2634: loc, name
  ```
  return local eqnames  `eqnames'
  ```
- Line 2638: name
  ```
  // 02oct2013: added -version 11: matrix roweq- to support new eqnames
  ```
- Line 2640: name
  ```
  args b ni nmodel eqspec eqnames
  ```
- Line 2642: loc
  ```
  local beqn : roweq `b', quote
  ```
- Line 2643: loc
  ```
  local beqn : list clean beqn
  ```
- Line 2644: loc
  ```
  local beq  : list uniq beqn
  ```
- Line 2646: name
  ```
  if `"`:list beq & eqnames'"' != "" {
  ```
- Line 2648: name
  ```
  dis as err "specified equation name already occurs in model `ni'"
  ```
- Line 2652: loc
  ```
  local iterm 0
  ```
- Line 2656: loc
  ```
  local ++iterm
  ```
- Line 2658: name
  ```
  // term = [name =] { # | #-list }
  ```
- Line 2659: name
  ```
  gettoken eqname oprest: term, parse("=")
  ```
- Line 2662: loc
  ```
  local term `rest'
  ```
- Line 2665: loc, name
  ```
  local eqname #`iterm'
  ```
- Line 2668: loc
  ```
  local nword : list sizeof term
  ```
- Line 2675: loc
  ```
  local term  : word `ni' of `term'
  ```
- Line 2690: name
  ```
  if `:list posof "`eqname'" in beq' != 0 {
  ```
- Line 2691: name
  ```
  dis as err "impossible to name equation `eqname'"
  ```
- Line 2692: name
  ```
  dis as err "you should provide (another) equation name"
  ```
- Line 2696: loc
  ```
  local beqn : subinstr local beqn  ///
  ```
- Line 2698: name
  ```
  "`eqname'" , word all
  ```
- Line 2708: name
  ```
  if c(stata_version)>=11 { // similar to RenameCoefs
  ```
- Line 2717: name
  ```
  // Modification: returns string scalars in r(m`ni'_name) (and sets `bbs' = .y)
  ```
- Line 2720: name
  ```
  tempname rank st V
  ```
- Line 2721: loc
  ```
  local escalars : e(scalars)
  ```
- Line 2722: loc
  ```
  local emacros : e(macros)
  ```
- Line 2723: loc
  ```
  local is 0
  ```
- Line 2724: loc
  ```
  foreach stat of local stats {
  ```
- Line 2725: loc
  ```
  local ++is
  ```
- Line 2729: loc
  ```
  local rc = _rc
  ```
- Line 2740: loc
  ```
  local hasrank 1
  ```
- Line 2766: loc, lon, name
  ```
  capt return local m`ni'_`stat' `"`e(`stat')'"'  // name might be too long
  ```
- Line 2779: name
  ```
  tempname addrow
  ```
- Line 2780: loc
  ```
  local ic "aic bic rank"
  ```
- Line 2781: loc
  ```
  local eqs: roweq `bc', q
  ```
- Line 2782: loc
  ```
  local eqs: list clean eqs
  ```
- Line 2783: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 2784: loc
  ```
  local s 0
  ```
- Line 2785: loc
  ```
  foreach stat of local stats {
  ```
- Line 2786: loc
  ```
  local ++s
  ```
- Line 2789: loc
  ```
  local e 0
  ```
- Line 2790: loc
  ```
  local found 0
  ```
- Line 2791: loc
  ```
  foreach eq of local eqs {
  ```
- Line 2792: loc
  ```
  local ++e
  ```
- Line 2794: loc
  ```
  if "`stat'"=="p" local value: word `e' of `e(p_F)'
  ```
- Line 2795: loc
  ```
  else local value: word `e' of `e(`stat')'
  ```
- Line 2798: loc
  ```
  local value `"`e(`stat'`e')'"'
  ```
- Line 2801: loc
  ```
  local value `"`e(`stat'_`e')'"'
  ```
- Line 2805: loc
  ```
  local found 1
  ```
- Line 2806: loc
  ```
  local r = rownumb(`bbs', `"`eq':`stat'"')
  ```
- Line 2811: loc
  ```
  local r = rownumb(`bbs', `"`eq':`stat'"')
  ```
- Line 2818: loc
  ```
  capt return local m`ni'_`stat' ""
  ```
- Line 2827: name
  ```
  tempname tmp
  ```
- Line 2828: loc
  ```
  local j 0
  ```
- Line 2829: loc
  ```
  local bVs "b _star _sign _sigsign"
  ```
- Line 2830: loc
  ```
  local seqmerge 0
  ```
- Line 2831: loc
  ```
  local hasseqs 0
  ```
- Line 2833: loc
  ```
  local ++j
  ```
- Line 2841: loc
  ```
  local eqs: coleq `tmp', q
  ```
- Line 2843: loc
  ```
  local seqmerge 1
  ```
- Line 2854: loc
  ```
  if `"`row'"'=="" local row 1
  ```
- Line 2857: loc
  ```
  local row = rownumb(`tmp',`row')
  ```
- Line 2860: loc
  ```
  local eqs: coleq `tmp', q
  ```
- Line 2862: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 2863: loc
  ```
  local eqs: list clean eqs
  ```
- Line 2865: loc
  ```
  local local seqmerge 0
  ```
- Line 2868: loc
  ```
  else local hasseqs 1
  ```
- Line 2871: loc
  ```
  local seqmerge 1
  ```
- Line 2874: loc
  ```
  if `hasseqs'==0 local seqmerge 0
  ```
- Line 2875: loc
  ```
  c_local seqmerge `seqmerge'
  ```
- Line 2880: name
  ```
  tempname tmp
  ```
- Line 2881: loc
  ```
  local hasbc 0
  ```
- Line 2882: loc
  ```
  local j 0
  ```
- Line 2883: loc
  ```
  local bVs "b _star _sign _sigsign"
  ```
- Line 2884: loc
  ```
  foreach coefn of local coefs {
  ```
- Line 2885: loc
  ```
  local ++j
  ```
- Line 2889: loc
  ```
  local isinbVs: list coef in bVs
  ```
- Line 2896: loc
  ```
  local isinbVs 1
  ```
- Line 2923: loc
  ```
  if `"`row'"'=="" local row 1
  ```
- Line 2926: loc
  ```
  local row = rownumb(`tmp',`row')
  ```
- Line 2935: loc
  ```
  local bcols = colsof(`tmp')
  ```
- Line 2943: loc
  ```
  local eqs: roweq `tmp', q
  ```
- Line 2944: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 2945: loc
  ```
  local eqs: list clean eqs
  ```
- Line 2947: loc
  ```
  local seqmergejs `seqmergejs' `j'
  ```
- Line 2948: loc
  ```
  local seqmergecoefs `"`seqmergecoefs'`"`coefn'"' "'
  ```
- Line 2956: loc
  ```
  local hasbc 1
  ```
- Line 2966: loc
  ```
  foreach coefn of local seqmergecoefs {
  ```
- Line 2975: loc
  ```
  if `"`row'"'=="" local row 1
  ```
- Line 2978: loc
  ```
  local row = rownumb(`tmp',`row')
  ```
- Line 2983: loc
  ```
  c_local hasbc `hasbc'
  ```
- Line 2988: name
  ```
  tempname tmp
  ```
- Line 2989: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 2992: loc
  ```
  local v: rown `tmp'
  ```
- Line 2993: loc
  ```
  local c = colnumb(`x', `"`v'"')
  ```
- Line 3002: loc
  ```
  local bVs1 "b _star _sign _sigsign"
  ```
- Line 3003: loc
  ```
  local bVs2 "se var t z p ci_l ci_u"
  ```
- Line 3004: loc
  ```
  local c = colsof(`bc')
  ```
- Line 3027: name
  ```
  tempname tmp
  ```
- Line 3029: name
  ```
  mat coln `tmp' = `cname'
  ```
- Line 3030: loc
  ```
  local c = colsof(`m')
  ```
- Line 3045: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 3047: loc
  ```
  local var `bc'[`i',2]
  ```
- Line 3048: loc
  ```
  local res `bc'[`i',`j']
  ```
- Line 3062: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 3064: loc
  ```
  local b   `bc'[`i',1]
  ```
- Line 3065: loc
  ```
  local var `bc'[`i',2]
  ```
- Line 3066: loc
  ```
  local res `bc'[`i',`j']
  ```
- Line 3079: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 3080: loc
  ```
  local df_r = e(df_r)
  ```
- Line 3084: name
  ```
  tempname dfmi
  ```
- Line 3089: loc
  ```
  local b   `bc'[`i',1]
  ```
- Line 3090: loc
  ```
  local var `bc'[`i',2]
  ```
- Line 3091: loc
  ```
  local res `bc'[`i',`j']
  ```
- Line 3114: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 3115: loc
  ```
  local df_r = e(df_r)
  ```
- Line 3119: name
  ```
  tempname dfmi
  ```
- Line 3124: loc
  ```
  local b   `bc'[`i',1]
  ```
- Line 3125: loc
  ```
  local var `bc'[`i',2]
  ```
- Line 3126: loc
  ```
  local res `bc'[`i',`j']
  ```
- Line 3157: name
  ```
  tempname D dfdx
  ```
- Line 3160: loc
  ```
  local type `e(Xmfx_type)'
  ```
- Line 3167: loc
  ```
  if "`e(Xmfx_discrete)'"=="discrete" local dummy `e(Xmfx_dummy)'
  ```
- Line 3171: loc
  ```
  local dummy `e(dummy)'
  ```
- Line 3178: loc
  ```
  local dummy `e(dummy)'
  ```
- Line 3183: name
  ```
  tempname V se
  ```
- Line 3193: name
  ```
  QuotedRowNames `bc'
  ```
- Line 3194: loc, name
  ```
  local rnames `"`value'"'
  ```
- Line 3195: loc
  ```
  if `"`meqs'"'!="" local reqs: roweq `bc', q
  ```
- Line 3196: loc
  ```
  local i 1
  ```
- Line 3197: loc, name
  ```
  foreach row of loc rnames {
  ```
- Line 3199: loc
  ```
  local eq: word `i' of `reqs'
  ```
- Line 3201: loc
  ```
  local col = colnumb(`dfdx',"`row'")
  ```
- Line 3211: loc
  ```
  local ++i
  ```
- Line 3213: loc
  ```
  c_local hasmargin 1
  ```
- Line 3220: loc
  ```
  local c = colsof(`bc')
  ```
- Line 3237: loc
  ```
  local r = rowsof(`bc')
  ```
- Line 3243: loc
  ```
  local df   `"`f'"'
  ```
- Line 3244: loc
  ```
  local f    `"`coef'"'
  ```
- Line 3245: loc
  ```
  local coef ""
  ```
- Line 3247: loc
  ```
  local trcoefs `"`trcoefs'`"`coef'"' "'
  ```
- Line 3249: loc
  ```
  local trs `"`trs'`"`df'"' "'
  ```
- Line 3252: loc
  ```
  local trs `"`trs'`"`f'"' "'
  ```
- Line 3258: loc
  ```
  local trs : subinstr local trs  "@" "\`b'", all
  ```
- Line 3266: loc
  ```
  local b   `bc'[`i',1]
  ```
- Line 3267: loc
  ```
  local res `bc'[`i',`j']
  ```
- Line 3273: loc
  ```
  local b `bc'[`i',`j']
  ```
- Line 3289: loc
  ```
  c_local match 1
  ```
- Line 3292: name
  ```
  tempname tmp
  ```
- Line 3294: loc
  ```
  local eqi: roweq `tmp'
  ```
- Line 3295: loc
  ```
  local xi: rown `tmp'
  ```
- Line 3297: loc
  ```
  local eq: list clean eq
  ```
- Line 3298: name
  ```
  if `"`eq'"'==":" {    // case 1: ":[varname]"
  ```
- Line 3299: loc
  ```
  local eq
  ```
- Line 3301: name
  ```
  else if `"`x'"'=="" { // case 2: "varname"
  ```
- Line 3302: loc
  ```
  local x `"`eq'"'
  ```
- Line 3303: loc
  ```
  local eq
  ```
- Line 3305: name
  ```
  else {                // case 3. "eqname:[varname]"
  ```
- Line 3306: lon
  ```
  gettoken colon x : x, parse(:)
  ```
- Line 3307: loc
  ```
  local x: list clean x
  ```
- Line 3309: loc
  ```
  if `"`eq'"'=="" local eq "*"
  ```
- Line 3310: loc
  ```
  if `"`x'"'=="" local x "*"
  ```
- Line 3311: loc
  ```
  c_local match = match(`"`eqi'"', `"`eq'"') & match(`"`xi'"', `"`x'"')
  ```
- Line 3317: loc
  ```
  local num "(`m')"
  ```
- Line 3318: loc
  ```
  local lab: word `m' of `macval(mlabels)'
  ```
- Line 3320: loc
  ```
  local lab `"`num' `macval(lab)'"'
  ```
- Line 3322: loc
  ```
  else local lab `num'
  ```
- Line 3323: loc
  ```
  local labels `"`macval(labels)'`"`macval(lab)'"' "'
  ```
- Line 3325: loc
  ```
  c_local mlabels `"`macval(labels)'"'
  ```
- Line 3330: name
  ```
  tempname Bsub
  ```
- Line 3332: loc
  ```
  local R = rowsof(`Bsub')
  ```
- Line 3333: loc
  ```
  local value 0
  ```
- Line 3336: loc
  ```
  local value 1
  ```
- Line 3340: loc
  ```
  c_local value `value'
  ```
- Line 3343: block, loc
  ```
  program Add2Vblock
  ```
- Line 3344: block, loc
  ```
  args block col
  ```
- Line 3345: loc
  ```
  foreach v of local col {
  ```
- Line 3346: block, loc
  ```
  gettoken row block: block
  ```
- Line 3347: loc
  ```
  local row "`row' `v'"
  ```
- Line 3348: loc
  ```
  local row: list retok row
  ```
- Line 3349: block, loc
  ```
  local vblock `"`vblock'"`row'" "'
  ```
- Line 3351: block, loc
  ```
  c_local vblock `"`vblock'"'
  ```
- Line 3356: loc
  ```
  local m0 0
  ```
- Line 3357: loc
  ```
  local e0 0
  ```
- Line 3358: loc
  ```
  local i 0
  ```
- Line 3359: loc
  ```
  local eqs 0
  ```
- Line 3360: loc
  ```
  foreach m of local ms {
  ```
- Line 3361: loc
  ```
  local ++i
  ```
- Line 3362: loc
  ```
  local e: word `i' of `es'
  ```
- Line 3364: loc
  ```
  local ++eqs
  ```
- Line 3366: loc
  ```
  local m0 `m'
  ```
- Line 3367: loc
  ```
  local e0 `e'
  ```
- Line 3369: loc
  ```
  c_local value `eqs'
  ```
- Line 3375: loc
  ```
  if `type'==1 local atvars span
  ```
- Line 3377: loc
  ```
  local atvars span M E width hline
  ```
- Line 3378: loc
  ```
  if `rtf' local atvars `atvars' rtfrowdefbrdrt rtfrowdefbrdrb rtfrowdef rtfemptyrow
  ```
- Line 3379: loc
  ```
  if `type'!=2  local atvars `atvars' title note discrete starlegend
  ```
- Line 3381: loc
  ```
  foreach atvar of local atvars {
  ```
- Line 3384: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 3391: loc
  ```
  local value = substr(`"`macval(value)'"',1,`width')
  ```
- Line 3395: loc
  ```
  local value = abbrev(`"`macval(value)'"',`width')
  ```
- Line 3399: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 3404: loc
  ```
  local i 0
  ```
- Line 3405: loc
  ```
  local m0 0
  ```
- Line 3406: loc
  ```
  local j 0
  ```
- Line 3407: loc
  ```
  foreach m of local mrow {
  ```
- Line 3409: loc
  ```
  local newpattern `newpattern' .
  ```
- Line 3413: loc
  ```
  local p: word `++i' of `pattern'
  ```
- Line 3414: loc
  ```
  if `i'==1 local p 1
  ```
- Line 3415: loc
  ```
  if "`p'"=="1" local j = `j' + 1
  ```
- Line 3417: loc
  ```
  local newpattern `newpattern' `j'
  ```
- Line 3418: loc
  ```
  local m0 `m'
  ```
- Line 3420: loc
  ```
  c_local mgroupspattern `newpattern'
  ```
- Line 3426: loc
  ```
  local c 0
  ```
- Line 3427: loc
  ```
  local nspan 0
  ```
- Line 3428: loc
  ```
  local c0 2
  ```
- Line 3429: loc
  ```
  local spanwidth -`delwidth'
  ```
- Line 3430: loc
  ```
  local spanfmt
  ```
- Line 3431: loc
  ```
  local ncolwidth: list sizeof colwidth
  ```
- Line 3432: loc
  ```
  foreach r of local row {
  ```
- Line 3433: loc
  ```
  local rtwo: word `++c' of `rowtwo'
  ```
- Line 3434: loc
  ```
  local colwidthj: word `=1+mod(`c'-1,`ncolwidth')' of `colwidth'
  ```
- Line 3435: loc
  ```
  if `colwidthj'>0 local colfmt "%`colwidthj's"
  ```
- Line 3436: loc
  ```
  else local colfmt
  ```
- Line 3438: loc
  ```
  local ++c0
  ```
- Line 3443: loc
  ```
  local value: word `r' of `macval(labels)'
  ```
- Line 3445: loc
  ```
  local value `"`macval(prefix)'`macval(value)'`macval(suffix)'"'
  ```
- Line 3448: loc
  ```
  else local value
  ```
- Line 3453: loc
  ```
  local lastr "`r'"
  ```
- Line 3454: loc
  ```
  local lastrtwo "`rtwo'"
  ```
- Line 3457: loc
  ```
  local ++nspan
  ```
- Line 3458: loc
  ```
  local spanwidth=`spanwidth'+`colwidthj'+`delwidth'
  ```
- Line 3460: loc
  ```
  local spanwidth = `spanwidth' + `starwidth'
  ```
- Line 3462: loc
  ```
  local ++nspan
  ```
- Line 3463: loc
  ```
  local spanwidth = `spanwidth' + `delwidth'
  ```
- Line 3466: loc
  ```
  local nextrtwo: word `=`c'+1' of `rowtwo'
  ```
- Line 3467: loc
  ```
  local nextr: word `=`c'+1' of `row'
  ```
- Line 3470: loc
  ```
  local value: word `r' of `macval(labels)'
  ```
- Line 3472: loc
  ```
  local value `"`macval(prefix)'`macval(value)'`macval(suffix)'"'
  ```
- Line 3474: loc
  ```
  if `spanwidth'>0 local spanfmt "%-`spanwidth's"
  ```
- Line 3477: loc
  ```
  local repeatlist `"`macval(repeatlist)'`macval(value)'"'
  ```
- Line 3478: loc
  ```
  local c0 = `c0' + `nspan'
  ```
- Line 3479: loc
  ```
  local nspan 0
  ```
- Line 3480: loc
  ```
  local spanwidth -`delwidth'
  ```
- Line 3484: loc
  ```
  c_local value `"`macval(repeatlist)'"'
  ```
- Line 3489: loc
  ```
  foreach line of local pre {
  ```
- Line 3491: loc
  ```
  local newline _n
  ```
- Line 3506: loc
  ```
  foreach line of local lines {
  ```
- Line 3508: loc
  ```
  local newline _n
  ```
- Line 3516: loc
  ```
  local nspan 1
  ```
- Line 3517: loc
  ```
  local spanwidth `vwidth'
  ```
- Line 3518: loc
  ```
  local spanfmt
  ```
- Line 3519: loc
  ```
  local c 0
  ```
- Line 3520: loc
  ```
  local nmwidth: list sizeof mwidth
  ```
- Line 3523: loc
  ```
  local value `"`macval(prefix)'`macval(value)'`macval(suffix)'"'
  ```
- Line 3529: loc
  ```
  foreach r of local row {
  ```
- Line 3530: loc
  ```
  local mwidthj: word `=1+mod(`c++',`nmwidth')' of `mwidth'
  ```
- Line 3531: loc
  ```
  if `mwidthj'>0 local fmt_m "%`mwidthj's"
  ```
- Line 3532: loc
  ```
  else local fmt_m
  ```
- Line 3541: loc
  ```
  local ++nspan
  ```
- Line 3542: loc
  ```
  local spanwidth = `spanwidth' + `delwidth' + `labcolwidth'
  ```
- Line 3544: loc
  ```
  foreach r of local row {
  ```
- Line 3545: loc
  ```
  local mwidthj: word `=1+mod(`c++',`nmwidth')' of `mwidth'
  ```
- Line 3546: loc
  ```
  local ++nspan
  ```
- Line 3547: loc
  ```
  local spanwidth = `spanwidth' + `delwidth' + `mwidthj'
  ```
- Line 3549: loc
  ```
  local spanwidth = `spanwidth' + `starwidth'
  ```
- Line 3551: loc
  ```
  local ++nspan
  ```
- Line 3552: loc
  ```
  local spanwidth = `spanwidth' + `delwidth'
  ```
- Line 3557: loc
  ```
  local value `"`macval(prefix)'`macval(value)'`macval(suffix)'"'
  ```
- Line 3559: loc
  ```
  if `spanwidth'>0 local spanfmt "%-`spanwidth's"
  ```
- Line 3567: loc
  ```
  local c 0
  ```
- Line 3568: loc
  ```
  local ncolwidth: list sizeof colwidth
  ```
- Line 3569: loc
  ```
  foreach mnum of local mrow {
  ```
- Line 3570: loc
  ```
  local eqnum: word `++c' of `eqrow'
  ```
- Line 3571: loc
  ```
  local colwidthj: word `=1+mod(`c'-1,`ncolwidth')' of `colwidth'
  ```
- Line 3572: loc
  ```
  if `colwidthj'>0 local colfmt "%`colwidthj's"
  ```
- Line 3573: loc
  ```
  else local colfmt
  ```
- Line 3579: loc
  ```
  local value: word `=(`mnum'-1)*`neq'+`eqnum'' of `macval(labels)'
  ```
- Line 3582: loc
  ```
  else local value
  ```
- Line 3587: loc
  ```
  local lastmnum "`mnum'"
  ```
- Line 3588: loc
  ```
  local lasteqnum "`eqnum'"
  ```
- Line 3594: loc
  ```
  local value
  ```
- Line 3595: loc
  ```
  local L: word count `macval(list)'
  ```
- Line 3597: loc
  ```
  local lvar: word `l' of `macval(list)'
  ```
- Line 3598: loc
  ```
  local lab: word `=`l'+1' of `macval(list)'
  ```
- Line 3601: loc
  ```
  local value `"`macval(lab)'"'
  ```
- Line 3607: loc
  ```
  local value `"`macval(lab)'"'
  ```
- Line 3612: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 3623: loc
  ```
  local fmt %`=`fmt'+9'.`fmt'f
  ```
- Line 3626: loc
  ```
  else if `"`fmt'"'=="%g" | `"`fmt'"'=="g" local fmt "%9.0g"
  ```
- Line 3631: loc
  ```
  local value: di `fmt' `value'
  ```
- Line 3632: loc
  ```
  local value: list retok value
  ```
- Line 3635: loc
  ```
  local value: subinstr local value "0." "."
  ```
- Line 3639: loc
  ```
  if "`: set dp'"=="comma" local dp ,
  ```
- Line 3640: loc
  ```
  else local dp .
  ```
- Line 3641: loc
  ```
  local val: subinstr local value "`dp'" `"`macval(dmarker)'"'
  ```
- Line 3643: loc
  ```
  else local val `"`value'"'
  ```
- Line 3646: loc
  ```
  local val: subinstr local val "-" `"`macval(msign)'"'
  ```
- Line 3651: loc
  ```
  local val `"`macval(1)'`macval(val)'`macval(2)'"'
  ```
- Line 3653: loc
  ```
  c_local value `"`macval(val)'"'
  ```
- Line 3658: loc
  ```
  local d = substr("`fmt'", 2, .)
  ```
- Line 3659: loc
  ```
  if `"`d'"'=="" local d 3
  ```
- Line 3666: loc
  ```
  if `value'>=. local fmt "%9.0g"
  ```
- Line 3669: loc
  ```
  local fmt "%12.0f"
  ```
- Line 3674: loc
  ```
  local right = -int(log10(abs(`value'-int(`value')))) // zeros after dp
  ```
- Line 3675: loc
  ```
  local dec = max(1,`d' + `right')
  ```
- Line 3677: loc
  ```
  local fmt "%12.`dec'f"
  ```
- Line 3680: loc
  ```
  local fmt "%12.`=min(9,`d'-1)'e"
  ```
- Line 3687: loc
  ```
  local left = int(log10(abs(`value'))+1) // digits before dp
  ```
- Line 3689: loc
  ```
  local fmt "%12.`=max(1,`d' - `left' + 1)'f"
  ```
- Line 3692: loc
  ```
  local fmt "%12.0e" // alternatively: "%12.`=min(9,`d'-1)'e"
  ```
- Line 3695: loc
  ```
  c_local fmt "`fmt'"
  ```
- Line 3701: loc
  ```
  local nstar: word count `macval(starlevels)'
  ```
- Line 3703: loc
  ```
  local istarsym: word `i' of `macval(starlevels)'
  ```
- Line 3704: loc
  ```
  local istar: word `=`i'+1' of `macval(starlevels)'
  ```
- Line 3706: loc
  ```
  local value "`macval(istarsym)'"
  ```
- Line 3709: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 3717: loc
  ```
  local value `"`macval(1)'`macval(value)'`macval(2)'"'
  ```
- Line 3719: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 3725: loc
  ```
  local factor = 0
  ```
- Line 3730: loc
  ```
  if `P'<`istar' local factor = `factor' + 1
  ```
- Line 3731: loc
  ```
  else if `istar'==1 local factor = 1
  ```
- Line 3734: loc
  ```
  else local factor 1
  ```
- Line 3735: loc
  ```
  if `"`macval(msign)'"'=="" local msign "-"
  ```
- Line 3737: loc
  ```
  local val: di _dup(`factor') `"`macval(msign)'"'
  ```
- Line 3739: loc
  ```
  else if `value'==0 local val: di _dup(`factor') "0"
  ```
- Line 3740: loc
  ```
  else if `value'>0 & `value'<. local val: di _dup(`factor') "+"
  ```
- Line 3741: loc
  ```
  else local val `value'
  ```
- Line 3744: loc
  ```
  local val `"`macval(1)'`macval(val)'`macval(2)'"'
  ```
- Line 3746: loc
  ```
  c_local value `"`macval(val)'"'
  ```
- Line 3755: name
  ```
  tempname res bt
  ```
- Line 3756: loc
  ```
  local R = rowsof(`b')
  ```
- Line 3758: loc
  ```
  local hit 0
  ```
- Line 3760: loc
  ```
  foreach sp of local spec {
  ```
- Line 3762: loc
  ```
  local hit 1
  ```
- Line 3769: name
  ```
  capt mat rename `res' `b'
  ```
- Line 3778: name
  ```
  tempname bt res
  ```
- Line 3779: loc
  ```
  local eqlist: roweq `b', q
  ```
- Line 3780: loc
  ```
  local eqlist: list uniq eqlist
  ```
- Line 3786: loc
  ```
  local vars `"`vars'`"`spi'"' "'
  ```
- Line 3788: loc
  ```
  local spi `"`spinext'"'
  ```
- Line 3791: loc
  ```
  foreach eq of local eqlist {
  ```
- Line 3792: loc
  ```
  foreach var of local vars {
  ```
- Line 3793: loc
  ```
  local splist `"`splist'`"`eq':`var'"' "'
  ```
- Line 3795: loc
  ```
  local splist `"`splist'`"`eq':"' "' // rest
  ```
- Line 3797: loc
  ```
  local vars
  ```
- Line 3799: loc
  ```
  else local splist `"`spi'"'
  ```
- Line 3802: loc
  ```
  local isp = rownumb(`bt', "`sp'")
  ```
- Line 3809: loc
  ```
  local nb = rowsof(`bt')
  ```
- Line 3812: name
  ```
  capt mat rename `res' `b'
  ```
- Line 3824: loc
  ```
  local isp = rownumb(`bt', "`sp'")
  ```
- Line 3828: loc
  ```
  local spi `"`spinext'"'
  ```
- Line 3832: name
  ```
  capt mat rename `res' `b'
  ```
- Line 3835: lname, name
  ```
  prog MakeQuotedFullnames
  ```
- Line 3836: name
  ```
  args names eqs
  ```
- Line 3837: loc, name
  ```
  foreach name of local names {
  ```
- Line 3839: loc, name
  ```
  local value `"`value'`"`eq':`name'"' "'
  ```
- Line 3841: loc
  ```
  c_local value: list clean value
  ```
- Line 3844: name
  ```
  program define QuotedRowNames
  ```
- Line 3848: loc
  ```
  c_local value ""
  ```
- Line 3851: name
  ```
  tempname extract
  ```
- Line 3853: loc
  ```
  local matrix0 `"`matrix'"'
  ```
- Line 3854: name
  ```
  tempname matrix
  ```
- Line 3857: loc
  ```
  local R = rowsof(`matrix')
  ```
- Line 3860: loc, name
  ```
  local name: rownames `extract'
  ```
- Line 3861: loc, name
  ```
  local value `"`value'`"`name'"' "'
  ```
- Line 3863: loc
  ```
  c_local value: list clean value
  ```
- Line 3867: name
  ```
  args names eqlist eqlabels varlabels
  ```
- Line 3868: loc
  ```
  local skip 0
  ```
- Line 3869: loc
  ```
  foreach v of local varlabels {
  ```
- Line 3871: loc
  ```
  local skip 0
  ```
- Line 3874: loc
  ```
  local vlabv `"`vlabv'`"`v'"' "'
  ```
- Line 3875: loc
  ```
  local skip 1
  ```
- Line 3877: loc
  ```
  local deqs: list dups eqlist
  ```
- Line 3878: loc
  ```
  local deqs: list uniq deqs
  ```
- Line 3879: loc
  ```
  local i 0
  ```
- Line 3880: loc
  ```
  foreach eq of local eqlist {
  ```
- Line 3881: loc
  ```
  local ++i
  ```
- Line 3885: loc
  ```
  local last `"`eq'"'
  ```
- Line 3887: loc, name
  ```
  local name: word `i' of `names'
  ```
- Line 3888: loc, name
  ```
  local isinvlabv: list posof `"`eq':`name'"' in vlabv
  ```
- Line 3889: name
  ```
  if `"`name'"'=="_cons" & `isinvlabv'==0 {
  ```
- Line 3890: loc, name
  ```
  local value `"`value'`space'`"`eq':`name'"' `"`eqlab'"'"'
  ```
- Line 3891: loc
  ```
  local space " "
  ```
- Line 3894: loc
  ```
  c_local value `"`value'"'
  ```
- Line 3898: loc
  ```
  local n 0
  ```
- Line 3899: loc
  ```
  foreach el of local 1 {
  ```
- Line 3901: loc
  ```
  if `n'>0 local eqsdims "`eqsdims' `n'"
  ```
- Line 3902: loc
  ```
  local eqs `"`macval(eqs)' `"`macval(el)'"'"'
  ```
- Line 3903: loc
  ```
  local n 0
  ```
- Line 3905: loc
  ```
  local ++n
  ```
- Line 3906: loc
  ```
  local last `"`macval(el)'"'
  ```
- Line 3908: loc
  ```
  local eqsdims "`eqsdims' `n'"
  ```
- Line 3909: loc
  ```
  c_local eqsdims: list clean eqsdims
  ```
- Line 3910: loc
  ```
  c_local eqs: list clean eqs
  ```
- Line 3915: loc
  ```
  if `"`symb'"'=="" local symb .
  ```
- Line 3917: loc
  ```
  local i 0
  ```
- Line 3918: loc
  ```
  foreach r of local row {
  ```
- Line 3919: loc
  ```
  local ++i
  ```
- Line 3922: loc
  ```
  local value `"`value' `symb'"'
  ```
- Line 3927: loc
  ```
  local value `"`value' `"`r'"'"'
  ```
- Line 3930: loc
  ```
  local value `"`value' `symb'"'
  ```
- Line 3933: loc
  ```
  c_local value: list clean value
  ```
- Line 3936: name
  ```
  prog GetVarnamesFromOrder
  ```
- Line 3937: loc
  ```
  foreach sp of local 1 {
  ```
- Line 3944: loc
  ```
  local value `"`value'`space'`sp'"'
  ```
- Line 3945: loc
  ```
  local space " "
  ```
- Line 3947: loc
  ```
  c_local value `"`value'"'
  ```
- Line 3955: loc
  ```
  local anything `"`"`macval(anything)'"'"'
  ```
- Line 3960: loc
  ```
  c_local indicate `"`macval(anything)'"'
  ```
- Line 3961: loc
  ```
  c_local indicatelabels `"`macval(labels)'"'
  ```
- Line 3971: loc
  ```
  local vars `"`indicate'"'
  ```
- Line 3975: loc
  ```
  local vars `"`rest'"'
  ```
- Line 3978: loc, name
  ```
  local name `"`macval(name)'`space'`macval(tok)'"'
  ```
- Line 3979: loc
  ```
  local space " "
  ```
- Line 3982: name
  ```
  if `"`macval(name)'"'=="" {
  ```
- Line 3983: loc, name
  ```
  local name: word 1 of `"`vars'"'
  ```
- Line 3986: loc
  ```
  local evars `"`value'"'
  ```
- Line 3988: loc
  ```
  local lbls `"`macval(value)'"'
  ```
- Line 3990: loc, name
  ```
  c_local indicate`i'name `"`macval(name)'"'
  ```
- Line 3991: loc
  ```
  c_local indicate`i'lbls `"`macval(lbls)'"'
  ```
- Line 3992: loc
  ```
  c_local indicate`i'eqs `"`eqs'"'
  ```
- Line 4000: loc
  ```
  local lbls `"`macval(lbls)' `"`macval(no)'"'"'
  ```
- Line 4002: loc
  ```
  c_local value `"`macval(lbls)'"'
  ```
- Line 4004: loc
  ```
  c_local eqs "_"
  ```
- Line 4008: loc
  ```
  local models: coleq `B', q
  ```
- Line 4009: loc
  ```
  local models: list uniq models
  ```
- Line 4010: loc
  ```
  local eqs: roweq `B', q
  ```
- Line 4011: loc
  ```
  local eqs: list uniq eqs
  ```
- Line 4012: name
  ```
  tempname Bt Btt Bttt
  ```
- Line 4013: loc
  ```
  foreach model of local models {
  ```
- Line 4014: loc
  ```
  local stop 0
  ```
- Line 4016: loc
  ```
  foreach eq of local eqs {
  ```
- Line 4018: loc
  ```
  if `"`unstack'"'!="" local stop 0
  ```
- Line 4019: loc
  ```
  foreach var of local vars {
  ```
- Line 4021: loc
  ```
  local var `"`eq':`var'"'
  ```
- Line 4027: loc
  ```
  local lbls `"`macval(lbls)' `"`macval(yes)'"'"'
  ```
- Line 4028: loc
  ```
  local stop 1
  ```
- Line 4036: loc
  ```
  local lbls `"`macval(lbls)' `"`macval(no)'"'"'
  ```
- Line 4042: loc
  ```
  local lbls `"`macval(lbls)' `"`macval(no)'"'"'
  ```
- Line 4045: loc
  ```
  c_local value `"`macval(lbls)'"'
  ```
- Line 4047: loc
  ```
  c_local eqs `"`eqs'"'
  ```
- Line 4053: loc
  ```
  local neq: list sizeof ieqs
  ```
- Line 4054: loc
  ```
  foreach eq of local eqs {
  ```
- Line 4055: loc
  ```
  local i: list posof `"`eq'"' in ieqs
  ```
- Line 4057: loc
  ```
  local pos `pos' `i'
  ```
- Line 4061: loc
  ```
  foreach i of local pos {
  ```
- Line 4062: loc
  ```
  local mi = (`m'-1)*`neq' + `i'
  ```
- Line 4063: loc
  ```
  local lbl: word `mi' of `macval(lbls)'
  ```
- Line 4064: loc
  ```
  local value `"`macval(value)'`"`macval(lbl)'"' "'
  ```
- Line 4067: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 4072: loc
  ```
  c_local refcatbelow "`below'"
  ```
- Line 4073: loc
  ```
  c_local norefcatlabel "`nolabel'"
  ```
- Line 4074: loc
  ```
  c_local refcatlabel `"`macval(label)'"'
  ```
- Line 4075: loc
  ```
  c_local refcat `"`macval(anything)'"'
  ```
- Line 4080: name
  ```
  gettoken name rest : rest
  ```
- Line 4082: loc
  ```
  local coefs `"`coefs'`coef' "'
  ```
- Line 4083: loc, name
  ```
  local names `"`macval(names)'`"`macval(name)'"' "'
  ```
- Line 4085: name
  ```
  gettoken name rest : rest
  ```
- Line 4087: loc
  ```
  c_local refcatcoefs `"`coefs'"'
  ```
- Line 4088: loc, name
  ```
  c_local refcatnames `"`macval(names)'"'
  ```
- Line 4093: loc
  ```
  local models: coleq `B', q
  ```
- Line 4094: loc
  ```
  local models: list uniq models
  ```
- Line 4095: loc
  ```
  local col 1
  ```
- Line 4096: loc
  ```
  foreach model of local models {
  ```
- Line 4097: loc
  ```
  foreach eq of local eqs {
  ```
- Line 4098: loc
  ```
  local eqvar `"`eq':`var'"'
  ```
- Line 4099: loc
  ```
  local row = rownumb(`B',"`eqvar'")
  ```
- Line 4101: loc
  ```
  local value `"`macval(value)'`"`macval(label)'"' "'
  ```
- Line 4104: loc
  ```
  local value `"`macval(value)'`""' "'
  ```
- Line 4107: loc
  ```
  local col = `col' + `ccols'
  ```
- Line 4109: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 4114: loc
  ```
  c_local transform `"`anything'"'
  ```
- Line 4115: loc
  ```
  c_local transformpattern "`pattern'"
  ```
- Line 4120: loc
  ```
  local R = rowsof(`B')
  ```
- Line 4125: loc
  ```
  local valuef `"`valuef'`f' "'
  ```
- Line 4126: loc
  ```
  local valuedf `"`valuedf'`df' "'
  ```
- Line 4128: loc
  ```
  c_local valuef: list retok valuef
  ```
- Line 4129: loc
  ```
  c_local valuedf: list retok valuedf
  ```
- Line 4138: loc
  ```
  local coef `"`value'"'
  ```
- Line 4140: loc
  ```
  local coefs `"`coefs'`"`coef'"' "'
  ```
- Line 4141: loc
  ```
  local fs `"`fs'`"`f'"' "'
  ```
- Line 4142: loc
  ```
  local dfs `"`dfs'`"`df'"' "'
  ```
- Line 4147: name
  ```
  tempname b
  ```
- Line 4148: loc
  ```
  local value
  ```
- Line 4151: loc
  ```
  local i 0
  ```
- Line 4152: loc
  ```
  local hit 0
  ```
- Line 4153: loc
  ```
  foreach coef of local coefs {
  ```
- Line 4154: loc
  ```
  local f: word `++i' of `fs'
  ```
- Line 4155: loc
  ```
  local df: word `i' of `dfs'
  ```
- Line 4157: loc
  ```
  local valuef `"`valuef'`"`coef'"' "'  // sic! (see above)
  ```
- Line 4158: loc
  ```
  local valuedf `"`valuedf'`"`f'"' "'
  ```
- Line 4159: loc
  ```
  local hit 1
  ```
- Line 4162: loc
  ```
  foreach c of local coef {
  ```
- Line 4164: loc
  ```
  local valuef `"`valuef'`"`f'"' "'
  ```
- Line 4165: loc
  ```
  local valuedf `"`valuedf'`"`df'"' "'
  ```
- Line 4166: loc
  ```
  local hit 1
  ```
- Line 4173: loc
  ```
  local valuef `"`valuef'"" "'
  ```
- Line 4174: loc
  ```
  local valuedf `"`valuedf'"" "'
  ```
- Line 4177: loc
  ```
  c_local valuef: list retok valuef
  ```
- Line 4178: loc
  ```
  c_local valuedf: list retok valuedf
  ```
- Line 4182: loc
  ```
  local ccols = r(ccols)
  ```
- Line 4183: loc
  ```
  local eq: roweq r(coefs), q
  ```
- Line 4184: loc
  ```
  local eq: list uniq eq
  ```
- Line 4186: loc
  ```
  c_local value 0
  ```
- Line 4189: name
  ```
  tempname b bt
  ```
- Line 4193: loc
  ```
  local R = rowsof(`b')
  ```
- Line 4194: loc
  ```
  local models: coleq `b', q
  ```
- Line 4195: loc
  ```
  local models: list uniq models
  ```
- Line 4196: loc
  ```
  local value 0
  ```
- Line 4197: loc
  ```
  local i = 1 - `ccols'
  ```
- Line 4198: loc
  ```
  foreach model of local models {
  ```
- Line 4199: loc
  ```
  local i = `i' + `ccols'
  ```
- Line 4202: loc
  ```
  local allz 1
  ```
- Line 4205: loc
  ```
  local allz 0
  ```
- Line 4210: loc
  ```
  local value 1
  ```
- Line 4214: loc
  ```
  c_local value `value'
  ```
- Line 4220: name
  ```
  QuotedRowNames `B'
  ```
- Line 4221: loc
  ```
  local coefs `"`value'"'
  ```
- Line 4222: loc
  ```
  local value
  ```
- Line 4223: loc
  ```
  local ucoefs: list uniq coefs
  ```
- Line 4226: loc
  ```
  local eqs: roweq `B', q
  ```
- Line 4228: loc
  ```
  else local eqs "_"
  ```
- Line 4229: loc
  ```
  local ueqs: list uniq eqs
  ```
- Line 4235: loc
  ```
  local eq: list clean eq
  ```
- Line 4236: name
  ```
  if `"`eq'"'==":" {    // case 1: ":[varname]"
  ```
- Line 4237: loc
  ```
  local eq
  ```
- Line 4239: name
  ```
  else if `"`x'"'=="" { // case 2: "varname"
  ```
- Line 4240: loc
  ```
  local x `"`eq'"'
  ```
- Line 4241: loc
  ```
  local eq
  ```
- Line 4243: name
  ```
  else {                // case 3. "eqname:[varname]"
  ```
- Line 4244: lon
  ```
  gettoken colon x : x, parse(:)
  ```
- Line 4245: loc
  ```
  local x: list clean x
  ```
- Line 4248: loc
  ```
  local eqmatch
  ```
- Line 4250: loc
  ```
  local eqmatch `"`eq'"'
  ```
- Line 4253: loc
  ```
  foreach e of local ueqs {
  ```
- Line 4255: loc
  ```
  local eqmatch `"`eqmatch' `"`e'"'"'
  ```
- Line 4264: loc
  ```
  local eqmatch: list clean eqmatch
  ```
- Line 4267: loc
  ```
  foreach e of local eqmatch {
  ```
- Line 4268: loc
  ```
  local value `"`value' `"`e':"'"'
  ```
- Line 4273: loc
  ```
  local vlist
  ```
- Line 4277: loc
  ```
  local value `"`value' `"`x'"'"'
  ```
- Line 4280: loc
  ```
  foreach coef of local ucoefs {
  ```
- Line 4282: loc
  ```
  local vlist `"`vlist' `"`coef'"'"'
  ```
- Line 4287: loc
  ```
  local appendlist `"`appendlist' `"`x'"'"'
  ```
- Line 4288: loc
  ```
  local value `"`value' `"`x'"'"'
  ```
- Line 4296: loc
  ```
  local value `"`value' `vlist'"'
  ```
- Line 4301: loc
  ```
  local rest `"`eqs'"'
  ```
- Line 4302: loc
  ```
  foreach coef of local coefs {
  ```
- Line 4308: loc
  ```
  local vlist `"`vlist' `"`e':`coef'"'"'
  ```
- Line 4313: loc
  ```
  local appendlist `"`appendlist' `"`eq':`x'"'"'
  ```
- Line 4314: loc
  ```
  local value `"`value' `"`eq':`x'"'"'
  ```
- Line 4322: loc
  ```
  local value `"`value' `vlist'"'
  ```
- Line 4326: loc
  ```
  local nappend : list sizeof appendlist
  ```
- Line 4330: name
  ```
  tempname tmp
  ```
- Line 4337: loc
  ```
  c_local value: list clean value
  ```
- Line 4342: loc
  ```
  c_local list `"`anything'"'
  ```
- Line 4343: loc
  ```
  c_local relax `relax'
  ```
- Line 4348: loc
  ```
  local trash: subinstr local haystack `"`needle'"' "", count(local count)
  ```
- Line 4349: loc
  ```
  c_local strcount = `count'
  ```
- Line 4354: loc
  ```
  local factor 120
  ```
- Line 4357: loc
  ```
  if `vwidth'<=0 local vwidth 12
  ```
- Line 4358: loc
  ```
  if real(`"`trgaph'"')>=. local trgaph 0
  ```
- Line 4359: loc
  ```
  if real(`"`trleft'"')>=. local trleft 0
  ```
- Line 4360: loc
  ```
  local swidth = 3
  ```
- Line 4361: loc
  ```
  local vtwips = `vwidth'*`factor'
  ```
- Line 4362: loc
  ```
  local stwips = `swidth'*`factor'
  ```
- Line 4363: loc
  ```
  local ipos = `vtwips' + 2*`trgaph' + (`trleft')
  ```
- Line 4364: loc
  ```
  local brdrt "\clbrdrt\brdrw10\brdrs"
  ```
- Line 4365: loc
  ```
  local brdrb "\clbrdrb\brdrw10\brdrs"
  ```
- Line 4366: loc
  ```
  local emptycell "\pard\intbl\ql\cell"
  ```
- Line 4367: loc
  ```
  local rtfdef "\cellx`ipos'"
  ```
- Line 4368: loc
  ```
  local rtfdefbrdrt "`brdrt'\cellx`ipos'"
  ```
- Line 4369: loc
  ```
  local rtfdefbrdrb "`brdrb'\cellx`ipos'"
  ```
- Line 4370: loc
  ```
  local rtfrow "`emptycell'"
  ```
- Line 4372: loc
  ```
  if `lc2width'<=0 local lc2width 12
  ```
- Line 4373: loc
  ```
  local lc2twips = `lc2width'*`factor'
  ```
- Line 4374: loc
  ```
  local ipos = `ipos' + `lc2twips' + 2*`trgaph'
  ```
- Line 4375: loc
  ```
  local rtfdef "`rtfdef'\cellx`ipos'"
  ```
- Line 4376: loc
  ```
  local rtfdefbrdrt "`rtfdefbrdrt'`brdrt'\cellx`ipos'"
  ```
- Line 4377: loc
  ```
  local rtfdefbrdrb "`rtfdefbrdrb'`brdrb'\cellx`ipos'"
  ```
- Line 4378: loc
  ```
  local rtfrow "`rtfrow'`emptycell'"
  ```
- Line 4380: loc
  ```
  local j 0
  ```
- Line 4381: loc
  ```
  local nmwidth: list sizeof mwidth
  ```
- Line 4382: loc
  ```
  foreach i of local srow {
  ```
- Line 4383: loc
  ```
  local mwidthj: word `=1 + mod(`j++',`nmwidth')' of `mwidth'
  ```
- Line 4384: loc
  ```
  if `mwidthj'<=0 local mwidthj 12
  ```
- Line 4385: loc
  ```
  local mtwips = `mwidthj'*`factor'
  ```
- Line 4386: loc
  ```
  local ipos = `ipos' + `mtwips' + 2*`trgaph'
  ```
- Line 4387: loc
  ```
  if `i' & "`sdetach'"=="" local ipos = `ipos' + `stwips'
  ```
- Line 4388: loc
  ```
  local rtfdef "`rtfdef'\cellx`ipos'"
  ```
- Line 4389: loc
  ```
  local rtfdefbrdrt "`rtfdefbrdrt'`brdrt'\cellx`ipos'"
  ```
- Line 4390: loc
  ```
  local rtfdefbrdrb "`rtfdefbrdrb'`brdrb'\cellx`ipos'"
  ```
- Line 4391: loc
  ```
  local rtfrow "`rtfrow'`emptycell'"
  ```
- Line 4393: loc
  ```
  local ipos = `ipos' + `stwips' + 2*`trgaph'
  ```
- Line 4394: loc
  ```
  local rtfdef "`rtfdef'\cellx`ipos'"
  ```
- Line 4395: loc
  ```
  local rtfdefbrdrt "`rtfdefbrdrt'`brdrt'\cellx`ipos'"
  ```
- Line 4396: loc
  ```
  local rtfdefbrdrb "`rtfdefbrdrb'`brdrb'\cellx`ipos'"
  ```
- Line 4397: loc
  ```
  local rtfrow "`rtfrow'`emptycell'"
  ```
- Line 4400: loc
  ```
  c_local rtfrowdef "`rtfdef'"
  ```
- Line 4401: loc
  ```
  c_local rtfrowdefbrdrt "`rtfdefbrdrt'"
  ```
- Line 4402: loc
  ```
  c_local rtfrowdefbrdrb "`rtfdefbrdrb'"
  ```
- Line 4403: loc
  ```
  c_local rtfemptyrow "`rtfdef'`rtfrow'"
  ```
- Line 4408: loc
  ```
  local pos = index(`"`str'"', `"\\`cmd'"')
  ```
- Line 4410: loc
  ```
  local pos = `pos' + strlen(`"`cmd'"') + 1
  ```
- Line 4411: loc
  ```
  local digit = substr(`"`str'"',`pos',1)
  ```
- Line 4413: loc
  ```
  local value "`digit'"
  ```
- Line 4414: loc
  ```
  local digit = substr(`"`str'"',`++pos',1)
  ```
- Line 4417: loc
  ```
  local value "`value'`digit'"
  ```
- Line 4418: loc
  ```
  local digit = substr(`"`str'"',`++pos',1)
  ```
- Line 4421: loc
  ```
  local value = real(`"`value'"')
  ```
- Line 4422: loc
  ```
  if `value'>=. local value = `default'
  ```
- Line 4423: loc
  ```
  c_local `cmd' `"`value'"'
  ```
- Line 4428: loc
  ```
  c_local labcol2 `"`macval(anything)'"'
  ```
- Line 4429: loc
  ```
  c_local labcol2title `"`macval(title)'"'
  ```
- Line 4430: loc
  ```
  c_local labcol2width `"`width'"'
  ```
- Line 4438: loc
  ```
  if "`all'"=="all"   local cnt .
  ```
- Line 4439: loc
  ```
  else if "`all'"=="" local cnt 1
  ```
- Line 4441: loc
  ```
  if "`word'"=="" local word str
  ```
- Line 4443: loc
  ```
  mata: st_local("tmp", subin`word'(st_local("old"), ///
  ```
- Line 4445: loc
  ```
  c_local `new' `"`macval(tmp)'"'
  ```
- Line 4451: loc
  ```
  c_local `new' `"`macval(tmp)'"'
  ```
- Line 4458: loc
  ```
  if "`varw'"=="0"     | "`varw'"==""     local varw 1
  ```
- Line 4459: loc
  ```
  if "`labcol2w'"=="0" | "`labcol2w'"=="" local labcol2w 1
  ```
- Line 4460: loc
  ```
  if "`modelw'"=="0"   | "`modelw'"==""   local modelw 1
  ```
- Line 4461: loc
  ```
  if "`starw'"=="0"    | "`starw'"==""    local starw 1
  ```
- Line 4462: loc
  ```
  local varw      = max(1,`varw')
  ```
- Line 4463: loc
  ```
  local labcol2w  = max(1,`labcol2w'-2)
  ```
- Line 4464: loc
  ```
  if "`stardetachon'"=="1" local starw = max(1,`starw'-2)
  ```
- Line 4465: loc
  ```
  else                     local starw = max(1,`starw')
  ```
- Line 4467: loc
  ```
  local mmddef `"| `:di _dup(`varw') "-"'"'
  ```
- Line 4469: loc
  ```
  local mmddef `"`mmddef' | :`:di _dup(`labcol2w') "-"':"'
  ```
- Line 4471: loc
  ```
  local nmodelw: list sizeof modelw
  ```
- Line 4472: loc
  ```
  local c 0
  ```
- Line 4473: loc
  ```
  foreach col of local starsrow {
  ```
- Line 4474: loc
  ```
  local modelwj: word `=1+mod(`c++',`nmodelw')' of `modelw'
  ```
- Line 4475: loc
  ```
  local modelwj = max(1,`modelwj'-2)
  ```
- Line 4476: loc
  ```
  local mmddef `"`mmddef' | :`:di _dup(`modelwj') "-"'"'
  ```
- Line 4479: loc
  ```
  local mmddef `"`mmddef': | :"'
  ```
- Line 4481: loc
  ```
  local mmddef `"`mmddef'`:di _dup(`starw') "-"'"'
  ```
- Line 4483: loc
  ```
  local mmddef `"`mmddef':"'
  ```
- Line 4485: loc
  ```
  c_local value `"`mmddef' |"'
  ```
- Line 4489: name
  ```
  capt syntax [, Matrix(str asis) e(str asis) r(str asis) rename(str asis) ]
  ```
- Line 4491: loc
  ```
  c_local matrixmode 0
  ```
- Line 4500: loc, name
  ```
  local name "e(`name')"
  ```
- Line 4503: loc, name
  ```
  local name "r(`name')"
  ```
- Line 4505: name
  ```
  confirm matrix `name'
  ```
- Line 4506: name
  ```
  tempname bc
  ```
- Line 4508: name
  ```
  mat `bc' = `name''
  ```
- Line 4511: name
  ```
  mat `bc' = `name'
  ```
- Line 4513: name
  ```
  QuotedRowNames `bc'
  ```
- Line 4514: loc, name
  ```
  local rnames `"`value'"'
  ```
- Line 4515: loc
  ```
  local eqs: roweq `bc', q
  ```
- Line 4517: loc
  ```
  local cols = colsof(`bc')
  ```
- Line 4518: loc
  ```
  local cells
  ```
- Line 4519: loc
  ```
  local space
  ```
- Line 4521: name
  ```
  gettoken rname rnames : rnames
  ```
- Line 4525: loc
  ```
  local fmtopt `"f(`fmti') "'
  ```
- Line 4531: loc
  ```
  else local fmtopt
  ```
- Line 4533: loc, name
  ```
  local lbl `"l(`"`rname'"')"'
  ```
- Line 4536: loc, name
  ```
  local lbl `"l(`"`eq':`rname'"')"'
  ```
- Line 4538: loc
  ```
  local cells `"`cells'`space'c`i'(`fmtopt'`lbl')"'
  ```
- Line 4539: loc
  ```
  local space " "
  ```
- Line 4540: name
  ```
  gettoken rname rnames : rnames
  ```
- Line 4543: name
  ```
  if `"`rename'"'!="" {
  ```
- Line 4544: loc, name
  ```
  local rename : subinstr local rename "," "", all
  ```
- Line 4545: name
  ```
  RenameCoefs `bc' `"`rename'"'
  ```
- Line 4547: loc, name
  ```
  return local names      "`name'"
  ```
- Line 4551: loc
  ```
  c_local matrixmode      1
  ```
- Line 4552: loc
  ```
  c_local cells           (`cells')
  ```
- Line 4556: name
  ```
  syntax name [, Fmt(str asis) Transpose ]
  ```
- Line 4557: loc, name
  ```
  c_local name `"`namelist'"'
  ```
- Line 4558: loc
  ```
  c_local fmt `"`fmt'"'
  ```
- Line 4559: loc
  ```
  c_local transpose `"`transpose'"'
  ```
- Line 4563: name
  ```
  syntax [, vname(str asis) interaction(str) ]
  ```
- Line 4564: name
  ```
  gettoken vi vname: vname, parse("#")
  ```
- Line 4566: loc
  ```
  local xlabi
  ```
- Line 4568: loc
  ```
  local xlabi `"`macval(interaction)'"'
  ```
- Line 4573: loc
  ```
  local xlabi: var lab `vi'
  ```
- Line 4583: loc
  ```
  local xlabi: var lab `vii'
  ```
- Line 4584: loc
  ```
  if (`"`macval(xlabi)'"'=="") local xlabi `"`vii'"'
  ```
- Line 4586: loc
  ```
  local li = substr(`"`li'"',2,.)
  ```
- Line 4587: loc
  ```
  if (`"`li'"'!="")    local xlabi `"`li'.`macval(xlabi)'"'
  ```
- Line 4590: loc
  ```
  local viilab : value label `vii'
  ```
- Line 4592: loc
  ```
  local xlabi: label `viilab' `li'
  ```
- Line 4595: loc
  ```
  local viilab: var lab `vii'
  ```
- Line 4596: loc
  ```
  if (`"`macval(viilab)'"'=="") local viilab `"`vii'"'
  ```
- Line 4597: loc
  ```
  local xlabi `"`macval(viilab)'=`li'"'
  ```
- Line 4603: loc
  ```
  local xlabi `"`vi'"'
  ```
- Line 4605: loc
  ```
  local xlab `"`macval(xlab)'`macval(xlabi)'"'
  ```
- Line 4606: name
  ```
  gettoken vi vname: vname, parse("#")
  ```
- Line 4608: loc
  ```
  c_local varl `"`macval(xlab)'"'
  ```
- Line 4623: loc
  ```
  bc = st_matrix(st_local("bc"))
  ```
- Line 4624: loc
  ```
  rstripe = st_matrixrowstripe(st_local("bc"))
  ```
- Line 4625: loc
  ```
  cstripe = st_matrixcolstripe(st_local("bc"))
  ```
- Line 4630: loc
  ```
  if (st_local("omitted")=="") {
  ```
- Line 4637: loc
  ```
  if (st_local("baselevels")=="") {
  ```
- Line 4644: loc
  ```
  st_matrix(st_local("bc"), select(bc, p))
  ```
- Line 4645: loc
  ```
  st_matrixrowstripe(st_local("bc"), select((rstripe[,1], coefnm), p))
  ```
- Line 4646: loc
  ```
  st_matrixcolstripe(st_local("bc"), cstripe)
  ```
- Line 4647: loc
  ```
  st_local("hasbc", "1")
  ```
- Line 4650: loc
  ```
  st_local("hasbc", "0")
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/estpost.ado**

- Line 4: lat
  ```
  * 3. estpost_tabulate
  ```
- Line 7: lat
  ```
  * 6. estpost_correlate
  ```
- Line 11: lat
  ```
  * 10. estpost__svy_tabulate
  ```
- Line 17: loc
  ```
  local caller : di _caller()
  ```
- Line 25: name
  ```
  capt confirm name `subcommand'
  ```
- Line 31: loc
  ```
  local l = length(`"`subcommand'"')
  ```
- Line 32: loc
  ```
  if `"`subcommand'"'==substr("summarize",1,max(2,`l')) local subcommand "summarize"
  ```
- Line 33: lat, loc
  ```
  else if `"`subcommand'"'==substr("tabulate",1,max(2,`l'))  local subcommand "tabulate"
  ```
- Line 34: lat, loc
  ```
  else if `"`subcommand'"'==substr("correlate",1,max(3,`l')) local subcommand "correlate"
  ```
- Line 43: loc
  ```
  capt local junk: properties estpost_`subcommand' // does not work in Stata 8
  ```
- Line 55: name
  ```
  tempname touse2
  ```
- Line 57: loc
  ```
  foreach var of local varlist {
  ```
- Line 65: lon
  ```
  _on_colon_parse `0'
  ```
- Line 66: loc
  ```
  local 0 `"`s(after)'"'
  ```
- Line 68: loc
  ```
  local l = length(`"`subcommand'"')
  ```
- Line 69: lat, loc
  ```
  if `"`subcommand'"'==substr("tabulate",1,max(2,`l'))  local subcommand "tabulate"
  ```
- Line 70: loc
  ```
  c_local subcommand `"_svy_`subcommand'"'
  ```
- Line 71: loc
  ```
  c_local rest `"`s(before)' : `rest'"'
  ```
- Line 73: lat, name
  ```
  program _estpost_namesandlabels // used by some routines such as estpost_tabulate
  ```
- Line 74: loc, name
  ```
  version 8.2                 // returns locals names, savenames, and labels
  ```
- Line 75: name
  ```
  args varname values0 labels0
  ```
- Line 77: loc
  ```
  local i 0
  ```
- Line 78: loc
  ```
  foreach label of local labels0 {
  ```
- Line 79: loc
  ```
  local values0 `values0' `++i'
  ```
- Line 82: loc
  ```
  local haslabels 0
  ```
- Line 83: name
  ```
  if `"`labels0'"'=="" & "`varname'"!="" {
  ```
- Line 84: loc, name
  ```
  local vallab: value label `varname'
  ```
- Line 90: loc
  ```
  local lbl: label `vallab' `value', strict
  ```
- Line 96: loc
  ```
  local haslabels 1
  ```
- Line 98: loc
  ```
  local lbl "`value'"
  ```
- Line 100: loc
  ```
  local value: subinstr local value "." "_missing_"
  ```
- Line 102: loc, name
  ```
  local names0 `names0' `value'
  ```
- Line 104: loc
  ```
  local labels `"`labels'`lblspace'`value' `"`lbl'"'"'
  ```
- Line 105: loc
  ```
  local lblspace " "
  ```
- Line 109: loc, name
  ```
  local names `"`names'`space'`value'"'
  ```
- Line 110: loc, name
  ```
  local savenames `"`savenames'`space'`value'"'
  ```
- Line 113: loc
  ```
  if regexm(`"`lbl'"', `"[:."]"') local haslabels 1
  ```
- Line 114: loc
  ```
  else if length(`"`lbl'"')>30    local haslabels 1
  ```
- Line 116: loc, name
  ```
  local names `"`names'`space'`"`lbl'"'"'
  ```
- Line 117: loc
  ```
  local lbl: subinstr local lbl " " "_", all
  ```
- Line 118: loc, name
  ```
  local savenames `"`savenames'`space'`lbl'"'
  ```
- Line 121: loc
  ```
  local space " "
  ```
- Line 124: loc, name
  ```
  local names `names0'
  ```
- Line 125: loc, name
  ```
  local savenames `names0'
  ```
- Line 127: lname, loc, name
  ```
  c_local names       `"`names'"'         // to be used as matrix row- or colnames
  ```
- Line 128: loc, name
  ```
  c_local savenames   `"`savenames'"'     // names without spaces (for matlist)
  ```
- Line 130: loc
  ```
  c_local labels      `"`labels'"'    // label dictionary
  ```
- Line 132: loc
  ```
  else c_local labels ""
  ```
- Line 134: lat, name
  ```
  program _estpost_eqnamesandlabels // used by some routines such as estpost_tabulate
  ```
- Line 135: loc, name
  ```
  version 8.2                   // returns locals eqnames and eqlabels
  ```
- Line 136: name
  ```
  args varname values0 labels0
  ```
- Line 138: loc
  ```
  local i 0
  ```
- Line 139: loc
  ```
  foreach label of local labels0 {
  ```
- Line 140: loc
  ```
  local values0 `values0' `++i'
  ```
- Line 143: loc
  ```
  local haslabels 0
  ```
- Line 144: name
  ```
  if `"`labels0'"'=="" & "`varname'"!="" {
  ```
- Line 145: loc, name
  ```
  local vallab: value label `varname'
  ```
- Line 151: loc
  ```
  local lbl: label `vallab' `value', strict
  ```
- Line 157: loc
  ```
  local haslabels 1
  ```
- Line 159: loc
  ```
  local lbl "`value'"
  ```
- Line 161: loc
  ```
  local value: subinstr local value "." "_missing_"
  ```
- Line 163: loc, name
  ```
  local names0 `names0' `value'
  ```
- Line 164: loc
  ```
  if `"`lbl'"'=="" local lbl "`value'"
  ```
- Line 165: loc
  ```
  local labels `"`labels'`lblspace'`"`lbl'"'"'
  ```
- Line 166: loc
  ```
  local lblspace " "
  ```
- Line 169: loc, name
  ```
  local names `"`names'`space'`value'"'
  ```
- Line 172: loc
  ```
  if regexm(`"`lbl'"', `"[:."]"') local haslabels 1
  ```
- Line 173: loc
  ```
  else if length(`"`lbl'"')>30    local haslabels 1
  ```
- Line 175: loc, name
  ```
  local names `"`names'`space'`"`lbl'"'"'
  ```
- Line 178: loc
  ```
  local space " "
  ```
- Line 181: loc, name
  ```
  local names `names0'
  ```
- Line 183: loc, name
  ```
  c_local eqnames       `"`names'"'         // to be used as matrix roweqs or coleqs
  ```
- Line 185: loc
  ```
  c_local eqlabels  `"`labels'"'        // list of labels
  ```
- Line 187: loc
  ```
  else c_local eqlabels ""
  ```
- Line 193: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 198: loc
  ```
  if "`casewise'"!="" local listwise listwise
  ```
- Line 207: loc
  ```
  local N = r(N)
  ```
- Line 211: loc
  ```
  local nvars: list sizeof varlist
  ```
- Line 212: name
  ```
  tempname emptymat
  ```
- Line 215: loc
  ```
  local i 0
  ```
- Line 216: loc, name
  ```
  local rnames ""
  ```
- Line 217: loc
  ```
  foreach v of local varlist {
  ```
- Line 218: loc
  ```
  local ++i
  ```
- Line 220: loc, name
  ```
  local rnamesi: r(scalars)
  ```
- Line 221: loc, name
  ```
  local rnamesi: list rnamesi - rnames
  ```
- Line 222: name
  ```
  if `"`rnamesi'"'!="" {
  ```
- Line 223: loc, name
  ```
  foreach name of local rnamesi {
  ```
- Line 224: name
  ```
  tempname _`name'
  ```
- Line 225: name
  ```
  mat `_`name'' = `emptymat'
  ```
- Line 227: loc, name
  ```
  local rnames: list rnames | rnamesi
  ```
- Line 229: loc, name
  ```
  foreach rname of local rnames {
  ```
- Line 230: name
  ```
  mat `_`rname''[1,`i'] = r(`rname')
  ```
- Line 236: name
  ```
  tempname res
  ```
- Line 237: loc
  ```
  local rescoln
  ```
- Line 238: loc, name
  ```
  foreach rname of local rnames {
  ```
- Line 239: name
  ```
  mat `res' = nullmat(`res'), `_`rname'''
  ```
- Line 240: name
  ```
  if "`rname'"=="N" {
  ```
- Line 241: loc
  ```
  local rescoln `rescoln' e(count)
  ```
- Line 244: loc, name
  ```
  local rescoln `rescoln' e(`rname')
  ```
- Line 258: loc
  ```
  local b
  ```
- Line 259: loc
  ```
  local V
  ```
- Line 261: name
  ```
  tempname b V
  ```
- Line 266: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 271: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 272: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 273: loc
  ```
  eret local subcmd "summarize"
  ```
- Line 274: loc
  ```
  eret local cmd "estpost"
  ```
- Line 276: loc, name
  ```
  local nmat: list sizeof rnames
  ```
- Line 278: loc, name
  ```
  local rname: word `i' of `rnames'
  ```
- Line 279: name
  ```
  if "`rname'"=="N" {
  ```
- Line 283: name
  ```
  eret matrix `rname' = `_`rname''
  ```
- Line 288: lat
  ```
  * 2. estpost_tabulate: wrapper for -tabulate-
  ```
- Line 289: lat
  ```
  prog estpost_tabulate, eclass
  ```
- Line 291: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 294: lat
  ```
  version `caller': estpost_tabulate_oneway `0'
  ```
- Line 297: lat
  ```
  version `caller': estpost_tabulate_twoway `0'
  ```
- Line 300: lat
  ```
  prog estpost_tabulate_oneway, eclass
  ```
- Line 302: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 305: name
  ```
  syntax varname [if] [in] [fw aw iw] [, ESample Quietly ///
  ```
- Line 312: loc
  ```
  local N = r(N)
  ```
- Line 318: name
  ```
  tempname varname
  ```
- Line 319: name
  ```
  qui encode `varlist' if `touse', generate(`varname')
  ```
- Line 321: loc, name
  ```
  else local varname `varlist'
  ```
- Line 324: name
  ```
  tempname count vals
  ```
- Line 325: name
  ```
  tab `varname' if `touse' [`weight'`exp'], nofreq ///
  ```
- Line 327: loc
  ```
  local N = r(N)
  ```
- Line 329: loc
  ```
  local R = r(r)
  ```
- Line 331: loc
  ```
  local value: di `vals'[`r',1]
  ```
- Line 332: loc
  ```
  local values `values' `value'
  ```
- Line 335: name
  ```
  _estpost_namesandlabels `varname' "`values'" // sets names, savenames, labels
  ```
- Line 338: name
  ```
  _estpost_namesandlabels  "" "`values'"
  ```
- Line 342: loc, name
  ```
  local names `"`names' Total"'
  ```
- Line 343: loc, name
  ```
  local savenames `"`savenames' Total"'
  ```
- Line 344: loc
  ```
  local linesopt "lines(rowtotal)"
  ```
- Line 346: lname, name
  ```
  mat colname `count' = `names'
  ```
- Line 347: name
  ```
  tempname percent cum
  ```
- Line 350: lname, name
  ```
  mat colname `cum' = `names'
  ```
- Line 359: name
  ```
  tempname res
  ```
- Line 366: name
  ```
  mat rown `res' = `savenames'
  ```
- Line 376: loc
  ```
  local V
  ```
- Line 378: name
  ```
  tempname V
  ```
- Line 381: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 382: name
  ```
  eret post `count' `V', depname(`varlist') obs(`N') `esample'
  ```
- Line 384: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 385: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 386: loc
  ```
  eret local labels `"`labels'"'
  ```
- Line 387: loc
  ```
  eret local depvar "`varlist'"
  ```
- Line 388: lat, loc
  ```
  eret local subcmd "tabulate"
  ```
- Line 389: loc
  ```
  eret local cmd "estpost"
  ```
- Line 393: lat
  ```
  prog estpost_tabulate_twoway, eclass
  ```
- Line 395: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 401: loc
  ```
  local v = upper("`v'")
  ```
- Line 402: loc
  ```
  local qui2 "`quietly'"
  ```
- Line 403: loc
  ```
  local hastests = `"`chi2'`exact'`exact2'`gamma'`lrchi2'`taub'`v'`all'"'!=""
  ```
- Line 404: loc
  ```
  if `hastests' local nofreq nofreq
  ```
- Line 405: loc
  ```
  else local qui2 "quietly"
  ```
- Line 411: loc
  ```
  local N = r(N)
  ```
- Line 420: name
  ```
  tempname `d'varname
  ```
- Line 421: name
  ```
  qui encode ``d'var' if `touse', generate(``d'varname')
  ```
- Line 423: loc, name
  ```
  else local `d'varname ``d'var'
  ```
- Line 427: name
  ```
  tempname cell rvals cvals
  ```
- Line 431: name
  ```
  `qui2' tab `rvarname' `cvarname' if `touse' [`weight'`exp'], `nofreq' ///
  ```
- Line 435: loc
  ```
  local N = r(N)
  ```
- Line 436: name
  ```
  tempname rtot ctot
  ```
- Line 440: loc
  ```
  local I = r(`d')
  ```
- Line 442: loc
  ```
  local value: di ``d'vals'[`i',1]
  ```
- Line 443: loc
  ```
  local `d'values ``d'values' `value'
  ```
- Line 447: name
  ```
  _estpost_namesandlabels `rvarname' "`rvalues'"   // sets names, savenames, labels
  ```
- Line 448: name
  ```
  _estpost_eqnamesandlabels `cvarname' "`cvalues'" // sets eqnames, eqlabels
  ```
- Line 451: name
  ```
  _estpost_namesandlabels "" "`rvalues'"   // sets names, savenames, labels
  ```
- Line 452: name
  ```
  _estpost_eqnamesandlabels "" "`cvalues'" // sets eqnames, eqlabels
  ```
- Line 454: loc, name
  ```
  local savenames0 `"`savenames'"'
  ```
- Line 455: loc, name
  ```
  local savenames
  ```
- Line 460: loc, name
  ```
  local names      `"`names' Total"'
  ```
- Line 461: loc, name
  ```
  local savenames0 `"`savenames0' Total"'
  ```
- Line 462: loc, name
  ```
  local eqnames    `"`eqnames' Total"'
  ```
- Line 464: name
  ```
  mat rowname `cell' = `names'
  ```
- Line 465: name
  ```
  tempname count col row tot tmp
  ```
- Line 467: name
  ```
  gettoken eq eqnames : eqnames
  ```
- Line 477: loc, name
  ```
  local savenames `"`savenames' `savenames0'"'
  ```
- Line 483: name
  ```
  tempname res
  ```
- Line 490: name
  ```
  mat rown `res' = `savenames'
  ```
- Line 507: loc
  ```
  local V
  ```
- Line 509: name
  ```
  tempname V
  ```
- Line 512: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 514: loc
  ```
  local rscalars: r(scalars)
  ```
- Line 515: loc
  ```
  local rscalars: subinstr local rscalars "N" "", word
  ```
- Line 516: loc
  ```
  foreach rsc of local rscalars {
  ```
- Line 519: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 520: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 521: loc
  ```
  eret local labels `"`labels'"'
  ```
- Line 522: loc
  ```
  eret local eqlabels `"`eqlabels'"'
  ```
- Line 523: loc
  ```
  eret local colvar "`cvar'"
  ```
- Line 524: loc
  ```
  eret local rowvar "`rvar'"
  ```
- Line 525: lat, loc
  ```
  eret local subcmd "tabulate"
  ```
- Line 526: loc
  ```
  eret local cmd "estpost"
  ```
- Line 536: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 541: name
  ```
  by(varname) noTotal Missing Columns(str) ]
  ```
- Line 542: loc
  ```
  if "`casewise'"!="" local listwise listwise
  ```
- Line 543: loc
  ```
  local l = length(`"`columns'"')
  ```
- Line 544: loc
  ```
  if `"`columns'"'==substr("variables",1,max(1,`l')) local columns "variables"
  ```
- Line 545: loc
  ```
  else if `"`columns'"'==substr("statistics",1,max(1,`l')) local columns "statistics"
  ```
- Line 546: loc
  ```
  else if `"`columns'"'=="stats" local columns "statistics"
  ```
- Line 548: loc
  ```
  if `:list sizeof varlist'>1 local columns "variables"
  ```
- Line 549: loc
  ```
  else local columns "statistics"
  ```
- Line 564: loc
  ```
  local byopt "by(`by')"
  ```
- Line 567: loc
  ```
  local N = r(N)
  ```
- Line 578: name
  ```
  tempname tmp
  ```
- Line 587: loc, name
  ```
  local cnames: rownames `tmp'
  ```
- Line 588: loc, name
  ```
  local cnames: subinstr local cnames "N" "count", word all
  ```
- Line 589: loc, name
  ```
  local cnames: subinstr local cnames "se(mean)" "semean", word all
  ```
- Line 590: loc
  ```
  local R = colsof(`tmp')
  ```
- Line 591: loc, name
  ```
  local stats "`cnames'"
  ```
- Line 592: lname, loc, name
  ```
  local vars: colnames `tmp'
  ```
- Line 595: lname, loc, name
  ```
  local cnames: colnames `tmp'
  ```
- Line 596: loc
  ```
  local R = rowsof(`tmp')
  ```
- Line 597: loc, name
  ```
  local stats: rownames `tmp'
  ```
- Line 598: loc
  ```
  local stats: subinstr local stats "N" "count", word all
  ```
- Line 599: loc
  ```
  local stats: subinstr local stats "se(mean)" "semean", word all
  ```
- Line 600: loc, name
  ```
  local vars "`cnames'"
  ```
- Line 601: loc, name
  ```
  local cnames: subinstr local cnames "b" "_b", word all
  ```
- Line 602: loc, name
  ```
  local cnames: subinstr local cnames "V" "_V", word all
  ```
- Line 604: loc
  ```
  local j 0
  ```
- Line 605: loc, name
  ```
  foreach cname of local cnames {
  ```
- Line 606: name
  ```
  tempname _`++j'
  ```
- Line 608: loc
  ```
  local groups: r(macros)
  ```
- Line 609: loc
  ```
  local g: list sizeof groups
  ```
- Line 610: loc
  ```
  local space
  ```
- Line 611: loc
  ```
  local labels
  ```
- Line 613: loc, name
  ```
  local labels `"`labels'`space'`"`r(name`i')'"'"'
  ```
- Line 616: name
  ```
  _estpost_namesandlabels "" "" `"`labels'"'   // sets names, savenames, labels
  ```
- Line 619: name
  ```
  _estpost_eqnamesandlabels "" "" `"`labels'"' // sets eqnames, eqlabels
  ```
- Line 620: loc, name
  ```
  local names `"`eqnames'"'
  ```
- Line 621: loc
  ```
  local labels `"`eqlabels'"'
  ```
- Line 624: name
  ```
  gettoken name names : names
  ```
- Line 631: name
  ```
  mat rown `tmp' = `"`name'"'
  ```
- Line 634: name
  ```
  mat roweq `tmp' = `"`name'"'
  ```
- Line 636: loc
  ```
  local j 0
  ```
- Line 637: loc, name
  ```
  foreach cname of local cnames {
  ```
- Line 638: loc
  ```
  local ++j
  ```
- Line 651: loc, name
  ```
  local savenames `"`savenames' Total"'
  ```
- Line 652: loc
  ```
  local rowtotal "lines(rowtotal)"
  ```
- Line 657: loc
  ```
  local labels `"`labels' Total"'
  ```
- Line 661: loc
  ```
  local j 0
  ```
- Line 662: loc, name
  ```
  foreach cname of local cnames {
  ```
- Line 663: loc
  ```
  local ++j
  ```
- Line 670: name
  ```
  tempname res
  ```
- Line 671: loc
  ```
  local rescoln
  ```
- Line 672: loc
  ```
  local j 0
  ```
- Line 673: loc, name
  ```
  foreach cname of local cnames {
  ```
- Line 674: loc
  ```
  local ++j
  ```
- Line 676: loc, name
  ```
  local rescoln `rescoln' e(`cname')
  ```
- Line 689: name
  ```
  mat rown `res' = `savenames'
  ```
- Line 700: loc
  ```
  local b
  ```
- Line 701: loc
  ```
  local V
  ```
- Line 703: name
  ```
  tempname b V
  ```
- Line 708: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 711: loc
  ```
  eret local labels `"`labels'"'
  ```
- Line 712: loc
  ```
  eret local byvar "`by'"
  ```
- Line 713: loc
  ```
  eret local vars "`vars'"
  ```
- Line 714: loc
  ```
  eret local stats "`stats'"
  ```
- Line 715: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 716: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 717: loc
  ```
  eret local subcmd "tabstat"
  ```
- Line 718: loc
  ```
  eret local cmd "estpost"
  ```
- Line 720: loc, name
  ```
  local nmat: list sizeof cnames
  ```
- Line 722: loc, name
  ```
  local cname: word `j' of `cnames'
  ```
- Line 723: name
  ```
  eret matrix `cname' = `_`j''
  ```
- Line 731: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 734: name
  ```
  syntax varlist(numeric) [if] [in] , by(varname) [ ESample Quietly ///
  ```
- Line 736: loc
  ```
  if "`casewise'"!="" local listwise listwise
  ```
- Line 746: loc
  ```
  local N = r(N)
  ```
- Line 750: loc
  ```
  local nvars: list sizeof varlist
  ```
- Line 751: name
  ```
  tempname diff count
  ```
- Line 755: loc, name
  ```
  local mnames se /*sd*/ t df_t p_l p p_u N_1 mu_1 /*sd_1*/ N_2 mu_2 /*sd_2*/
  ```
- Line 756: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 757: name
  ```
  tempname `m'
  ```
- Line 760: loc
  ```
  local i 0
  ```
- Line 761: loc
  ```
  foreach v of local varlist {
  ```
- Line 762: loc
  ```
  local ++i
  ```
- Line 766: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 773: name
  ```
  tempname res
  ```
- Line 775: loc
  ```
  local rescoln "e(b) e(count)"
  ```
- Line 776: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 778: loc
  ```
  local rescoln `rescoln' e(`m')
  ```
- Line 791: loc
  ```
  local V
  ```
- Line 793: name
  ```
  tempname V
  ```
- Line 796: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 801: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 802: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 803: loc
  ```
  eret local welch "`welch'"
  ```
- Line 804: loc
  ```
  eret local unequal "`unequal'"
  ```
- Line 805: loc
  ```
  eret local byvar "`by'"
  ```
- Line 806: loc
  ```
  eret local subcmd "ttest"
  ```
- Line 807: loc
  ```
  eret local cmd "estpost"
  ```
- Line 809: loc, name
  ```
  local nmat: list sizeof mnames
  ```
- Line 811: loc, name
  ```
  local m: word `i' of `mnames'
  ```
- Line 818: lat
  ```
  * 6. estpost_correlate: wrapper for -correlate-
  ```
- Line 819: lat
  ```
  prog estpost_correlate, eclass
  ```
- Line 821: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 827: loc
  ```
  if "`casewise'"!="" local listwise listwise
  ```
- Line 832: loc
  ```
  local pw = ("`weight'"=="pweight")
  ```
- Line 837: loc
  ```
  if `"`matrix'"'!="" & `"`half'"'!="" local fullmatrix fullmatrix
  ```
- Line 846: loc
  ```
  local N = r(N)
  ```
- Line 850: name
  ```
  tempname b rho pval count
  ```
- Line 852: loc
  ```
  local nvars : list sizeof varlist
  ```
- Line 853: loc
  ```
  local k = `nvars' * (`nvars'-1) / 2
  ```
- Line 855: loc
  ```
  foreach depvar of local varlist {
  ```
- Line 857: loc
  ```
  local indepvars `varlist'
  ```
- Line 860: loc
  ```
  local indepvars `depvar' `ferest()'
  ```
- Line 863: loc
  ```
  local indepvars `ferest()'
  ```
- Line 865: loc
  ```
  foreach v of local indepvars {
  ```
- Line 867: loc
  ```
  local r = sqrt(e(r2)) * (-1)^(_b[`v']<0)
  ```
- Line 868: loc
  ```
  local n = e(N)
  ```
- Line 876: loc
  ```
  local p = Ftail(e(df_m), e(df_r), e(F))
  ```
- Line 879: loc
  ```
  local p = max(`p', Ftail(e(df_m), e(df_r), e(F)))
  ```
- Line 882: loc
  ```
  local p = min(1, `k'*`p')
  ```
- Line 885: loc
  ```
  local p = min(1, 1 - (1-`p')^`k')
  ```
- Line 888: loc
  ```
  local r .z
  ```
- Line 889: loc
  ```
  local n .z
  ```
- Line 890: loc
  ```
  local p .z
  ```
- Line 897: lname, loc, name
  ```
  local colnames `indepvars'
  ```
- Line 898: loc, name
  ```
  local depname `depvar'
  ```
- Line 901: loc
  ```
  foreach v of local indepvars {
  ```
- Line 902: lname, loc, name
  ```
  local colnames `"`colnames'`depvar':`v' "'
  ```
- Line 905: lname, name
  ```
  mat coln `b' = `colnames'
  ```
- Line 906: lname, name
  ```
  mat coln `rho' = `colnames'
  ```
- Line 907: lname, name
  ```
  mat coln `count' = `colnames'
  ```
- Line 908: lname, name
  ```
  mat coln `pval' = `colnames'
  ```
- Line 910: loc
  ```
  local vcetype `"`e(vcetype)'"'
  ```
- Line 914: name
  ```
  tempname res
  ```
- Line 921: name
  ```
  matlist `res', nohalf lines(oneline) rowtitle(`depname') nodotz
  ```
- Line 927: loc
  ```
  local V
  ```
- Line 929: name
  ```
  tempname V
  ```
- Line 932: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 933: name
  ```
  eret post `b' `V', depname(`depname') obs(`N') `esample'
  ```
- Line 934: loc
  ```
  eret local vcetype `"`vcetype'"'
  ```
- Line 935: loc
  ```
  eret local vce `"`vce'"'
  ```
- Line 936: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 937: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 938: loc, name
  ```
  eret local depvar `depname'
  ```
- Line 939: lat, loc
  ```
  eret local subcmd "correlate"
  ```
- Line 940: loc
  ```
  eret local cmd "estpost"
  ```
- Line 950: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 953: name
  ```
  syntax [if] [in] [ , ESample Quietly by(varname) ///
  ```
- Line 956: loc
  ```
  local stat "p50"
  ```
- Line 958: loc
  ```
  local stat `"p`p'"'
  ```
- Line 959: loc
  ```
  local p `"p(`p')"'
  ```
- Line 961: loc
  ```
  else if "`rmean'"!=""   local stat "rmean"
  ```
- Line 962: loc
  ```
  else if "`emean'"!=""   local stat "emean"
  ```
- Line 970: loc
  ```
  local N = r(N)
  ```
- Line 974: name
  ```
  tempname _`stat' se N_sub lb ub
  ```
- Line 976: loc
  ```
  qui levelsof `by' if `touse', local(levels)
  ```
- Line 979: loc
  ```
  local vallab: value label `by'
  ```
- Line 981: name
  ```
  _estpost_namesandlabels `by' `"`levels'"'  // sets names, savenames, labels
  ```
- Line 984: loc, name
  ```
  local names `"`levels'"'
  ```
- Line 985: loc, name
  ```
  local savenames `"`levels'"'
  ```
- Line 989: name
  ```
  _estpost_namesandlabels `by' "" `"`levels'"'  // sets names, savenames, labels
  ```
- Line 992: loc
  ```
  local levels `"`levels' "total""'
  ```
- Line 993: loc, name
  ```
  local names `"`names' "total""'
  ```
- Line 994: loc, name
  ```
  local savenames `"`savenames' "total""'
  ```
- Line 997: loc
  ```
  if `"`rest'"'=="" local lcond
  ```
- Line 998: loc
  ```
  else              local lcond `" & `by'==`l'"'
  ```
- Line 1008: name
  ```
  mat coln ``m'' = `names'
  ```
- Line 1013: name
  ```
  tempname res
  ```
- Line 1021: name
  ```
  mat rown `res' = `savenames'
  ```
- Line 1031: loc
  ```
  local b
  ```
- Line 1032: loc
  ```
  local V
  ```
- Line 1034: name
  ```
  tempname b V
  ```
- Line 1039: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 1043: loc
  ```
  eret local ccorr `ccorr'
  ```
- Line 1044: loc
  ```
  eret local labels `"`labels'"'
  ```
- Line 1045: loc
  ```
  eret local subcmd "stci"
  ```
- Line 1046: loc
  ```
  eret local cmd "estpost"
  ```
- Line 1059: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 1064: son
  ```
  Binomial EXAct WAld Wilson Agresti Jeffreys ///
  ```
- Line 1065: name, son
  ```
  Poisson Exposure(varname) ///
  ```
- Line 1067: loc
  ```
  if "`casewise'"!="" local listwise listwise
  ```
- Line 1068: loc
  ```
  if "`exposure'"!="" local exposureopt "exposure(`exposure')"
  ```
- Line 1069: loc, son
  ```
  if "`binomial'"!="" & "`exact'`wald'`wilson'`agresti'`jeffreys'"=="" local exact exact
  ```
- Line 1078: loc
  ```
  local N = r(N)
  ```
- Line 1082: loc, name
  ```
  local mnames se lb ub
  ```
- Line 1083: name
  ```
  tempname mean count `mnames'
  ```
- Line 1084: loc
  ```
  local i 0
  ```
- Line 1085: loc
  ```
  foreach v of local varlist {
  ```
- Line 1086: loc
  ```
  local ++i
  ```
- Line 1088: son
  ```
  `binomial' `exact' `wald' `wilson' `agresti' `jeffreys' ///
  ```
- Line 1089: son
  ```
  `poisson' `exposureopt'
  ```
- Line 1093: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 1096: loc, name
  ```
  local rnames "`rnames' `v'"
  ```
- Line 1104: name
  ```
  foreach m in mean count `mnames' {
  ```
- Line 1105: name
  ```
  mat coln ``m'' = `rnames'
  ```
- Line 1109: name
  ```
  _estpost_markout2 `touse' `rnames'
  ```
- Line 1111: loc
  ```
  local N = r(N)
  ```
- Line 1117: name
  ```
  tempname res
  ```
- Line 1119: loc
  ```
  local rescoln "e(b) e(count)"
  ```
- Line 1120: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 1122: loc
  ```
  local rescoln `rescoln' e(`m')
  ```
- Line 1136: loc
  ```
  local V
  ```
- Line 1138: name
  ```
  tempname V
  ```
- Line 1141: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 1147: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 1148: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 1149: loc
  ```
  eret local exposure "`exposure'"
  ```
- Line 1150: loc, son
  ```
  eret local poisson "`poisson'"
  ```
- Line 1151: loc, son
  ```
  eret local binomial "`exact'`wald'`wilson'`agresti'`jeffreys'"
  ```
- Line 1152: loc
  ```
  eret local subcmd "ci"
  ```
- Line 1153: loc
  ```
  eret local cmd "estpost"
  ```
- Line 1155: loc, name
  ```
  local nmat: list sizeof mnames
  ```
- Line 1157: loc, name
  ```
  local m: word `i' of `mnames'
  ```
- Line 1167: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 1170: name
  ```
  syntax varlist(numeric) [if] [in] , by(varname) [ ESample Quietly ///
  ```
- Line 1172: loc
  ```
  if "`casewise'"!="" local listwise listwise
  ```
- Line 1182: loc
  ```
  local N = r(N)
  ```
- Line 1186: loc
  ```
  local nvars: list sizeof varlist
  ```
- Line 1187: name
  ```
  tempname diff count
  ```
- Line 1191: loc, name
  ```
  local mnames se se0 z p_l p p_u N_1 P_1 N_2 P_2
  ```
- Line 1192: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 1193: name
  ```
  tempname `m'
  ```
- Line 1196: loc
  ```
  local i 0
  ```
- Line 1197: loc
  ```
  foreach v of local varlist {
  ```
- Line 1198: loc
  ```
  local ++i
  ```
- Line 1214: name
  ```
  tempname res
  ```
- Line 1216: loc
  ```
  local rescoln "e(b) e(count)"
  ```
- Line 1217: loc, name
  ```
  foreach m of local mnames {
  ```
- Line 1219: loc
  ```
  local rescoln `rescoln' e(`m')
  ```
- Line 1232: loc
  ```
  local V
  ```
- Line 1234: name
  ```
  tempname V
  ```
- Line 1237: loc
  ```
  if "`esample'"!="" local esample esample(`touse')
  ```
- Line 1242: loc
  ```
  eret local wexp `"`exp'"'
  ```
- Line 1243: loc
  ```
  eret local wtype `"`weight'"'
  ```
- Line 1244: loc
  ```
  eret local byvar "`by'"
  ```
- Line 1245: loc
  ```
  eret local subcmd "prtest"
  ```
- Line 1246: loc
  ```
  eret local cmd "estpost"
  ```
- Line 1248: loc, name
  ```
  local nmat: list sizeof mnames
  ```
- Line 1250: loc, name
  ```
  local m: word `i' of `mnames'
  ```
- Line 1257: lat
  ```
  * 10. estpost__svy_tabulate: wrapper for -svy:tabulate-
  ```
- Line 1258: lat
  ```
  prog estpost__svy_tabulate
  ```
- Line 1260: loc
  ```
  local caller : di _caller()
  ```
- Line 1261: lon
  ```
  _on_colon_parse `0'
  ```
- Line 1262: loc
  ```
  local svyopts `"svyopts(`s(before)')"'
  ```
- Line 1263: loc
  ```
  local 0       `"`s(after)'"'
  ```
- Line 1266: lat
  ```
  version `caller': _svy_tabulate_oneway `varlist' `if' `in', ///
  ```
- Line 1270: lat
  ```
  version `caller': _svy_tabulate_twoway `varlist' `if' `in', ///
  ```
- Line 1274: lat
  ```
  prog _svy_tabulate_oneway
  ```
- Line 1276: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 1279: name
  ```
  syntax varname [if] [in] [, ESample Quietly ///
  ```
- Line 1283: loc
  ```
  if "`marginals'"!=""   local total "nototal"
  ```
- Line 1284: loc
  ```
  else if "`total'"!=""  local marginals "nomarginals"
  ```
- Line 1286: lat
  ```
  // run svy:tabulate
  ```
- Line 1287: lat
  ```
  `quietly' svy `svyopts' : tabulate `varlist' `if' `in', ///
  ```
- Line 1291: lat
  ```
  quietly svy `svyopts' : tabulate `varlist' `if' `in', count se ///
  ```
- Line 1296: loc
  ```
  qui levelsof `varlist' if e(sample), `missing' local(levels)
  ```
- Line 1297: loc
  ```
  local R : list sizeof levels
  ```
- Line 1305: name
  ```
  _estpost_namesandlabels `varlist' "`levels'"   // sets names, savenames, labels
  ```
- Line 1308: name
  ```
  _estpost_namesandlabels "" "`levels'"   // sets names, savenames, labels
  ```
- Line 1312: name
  ```
  _estpost_namesandlabels "" "" `"`levels'"' // sets names, savenames, labels
  ```
- Line 1316: name
  ```
  tempname cell count obs b se lb ub deff deft
  ```
- Line 1317: loc
  ```
  local N_pop = cond(e(N_subpop)<., e(N_subpop), e(N_pop))
  ```
- Line 1318: loc
  ```
  local N_obs = cond(e(N_sub)<., e(N_sub), e(N))
  ```
- Line 1319: loc
  ```
  local tval = invttail(e(df_r), (100-`level')/200)
  ```
- Line 1330: loc
  ```
  if _rc local DEFF  ""
  ```
- Line 1332: loc
  ```
  local DEFF deff
  ```
- Line 1336: loc
  ```
  if _rc local DEFT  ""
  ```
- Line 1338: loc
  ```
  local DEFT deft
  ```
- Line 1342: loc
  ```
  mata: st_matrix(st_local("se"), sqrt(diagonal(st_matrix("e(V)")))')
  ```
- Line 1357: loc, name
  ```
  local names `"`names' "Total""'
  ```
- Line 1358: loc, name
  ```
  local savenames `"`savenames' "Total""'
  ```
- Line 1359: loc
  ```
  local linesopt "lines(rowtotal)"
  ```
- Line 1363: loc
  ```
  mata: st_matrix( st_local("lb"), invlogit( ///
  ```
- Line 1364: loc
  ```
  logit(st_matrix(st_local("b"))) - strtoreal(st_local("tval")) * ///
  ```
- Line 1365: loc
  ```
  st_matrix(st_local("se")) :/ ///
  ```
- Line 1366: loc
  ```
  (st_matrix(st_local("b")) :* (1 :- st_matrix(st_local("b"))))))
  ```
- Line 1367: loc
  ```
  mata: st_matrix( st_local("ub"), invlogit( ///
  ```
- Line 1368: loc
  ```
  logit(st_matrix(st_local("b"))) + strtoreal(st_local("tval")) * ///
  ```
- Line 1369: loc
  ```
  st_matrix(st_local("se")) :/ ///
  ```
- Line 1370: loc
  ```
  (st_matrix(st_local("b")) :* (1 :- st_matrix(st_local("b"))))))
  ```
- Line 1377: loc
  ```
  mata: st_matrix( st_local("lb"), st_matrix(st_local("b")) - ///
  ```
- Line 1378: loc
  ```
  strtoreal(st_local("tval")) * st_matrix(st_local("se")) )
  ```
- Line 1379: loc
  ```
  mata: st_matrix( st_local("ub"), st_matrix(st_local("b")) + ///
  ```
- Line 1380: loc
  ```
  strtoreal(st_local("tval")) * st_matrix(st_local("se")) )
  ```
- Line 1383: name
  ```
  capt mat coln ``m'' = `names'
  ```
- Line 1398: name
  ```
  tempname res
  ```
- Line 1405: name
  ```
  mat rown `res' = `savenames'
  ```
- Line 1410: loc
  ```
  local plabel = cond("`percent'"!="","percentages","proportions")
  ```
- Line 1411: loc
  ```
  local blabel = cond("`e(setype)'"=="count", "weighted counts", "`e(setype)' `plabel'")
  ```
- Line 1431: loc
  ```
  qui estadd local labels `"`labels'"'
  ```
- Line 1432: lat, loc
  ```
  qui estadd local subcmd "tabulate"
  ```
- Line 1438: lat
  ```
  prog _svy_tabulate_twoway
  ```
- Line 1440: loc
  ```
  local caller : di _caller() // not used
  ```
- Line 1447: loc
  ```
  if "`marginals'"!=""   local total "nototal"
  ```
- Line 1448: loc
  ```
  else if "`total'"!=""  local marginals "nomarginals"
  ```
- Line 1450: lat
  ```
  // run svy:tabulate
  ```
- Line 1451: lat
  ```
  `quietly' svy `svyopts' : tabulate `varlist' `if' `in', ///
  ```
- Line 1455: lat
  ```
  quietly svy `svyopts' : tabulate `varlist' `if' `in', `count' `column' `row' se ///
  ```
- Line 1460: loc
  ```
  local rvar `"`e(rowvar)'"'
  ```
- Line 1461: loc
  ```
  qui levelsof `rvar' if e(sample), `missing' local(levels)
  ```
- Line 1462: loc
  ```
  local R : list sizeof levels
  ```
- Line 1470: name
  ```
  _estpost_namesandlabels `rvar' "`levels'"   // sets names, savenames, labels
  ```
- Line 1473: name
  ```
  _estpost_namesandlabels "" "`levels'"   // sets names, savenames, labels
  ```
- Line 1477: name
  ```
  _estpost_namesandlabels "" "" `"`levels'"' // sets names, savenames, labels
  ```
- Line 1479: loc
  ```
  local cvar `"`e(colvar)'"'
  ```
- Line 1480: loc
  ```
  qui levelsof `cvar' if e(sample), `missing' local(levels)
  ```
- Line 1481: loc
  ```
  local C : list sizeof levels
  ```
- Line 1486: loc, name
  ```
  local savenames0 `"`savenames'"'
  ```
- Line 1487: loc, name
  ```
  local savenames
  ```
- Line 1491: name
  ```
  _estpost_eqnamesandlabels `cvar' "`levels'"   // sets eqnames, eqlabels
  ```
- Line 1494: name
  ```
  _estpost_eqnamesandlabels "" "`levels'"    // sets eqnames, eqlabels
  ```
- Line 1498: name
  ```
  _estpost_eqnamesandlabels "" "" `"`levels'"'  // sets eqnames, eqlabels
  ```
- Line 1502: name
  ```
  tempname tmp cell row col count obs b se lb ub deff deft
  ```
- Line 1503: loc
  ```
  local N_pop = cond(e(N_subpop)<., e(N_subpop), e(N_pop))
  ```
- Line 1504: loc
  ```
  local N_obs = cond(e(N_sub)<., e(N_sub), e(N))
  ```
- Line 1505: loc
  ```
  local tval = invttail(e(df_r), (100-`level')/200)
  ```
- Line 1510: loc
  ```
  mata: st_matrix(st_local("row"), st_matrix(st_local("cell")) :/ ///
  ```
- Line 1511: loc
  ```
  st_matrix(st_local("tmp")))
  ```
- Line 1513: loc
  ```
  mata: st_matrix(st_local("col"), st_matrix(st_local("cell")) :/ ///
  ```
- Line 1514: loc
  ```
  st_matrix(st_local("tmp")))
  ```
- Line 1524: loc
  ```
  if _rc local DEFF ""
  ```
- Line 1526: loc
  ```
  local DEFF deff
  ```
- Line 1530: loc
  ```
  if _rc local DEFT ""
  ```
- Line 1532: loc
  ```
  local DEFT deft
  ```
- Line 1536: loc
  ```
  mata: st_matrix(st_local("se"), sqrt(diagonal(st_matrix("e(V)")))') // vector
  ```
- Line 1537: loc
  ```
  if e(setype)=="count"       local btype count
  ```
- Line 1538: loc
  ```
  else if e(setype)=="row"    local btype row
  ```
- Line 1539: loc
  ```
  else if e(setype)=="column" local btype col
  ```
- Line 1540: loc
  ```
  else                        local btype cell
  ```
- Line 1544: loc
  ```
  local to = `r'*`C'
  ```
- Line 1548: name
  ```
  mat rename `tmp' ``m''
  ```
- Line 1555: loc
  ```
  mata: st_matrix(st_local("se"), ///
  ```
- Line 1556: loc
  ```
  ((st_matrix(st_local("se")), sqrt(diagonal(st_matrix("e(V_row)")))) ///
  ```
- Line 1564: loc, name
  ```
  local names `"`names' "Total""'
  ```
- Line 1565: loc, name
  ```
  local savenames0 `"`savenames0' "Total""'
  ```
- Line 1566: loc, name
  ```
  local eqnames `"`eqnames' "Total""'
  ```
- Line 1575: loc
  ```
  mata: st_matrix( st_local("lb"), invlogit( ///
  ```
- Line 1576: loc
  ```
  logit(st_matrix(st_local("b"))) - strtoreal(st_local("tval")) * ///
  ```
- Line 1577: loc
  ```
  st_matrix(st_local("se")) :/ ///
  ```
- Line 1578: loc
  ```
  (st_matrix(st_local("b")) :* (1 :- st_matrix(st_local("b"))))))
  ```
- Line 1579: loc
  ```
  mata: st_matrix( st_local("ub"), invlogit( ///
  ```
- Line 1580: loc
  ```
  logit(st_matrix(st_local("b"))) + strtoreal(st_local("tval")) * ///
  ```
- Line 1581: loc
  ```
  st_matrix(st_local("se")) :/ ///
  ```
- Line 1582: loc
  ```
  (st_matrix(st_local("b")) :* (1 :- st_matrix(st_local("b"))))))
  ```
- Line 1585: loc
  ```
  mata: st_matrix( st_local("lb"), st_matrix(st_local("b")) - ///
  ```
- Line 1586: loc
  ```
  strtoreal(st_local("tval")) * st_matrix(st_local("se")) )
  ```
- Line 1587: loc
  ```
  mata: st_matrix( st_local("ub"), st_matrix(st_local("b")) + ///
  ```
- Line 1588: loc
  ```
  strtoreal(st_local("tval")) * st_matrix(st_local("se")) )
  ```
- Line 1605: name
  ```
  mat rown ``m'' = `names'
  ```
- Line 1606: name
  ```
  gettoken eq rest : eqnames
  ```
- Line 1613: name
  ```
  mat rename `tmp' ``m''
  ```
- Line 1631: loc, name
  ```
  local savenames `"`savenames' `savenames0'"'
  ```
- Line 1633: name
  ```
  tempname res
  ```
- Line 1640: name
  ```
  mat rown `res' = `savenames'
  ```
- Line 1647: loc
  ```
  local plabel = cond("`percent'"!="","percentages","proportions")
  ```
- Line 1648: loc
  ```
  local blabel = cond("`e(setype)'"=="count", "weighted counts", "`e(setype)' `plabel'")
  ```
- Line 1676: loc
  ```
  qui estadd local eqlabels `"`eqlabels'"'
  ```
- Line 1677: loc
  ```
  qui estadd local labels `"`labels'"'
  ```
- Line 1678: lat, loc
  ```
  qui estadd local subcmd "tabulate"
  ```
- Line 1688: loc
  ```
  local caller : di _caller()
  ```
- Line 1708: name
  ```
  tempname b V
  ```
- Line 1716: loc
  ```
  eret local `r' `"`r(`r')'"'
  ```
- Line 1718: name
  ```
  tempname tmp
  ```
- Line 1731: name
  ```
  syntax [anything(equalok)] [, NOV cmd(str) noEsample Esample2(varname) REName ///
  ```
- Line 1743: loc
  ```
  local b `"`3'"'
  ```
- Line 1749: loc
  ```
  local v `"`6'"'
  ```
- Line 1759: loc
  ```
  local v `"`3'"'
  ```
- Line 1768: loc
  ```
  local sample "`esample2'"
  ```
- Line 1774: loc
  ```
  local emacros: e(macros)
  ```
- Line 1776: loc
  ```
  local emacros: subinstr local emacros "properties" "", word
  ```
- Line 1778: loc
  ```
  foreach emacro of local emacros {
  ```
- Line 1779: loc
  ```
  local e_`emacro' `"`e(`emacro')'"'
  ```
- Line 1781: loc
  ```
  local escalars: e(scalars)
  ```
- Line 1783: loc
  ```
  local escalars: subinstr local escalars "N" "", word
  ```
- Line 1786: loc
  ```
  local escalars: subinstr local escalars "df_r" "", word
  ```
- Line 1788: loc
  ```
  foreach escalar of local escalars {
  ```
- Line 1789: name
  ```
  tempname e_`escalar'
  ```
- Line 1792: loc
  ```
  local ematrices: e(matrices)
  ```
- Line 1794: loc
  ```
  local nov V
  ```
- Line 1795: loc
  ```
  local ematrices : list ematrices - nov
  ```
- Line 1798: name
  ```
  tempname b
  ```
- Line 1802: name
  ```
  tempname v
  ```
- Line 1805: loc
  ```
  local bV "b V"
  ```
- Line 1806: loc
  ```
  local ematrices: list ematrices - bV
  ```
- Line 1807: loc
  ```
  foreach ematrix of local ematrices {
  ```
- Line 1808: name
  ```
  tempname e_`ematrix'
  ```
- Line 1811: name
  ```
  // rename
  ```
- Line 1812: name
  ```
  if "`b'"!="" & "`v'"!="" & "`rename'"!="" {
  ```
- Line 1813: loc, name
  ```
  local eqnames: coleq `b', q
  ```
- Line 1814: lname, loc, name
  ```
  local vnames: colnames `b'
  ```
- Line 1815: name
  ```
  mat coleq `v' = `eqnames'
  ```
- Line 1816: name
  ```
  mat coln `v' = `vnames'
  ```
- Line 1817: name
  ```
  mat roweq `v' = `eqnames'
  ```
- Line 1818: name
  ```
  mat rown `v' = `vnames'
  ```
- Line 1827: loc
  ```
  foreach emacro of local emacros {
  ```
- Line 1828: loc
  ```
  eret local `emacro' `"`e_`emacro''"'
  ```
- Line 1831: loc
  ```
  eret local cmd `"`cmd'"'
  ```
- Line 1833: loc
  ```
  foreach escalar of local escalars {
  ```
- Line 1836: loc
  ```
  foreach ematrix of local ematrices {
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/eststo.ado**

- Line 5: loc
  ```
  local caller : di _caller()
  ```
- Line 41: loc
  ```
  local sortedby : sortedby
  ```
- Line 42: loc
  ```
  local i 0
  ```
- Line 43: loc
  ```
  foreach byvar of local _byvars {
  ```
- Line 44: loc
  ```
  local sortedbyi : word `++i' of `sortedby'
  ```
- Line 48: lon
  ```
  capt _on_colon_parse `0'
  ```
- Line 51: loc
  ```
  local estcom `"`s(after)'"'
  ```
- Line 52: loc
  ```
  local 0 `"`s(before)'"'
  ```
- Line 64: name
  ```
  tempname _byindex
  ```
- Line 65: lon
  ```
  qui egen long `_byindex' = group(`_byvars'), label `missing'
  ```
- Line 68: loc
  ```
  local Nby = r(max)
  ```
- Line 71: loc
  ```
  local ibylab: label (`_byindex') `i'
  ```
- Line 74: loc
  ```
  if `titleopt'==0 local ibytitle
  ```
- Line 75: loc
  ```
  else if `titleopt'==1 local ibytitle `" title(`ibylab')"'
  ```
- Line 76: loc
  ```
  else if `titleopt'==2 local ibytitle `", title(`ibylab')"'
  ```
- Line 89: loc
  ```
  c_local titleopt 0
  ```
- Line 90: loc
  ```
  c_local missing "`missing'"
  ```
- Line 94: loc
  ```
  if `"`missing'`options'"'!="" c_local titleopt 1
  ```
- Line 95: loc
  ```
  else c_local titleopt 2
  ```
- Line 96: loc
  ```
  c_local missing "`missing'"
  ```
- Line 102: loc
  ```
  local estcom `"`macval(anything)' if (\`_byindex'==\`i')"'
  ```
- Line 104: loc
  ```
  local estcom `"`macval(estcom)' & (`macval(if)')"'
  ```
- Line 107: loc
  ```
  local estcom `"`macval(estcom)' `macval(in)'"'
  ```
- Line 113: loc
  ```
  local estcom `"`macval(estcom)' [`macval(weight)'`macval(exp)']"'
  ```
- Line 116: loc
  ```
  local estcom `"`macval(estcom)', `macval(options)'"'
  ```
- Line 118: loc
  ```
  c_local estcmd `"`macval(estcom)'"'
  ```
- Line 122: loc, name
  ```
  local names $eststo
  ```
- Line 123: loc, name
  ```
  foreach name of local names {
  ```
- Line 124: name
  ```
  capt estimates drop `name'
  ```
- Line 137: loc, name
  ```
  local enames $eststo
  ```
- Line 138: name
  ```
  if `"`enames'"'!="" {
  ```
- Line 139: name
  ```
  tempname hcurrent
  ```
- Line 142: loc, name
  ```
  local snames `r(names)'
  ```
- Line 145: loc, name
  ```
  local names: list enames & snames
  ```
- Line 146: name
  ```
  global eststo `names'
  ```
- Line 147: name
  ```
  if "`names'"=="" global eststo_counter
  ```
- Line 151: loc
  ```
  local droplist `0'
  ```
- Line 156: loc, name
  ```
  local names $eststo
  ```
- Line 157: loc
  ```
  foreach item of local droplist {
  ```
- Line 160: loc, name
  ```
  local dropname `item'
  ```
- Line 167: loc, name
  ```
  local dropname est`item'
  ```
- Line 169: loc
  ```
  local found 0
  ```
- Line 170: name
  ```
  foreach name in `names' {
  ```
- Line 171: name
  ```
  if match("`name'",`"`dropname'"') {
  ```
- Line 172: loc
  ```
  local found 1
  ```
- Line 173: name
  ```
  estimates drop `name'
  ```
- Line 174: loc, name
  ```
  local names: list names - name
  ```
- Line 175: name
  ```
  di as txt "(" as res "`name'" as txt " dropped)"
  ```
- Line 179: name
  ```
  di as txt "(no matches found for " as res `"`dropname'"' as txt ")"
  ```
- Line 182: name
  ```
  global eststo `names'
  ```
- Line 187: loc
  ```
  local caller : di _caller()
  ```
- Line 188: lon
  ```
  capt _on_colon_parse `0'
  ```
- Line 190: loc
  ```
  local command `"`s(after)'"'
  ```
- Line 191: loc
  ```
  local 0 `"`s(before)'"'
  ```
- Line 193: name
  ```
  syntax [name] [, ///
  ```
- Line 195: name
  ```
  Prefix(name) ///
  ```
- Line 202: loc
  ```
  if `"`prefix'"'=="" local prefix "est"
  ```
- Line 204: name
  ```
  // get previous eststo names and counter
  ```
- Line 205: loc, name
  ```
  local names $eststo
  ```
- Line 206: loc
  ```
  local counter $eststo_counter
  ```
- Line 207: loc
  ```
  if `"`counter'"'=="" local counter 0
  ```
- Line 209: name
  ```
  // if name provided; set refresh on if name already in list
  ```
- Line 210: name
  ```
  if "`namelist'"!="" {
  ```
- Line 215: loc, name
  ```
  local name `namelist'
  ```
- Line 216: loc, name
  ```
  if `:list name in names' local refresh refresh
  ```
- Line 219: name
  ```
  di as txt "(" as res "`name'" as txt " not found)"
  ```
- Line 221: loc
  ```
  local refresh
  ```
- Line 223: loc
  ```
  if "`refresh'"=="" local ++counter
  ```
- Line 225: name
  ```
  // if no name provided
  ```
- Line 227: loc
  ```
  if "`refresh2'"!="" local refresh refresh
  ```
- Line 231: name
  ```
  if "`names'"=="" {
  ```
- Line 233: loc
  ```
  local refresh
  ```
- Line 235: loc, name
  ```
  else local name: word `:list sizeof names' of `names'
  ```
- Line 239: name
  ```
  if `:list posof "`prefix'`refresh2'" in names' {
  ```
- Line 240: loc, name
  ```
  local name `prefix'`refresh2'
  ```
- Line 244: loc
  ```
  local refresh
  ```
- Line 248: loc
  ```
  if "`refresh'"=="" local ++counter
  ```
- Line 249: name
  ```
  // set default name
  ```
- Line 250: loc, name
  ```
  if "`name'"=="" local name `prefix'`counter'
  ```
- Line 266: loc
  ```
  local elist `: e(scalars)' `: e(macros)' `: e(matrices)' `: e(functions)'
  ```
- Line 268: loc
  ```
  local forbidden b V sample
  ```
- Line 287: loc
  ```
  capture local result = e(`lhs')
  ```
- Line 296: loc
  ```
  eret local cmd "."
  ```
- Line 301: name
  ```
  estimates store `name' , `copy' `title'
  ```
- Line 305: name
  ```
  capt confirm new var _est_`name'
  ```
- Line 307: name
  ```
  tempname hcurrent
  ```
- Line 309: name
  ```
  qui replace _est_`name' = . in 1
  ```
- Line 310: name
  ```
  _est unhold `name'
  ```
- Line 311: name
  ```
  capt confirm new var _est_`name'
  ```
- Line 312: name
  ```
  if _rc qui drop _est_`name'
  ```
- Line 318: name
  ```
  _est hold `name', estimates varname(_est_`name')
  ```
- Line 319: name
  ```
  // varname() only needed so that _est hold does not return error
  ```
- Line 320: name
  ```
  // if variable `name' exists
  ```
- Line 326: name
  ```
  global eststo `names' `name'
  ```
- Line 328: name
  ```
  if `"`namelist'"'=="" {
  ```
- Line 329: name
  ```
  di as txt "(" as res "`name'" as txt " stored)"
  ```
- Line 333: name
  ```
  if `"`namelist'"'=="" {
  ```
- Line 334: name
  ```
  di as txt "(" as res "`name'" as txt " refreshed)"
  ```
- Line 341: loc
  ```
  c_local rest `"`anything'"'
  ```
- Line 342: loc
  ```
  c_local replace `replace'
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/esttab.ado**

- Line 6: loc
  ```
  local caller : di _caller()
  ```
- Line 9: loc
  ```
  local cdate "`c(current_date)'"
  ```
- Line 10: loc
  ```
  local ctime "`c(current_time)'"
  ```
- Line 12: loc
  ```
  local fixed_open0         `""% `cdate' `ctime'""'
  ```
- Line 13: loc
  ```
  local fixed_close0        `""""'
  ```
- Line 14: loc
  ```
  local fixed_open          `""'
  ```
- Line 15: loc
  ```
  local fixed_close         `""'
  ```
- Line 17: loc
  ```
  local fixed_open2         `""'
  ```
- Line 18: loc
  ```
  local fixed_close2        `""'
  ```
- Line 22: loc
  ```
  local fixed_topgap        `""""'
  ```
- Line 23: loc
  ```
  local fixed_midgap        `""""'
  ```
- Line 24: loc
  ```
  local fixed_bottomgap     `""""'
  ```
- Line 26: loc
  ```
  local fixed_ssl           `"N R-sq "adj. R-sq" "pseudo R-sq" AIC BIC"'
  ```
- Line 27: loc
  ```
  local fixed_lsl           `"Observations R-squared "Adjusted R-squared" "Pseudo R-squared" AIC BIC"'
  ```
- Line 28: loc
  ```
  local fixed_starlevels    `"* 0.05 ** 0.01 *** 0.001"'
  ```
- Line 29: loc
  ```
  local fixed_starlevlab    `""'
  ```
- Line 30: loc
  ```
  local fixed_begin         `""'
  ```
- Line 31: loc
  ```
  local fixed_delimiter     `"" ""'
  ```
- Line 32: loc
  ```
  local fixed_end           `""'
  ```
- Line 33: loc
  ```
  local fixed_incelldel     `"" ""'
  ```
- Line 34: loc
  ```
  local fixed_varwidth      `"\`= cond("\`label'"=="", 12, 20)'"'
  ```
- Line 35: loc
  ```
  local fixed_modelwidth    `"12"'
  ```
- Line 36: loc
  ```
  local fixed_abbrev        `"abbrev"'
  ```
- Line 37: loc
  ```
  local fixed_substitute    `""'
  ```
- Line 38: loc
  ```
  local fixed_interaction   `"" # ""'
  ```
- Line 39: loc
  ```
  local fixed_tstatlab      `"t statistics"'
  ```
- Line 40: loc
  ```
  local fixed_zstatlab      `"z statistics"'
  ```
- Line 41: loc
  ```
  local fixed_pvallab       `"p-values"'
  ```
- Line 42: loc
  ```
  local fixed_cilab         `"\`level'% confidence intervals"'
  ```
- Line 44: loc
  ```
  local smcl_open0          `"{smcl} "{* % `cdate' `ctime'}{...}""'
  ```
- Line 45: loc
  ```
  local smcl_close0         `""""'
  ```
- Line 46: loc
  ```
  local smcl_open           `""'
  ```
- Line 47: loc
  ```
  local smcl_close          `""'
  ```
- Line 49: loc
  ```
  local smcl_open2          `""'
  ```
- Line 50: loc
  ```
  local smcl_close2         `""'
  ```
- Line 54: loc
  ```
  local smcl_topgap         `""""'
  ```
- Line 55: loc
  ```
  local smcl_midgap         `""""'
  ```
- Line 56: loc
  ```
  local smcl_bottomgap      `""""'
  ```
- Line 58: loc
  ```
  local smcl_ssl            `"`macval(fixed_ssl)'"'
  ```
- Line 59: loc
  ```
  local smcl_lsl            `"`macval(fixed_lsl)'"'
  ```
- Line 60: loc
  ```
  local smcl_starlevels     `"`macval(fixed_starlevels)'"'
  ```
- Line 61: loc
  ```
  local smcl_starlevlab     `""'
  ```
- Line 62: loc
  ```
  local smcl_begin          `""'
  ```
- Line 63: loc
  ```
  local smcl_delimiter      `"" ""'
  ```
- Line 64: loc
  ```
  local smcl_end            `""'
  ```
- Line 65: loc
  ```
  local smcl_incelldel      `"" ""'
  ```
- Line 66: loc
  ```
  local smcl_varwidth       `"`macval(fixed_varwidth)'"'
  ```
- Line 67: loc
  ```
  local smcl_modelwidth     `"`macval(fixed_modelwidth)'"'
  ```
- Line 68: loc
  ```
  local smcl_abbrev         `"`macval(fixed_abbrev)'"'
  ```
- Line 69: loc
  ```
  local smcl_substitute     `""'
  ```
- Line 70: loc
  ```
  local smcl_interaction    `"" # ""'
  ```
- Line 71: loc
  ```
  local smcl_tstatlab       `"`macval(fixed_tstatlab)'"'
  ```
- Line 72: loc
  ```
  local smcl_zstatlab       `"`macval(fixed_zstatlab)'"'
  ```
- Line 73: loc
  ```
  local smcl_pvallab        `"`macval(fixed_pvallab)'"'
  ```
- Line 74: loc
  ```
  local smcl_cilab          `"`macval(fixed_cilab)'"'
  ```
- Line 76: loc
  ```
  local tab_open0           `"`macval(fixed_open0)'"'
  ```
- Line 77: loc
  ```
  local tab_close0          `""""'
  ```
- Line 78: loc
  ```
  local tab_open            `""'
  ```
- Line 79: loc
  ```
  local tab_close           `""'
  ```
- Line 81: loc
  ```
  local tab_open2           `""'
  ```
- Line 82: loc
  ```
  local tab_close2          `""'
  ```
- Line 83: loc
  ```
  local tab_topgap          `""""'
  ```
- Line 84: loc
  ```
  local tab_midgap          `""""'
  ```
- Line 85: loc
  ```
  local tab_bottomgap       `""""'
  ```
- Line 86: loc
  ```
  local tab_ssl             `"`macval(fixed_ssl)'"'
  ```
- Line 87: loc
  ```
  local tab_lsl             `"`macval(fixed_lsl)'"'
  ```
- Line 88: loc
  ```
  local tab_starlevels      `"`macval(fixed_starlevels)'"'
  ```
- Line 89: loc
  ```
  local tab_starlevlab      `""'
  ```
- Line 90: loc
  ```
  local tab_begin           `""'
  ```
- Line 91: loc
  ```
  local tab_delimiter       `"_tab"'
  ```
- Line 92: loc
  ```
  local tab_end             `""'
  ```
- Line 93: loc
  ```
  local tab_incelldel       `"" ""'
  ```
- Line 94: loc
  ```
  local tab_varwidth        `""'
  ```
- Line 95: loc
  ```
  local tab_modelwidth      `""'
  ```
- Line 96: loc
  ```
  local tab_abbrev          `""'
  ```
- Line 97: loc
  ```
  local tab_substitute      `""'
  ```
- Line 98: loc
  ```
  local tab_interaction     `"" # ""'
  ```
- Line 99: loc
  ```
  local tab_tstatlab        `"`macval(fixed_tstatlab)'"'
  ```
- Line 100: loc
  ```
  local tab_zstatlab        `"`macval(fixed_zstatlab)'"'
  ```
- Line 101: loc
  ```
  local tab_pvallab         `"`macval(fixed_pvallab)'"'
  ```
- Line 102: loc
  ```
  local tab_cilab           `"`macval(fixed_cilab)'"'
  ```
- Line 104: loc
  ```
  local csv_open0           `"`"\`csvlhs'% `cdate' `ctime'""'"'
  ```
- Line 105: loc
  ```
  local csv_close0          `""""'
  ```
- Line 106: loc
  ```
  local csv_open            `""'
  ```
- Line 107: loc
  ```
  local csv_close           `""'
  ```
- Line 109: loc
  ```
  local csv_open2           `""'
  ```
- Line 110: loc
  ```
  local csv_close2          `""'
  ```
- Line 111: loc
  ```
  local csv_topgap          `""""'
  ```
- Line 112: loc
  ```
  local csv_midgap          `""""'
  ```
- Line 113: loc
  ```
  local csv_bottomgap       `""""'
  ```
- Line 114: loc
  ```
  local csv_ssl             `"`macval(fixed_ssl)'"'
  ```
- Line 115: loc
  ```
  local csv_lsl             `"`macval(fixed_lsl)'"'
  ```
- Line 116: loc
  ```
  local csv_starlevels      `"`macval(fixed_starlevels)'"'
  ```
- Line 117: loc
  ```
  local csv_starlevlab      `""'
  ```
- Line 118: loc
  ```
  local csv_begin           `"`"\`csvlhs'"'"'
  ```
- Line 119: loc
  ```
  local csv_delimiter       `"`"",\`csvlhs'"'"'
  ```
- Line 120: loc
  ```
  local scsv_delimiter      `"`"";\`csvlhs'"'"'
  ```
- Line 121: loc
  ```
  local csv_end             `"`"""'"'
  ```
- Line 122: loc
  ```
  local csv_incelldel       `"" ""'
  ```
- Line 123: loc
  ```
  local csv_varwidth        `""'
  ```
- Line 124: loc
  ```
  local csv_modelwidth      `""'
  ```
- Line 125: loc
  ```
  local csv_abbrev          `""'
  ```
- Line 126: loc
  ```
  local csv_substitute      `""'
  ```
- Line 127: loc
  ```
  local csv_interaction     `"" # ""'
  ```
- Line 128: loc
  ```
  local csv_tstatlab        `"`macval(fixed_tstatlab)'"'
  ```
- Line 129: loc
  ```
  local csv_zstatlab        `"`macval(fixed_zstatlab)'"'
  ```
- Line 130: loc
  ```
  local csv_pvallab         `"`macval(fixed_pvallab)'"'
  ```
- Line 131: loc
  ```
  local csv_cilab           `"`macval(fixed_cilab)'"'
  ```
- Line 133: loc
  ```
  local rtf_open0           `""'
  ```
- Line 134: loc
  ```
  local rtf_close0          `""'
  ```
- Line 135: loc
  ```
  local rtf_ct            `"\yr`=year(d(`cdate'))'\mo`=month(d(`cdate'))'\dy`=day(d(`cdate'))'\hr`=sub
  ```
- Line 136: loc
  ```
  local rtf_open_l1       `"`"{\rtf1`=cond("`c(os)'"=="MacOSX", "\mac", "\ansi")'\deff0 {\fonttbl{\f0\
  ```
- Line 137: loc
  ```
  local rtf_open_l2       `" `"{\info {\author .}{\company .}{\title .}{\creatim`rtf_ct'}}"'"'
  ```
- Line 138: loc
  ```
  local rtf_open_l3       `" `"\deflang1033\plain\fs24"'"'
  ```
- Line 139: loc
  ```
  local rtf_open_l4       `" `"{\footer\pard\qc\plain\f0\fs24\chpgn\par}"'"'
  ```
- Line 140: loc
  ```
  local rtf_open            `"`rtf_open_l1'`rtf_open_l2'`rtf_open_l3'`rtf_open_l4'"'
  ```
- Line 141: loc
  ```
  local rtf_close           `""{\pard \par}" "}""'
  ```
- Line 143: loc
  ```
  local rtf_open2           `""{""'
  ```
- Line 144: loc
  ```
  local rtf_close2          `""}""'
  ```
- Line 145: loc
  ```
  local rtf_toprule         `""'
  ```
- Line 146: loc
  ```
  local rtf_midrule         `""'
  ```
- Line 147: loc
  ```
  local rtf_bottomrule      `""'
  ```
- Line 148: loc
  ```
  local rtf_topgap          `""'
  ```
- Line 150: loc
  ```
  local rtf_bottomgap       `""'
  ```
- Line 152: loc
  ```
  local rtf_ssl             `""{\i N}" "{\i R}{\super 2}" "adj. {\i R}{\super 2}" "pseudo {\i R}{\supe
  ```
- Line 153: loc
  ```
  local rtf_lsl             `"Observations "{\i R}{\super 2}" "Adjusted {\i R}{\super 2}" "Pseudo {\i 
  ```
- Line 154: loc
  ```
  local rtf_starlevels      `""{\super *}" 0.05 "{\super **}" 0.01 "{\super ***}" 0.001"'
  ```
- Line 155: loc
  ```
  local rtf_starlevlab      `", label(" {\i p} < ")"'
  ```
- Line 157: loc
  ```
  local rtf_begin           `"{\trowd\trgaph108\trleft-108\`rtf_rowdef'\pard\intbl\ql {"'
  ```
- Line 158: loc
  ```
  local rtf_delimiter       `"}\cell \pard\intbl\q\`=cond(`"\`alignment'"'!="", `"\`alignment'"', "c")
  ```
- Line 159: loc
  ```
  local rtf_end             `"}\cell\row}"'
  ```
- Line 160: loc
  ```
  local rtf_incelldel       `""\line ""'
  ```
- Line 161: loc
  ```
  local rtf_varwidth        `"\`= cond("\`label'"=="", 12, 20)'"'
  ```
- Line 162: loc
  ```
  local rtf_modelwidth      `"12"'
  ```
- Line 163: loc
  ```
  local rtf_abbrev          `""'
  ```
- Line 164: loc
  ```
  local rtf_substitute      `""'
  ```
- Line 165: loc
  ```
  local rtf_interaction     `"" # ""'
  ```
- Line 166: loc
  ```
  local rtf_tstatlab        `"{\i t} statistics"'
  ```
- Line 167: loc
  ```
  local rtf_zstatlab        `"{\i z} statistics"'
  ```
- Line 168: loc
  ```
  local rtf_pvallab         `"{\i p}-values"'
  ```
- Line 169: loc
  ```
  local rtf_cilab           `"\`level'% confidence intervals"'
  ```
- Line 172: loc
  ```
  local html_close0         `""" </body> </html> """'
  ```
- Line 173: loc
  ```
  local html_open           `"`"<table border="0" width="\`=cond("\`width'"=="","*","\`width'")'">"'"'
  ```
- Line 174: loc
  ```
  local html_close          `""</table>""'
  ```
- Line 176: loc
  ```
  local html_open2          `""'
  ```
- Line 177: loc
  ```
  local html_close2         `""'
  ```
- Line 181: loc
  ```
  local html_topgap         `""'
  ```
- Line 183: loc
  ```
  local html_bottomgap      `""'
  ```
- Line 185: loc
  ```
  local html_ssl            `"<i>N</i> <i>R</i><sup>2</sup> "adj. <i>R</i><sup>2</sup>" "pseudo <i>R</
  ```
- Line 186: loc
  ```
  local html_lsl            `"Observations <i>R</i><sup>2</sup> "Adjusted <i>R</i><sup>2</sup>" "Pseud
  ```
- Line 187: loc
  ```
  local html_starlevels     `"<sup>*</sup> 0.05 <sup>**</sup> 0.01 <sup>***</sup> 0.001"'
  ```
- Line 188: loc
  ```
  local html_starlevlab     `", label(" <i>p</i> < ")"'
  ```
- Line 189: loc
  ```
  local html_begin          `"<tr><td>"'
  ```
- Line 190: loc
  ```
  local html_delimiter      `"</td><td\`=cond(`"\`alignment'"'!="", `" align="\`alignment'""', "")'>"'
  ```
- Line 191: loc
  ```
  local html_end            `"</td></tr>"'
  ```
- Line 192: loc
  ```
  local html_incelldel      `"<br />"'
  ```
- Line 193: loc
  ```
  local html_varwidth       `"\`= cond("\`label'"=="", 12, 20)'"'
  ```
- Line 194: loc
  ```
  local html_modelwidth     `"12"'
  ```
- Line 195: loc
  ```
  local html_abbrev         `""'
  ```
- Line 196: loc
  ```
  local html_substitute     `""'
  ```
- Line 197: loc
  ```
  local html_interaction    `"" # ""'
  ```
- Line 198: loc
  ```
  local html_tstatlab       `"<i>t</i> statistics"'
  ```
- Line 199: loc
  ```
  local html_zstatlab       `"<i>z</i> statistics"'
  ```
- Line 200: loc
  ```
  local html_pvallab        `"<i>p</i>-values"'
  ```
- Line 201: loc
  ```
  local html_cilab          `"\`level'% confidence intervals"'
  ```
- Line 203: loc, lon
  ```
  local tex_open0           `""% `cdate' `ctime'" \documentclass{article} \`texpkgs' \`=cond("\`longta
  ```
- Line 204: loc
  ```
  local tex_close0          `""" \end{document} """'
  ```
- Line 205: loc, lon
  ```
  local tex_open            `"\`=cond("\`longtable'"=="", "\begin{table}[htbp]\centering", `"{"')'"'
  ```
- Line 206: loc, lon
  ```
  local tex_close           `"\`=cond("\`longtable'"=="", "\end{table}", "}")'"'
  ```
- Line 208: loc, lon
  ```
  local tex_open2           `"\`=cond("\`longtable'"!="", "\begin{longtable}", "\begin{tabular" + cond
  ```
- Line 209: loc, lon
  ```
  local tex_close2          `"\`=cond("\`longtable'"!="", "\end{longtable}", "\end{tabular" + cond("\`
  ```
- Line 210: loc, lon
  ```
  local tex_toprule         `"\`="\hline\hline" + cond("\`longtable'"!="", "\endfirsthead\hline\endhea
  ```
- Line 211: loc
  ```
  local tex_midrule         `""\hline""'
  ```
- Line 212: loc
  ```
  local tex_bottomrule      `""\hline\hline""'
  ```
- Line 213: loc
  ```
  local tex_topgap          `""'
  ```
- Line 214: loc
  ```
  local tex_midgap          `"[1em]"' // `"\\\"'
  ```
- Line 215: loc
  ```
  local tex_bottomgap       `""'
  ```
- Line 216: loc
  ```
  local tex_eqrule          `"begin("\hline" "")"'
  ```
- Line 217: loc
  ```
  local tex_ssl             `"\(N\) \(R^{2}\) "adj. \(R^{2}\)" "pseudo \(R^{2}\)" \textit{AIC} \textit
  ```
- Line 218: loc
  ```
  local tex_lsl             `"Observations \(R^{2}\) "Adjusted \(R^{2}\)" "Pseudo \(R^{2}\)" \textit{A
  ```
- Line 219: loc
  ```
  local tex_starlevels      `"\sym{*} 0.05 \sym{**} 0.01 \sym{***} 0.001"'
  ```
- Line 220: loc
  ```
  local tex_starlevlab      `", label(" \(p<@\)")"'
  ```
- Line 221: loc
  ```
  local tex_begin           `""'
  ```
- Line 222: loc
  ```
  local tex_delimiter       `"&"'
  ```
- Line 223: loc
  ```
  local tex_end             `"\\\"'
  ```
- Line 224: loc
  ```
  local tex_incelldel       `"" ""'
  ```
- Line 225: loc
  ```
  local tex_varwidth        `"\`= cond("\`label'"=="", 12, 20)'"'
  ```
- Line 226: loc
  ```
  local tex_modelwidth      `"12"'
  ```
- Line 227: loc
  ```
  local tex_abbrev          `""'
  ```
- Line 228: loc
  ```
  local tex_tstatlab        `"\textit{t} statistics"'
  ```
- Line 229: loc
  ```
  local tex_zstatlab        `"\textit{z} statistics"'
  ```
- Line 230: loc
  ```
  local tex_pvallab         `"\textit{p}-values"'
  ```
- Line 231: loc
  ```
  local tex_cilab           `"\`level'\% confidence intervals"'
  ```
- Line 232: loc
  ```
  local tex_substitute      `"_ \_ "\_cons " \_cons"'
  ```
- Line 233: loc
  ```
  local tex_interaction     `"" $\times$ ""'
  ```
- Line 235: loc, lon
  ```
  local booktabs_open0      `""% `cdate' `ctime'" \documentclass{article} \`texpkgs' \usepackage{bookt
  ```
- Line 236: loc
  ```
  local booktabs_close0     `"`macval(tex_close0)'"'
  ```
- Line 237: loc
  ```
  local booktabs_open       `"`macval(tex_open)'"'
  ```
- Line 238: loc
  ```
  local booktabs_close      `"`macval(tex_close)'"'
  ```
- Line 239: loc
  ```
  local booktabs_caption    `"`macval(tex_caption)'"'
  ```
- Line 240: loc
  ```
  local booktabs_open2      `"`macval(tex_open2)'"'
  ```
- Line 241: loc
  ```
  local booktabs_close2     `"`macval(tex_close2)'"'
  ```
- Line 242: loc, lon
  ```
  local booktabs_toprule    `"\`="\toprule" + cond("\`longtable'"!="", "\endfirsthead\midrule\endhead\
  ```
- Line 243: loc
  ```
  local booktabs_midrule    `""\midrule""'
  ```
- Line 244: loc
  ```
  local booktabs_bottomrule `""\bottomrule""'
  ```
- Line 245: loc
  ```
  local booktabs_topgap     `"`macval(tex_topgap)'"'
  ```
- Line 246: loc
  ```
  local booktabs_midgap     `"\addlinespace"'
  ```
- Line 247: loc
  ```
  local booktabs_bottomgap  `"`macval(tex_bottomgap)'"'
  ```
- Line 248: loc
  ```
  local booktabs_eqrule     `"begin("\midrule" "")"'
  ```
- Line 249: loc
  ```
  local booktabs_ssl        `"`macval(tex_ssl)'"'
  ```
- Line 250: loc
  ```
  local booktabs_lsl        `"`macval(tex_lsl)'"'
  ```
- Line 251: loc
  ```
  local booktabs_starlevels `"`macval(tex_starlevels)'"'
  ```
- Line 252: loc
  ```
  local booktabs_starlevlab `"`macval(tex_starlevlab)'"'
  ```
- Line 253: loc
  ```
  local booktabs_begin      `"`macval(tex_begin)'"'
  ```
- Line 254: loc
  ```
  local booktabs_delimiter  `"`macval(tex_delimiter)'"'
  ```
- Line 255: loc
  ```
  local booktabs_end        `"`macval(tex_end)'"'
  ```
- Line 256: loc
  ```
  local booktabs_incelldel  `"`macval(tex_incelldel)'"'
  ```
- Line 257: loc
  ```
  local booktabs_varwidth   `"`macval(tex_varwidth)'"'
  ```
- Line 258: loc
  ```
  local booktabs_modelwidth `"`macval(tex_modelwidth)'"'
  ```
- Line 259: loc
  ```
  local booktabs_abbrev     `"`macval(tex_abbrev)'"'
  ```
- Line 260: loc
  ```
  local booktabs_tstatlab   `"`macval(tex_tstatlab)'"'
  ```
- Line 261: loc
  ```
  local booktabs_zstatlab   `"`macval(tex_zstatlab)'"'
  ```
- Line 262: loc
  ```
  local booktabs_pvallab    `"`macval(tex_pvallab)'"'
  ```
- Line 263: loc
  ```
  local booktabs_cilab      `"`macval(tex_cilab)'"'
  ```
- Line 264: loc
  ```
  local booktabs_substitute `"`macval(tex_substitute)'"'
  ```
- Line 265: loc
  ```
  local booktabs_interaction `"`macval(tex_interaction)'"'
  ```
- Line 277: name
  ```
  main(string) /// syntax: name format
  ```
- Line 278: name
  ```
  aux(string) /// syntax: name format
  ```
- Line 289: name
  ```
  SCAlars(string asis) /// syntax: "name1 [label1]" "name2 [label2]" etc.
  ```
- Line 314: loc
  ```
  if `"`macval(star2)'"'!="" local star star
  ```
- Line 321: loc
  ```
  if `"`page2'"'!=""   local page page
  ```
- Line 323: loc
  ```
  if `"`pfmt'"'!=""    local p p
  ```
- Line 324: loc
  ```
  if `"`zfmt'"'!=""    local z z
  ```
- Line 325: loc
  ```
  if `"`sefmt'"'!=""   local se se
  ```
- Line 326: loc
  ```
  if `"`cifmt'"'!=""   local ci ci
  ```
- Line 327: loc
  ```
  if `"`betafmt'"'!="" local beta beta
  ```
- Line 328: loc
  ```
  if "`level'"==""     local level $S_level
  ```
- Line 331: loc
  ```
  & "`constant'"==""  local noconstant noconstant
  ```
- Line 332: loc
  ```
  if `"`r2fmt'"'!="" local r2 r2
  ```
- Line 333: loc
  ```
  if `"`ar2fmt'"'!="" local ar2 ar2
  ```
- Line 334: loc
  ```
  if `"`pr2fmt'"'!="" local pr2 pr2
  ```
- Line 335: loc
  ```
  if `"`aicfmt'"'!="" local aic aic
  ```
- Line 336: loc
  ```
  if `"`bicfmt'"'!="" local bic bic
  ```
- Line 338: loc
  ```
  local nocellsopt = `"`macval(cells)'"'==""
  ```
- Line 339: lon
  ```
  if `"`width'"'!="" & `"`longtable'"'!="" {
  ```
- Line 340: lon
  ```
  di as err "width() and longtable not both allowed"
  ```
- Line 345: loc
  ```
  local mode `smcl' `fixed' `tab' `csv' `scsv' `rtf' `html' `tex' `booktabs'
  ```
- Line 351: name
  ```
  _getfilename `"`using0'"'
  ```
- Line 352: loc, name
  ```
  local fn `"`r(filename)'"'
  ```
- Line 354: loc
  ```
  local suffix `"`r(suffix)'"'
  ```
- Line 358: loc
  ```
  if inlist(`"`suffix'"', ".html", ".htm") local mode html
  ```
- Line 359: loc
  ```
  else if `"`suffix'"'==".tex"             local mode tex
  ```
- Line 360: loc
  ```
  else if `"`suffix'"'==".csv"             local mode csv
  ```
- Line 361: loc
  ```
  else if `"`suffix'"'==".rtf"             local mode rtf
  ```
- Line 362: loc
  ```
  else if `"`suffix'"'==".smcl"            local mode smcl
  ```
- Line 363: loc
  ```
  else local mode fixed
  ```
- Line 365: loc
  ```
  else local mode smcl
  ```
- Line 369: loc
  ```
  local csv_delimiter `"`macval(`mode'_delimiter)'"'
  ```
- Line 370: loc
  ```
  local mode "csv"
  ```
- Line 374: loc
  ```
  if inlist("`mode'","fixed","tab")         local suffix ".txt"
  ```
- Line 375: loc
  ```
  else if inlist("`mode'","csv","scsv")     local suffix ".csv"
  ```
- Line 376: loc
  ```
  else if "`mode'"=="rtf"                   local suffix ".rtf"
  ```
- Line 377: loc
  ```
  else if "`mode'"=="html"                  local suffix ".html"
  ```
- Line 378: loc
  ```
  else if inlist("`mode'","tex","booktabs") local suffix ".tex"
  ```
- Line 379: loc
  ```
  else if "`mode'"=="smcl"                  local suffix ".smcl"
  ```
- Line 381: loc
  ```
  local using0 `" `"`fn'`suffix'"'"'
  ```
- Line 383: loc
  ```
  if "`mode'"=="smcl" local smcltags smcltags
  ```
- Line 384: loc
  ```
  local mode0 `mode'
  ```
- Line 385: loc
  ```
  if "`mode0'"=="booktabs" local mode0 tex
  ```
- Line 387: loc
  ```
  if "`plain'"=="" local csvlhs `"=""'
  ```
- Line 388: loc
  ```
  else local csvlhs `"""'
  ```
- Line 392: loc
  ```
  local `mode'_modelwidth = ``mode'_modelwidth' - 3
  ```
- Line 395: loc
  ```
  local `mode'_varwidth = ``mode'_varwidth' - cond("`label'"!="", 4, 2)
  ```
- Line 400: loc
  ```
  local modelwidth = 2*``mode'_modelwidth' - 2
  ```
- Line 401: loc
  ```
  if "`wide'"!="" local modelwidth "``mode'_modelwidth' `modelwidth'"
  ```
- Line 404: loc
  ```
  local modelwidth "``mode'_modelwidth'"
  ```
- Line 408: loc
  ```
  local varwidth "``mode'_varwidth'"
  ```
- Line 424: loc
  ```
  local lines
  ```
- Line 425: loc
  ```
  local eqlines
  ```
- Line 427: loc
  ```
  if "`notes'"!="" & "`nolegend'"=="" & `nocellsopt'==1 & `matrixmode'==0 local legend legend
  ```
- Line 429: loc
  ```
  if "`bfmt'"==""    local bfmt %9.0g
  ```
- Line 430: loc
  ```
  if "`tfmt'"==""    local tfmt `bfmt'
  ```
- Line 431: loc
  ```
  if "`zfmt'"==""    local zfmt `bfmt'
  ```
- Line 432: loc
  ```
  if "`sefmt'"==""   local sefmt `bfmt'
  ```
- Line 433: loc
  ```
  if "`pfmt'"==""    local pfmt `bfmt'
  ```
- Line 434: loc
  ```
  if "`cifmt'"==""   local cifmt `bfmt'
  ```
- Line 435: loc
  ```
  if "`betafmt'"=="" local betafmt `bfmt'
  ```
- Line 437: loc
  ```
  //if "`nomtitles'"!="" local depvars
  ```
- Line 438: loc
  ```
  //else if "`depvars'"=="" local mtitles mtitles
  ```
- Line 441: loc
  ```
  local outfilenoteoff2 "`outfilenoteoff'"
  ```
- Line 442: loc
  ```
  if "`outfilenoteoff2'"=="" local outfilenoteoff2 "`nooutfilenoteoff'"
  ```
- Line 449: loc
  ```
  if "`mode'"=="rtf" local `mode'_open
  ```
- Line 450: loc
  ```
  else local `mode'_open0
  ```
- Line 451: loc
  ```
  local append
  ```
- Line 452: loc
  ```
  if "`outfilenoteoff2'"=="" local outfilenoteoff2 outfilenoteoff
  ```
- Line 459: loc
  ```
  local thenote "`thenote'Marginal effects"
  ```
- Line 461: loc
  ```
  local thenote "`thenote'Exponentiated coefficients"
  ```
- Line 463: loc
  ```
  if "`bfmt'"=="" local bfmt a3
  ```
- Line 465: loc
  ```
  if "`star'"!="" & "`staraux'"=="" local bstar star
  ```
- Line 471: loc
  ```
  if "`betafmt'"==""  local betafmt 3
  ```
- Line 472: loc
  ```
  local cells fmt(`betafmt') `bstar'
  ```
- Line 473: loc
  ```
  local cells beta(`cells')
  ```
- Line 475: loc
  ```
  if `"`thenote'"'!="" local thenote "`thenote'; "
  ```
- Line 476: loc
  ```
  local thenote "`thenote'Standardized beta coefficients"
  ```
- Line 481: loc
  ```
  if "`2'"=="" local 2 "`bfmt'"
  ```
- Line 482: loc
  ```
  local cells fmt(`2') `bstar'
  ```
- Line 483: loc
  ```
  local cells `1'(`cells')
  ```
- Line 485: loc
  ```
  if `"`thenote'"'!="" local thenote "`thenote'; "
  ```
- Line 486: loc
  ```
  local thenote "`thenote'`1' coefficients"
  ```
- Line 490: loc
  ```
  local cells fmt(`bfmt') `bstar'
  ```
- Line 491: loc
  ```
  local cells b(`cells')
  ```
- Line 495: loc
  ```
  local cells `cells' &
  ```
- Line 499: loc, name
  ```
  local auxname `1'
  ```
- Line 500: loc
  ```
  local auxfmt `2'
  ```
- Line 502: loc, name
  ```
  local aux `z' `se' `p' `ci' `auxname'
  ```
- Line 503: loc
  ```
  if `"`aux'"'=="" local aux t
  ```
- Line 510: loc
  ```
  if !inlist(`"`aux'"', "t", "z")  local abs
  ```
- Line 514: loc
  ```
  local brackets brackets
  ```
- Line 515: loc
  ```
  if "`mode'"!="smcl" | "`onecell'"!="" local paren par
  ```
- Line 519: loc
  ```
  if "`mode'"!="smcl" | "`onecell'"!="" local paren "par([ ])"
  ```
- Line 523: loc
  ```
  if "`mode'"!="smcl" | "`onecell'"!="" local paren par
  ```
- Line 529: loc
  ```
  if `"`thenote'"'!="" local thenote "`thenote'; "
  ```
- Line 530: name
  ```
  if `"`auxname'"'!="" {
  ```
- Line 531: loc, name
  ```
  local thenote `"`macval(thenote)'`auxname'"'
  ```
- Line 534: loc
  ```
  if "`abs'"!="" local thenote `"`macval(thenote)'Absolute "'
  ```
- Line 535: loc
  ```
  local thenote `"`macval(thenote)'``mode'_`aux'statlab'"'
  ```
- Line 538: loc
  ```
  local thenote `"`macval(thenote)'Standard errors"'
  ```
- Line 541: loc
  ```
  local thenote `"`macval(thenote)'``mode'_pvallab'"'
  ```
- Line 544: loc
  ```
  local thenote `"`macval(thenote)'``mode'_cilab'"'
  ```
- Line 547: loc, second
  ```
  if "`wide'"=="" local thenote `"`macval(thenote)' in second row"'
  ```
- Line 548: loc, second
  ```
  else local thenote `"`macval(thenote)' in second column"'
  ```
- Line 551: loc
  ```
  local thenote `"`macval(thenote)' in brackets"'
  ```
- Line 553: loc
  ```
  else local thenote `"`macval(thenote)' in parentheses"'
  ```
- Line 556: loc
  ```
  if "`tfmt'"==""     local tfmt 2
  ```
- Line 557: loc
  ```
  if "`zfmt'"==""     local zfmt 2
  ```
- Line 558: loc
  ```
  if "`sefmt'"==""    local sefmt `bfmt'
  ```
- Line 559: loc
  ```
  if "`pfmt'"==""     local pfmt 3
  ```
- Line 560: loc
  ```
  if "`cifmt'"==""    local cifmt `bfmt'
  ```
- Line 561: loc
  ```
  if `"`auxfmt'"'=="" local auxfmt `bfmt'
  ```
- Line 562: name
  ```
  if `"`auxname'"'=="" {
  ```
- Line 563: loc
  ```
  local auxfmt ``aux'fmt'
  ```
- Line 566: loc
  ```
  if "`staraux'"!="" local staraux star
  ```
- Line 568: loc
  ```
  local temp fmt(`auxfmt') `paren' `abs' `staraux'
  ```
- Line 569: loc
  ```
  local cells `cells' `aux'(`temp')
  ```
- Line 571: loc
  ```
  if "`wide'"!="" local cells cells(`"`cells'"')
  ```
- Line 572: loc
  ```
  else            local cells cells(`cells')
  ```
- Line 577: loc
  ```
  if `"`sfmt'"'=="" local sfmt `bfmt'
  ```
- Line 578: loc
  ```
  if `"`r2fmt'"'=="" local r2fmt = cond("`plain'"!="", "`bfmt'", "3")
  ```
- Line 579: loc
  ```
  if `"`ar2fmt'"'=="" local ar2fmt = cond("`plain'"!="", "`bfmt'", "3")
  ```
- Line 580: loc
  ```
  if `"`pr2fmt'"'=="" local pr2fmt = cond("`plain'"!="", "`bfmt'", "3")
  ```
- Line 581: loc
  ```
  if `"`aicfmt'"'=="" local aicfmt `bfmt'
  ```
- Line 582: loc
  ```
  if `"`bicfmt'"'=="" local bicfmt `bfmt'
  ```
- Line 584: loc
  ```
  local stalabs `"``mode'_ssl'"'
  ```
- Line 587: loc
  ```
  local stalabs `"``mode'_lsl'"'
  ```
- Line 591: loc
  ```
  local sta N
  ```
- Line 592: loc
  ```
  local stalab `"`"`macval(obslab)'"'"'
  ```
- Line 593: loc
  ```
  local stafmt %18.0g
  ```
- Line 595: loc
  ```
  local i 0
  ```
- Line 597: loc
  ```
  local ++i
  ```
- Line 599: loc
  ```
  local sta `sta' `:word `i' of r2 r2_a r2_p aic bic'
  ```
- Line 600: loc
  ```
  local chunk: word `i' of `macval(stalabs)'
  ```
- Line 601: loc
  ```
  local stalab `"`macval(stalab)' `"`macval(chunk)'"'"'
  ```
- Line 602: loc
  ```
  local stafmt `stafmt' ``s'fmt'
  ```
- Line 605: loc
  ```
  local i 0
  ```
- Line 607: loc
  ```
  foreach addstat of local scalars {
  ```
- Line 608: loc
  ```
  local ++i
  ```
- Line 609: name
  ```
  gettoken addstatname addstatlabel: addstat
  ```
- Line 610: loc
  ```
  local addstatlabel = substr(`"`macval(addstatlabel)'"',2,.)
  ```
- Line 611: name
  ```
  if `: list posof `"`addstatname'"' in sta' continue
  ```
- Line 612: name
  ```
  if `"`addstatname'"'=="N" & "`obs'"=="" & "`obslast'"!="" continue
  ```
- Line 613: loc, name
  ```
  if trim(`"`macval(addstatlabel)'"')=="" local addstatlabel `addstatname'
  ```
- Line 614: loc
  ```
  local addstatfmt: word `i' of `sfmt'
  ```
- Line 616: loc
  ```
  local addstatfmt: word `: list sizeof sfmt' of `sfmt'
  ```
- Line 618: loc, name
  ```
  local sta `sta' `addstatname'
  ```
- Line 619: loc
  ```
  local stalab `"`macval(stalab)' `"`macval(addstatlabel)'"'"'
  ```
- Line 620: loc
  ```
  local stafmt `stafmt' `addstatfmt'
  ```
- Line 623: loc
  ```
  local sta `sta' N
  ```
- Line 624: loc
  ```
  local stalab `"`macval(stalab)' `"`macval(obslab)'"'"'
  ```
- Line 625: loc
  ```
  local stafmt `stafmt' %18.0g
  ```
- Line 628: loc
  ```
  local stats stats(`sta', fmt(`stafmt') labels(`macval(stalab)'))
  ```
- Line 636: loc
  ```
  local mlabels `"mlabels(, depvar`mspan')"'
  ```
- Line 638: loc
  ```
  if `"`nomtitles'"'!="" local mlabels `"mlabels(none)"'
  ```
- Line 640: loc
  ```
  local mlabels `"mlabels(, titles`mspan')"'
  ```
- Line 643: loc
  ```
  local mlabels `"mlabels(`macval(mtitles2)', titles`mspan')"'
  ```
- Line 647: loc
  ```
  local collabels `"collabels(none)"'
  ```
- Line 656: loc
  ```
  local thenote `"`"`macval(thenote)'"'"'
  ```
- Line 663: loc
  ```
  local addnotes `"`"`macval(addnotes)'"'"'
  ```
- Line 665: loc
  ```
  local thenote `"`macval(thenote)' `macval(addnotes)'"'
  ```
- Line 680: loc
  ```
  local `mode'_starlevels `"`macval(star2)'"'
  ```
- Line 683: loc
  ```
  local starlevels `"starlevels(`macval(`mode'_starlevels)'`macval(`mode'_starlevlab)')"'
  ```
- Line 688: loc
  ```
  local `opt' `"`opt'(``mode'_`opt'')"'
  ```
- Line 693: loc
  ```
  local incelldelimiter `"incelldelimiter(``mode'_incelldel')"'
  ```
- Line 697: loc
  ```
  local abbrev ``mode'_abbrev'
  ```
- Line 702: loc
  ```
  local texpkgs `""\usepackage{`page2'}""'
  ```
- Line 704: loc
  ```
  local opening `"``mode'_open0'"'
  ```
- Line 707: loc
  ```
  local opening `"`macval(opening)' ``mode'_open'"'
  ```
- Line 709: loc
  ```
  local opening `"`macval(opening)' "\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}""'
  ```
- Line 711: lon
  ```
  if !("`longtable'"!="" & "`mode0'"=="tex") {
  ```
- Line 712: loc
  ```
  local opening `"`macval(opening)' ``mode'_caption'"'
  ```
- Line 716: loc
  ```
  local opening `"`macval(opening)' "{" "\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}""'
  ```
- Line 719: loc
  ```
  local opening `"`macval(opening)' ``mode'_open'"'
  ```
- Line 721: loc
  ```
  local opening `"`macval(opening)' ``mode'_open2'"'
  ```
- Line 723: loc
  ```
  if `"`labcol2'"'!="" local lstubtex "lc"
  ```
- Line 724: loc
  ```
  else local lstubtex "l"
  ```
- Line 725: loc
  ```
  if `"`width'"'!="" local extracolsep "@{\hskip\tabcolsep\extracolsep\fill}"
  ```
- Line 738: lon
  ```
  if "`longtable'"!="" {
  ```
- Line 740: loc
  ```
  local opening `"`macval(opening)' ``mode'_caption'\\\"'
  ```
- Line 745: loc
  ```
  local brr
  ```
- Line 746: loc
  ```
  foreach chunk of local thenote {
  ```
- Line 747: loc
  ```
  local closing `"`macval(closing)' `"`brr'`macval(chunk)'"'"'
  ```
- Line 748: loc
  ```
  local brr "<br />"
  ```
- Line 755: loc
  ```
  foreach chunk of local thenote {
  ```
- Line 760: loc
  ```
  foreach chunk of local thenote {
  ```
- Line 761: loc
  ```
  local closing `"`macval(closing)' `"`csvlhs'`macval(chunk)'""'"'
  ```
- Line 765: loc
  ```
  foreach chunk of local thenote {
  ```
- Line 766: loc
  ```
  local closing `"`macval(closing)' `"{\pard\ql\fs20 `macval(chunk)'\par}"'"'
  ```
- Line 770: loc
  ```
  local closing `"`macval(thenote)'"'
  ```
- Line 772: loc
  ```
  local closing `"`macval(closing)' ``mode'_close2'"'
  ```
- Line 774: loc
  ```
  local closing `"`macval(closing)' ``mode'_close'"'
  ```
- Line 777: loc
  ```
  local closing `"`macval(closing)' }"'
  ```
- Line 780: loc
  ```
  local closing `"`macval(closing)' ``mode'_close0'"'
  ```
- Line 782: loc
  ```
  local toprule    `"``mode'_toprule'"'
  ```
- Line 783: loc
  ```
  local bottomrule `"``mode'_bottomrule'"'
  ```
- Line 784: loc
  ```
  local topgap     `"``mode'_topgap'"'
  ```
- Line 785: loc
  ```
  local bottomgap  `"``mode'_bottomgap'"'
  ```
- Line 787: loc
  ```
  local midrule `"``mode'_midrule'"'
  ```
- Line 788: loc
  ```
  local midgap  `"``mode'_midgap'"'
  ```
- Line 789: loc
  ```
  local eqrule  `"``mode'_eqrule'"'
  ```
- Line 793: loc
  ```
  local opening `"`macval(opening)' `macval(toprule)'"'
  ```
- Line 796: loc
  ```
  local opening `"`macval(opening)' `macval(topgap)'"'
  ```
- Line 799: loc
  ```
  local opening `"`macval(value)'"'
  ```
- Line 801: loc
  ```
  local prehead `"prehead(`macval(opening)')"'
  ```
- Line 807: loc
  ```
  local posthead `"posthead(`macval(midrule)')"'
  ```
- Line 810: loc
  ```
  local posthead `"posthead(`macval(midgap)')"'
  ```
- Line 816: loc
  ```
  local prefoot `"prefoot(`macval(midrule)')"'
  ```
- Line 819: loc
  ```
  local prefoot `"prefoot(`macval(midgap)')"'
  ```
- Line 821: loc
  ```
  if `"`cells'"'=="cells(none)" local prefoot
  ```
- Line 826: loc
  ```
  local closing `"`macval(bottomrule)' `macval(closing)'"'
  ```
- Line 829: loc
  ```
  local closing `"`macval(bottomgap)' `macval(closing)'"'
  ```
- Line 832: loc
  ```
  local closing `"`macval(value)'"'
  ```
- Line 834: loc
  ```
  local postfoot postfoot(`macval(closing)')
  ```
- Line 840: loc
  ```
  local varl `", end("" `macval(midgap)') nolast"'
  ```
- Line 843: loc
  ```
  local varl `"_cons Constant`macval(varl)'"'
  ```
- Line 846: loc
  ```
  local varl `"`macval(coeflabels)' `macval(varl)'"'
  ```
- Line 849: loc
  ```
  local varlabels varlabels(`macval(varl)')
  ```
- Line 858: loc
  ```
  if `"`eqlrhs'"'=="" local eqlabelscomma ", "
  ```
- Line 859: loc
  ```
  else                local eqlabelscomma " "
  ```
- Line 861: loc
  ```
  local eqlabels `"`macval(eqlabels)'`eqlabelscomma'`macval(eqrule)' nofirst"'
  ```
- Line 864: loc
  ```
  local eqlabels `"`macval(eqlabels)'`eqlabelscomma'begin(`macval(midgap)' "") nofirst"'
  ```
- Line 870: loc
  ```
  local eqlabels `"eqlabels(`macval(eqlabels)')"'
  ```
- Line 876: loc
  ```
  local drop drop(_cons, relax)
  ```
- Line 882: loc, name
  ```
  local estnames `"`anything'"'
  ```
- Line 883: name
  ```
  if `"`estnames'"'=="" {
  ```
- Line 886: loc, name
  ```
  local estnames `"$eststo"'
  ```
- Line 889: name
  ```
  version `caller': estadd beta, replace: `estnames'
  ```
- Line 898: loc
  ```
  if `"`varwidth'"'!="" local varwidth `"varwidth(`varwidth')"'
  ```
- Line 899: loc
  ```
  if `"`modelwidth'"'!="" local modelwidth `"modelwidth(`modelwidth')"'
  ```
- Line 900: loc
  ```
  if `"`style'"'=="" local style "style(esttab)"
  ```
- Line 925: loc
  ```
  local enddoctex "\end{document}"
  ```
- Line 926: loc
  ```
  local enddochtml "</body>"
  ```
- Line 927: loc
  ```
  local enddocrtf "}"
  ```
- Line 928: loc
  ```
  local enddoc "`enddoc`mode0''"
  ```
- Line 929: name
  ```
  tempname fh
  ```
- Line 932: loc
  ```
  local loc = r(loc)
  ```
- Line 938: loc
  ```
  local loc0 = r(loc)
  ```
- Line 941: loc
  ```
  local loc = `loc0'
  ```
- Line 948: loc
  ```
  local loc = r(loc)
  ```
- Line 951: loc
  ```
  file seek `fh' `loc'
  ```
- Line 952: name
  ```
  tempname new
  ```
- Line 969: loc
  ```
  local theoptions ///
  ```
- Line 974: lon
  ```
  LONGtable ///
  ```
- Line 979: loc
  ```
  foreach opt of local theoptions {
  ```
- Line 980: loc
  ```
  local opt = lower("`opt'")
  ```
- Line 981: loc
  ```
  c_local `opt' "``opt''"
  ```
- Line 983: loc
  ```
  c_local options     `"`macval(options)'"'
  ```
- Line 992: name
  ```
  ///  REName(passthru) ///
  ```
- Line 1063: loc
  ```
  c_local `opt' `"`macval(`opt')'"'
  ```
- Line 1068: name
  ```
  capt syntax [, Matrix(str asis) e(str asis) r(str asis) rename(str asis) ]
  ```
- Line 1070: loc
  ```
  c_local matrixmode 0
  ```
- Line 1073: loc
  ```
  c_local matrixmode 1
  ```
- Line 1089: loc
  ```
  c_local `opt1' `opt1'
  ```
- Line 1093: name
  ```
  prog _getfilesuffix, rclass // based on official _getfilename.ado
  ```
- Line 1095: name
  ```
  gettoken filename rest : 0
  ```
- Line 1099: loc
  ```
  local hassuffix 0
  ```
- Line 1100: name
  ```
  gettoken word rest : filename, parse(".")
  ```
- Line 1102: loc
  ```
  local hassuffix 1
  ```
- Line 1106: name
  ```
  di as err `"incomplete filename; ends in ."'
  ```
- Line 1109: loc
  ```
  if index(`"`word'"',"/") | index(`"`word'"',"\") local hassuffix 0
  ```
- Line 1110: loc
  ```
  if `hassuffix' return local suffix `".`word'"'
  ```
- Line 1111: loc
  ```
  else           return local suffix ""
  ```
- Line 1118: loc
  ```
  local prefix "{\super "
  ```
- Line 1119: loc
  ```
  local suffix "}"
  ```
- Line 1122: loc
  ```
  local prefix "<sup>"
  ```
- Line 1123: loc
  ```
  local suffix "</sup>"
  ```
- Line 1126: loc
  ```
  local prefix "\sym{"
  ```
- Line 1127: loc
  ```
  local suffix "}"
  ```
- Line 1129: loc
  ```
  local odd 1
  ```
- Line 1130: loc
  ```
  foreach l of local list {
  ```
- Line 1132: loc
  ```
  local l `"`"`prefix'`macval(l)'`suffix'"'"'
  ```
- Line 1133: loc
  ```
  local odd 0
  ```
- Line 1135: loc
  ```
  else local odd 1
  ```
- Line 1136: loc
  ```
  local newlist `"`macval(newlist)'`space'`macval(l)'"'
  ```
- Line 1137: loc
  ```
  local space " "
  ```
- Line 1139: loc
  ```
  c_local star2 `"`macval(newlist)'"'
  ```
- Line 1151: loc
  ```
  if "`star'"!="" & "`detach'"!="" & "`aux'"=="" local value "r@{}l"
  ```
- Line 1152: loc
  ```
  else local value "c"
  ```
- Line 1154: loc
  ```
  if "`star'"!="" & "`detach'"!="" & "`aux'"!="" local value "`value'r@{}l"
  ```
- Line 1155: loc
  ```
  else local value "`value'c"
  ```
- Line 1157: loc
  ```
  c_local value "`value'"
  ```
- Line 1162: loc
  ```
  local count 1
  ```
- Line 1164: loc
  ```
  local cells: subinstr local cells " (" "(", all count(local count)
  ```
- Line 1166: loc
  ```
  local count 1
  ```
- Line 1169: loc
  ```
  local size 0
  ```
- Line 1172: loc
  ```
  local ++size
  ```
- Line 1175: loc
  ```
  local count = max(`count',`size')
  ```
- Line 1177: loc
  ```
  c_local value: di _dup(`count') "c"
  ```
- Line 1182: loc
  ```
  local value `"`macval(chunk)'"'
  ```
- Line 1185: loc
  ```
  local value `"`macval(value)' `macval(chunk)'"'
  ```
- Line 1188: loc
  ```
  c_local value `"`macval(value)'"'
  ```
- Line 1193: loc
  ```
  local cmd estout
  ```
- Line 1195: loc
  ```
  local cmd `"`macval(cmd)' `macval(anything)'"'
  ```
- Line 1201: loc
  ```
  local cmd `"`macval(cmd)', `macval(options)'"'
  ```
- Line 1203: loc
  ```
  c_local cmd `"`macval(cmd)'"'
  ```
- Line 1208: loc
  ```
  c_local eqlabelsok = `"`begin'`noreplace'`replace'`nofirst'`first'"'==""
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/ols_spatial_HAC.ado**

- Line 13: lat
  ```
  COMPUTED WEIGHTS FOR INTER-TEMPORAL AUTOCORRELATION ESTIMATES WITHIN PANEL
  ```
- Line 25: lat, lon
  ```
  ols_spatial_HAC Yvar Xvarlist, lat(latvar) lon(lonvar) Timevar(tvar) Panelvar(pvar) [DISTcutoff(#) L
  ```
- Line 27: lat
  ```
  Function calculates non-parametric (GMM) spatial and autocorrelation
  ```
- Line 29: lat
  ```
  observations within a given period.  Autocorrelation is estimated for a
  ```
- Line 31: city
  ```
  matrix is robust to heteroskedasticity.
  ```
- Line 37: lat, lon
  ```
  ols_spatial_HAC dep indep1 indep2 const, lat(C1) lon(C2) t(year) p(id) dist(300) lag(3) bartlett dis
  ```
- Line 39: lat, lon
  ```
  ols_spatial_HAC dep indep*, lat(C1) lon(C2) timevar(year) panelvar(id) dist(100) lag(2) star dropvar
  ```
- Line 47: degree, lat
  ```
  latvar: variable containing latitude in DEGREES of each obs
  ```
- Line 48: lon
  ```
  lonvar: same, but longitude
  ```
- Line 56: lat
  ```
  distcutoff(#): {abbrev dist(#)} describes the distance cutoff in KILOMETERS for the spatial kernal (
  ```
- Line 58: lat
  ```
  lagcutoff(#): {abbrev lag(#)} describes the maximum number of temporal periods for the linear Bartle
  ```
- Line 64: lat
  ```
  bartlett: use a linear bartlett window for spatial correlations, instead of a uniform kernal
  ```
- Line 98: lat
  ```
  The default kernal used to weight spatial correlations is a uniform kernal that
  ```
- Line 101: lat
  ```
  Serial correlation bewteen observations of the same individual over multiple periods seperated by la
  ```
- Line 109: degree, lat, loc, location, lon
  ```
  Location arguments should specify lat-lon units in DEGREES, however
  ```
- Line 113: coord, loc, location
  ```
  coordinate locations in modulo(360) if observations straddle the
  ```
- Line 117: lat
  ```
  around each observation.  This allows for large changes in LAT to be
  ```
- Line 119: degree, lat, lon
  ```
  LON-degrees associated with changes in LAT). However, it does not account
  ```
- Line 120: loc
  ```
  for the local curvature of the surface around a point, so distances will
  ```
- Line 122: loc, lon
  ```
  long as locCutoff is < O(~2000km), probably.
  ```
- Line 125: lat
  ```
  with Heteroskedastic and Autocorrelation Standard Errors. If lagcutoff =
  ```
- Line 126: lat
  ```
  0, than this estimate is equivelent to White standard errors (with spatial correlations
  ```
- Line 161: lat, lon, name
  ```
  lat(varname numeric) lon(varname numeric) ///
  ```
- Line 162: name
  ```
  Timevar(varname numeric) Panelvar(varname numeric) [LAGcutoff(integer 0) DISTcutoff(real 1) ///
  ```
- Line 172: loc
  ```
  loc Y = word("`varlist'",1)
  ```
- Line 174: loc
  ```
  loc listing "`varlist'"
  ```
- Line 176: loc
  ```
  loc X ""
  ```
- Line 180: loc
  ```
  foreach i of loc listing {
  ```
- Line 182: loc
  ```
  loc X "`X' `i'"
  ```
- Line 196: loc
  ```
  local newVarList=""
  ```
- Line 197: loc
  ```
  local i=1
  ```
- Line 202: loc
  ```
  loc newVarList "`newVarList' `var'"
  ```
- Line 205: loc
  ```
  local i=`i'+1
  ```
- Line 208: loc
  ```
  loc X "`newVarList'"
  ```
- Line 224: second
  ```
  /*--------SECOND, IMPORT ALL VALUES INTO MATA-------*/
  ```
- Line 228: loc
  ```
  Y_var = st_local("Y") //importing variable assignments to mata
  ```
- Line 229: loc
  ```
  X_var = st_local("X")
  ```
- Line 230: lat, loc
  ```
  lat_var = st_local("lat")
  ```
- Line 231: loc, lon
  ```
  lon_var = st_local("lon")
  ```
- Line 232: loc
  ```
  time_var = st_local("timevar")
  ```
- Line 233: loc
  ```
  panel_var = st_local("panelvar")
  ```
- Line 239: lat
  ```
  st_view(lat=.,.,tokens(lat_var),"touse")
  ```
- Line 240: lon
  ```
  st_view(lon=.,.,tokens(lon_var),"touse")
  ```
- Line 247: loc
  ```
  lag_var = st_local("lagcutoff")
  ```
- Line 249: loc
  ```
  dist_var = st_local("distcutoff")
  ```
- Line 272: lat
  ```
  lat1 = select(lat, rows_ti)
  ```
- Line 273: lon
  ```
  lon1 = select(lon, rows_ti)
  ```
- Line 288: lat, lon
  ```
  lon_scale = cos(lat1[i,1]*pi()/180)*111
  ```
- Line 289: lat
  ```
  lat_scale = 111
  ```
- Line 292: degree, lat, lon
  ```
  // Distance scales lat and lon degrees differently depending on
  ```
- Line 293: lat
  ```
  // latitude.  The distance here assumes a distortion of Euclidean
  ```
- Line 294: loc, location
  ```
  // space around the location of 'i' that is approximately correct for
  ```
- Line 295: loc, location
  ```
  // displacements around the location of 'i'
  ```
- Line 297: lat
  ```
  //	Note: 	1 deg lat = 111 km
  ```
- Line 298: lat, lon
  ```
  // 			1 deg lon = 111 km * cos(lat)
  ```
- Line 300: lat
  ```
  distance_i = ((lat_scale*(lat1[i,1]:-lat1)):^2 + ///
  ```
- Line 301: lon
  ```
  (lon_scale*(lon1[i,1]:-lon1)):^2):^0.5
  ```
- Line 338: lat
  ```
  // generate the VCE for only cross-sectional spatial correlation,
  ```
- Line 339: son
  ```
  // return it for comparison
  ```
- Line 368: name
  ```
  // the row and column names of the new VCE must match the vector b
  ```
- Line 370: lname, name
  ```
  matrix colnames V_spatial = `X'
  ```
- Line 371: name
  ```
  matrix rownames V_spatial = `X'
  ```
- Line 379: loc
  ```
  ereturn local cmd = "ols_spatial"
  ```
- Line 391: loc
  ```
  ereturn local title = "Linear regression"
  ```
- Line 392: loc
  ```
  ereturn local depvar = "`Y'"
  ```
- Line 393: loc
  ```
  ereturn local predict = "regres_p"
  ```
- Line 394: loc
  ```
  ereturn local model = "ols"
  ```
- Line 395: loc
  ```
  ereturn local estat_cmd = "regress_estat"
  ```
- Line 397: son
  ```
  //storing these estimates for comparison to OLS and the HAC estimates
  ```
- Line 439: lat
  ```
  // correlation (Greene recomments lag_cutoff >= T^0.25 {pg 546})
  ```
- Line 445: lat
  ```
  //correlation estimates:
  ```
- Line 465: lat
  ```
  // generate the VCE for x-sectional spatial correlation and serial correlation
  ```
- Line 484: name
  ```
  // the row and column names of the new VCE must match the vector b
  ```
- Line 486: lname, name
  ```
  matrix colnames V_spatial_HAC = `X'
  ```
- Line 487: name
  ```
  matrix rownames V_spatial_HAC = `X'
  ```
- Line 497: loc
  ```
  ereturn local cmd = "ols_spatial_HAC"
  ```
- Line 508: loc
  ```
  ereturn local title = "Linear regression"
  ```
- Line 509: loc
  ```
  ereturn local depvar = "`Y'"
  ```
- Line 510: loc
  ```
  ereturn local predict = "regres_p"
  ```
- Line 511: loc
  ```
  ereturn local model = "ols"
  ```
- Line 512: loc
  ```
  ereturn local estat_cmd = "regress_estat"
  ```
- Line 514: son
  ```
  //storing these estimates for comparison to OLS and the HAC estimates
  ```
- Line 525: lat
  ```
  disp as txt "             AND PANEL-SPECIFIC SERIAL CORRELATION"
  ```
- Line 530: lat
  ```
  disp as txt "SPATIAL CORRELATION KERNAL CUTOFF: `distcutoff' KM"
  ```
- Line 536: lat
  ```
  disp as txt "SERIAL CORRELATION KERNAL CUTOFF: `lagcutoff' PERIODS"
  ```
- Line 557: lat, lon
  ```
  capture mata mata drop V invXX  XeeX XeeXh XeeX_spatial_HAC window_t window_i weight t i ti pi X1 Y1
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/analysis_earthquake_effects.tex**

- Line 17: lon
  ```
  y_{ics}=\alpha_0 +\alpha_1\cdot w_{cs} + \alpha_2\cdot  x_i + \beta^{'}\cdot  D_{ic}+  post_i\cdot \
  ```
- Line 21: lat, loc, location, school
  ```
  For the pre-earthquake cohort, the parameter $\beta$ captures the spurious relationship between vect
  ```
- Line 23: school
  ```
  Table \ref{tab:effectsts} presents the results. The outcome in column (1) is the average between the
  ```
- Line 28: school
  ```
  The average damages to the homes of classmates have positive effects on own test scores and GPA. An 
  ```
- Line 31: school, second
  ```
  To summarize, damages affected the learning of the student living in the damaged home. The detriment
  ```
- Line 44: school
  ```
  Next, I analyze whether students could have moved between the $7^{th}$ and $8^{th}$ grade in respons
  ```
- Line 50: country, loc, location
  ```
  To complement the before-after analysis, I implemented a difference-in-differences analysis that exa
  ```
- Line 61: lat
  ```
  The ideal test would be to re-estimate equation \eqref{regression1} on the sample of students living
  ```
- Line 80: lon
  ```
  &\quad + \beta_2^{'}\cdot  D_{ic}\cdot a_i+  post_i\cdot \left[ \gamma_1 + \gamma_2 \cdot a_i + \del
  ```
- Line 85: school, second
  ```
  The results are presented in Table \ref{tab:heteffectsts} and Figure \ref{fig:me_nofe}. The detrimen
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/appendix.tex**

- Line 3: house
  ```
  \subsection{Predicting Seismic Vulnerability of a Household's Home}\label{sec:sv}
  ```
- Line 42: lat
  ```
  \caption{Constructs and Corresponding Survey Items. \textit{Note:} Source: English translation of SI
  ```
- Line 65: lat
  ```
  \input{output/tables/correlates_pre_post.tex}
  ```
- Line 70: lat
  ```
  % Related to main effects
  ```
- Line 113: lat
  ```
  % Related to identifying assumption
  ```
- Line 125: sex
  ```
  \input{output/tables/rendidosexp}
  ```
- Line 129: school
  ```
  Amounts are in Chilean pesos and represent total spending across all SEP schools in 2009–2010.  Ex
  ```
- Line 143: lat
  ```
  \caption{{\itshape Source}: Comerio (2013). Handmade sign found in Cauquenes, Chile, on February 2, 
  ```
- Line 168: lat, loc
  ```
  \caption{Relationship between reported effort cost and baseline test score. {\itshape Notes}: Local 
  ```
- Line 259: second
  ```
  \noindent The first term is smaller or equal to the right-hand side of equation \eqref{eq:anyothere}
  ```
- Line 260: lat, second
  ```
  negative, because first, $\frac{\partial V}{\partial c_i}$ is strictly negative because $V_2<0$ and 
  ```
- Line 272: lon
  ```
  equilibrium effort function $e^{*}(c_i)$ at $\tilde{e}$, so that $\lim_{c_i\to \tilde{c}}e^{*}(c_i)=
  ```
- Line 273: lon
  ```
  of type $\tilde{c}-\epsilon$ can reduce her effort to
  ```
- Line 274: lon
  ```
  $\tilde{c}$, which is below $e^{*}(\tilde{c}-\epsilon)$, and obtain a discrete
  ```
- Line 301: school
  ```
  \noindent In the case of no multiplicative compensation ($\frac{d a_1}{d \mu_d}=0$), the model is ag
  ```
- Line 309: lat
  ```
  When both the marginal cost and benefit of effort increase, the sign of the impact on effort depends
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/appendix_reconstruction_policy.tex**

- Line 1: school
  ```
  \section{Details of the School Reconstruction Plan}\label{sec:reconstructionplan}
  ```
- Line 7: lat
  ```
  \subsection*{Translation of governmental policy document}
  ```
- Line 9: school
  ```
  In educational matters, the earthquake and tsunami of February 27 meant that 2,095,671 students saw 
  ```
- Line 13: school
  ```
  \caption{Summary of Schools Affected by the Earthquake by Region}
  ```
- Line 16: school
  ```
  \textbf{Region} & \textbf{Number of Schools} & \textbf{Enrollment} \\
  ```
- Line 41: lat, loc, location, school
  ```
  Stabilization & 26-04-2010 to 26-07-11 & Period of reconstruction aimed to stabilize the school syst
  ```
- Line 43: lat, school, second
  ```
  Early Reconstruction & 27-02-10 to 27-02-11 & Stage aimed at normalizing infrastructure for the maxi
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/conclusions.tex**

- Line 3: lon, school
  ```
  Across many education systems, peers have been shown to influence a student's own academic achieveme
  ```
- Line 6: lon, school
  ```
  Exploiting the context of one of the most violent earthquakes ever recorded and detailed data on the
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/data.tex**

- Line 6: gender, house, school
  ```
  For both cohorts I observe administrative records on $8^{th}$ grade and $4^{th}$ grade Mathematics a
  ```
- Line 10: lat
  ```
  \draw[black,->,thick,>=latex]
  ```
- Line 26: lat
  ```
  \draw[mygreen, ->,>=latex] (1,0) -- (1,-10pt) -- (3,-10pt) -- (3,0pt) ;
  ```
- Line 28: lat
  ```
  \draw[mygreen, ->, >=latex] (2,-20pt) -- (2,-35pt) -- (4,-35pt) -- (4,0pt) ;
  ```
- Line 36: country, lat, loc, lon
  ```
  \paragraph{Earthquake.} On February $27^{th}$ 2010, at 3.34 am local time, Chile was struck by a mag
  ```
- Line 54: lat, second
  ```
  \paragraph{Measuring earthquake damage to a student's home.} The damage to a student's home depends 
  ```
- Line 143: lat
  ```
  Why did homes of disadvantaged students incur greater damage? Figure \ref{fig:damage_propagation_by_
  ```
- Line 169: country
  ```
  Finally, Table \ref{summaryprepost} presents descriptive statistics of the pre- and post-earthquake 
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/introduction.tex**

- Line 4: child, school
  ```
  Childhood and early adulthood are fundamental years for cognitive development (\cite*{cunha2006inter
  ```
- Line 16: child, house, loc
  ```
  Using this newly constructed dataset, I first document new facts about socioeconomic segregation amo
  ```
- Line 18: lat, loc, location, school
  ```
  I then estimate the causal impacts on students' outcomes of damages to their own homes and to the ho
  ```
- Line 22: school
  ```
  In contrast, increases in the within-classroom standard deviation of damages lowered the achievement
  ```
- Line 23: school, son
  ```
  The results so far suggest that study disruptions had spillover effects on classroom peers, and that
  ```
- Line 37: gender, lat, lon
  ```
  The idea that students may care about their rank is consistent with a growing body of evidence showi
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/manuscript.tex**

- Line 39: lon
  ```
  \usepackage{booktabs,threeparttable,tabularx,ltxtable,longtable,tabu,float,dcolumn,eurosym,lscape,au
  ```
- Line 58: url
  ```
  \usepackage[pdfborder={0 0 0}, linkcolor=black, urlcolor=blue, citecolor=blue, colorlinks=true,hyper
  ```
- Line 77: lon
  ```
  \affil{\small University College London, CEPR, CESifo, HCEO, IFS and LEAP}
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/mechanisms.tex**

- Line 2: school
  ```
  \subsection{Classroom- and School-level Factors}\label{sec:schoolsmech}
  ```
- Line 6: school
  ```
  \subsubsection{School-level responses}\label{sec:schoolFE}
  ```
- Line 43: lat, school
  ```
  The impacts on test scores and GPA were similar (Table \ref{tab:effectsts} and Figure \ref{fig:me_no
  ```
- Line 46: school
  ```
  The lack of instructional pace adaptation suggests that the mitigating efforts taken by schools in r
  ```
- Line 56: loc, location, school
  ```
  \subsubsection{Reallocation of school resources}\label{sec:resources}
  ```
- Line 58: loc, school
  ```
  The positive impacts of mean damages on achievement suggest schools overcompensated earthquake impac
  ```
- Line 63: lat, school
  ```
  Appendix Table \ref{tab:summarymissingexp} reports summary statistics for all schools in the main es
  ```
- Line 67: school, son
  ```
  In the years 2009-2010, SEP funds amounted to around CLP 68.3 billion ($\sim$ USD 134 million in 201
  ```
- Line 74: lat, school, second
  ```
  Second, schools did adjust their SEP expenditures in response to the average level of damages among 
  ```
- Line 83: school
  ```
  To better understand these adjustments, Figure \ref{fig:LLM} decomposes the ``Fee-based consulting (
  ```
- Line 93: school
  ```
  Keeping fixed a student's home damage, an increase in the average damage suffered by peers had a neg
  ```
- Line 104: lat, lon, school
  ```
  Schools may not have responded to the dispersion in damages, suggesting a potential role for peer in
  ```
- Line 113: gender, lat, lon, school, social
  ```
  The idea that students who are around thirteen years old, like those in this study, may care about t
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/model_extension.tex**

- Line 15: lon
  ```
  c_i \;=\; \theta_0 \;+\; \theta_w^\top w_i \;+\; \theta_3 d_i \;+\; \epsilon_i,
  ```
- Line 19: lon
  ```
  As in the baseline model, each student’s type $c_i$ is private information, while the reference-gr
  ```
- Line 25: lon
  ```
  Propositions~\ref{prop2}--\ref{prop3} compare equilibria across classrooms under changes in the with
  ```
- Line 28: lon
  ```
  E_c[c] \;=\; \theta_0 \;+\; \theta_w^\top E_c[w] \;+\; \theta_3 E_c[d] \;+\; E_c[\epsilon].
  ```
- Line 31: lon
  ```
  The empirical implementation provides a counterpart to the model’s comparative statics by controll
  ```
- Line 36: lon
  ```
  E[\epsilon \mid d,w] = E[\epsilon \mid w]=\alpha + \beta w.
  ```
- Line 38: lon
  ```
  \label{ass:epsilon_indep}
  ```
- Line 41: lon
  ```
  \noindent Under these assumptions, the within-classroom mean $E_c[\epsilon]$ satisfies
  ```
- Line 43: lon
  ```
  \mathbb{E}_C\!\big[\,E_c[\epsilon]\ \big|\ E_c[d]=\bar d,\ E_c[w]=\bar w\,\big]
  ```
- Line 44: lon
  ```
  =  \mathbb{E}_C\!\big[\,E_c[\epsilon]\ \big|\ E_c[w]=\bar w\,\big],
  ```
- Line 49: lon
  ```
  \mathbb{E}_C\!\big[\,E_c[\epsilon]\ \big|\ E_c[d]=\bar d,\ E_c[w]=\bar w\,\big]
  ```
- Line 62: lat
  ```
  In practice, the empirical implementation relies on a difference-in-differences design that delivers
  ```
- Line 75: lon
  ```
  \;+\; \mathrm{Var}_c[\epsilon]
  ```
- Line 76: lon
  ```
  \;+\; 2\sum_{j=1}^{m} \theta_{w[j]}\,\mathrm{Cov}_c(w_{[j]},\epsilon)
  ```
- Line 77: lon
  ```
  \;+\; 2\theta_3\,\mathrm{Cov}_c(d,\epsilon), \nonumber
  ```
- Line 88: lon
  ```
  Because $\epsilon_i$ is unobserved, its within-classroom variance and covariances cannot be included
  ```
- Line 91: lon
  ```
  \noindent {\itshape Assumption C.3.2 (Conditional mean independence and conditional invariance of $\
  ```
- Line 93: lon
  ```
  The idiosyncratic shock $\epsilon_{ci}$ is mean independent of $d_{ci}$ conditional on $w_{ci}$:
  ```
- Line 95: lon
  ```
  E[\epsilon \mid d,w] = E[\epsilon \mid w].
  ```
- Line 97: lon
  ```
  In addition, conditional on the observed classroom composition $S_c$ (which includes the within-clas
  ```
- Line 99: lon
  ```
  \mathrm{Cov}_C\!\big(\mathrm{Var}_c[\epsilon],\,\mathrm{Var}_c[d] \mid S_c\big)=0,
  ```
- Line 101: lon
  ```
  \mathrm{Cov}_C\!\big(\mathrm{Cov}_c(d,\epsilon),\,\mathrm{Var}_c[d] \mid S_c\big)=0,
  ```
- Line 103: lon
  ```
  $$\mathrm{Cov}_C\!\big(\mathrm{Cov}_c(w_{[j]},\epsilon),\,\mathrm{Var}_c[d] \mid S_c\big)=0 \quad \f
  ```
- Line 106: lat, lon
  ```
  A sufficient (stronger) condition would be that $d$ and $\epsilon$ are independent in the population
  ```
- Line 108: lon
  ```
  \noindent Under assumption C.3.2, the within-classroom variance of $\epsilon_i$ and its covariance w
  ```
- Line 110: lon
  ```
  \mathbb{E}_C\!\big[\mathrm{Var}_c[\epsilon]\ \big|\ \mathrm{Var}_c[d],\,S_c\big]
  ```
- Line 111: lon
  ```
  = \mathbb{E}_C\!\big[\mathrm{Var}_c[\epsilon]\ \big|\ S_c\big],
  ```
- Line 113: lon
  ```
  \mathbb{E}_C\!\big[\mathrm{Cov}_c(d,\epsilon)\ \big|\ \mathrm{Var}_c[d],\,S_c\big]
  ```
- Line 114: lon
  ```
  = \mathbb{E}_C\!\big[\mathrm{Cov}_c(d,\epsilon)\ \big|\ S_c\big],
  ```
- Line 116: lon
  ```
  which implies that neither $\mathrm{Var}_c[\epsilon]$ nor $\mathrm{Cov}_c(d,\epsilon)$ varies system
  ```
- Line 119: lon
  ```
  \mathbb{E}_C\!\big[\mathrm{Var}_c[\epsilon]\ \big|\ \mathrm{Var}r_c[d],\,S_c\big] = 0,
  ```
- Line 122: lon
  ```
  \mathbb{E}_C\!\big[\mathrm{Cov}_c(d,\epsilon)\ \big|\ \mathrm{Var}_c[d],\,S_c\big] = 0.
  ```
- Line 147: lon
  ```
  In the baseline model (equation~\eqref{eq:cost_effort}), heterogeneity by the observed component $a_
  ```
- Line 149: lon
  ```
  \noindent{\itshape Assumption C.3.3 (Conditional mean independence of $\epsilon_i$ with respect to $
  ```
- Line 150: lon
  ```
  Within a classroom, conditional on $(x_i,d_i)$, the idiosyncratic shock $\epsilon_i$ is mean indepen
  ```
- Line 153: lon
  ```
  E[\epsilon_i \mid a_i,x_i,d_i] \;=\; E[\epsilon_i \mid x_i,d_i].
  ```
- Line 157: lon
  ```
  That is, the expectation of the unobserved shock $\epsilon_i$ is the same for students with high and
  ```
- Line 160: lon
  ```
  \begin{lemma}\label{lemma:hetero_epsilon}
  ```
- Line 170: lon
  ```
  \begin{proof}[{\bf Proof of  Lemma \ref{lemma:hetero_epsilon}}]
  ```
- Line 174: lon
  ```
  E[c_i\mid a_i, x_i, d_i]=\theta_0 + \theta_1 a_i + \theta_2 x_i + \theta_3 d_i + E[\epsilon_i\mid x_
  ```
- Line 176: lon
  ```
  \noindent where the conditional expectation of $\epsilon_i$ does not depend on $a_i$ by Assumption~C
  ```
- Line 187: lat, lon
  ```
  Under Assumption~C.3.3, $a_i$ provides a monotone ranking of $c_i$ in expectation, conditional on $(
  ```

**/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/theoretical_model_rank_concerns.tex**

- Line 10: lat, school
  ```
  I build on the status game model developed by \cite{hopkins2004running}, where individuals choosing 
  ```
- Line 14: lon, school
  ```
  I show that the theory can explain the full set of empirical findings, including those that school-l
  ```
- Line 20: lat, son
  ```
  Within a reference group $l$ there is a continuum of students, each indexed by $i$. Students are het
  ```
- Line 46: city, lat
  ```
  In a symmetric Nash equilibrium in pure strategies, every student follows the same strategy $e_l(c_i
  ```
- Line 54: lat
  ```
  The model is an application of the status game in \cite{hopkins2004running}.\footnote{For related ga
  ```
- Line 82: school
  ```
  $\frac{d a_1}{d\mu_{dl}}$ and $\frac{d u_1}{d\mu_{dl}}$, i.e.\ on whether school action compensates 
  ```
- Line 95: school
  ```
  Proposition \ref{prop2} states that the impacts on GPA of increasing mean damages in the classroom t
  ```
- Line 96: school
  ```
  If schools do not implement multiplicative compensatory action ($\frac{d a_1}{d \mu_{dl}}=0$) and if
  ```

