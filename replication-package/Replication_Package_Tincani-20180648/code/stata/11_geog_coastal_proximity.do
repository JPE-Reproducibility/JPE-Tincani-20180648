
// Author: Michela M. Tincani, UCL
// This version: March 2026


* This do file brings coastal proximity information into the education dataset.
* Specifically, it creates data files containing the coastal proximity of each town in which students reside 
* and of each town in which there is a school 


* ---------------------------------------------------------------------------------

* 1: Households: generate dataset with list of all towns in which students in the 
*     sample reside, and their coastal proximity.

* ---------------------------------------------------------------------------------

* Identify list of towns in which households reside from main dataset 


clear all 
use "$cleaned/post_for_predict_2025"
merge  1:1 mrun using "$cleaned/post_for_predict_class_low_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/post_for_predict_class_medium_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/post_for_predict_class_high_all.dta"
drop _merge

keep cod_com_alu 
duplicates drop

sort cod_com_alu 
save $trash/towns_post, replace 


clear all 
use "$cleaned/pre_for_predict_2025"
merge  1:1 mrun using "$cleaned/pre_for_predict_class_low_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/pre_for_predict_class_medium_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/pre_for_predict_class_high_all.dta"
drop _merge

keep cod_com_alu 
duplicates drop
sort cod_com_alu
merge 1:1 cod_com_alu using $trash/towns_post
drop _merge

* Now merge in the name of the town

preserve
clear all 
insheet using $data/raw/20140805_matricula_unica_2009_20090430_PUBL.csv, delim(";")
 keep cod_com_alu nom_com_alu 
 duplicates drop 
 drop if cod_com_alu==.
 
 
 save $trash/mat_2009_temp, replace 
 
 restore 

merge 1:1 cod_com_alu using $trash/mat_2009_temp
drop if _merge==2
* I could not add the name only to 5 towns
* cod_com_alu: 1401, 5801, 5802, 5803, 5804 
* manually add them (fetched them from matricula_unica_2011)

replace nom_com_alu="POZO ALMONTE" if cod_com_alu==1401 
replace nom_com_alu="QUILPUE" if cod_com_alu==5801
replace nom_com_alu="LIMACHE" if cod_com_alu==5802
replace nom_com_alu="OLMUE" if cod_com_alu==5803
replace nom_com_alu="VILLA ALEMANA" if cod_com_alu==5804
drop _merge 


preserve
clear all
insheet using $cleaned/towns_with_distance_to_coast.csv
save $cleaned/towns_with_distance_to_coast.dta, replace 
restore 

merge 1:1 cod_com_alu using $cleaned/towns_with_distance_to_coast.dta, keepusing(distance_to_coast_km)
drop _merge

rename distance_to_coast_km distance_coast

gen coastal_0p5k=1 if distance_coast<=0.5
replace coastal_0p5k=0 if distance_coast>0.5 

gen coastal_1k=1 if distance_coast<=1
replace coastal_1k=0 if distance_coast>1 

gen coastal_1p5k=1 if distance_coast<=1.5
replace coastal_1p5k=0 if distance_coast>1.5




*---------------------------------------------------
* Step 4: Save Results
*---------------------------------------------------
save "$cleaned/comuna_alu_coastal_proximity", replace






* ---------------------------------------------------------------------------------

* 2: Schools: generate dataset with list of all towns in which schools in the 
*     sample are located, and their coastal proximity.

* ---------------------------------------------------------------------------------




clear all 
use "$cleaned/post_for_predict_2025"
merge  1:1 mrun using "$cleaned/post_for_predict_class_low_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/post_for_predict_class_medium_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/post_for_predict_class_high_all.dta"
drop _merge

keep cod_com_rbd 
duplicates drop

sort cod_com_rbd
save $trash/towns_schools_post, replace 


clear all 
use "$cleaned/pre_for_predict_2025"
merge  1:1 mrun using "$cleaned/pre_for_predict_class_low_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/pre_for_predict_class_medium_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/pre_for_predict_class_high_all.dta"
drop _merge

keep cod_com_rbd
duplicates drop
sort cod_com_rbd
merge 1:1 cod_com_rbd using $trash/towns_schools_post
drop _merge

* Now merge in the name of the town

preserve
clear all 
insheet using $data/raw/20140805_matricula_unica_2009_20090430_PUBL.csv, delim(";")
 keep cod_com_rbd nom_com_rbd 
 duplicates drop 
 *destring cod_com_rbd, replace 
 *drop if cod_com_rbd==.
 
 * Only one duplicate due to misspelled duplicate name
 *drop if _n==315
 
 save $trash/mat_2009_temp_rbd, replace 
 
 restore 
 
 
 merge 1:1 cod_com_rbd using $trash/mat_2009_temp_rbd
drop if _merge==2

* I could not add the name only to 4 towns
* cod_com_rbd: 5801, 5802, 5803, 5804 
* manually add them (fetched them from matricula_unica_2011)

replace nom_com_rbd="QUILPUE" if cod_com_rbd==5801
replace nom_com_rbd="LIMACHE" if cod_com_rbd==5802
replace nom_com_rbd="OLMUE" if cod_com_rbd==5803
replace nom_com_rbd="VILLA ALEMANA" if cod_com_rbd==5804
drop _merge 
 
 
 
preserve
clear all
insheet using $cleaned/towns_with_distance_to_coast.csv
rename cod_com_alu cod_com_rbd 
rename nom_com_alu nom_com_rbd 
save $cleaned/school_towns_with_distance_to_coast.dta, replace 
restore 


 

merge 1:1 cod_com_rbd using $cleaned/school_towns_with_distance_to_coast.dta, keepusing(distance_to_coast_km)
drop if _merge==2
drop _merge

rename distance_to_coast_km distance_coast

gen coastal_rbd_0p5k=1 if distance_coast<=0.5
replace coastal_rbd_0p5k=0 if distance_coast>0.5 & distance_coast!=.


gen coastal_rbd_1k=1 if distance_coast<=1
replace coastal_rbd_1k=0 if distance_coast>1 & distance_coast!=.

gen coastal_rbd_1p5k=1 if distance_coast<=1.5
replace coastal_rbd_1p5k=0 if distance_coast>1.5 & distance_coast!=.



*---------------------------------------------------
* Step 4: Save Results
*---------------------------------------------------
save "$cleaned/comuna_rbd_coastal_proximity", replace
*save "$cleaned/comuna_alu_geocoded_final", replace



* Erase from disk data files no longer needed
capture noisily erase $trash/mat_2009_temp.dta
capture noisily erase $trash/towns_post.dta
capture noisily erase $cleaned/towns_with_distance_to_coast.dta
capture noisily erase $trash/towns_schools_post.dta
capture noisily erase $trash/mat_2009_temp_rbd.dta
capture noisily erase $cleaned/school_towns_with_distance_to_coast.dta


