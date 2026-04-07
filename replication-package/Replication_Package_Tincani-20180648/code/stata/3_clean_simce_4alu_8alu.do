// Author: Michela M. Tincani, UCL
// This version: March 2026

* First part of do file  cleans the following datasets, and saves them separately:
* simce students 4o basico 2005, simce students 4o basico 2007 = baseline variables. It imputes missing SIMCE using rendimento information


*---------------------------------
*-----  SIMCE 4o BASICO 2005 -----
*---------------------------------

* clean simce data
clear all
insheet using "$dataconf/raw/BBDD Alumnos 4to 2005.csv", delim(;) 

destring mrun, replace
destring leng, replace dpcomma
destring mate, replace dpcomma

gen avg_simce=(leng+mate)/2

gen female_simce=1 if genero=="M"
replace female_simce=0 if genero=="H"

* generate variable with only class letter, which will allow us to merge with rendimiento data
 gen let_cur= substr(curso,5,2)
 
 drop if mrun==.
 
 
 
bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates


keep rbd idalumno codigo  mrun avg_simce female_simce let_cur

save "$cleaned/simce_4o_2005_cleaned.dta", replace




*---------------------------------------
*-----  RENDIMIENTO 4o BASICO 2005 -----
*---------------------------------------

*clean rendimiento data
* variables needed from rendimiento 4o basico 2005: class code, GPA, age, public/private, gender, rural, cod_region, cod_comuna
clear all

insheet using "$dataconf/raw/20130425_Rendimiento_2005_20060316_PUBL.csv", delim(;)  

keep if cod_ense==110
keep if cod_grado==4
drop cod_ense cod_grado


destring prom_gral, replace dpcomma  // never missing, ok
gen not_retirado=0 if prom_gral==0   // a value of 0 indicates "retirados" students  
replace not_retirado=1 if prom_gral!=0 & prom_gral!=. 
gen female=1 if gen_alu==2
replace female=0 if gen_alu==1

gen M=1 if cod_depe==1 | cod_depe==2 | cod_depe==5
replace M=0 if M==. & cod_depe!=.
gen V=1 if cod_depe==3
replace V=0 if V==. & cod_depe!=.
gen U=1 if cod_depe==4
replace U=0 if U==. & cod_depe!=.

label var rural_rbd "1 means rural school"

* to generate age, keep the year from the DoB
gen yearbirth=int(fec_nac_alu/10000)
gen age=2005-yearbirth
replace age=. if age<7 | age>16

destring mrun, replace

drop if mrun==.
 

** dropping duplicates in terms of mrun. These are people who changed schools, class etc.
bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates

keep mrun rbd cod_reg_rbd cod_com_rbd rural_rbd let_cur prom_gral female M V U age not_retirado

save "$cleaned/rendimiento_2005_cleaned.dta", replace




*----------------------------------------------------------------------------------------
*-----  MERGE RENDIMIENTO AND SIMCE 4o BASICO 2005 TO IMPUTE MISSING BASELINE SIMCE -----
*----------------------------------------------------------------------------------------

clear all
use "$cleaned/rendimiento_2005_cleaned.dta"

merge 1:1 mrun rbd let_cur using "$cleaned/simce_4o_2005_cleaned.dta"

bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates


** For those for whom simce is nonmissing, we keep the nonmissing simce. For those for whom simce is missing,
** we impute it using grade data. We do imputations region by region, adding school fixed effects. 



* need at least STATA 15 MP to set matsize 10,000. 
set matsize 10000
forval i=1(1)13 {
quietly areg avg_simce c.(prom_gral)#i.not_retirado i.not_retirado i.female i.age i.rbd  if _merge==3 & cod_reg_rbd==`i',absorb(rbd)
predict simce_avg_imputed_`i' if cod_reg_rbd==`i'
}


gen simce_avg=avg_simce
forval i=1(1)13 {
replace simce_avg=simce_avg_imputed_`i' if avg_simce==. & cod_reg_rbd==`i'
drop simce_avg_imputed_`i'
}

drop avg_simce

rename prom_gral GPA_4
replace GPA_4=. if GPA_4==0
label var GPA_4 "Baseline GPA"


keep rbd let_cur mrun idalumno codigo female simce_avg GPA_4

save $trash/tempsimce, replace

clear all

use $trash/tempsimce


su simce_avg , d
gen simce_avg_st=(simce_avg-`r(mean)')/`r(sd)'
lab var simce_avg_st "Baseline simce score (standardized)"

drop if simce_avg_st==.



keep rbd let_cur mrun idalumno codigo female simce_avg_st GPA_4 
label var codigo "Codigo Curso from simce dataset"

save "$cleaned/baseline_simce_2005", replace

 * remove the files no longer needed from disk
   capture noisily erase "$cleaned/rendimiento_2005_cleaned.dta"
   capture noisily erase "$cleaned/simce_4o_2005_cleaned.dta"
   capture noisily erase  $trash/tempsimce.dta




*---------------------------------
*-----  SIMCE 4o BASICO 2007 -----
*---------------------------------

* clean simce data
clear all
insheet using "$dataconf/raw/BBDD Alumnos  4to 2007.csv", delim(;)   

destring mrun, replace
destring leng, replace dpcomma
destring mate, replace dpcomma

gen avg_simce=(leng+mate)/2

gen female_simce=1 if genero=="M"
replace female_simce=0 if genero=="H"

* generate variable with only class letter, which will allow us to merge with rendimiento data
 gen let_cur= substr(curso,5,2)
 
 drop if mrun==.
 
 
 * drop duplicates in terms of mrun  
 bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates
 

keep rbd idalumno codigo  mrun avg_simce female_simce let_cur

save "$cleaned/simce_4o_2007_cleaned.dta", replace




*---------------------------------------
*-----  RENDIMIENTO 4o BASICO 2007 -----
*---------------------------------------

*clean rendimiento data
* variables needed from rendimiento 4o basico 2007: class code, GPA, age, public/private, gender, rural, cod_region, cod_comuna

clear all

insheet using "$dataconf/raw/20130226_Rendimiento_2007_20080312_PUBL.csv", delim(;)   

keep if cod_ense==110
keep if cod_grado==4
drop cod_ense cod_grado


destring prom_gral, replace dpcomma // never missing, ok 
gen not_retirado=0 if prom_gral==0   // a value of 0 indicates "retirados" students 
replace not_retirado=1 if prom_gral!=0 & prom_gral!=. 
gen female=1 if gen_alu==2
replace female=0 if gen_alu==1

gen M=1 if cod_depe==1 | cod_depe==2 | cod_depe==5
replace M=0 if M==. & cod_depe!=.
gen V=1 if cod_depe==3
replace V=0 if V==. & cod_depe!=.
gen U=1 if cod_depe==4
replace U=0 if U==. & cod_depe!=.

label var rural_rbd "1 means rural school"

* to generate age, keep the year from the DoB
gen yearbirth=int(fec_nac_alu/10000)
gen age=2005-yearbirth
replace age=. if age<7 | age>16

destring mrun, replace

drop if mrun==.
 

** dropping duplicates in terms of mrun. These are people who changed schools, class etc.
 
bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates

keep mrun rbd cod_reg_rbd cod_com_rbd rural_rbd let_cur prom_gral female M V U age prom_gral not_retirado

save "$cleaned/rendimiento_2007_cleaned.dta", replace




*----------------------------------------------------------------------------------------
*-----  MERGE RENDIMIENTO AND SIMCE 4o BASICO 2007 TO IMPUTE MISSING BASELINE SIMCE -----
*----------------------------------------------------------------------------------------


clear all
use "$cleaned/rendimiento_2007_cleaned.dta"

merge 1:1 mrun rbd let_cur using "$cleaned/simce_4o_2007_cleaned.dta"

bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates

 


** For those for whom simce is nonmissing, we keep the nonmissing simce. For those for whom simce is missing,
** we impute it using grade data we do imputations region by region, adding school fixed effects. 
 


* need at least STATA 15 MP to set matsize 10,000.
set matsize 10000
forval i=1(1)13 {
quietly areg avg_simce c.(prom_gral)#i.not_retirado i.not_retirado i.female i.age i.rbd  if _merge==3 & cod_reg_rbd==`i',absorb(rbd)
predict simce_avg_imputed_`i' if cod_reg_rbd==`i'
}


gen simce_avg=avg_simce
forval i=1(1)13 {
replace simce_avg=simce_avg_imputed_`i' if avg_simce==. & cod_reg_rbd==`i'
drop simce_avg_imputed_`i'
}

drop avg_simce



bysort mrun: gen temp=_n
bysort mrun: egen number_diplicates=max(temp)
drop if number_diplicates>1
drop temp number_diplicates


su simce_avg , d
gen simce_avg_st=(simce_avg-`r(mean)')/`r(sd)'
lab var simce_avg_st "Baseline simce score (standardized)"

drop if simce_avg_st==.

rename prom_gral GPA_4
replace GPA_4=. if GPA_4==0
label var GPA_4 "Baseline GPA"

 
keep rbd let_cur mrun idalumno codigo female simce_avg_st GPA_4 
label var codigo "Codigo Curso from simce dataset"

save "$cleaned/baseline_simce_2007", replace

 * remove the files no longer needed from disk
   capture noisily erase "$cleaned/rendimiento_2007_cleaned.dta"
   capture noisily erase "$cleaned/simce_4o_2007_cleaned.dta"






* Second part of do file cleans the following datasets, and saves them separately:
* simce students 8o basico 2009, simce students 8o basico 2011 = test score outcome



*---------------------------------
*-----  SIMCE 8o BASICO 2009 -----
*---------------------------------

* clean simce data
clear all 
insheet using "$dataconf/raw/2009 8b bbdd ptje estudiante.csv", delim(;)   

*mrun contains non-numeric characters, to see them:
* br mrun if missing(real(mrun))
 replace mrun="" if missing(real(mrun))
 destring mrun, replace
 drop if mrun==.


gen female=1 if genero=="M"
replace female=0 if genero=="H"

gen str let_cur=substr(curso, 4, 1)


destring ptje_lect, replace dpcomma
destring ptje_mat, replace dpcomma
destring ptje_soc, replace dpcomma
destring ptje_nat, replace dpcomma

keep rbd idalumno  codigo let_cur ptje_lect ptje_mat ptje_soc ptje_nat mrun female

save  "$cleaned/simce_8o_2009_cleaned.dta", replace


clear all

*---------------------------------
*-----  SIMCE 8o BASICO 2011 -----
*---------------------------------

* clean simce data

insheet using "$dataconf/raw/ALUM8VO_2011 mrun.csv", delim(";")   
destring mrun, replace
drop if mrun==.
replace ptje_lect="" if ptje_lect=="#NULL!"
replace ptje_mat="" if ptje_mat=="#NULL!"
replace ptje_soc="" if ptje_soc=="#NULL!"
replace ptje_nat="" if ptje_nat=="#NULL!"
destring ptje_lect, replace dpcomma
destring ptje_mat, replace dpcomma 
destring ptje_soc, replace dpcomma 
destring ptje_nat, replace dpcomma


gen female=1 if genero=="F"
replace female=0 if genero=="M"

*gen str let_cur=substr(curso, 4, 1) if curso!="8°LL"
*replace let_cur=substr(curso, 4, 2) if curso=="8°LL"
* keep only class letter (last character of curso)
gen str1 let_cur = substr(strtrim(curso), strlen(strtrim(curso)), 1)



keep rbd idalumno  codigo ptje_lect ptje_mat ptje_soc ptje_nat mrun female let_cur
 
save  "$cleaned/simce_8o_2011_cleaned.dta", replace


