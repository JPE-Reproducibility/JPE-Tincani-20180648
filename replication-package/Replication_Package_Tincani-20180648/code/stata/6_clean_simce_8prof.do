// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file cleans the teachers questionnaires for eighth graders, to build curriculum covered by Maths and Spanish teachers
* Cohort PRE: 8th greade 2009
* Cohort POST: 8th grade 2011
     



*---------------------------------
*-----  SIMCE 8o BASICO 2009 -----
*---------------------------------

*---------LANGUAGE TEACHERS -------------

clear all
import excel using "$dataconf/raw/2009 8b bbdd cprofesor leng.xlsx", firstrow clear // .csv copy reported in package

rename RBD rbd
rename CODIGO codigo
* the unique identifier is the combination rbd codigo, which identifies a classroom in a school



forval i = 1(1)18 {
gen temp_`i'=0 if P27_`i'==1
replace temp_`i'=0.33 if P27_`i'==2
replace temp_`i'=0.63 if P27_`i'==3
replace temp_`i'=1 if P27_`i'==4
}

egen curriculum_leng=rowmean(temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 temp_16 temp_17 temp_18 )
drop temp_*
label var curriculum_leng "Average % covered of each topic in language curriculum"



keep rbd codigo curriculum_leng

gen post=0



save "$cleaned/endline_simce_leng_2009", replace  // First downloaded 02/02/2013 at 10.49 as xls




*---------MATHEMATICS TEACHERS -------------

clear all
import excel using "$dataconf/raw/2009 8b bbdd cprofesor mate.xlsx", firstrow clear // .csv copy reported in package

* the unique identifier is the combination rbd codigo, which identifies a classroom in a school


forval i = 1(1)22 {
gen temp_`i'=0 if P27_`i'==1
replace temp_`i'=0.33 if P27_`i'==2
replace temp_`i'=0.63 if P27_`i'==3
replace temp_`i'=1 if P27_`i'==4 
}

egen curriculum_mate=rowmean(temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 temp_16 temp_17 temp_18 temp_19 temp_20 temp_21 temp_22 )
drop temp_*
label var curriculum_mate "AAverage % covered of each topic in math curriculum"

rename RBD rbd 
rename CODIGO codigo

keep rbd codigo curriculum_mate

gen post=0

save "$cleaned/endline_simce_mate_2009", replace





*---------------------------------
*-----  SIMCE 8o BASICO 2011 -----
*---------------------------------

*---------LANGUAGE TEACHERS -------------
clear all 

import excel using "$dataconf/raw/CPRL8VO.xlsx", firstrow clear // .csv copy reported in package


* percentage of curriculum covered

forval i = 1(1)15 {
gen temp_`i'=0 if P18_`i'==1
replace temp_`i'=0.33 if P18_`i'==2
replace temp_`i'=0.63 if P18_`i'==3
replace temp_`i'=1 if P18_`i'==4
}

egen curriculum_leng=rowmean(temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15  )
drop temp_*
label var curriculum_leng "Average % covered of each topic in language curriculum"

rename RBD rbd
rename CODIGO codigo
* If there are duplicates, keep largest
bysort rbd codigo: egen hugo = max(curriculum_leng)
drop curriculum_leng
rename hugo curriculum_leng 


keep rbd codigo curriculum_leng

gen post = 1
duplicates drop 

save "$cleaned/endline_simce_leng_2011", replace






*---------MATH TEACHERS -------------
clear all 
import excel using "$dataconf/raw/CPRM8VO.xlsx", firstrow clear // .csv copy reported in package
*export delimited using "$dataconf/raw/CPRM8VO.csv", replace


* percentage of curriculum covered

forval i = 1(1)17 {
gen temp_`i'=0 if P18_`i'==1
replace temp_`i'=0.33 if P18_`i'==2
replace temp_`i'=0.63 if P18_`i'==3
replace temp_`i'=1 if P18_`i'==4
}

egen curriculum_mate=rowmean(temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 temp_16 temp_17 )
drop temp_*
label var curriculum_mate "Average % covered of each topic in math curriculum"

rename RBD rbd 
rename CODIGO codigo
* If there are duplicates, keep largest
bysort rbd codigo: egen hugo = max(curriculum_mate)
drop curriculum_mate
rename hugo curriculum_mate 


keep rbd codigo curriculum_mate

gen post = 1
duplicates drop 

save "$cleaned/endline_simce_mate_2011", replace









