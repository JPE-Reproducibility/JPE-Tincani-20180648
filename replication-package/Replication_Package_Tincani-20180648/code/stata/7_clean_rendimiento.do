// Author: Michela M. Tincani, UCL
// This version: March 2026

* ===========================================================================================

* First part of do file: clean rendimiento datasets for the 7th grade in 2010 and in 2009,
*                        so we can analyze whether classroom formation responded

* ===========================================================================================



* Open rendimiento data for 7th grade 2010 and 7th grade 2008



*----------------------------
*   7 grade 2010 
*----------------------------
clear all
insheet using "$dataconf/raw/Rendimiento por estudiante 2010.csv", delim(";")  

** keep only students in 7th grade basico
keep if cod_ense==110 & (cod_grado==7 | cod_grado==8)


keep rbd  mrun prom_gral cod_grado 
destring prom_gral, replace dpcomma

drop if prom_gral==0
* these are "estudiantes retirados", not in that school anymore.

rename prom_gral prom_gral_7_or_8 // these are students in 7th or 8th grade in 2010


save $cleaned/rendimiento_2010_cleaned.dta, replace


*----------------------------
*   7 grade 2008
*----------------------------

clear all
insheet using "$dataconf/raw/Rendimiento por estudiante 2008.csv", delim(";")  

** keep only students in 7th grade or 8th grade  basico

keep if cod_ense==110 & (cod_grado==7 | cod_grado==8)


keep mrun rbd prom_gral cod_grado
destring prom_gral, replace dpcomma

drop if prom_gral==0
* these are "estudiantes retirados", not in that school anymore.

rename prom_gral prom_gral_7_or_8

destring mrun, replace
drop if mrun==. 

save $cleaned/rendimiento_2008_cleaned.dta, replace



* ===========================================================================================

* Second part of do file: obtain from rendmiento 2009 and 2011 data on classroom roasters and 
*                         geographic variables of all students in all classrooms in the country
*                         also generate info about school type (M, V, U)

* ===========================================================================================


*----------------------------
*   8 grade 2011 
*----------------------------

clear all
insheet using $dataconf/raw/20130301_Rendimiento_2011_20120416_PUBL.csv, delim(";")   

** keep only students in 8th grade basico

keep if cod_ense==110 & cod_grado==8

gen M=1 if cod_depe==1 | cod_depe==2 | cod_depe==5
replace M=0 if M==.

gen V=1 if cod_depe==3
replace V=0 if V==.

gen U=1 if cod_depe==4
replace U=0 if U==.

gen female_r=1 if gen_alu ==2
replace female_r=0 if gen_alu==1

destring prom_gral, replace dpcomma

drop if prom_gral==0
* these are "estudiantes retirados", not in that school anymore.

* add region code for home
rename cod_com_alu cod_com
merge m:1 cod_com using $cleaned/town_region_codes.dta
drop if _merge==2
rename cod_reg cod_reg_alu
rename cod_com cod_com_alu
* issue: some towns may be missing in using dataset because it only includes towns with schools. If so: find name of town and manually add region.
tab nom_com_alu cod_com_alu if _merge==1
* missing towns: Limache, Olmu, Quilpu, Villa Alemana
replace cod_reg_alu=5 if cod_com_alu==5802
replace cod_reg_alu=5 if cod_com_alu==5803
replace cod_reg_alu=5 if cod_com_alu==5801
replace cod_reg_alu=5 if cod_com_alu==5804
drop _merge
keep rbd cod_reg_rbd cod_com_rbd rural_rbd let_cur mrun cod_com_alu cod_reg_alu prom_gral  M V U female_r



bysort rbd let_cur: gen class_size_r=_N

label var class_size_r "Class size using rendimento roaster"
label var female_r "Gender from rendimiento"

* mrun is not unique identifier: there are 4 students who are observed in 2 schools, likely they changed school mid-year. Drop.
bysort mrun: gen order=_n
bysort mrun: egen max_order=max(order)
drop if max_order==2
drop order max_order

save $cleaned/rendimiento_2011_cleaned.dta, replace

*--------------------------------------
*    8 grade 2009
*--------------------------------------

clear all

insheet using $dataconf/raw/20130227_Rendimiento_2009_20100715_PUBL.csv, delim(";")  

keep if cod_ense==110 & cod_grado==8

gen M=1 if cod_depe==1 | cod_depe==2 | cod_depe==5
replace M=0 if M==.

gen V=1 if cod_depe==3
replace V=0 if V==.

gen U=1 if cod_depe==4
replace U=0 if U==.

gen female_r=1 if gen_alu ==2
replace female_r=0 if gen_alu==1

destring prom_gral, replace dpcomma

drop if prom_gral==0
* these are "estudiantes retirados", not in that school anymore.

* add region code for home
rename cod_com_alu cod_com
merge m:1 cod_com using $cleaned/town_region_codes.dta
rename cod_reg cod_reg_alu
rename cod_com cod_com_alu
drop if _merge==2

keep rbd cod_reg_rbd cod_com_rbd rural_rbd let_cur mrun cod_com_alu cod_reg_alu prom_gral  M V U female_r

bysort rbd let_cur: gen class_size_r=_N

label var class_size_r "Class size using rendimento roaster"
label var female_r "Gender from rendimiento"

* mrun is not unique identifier: there are 12 students who are observed in 2 schools, likely they changed school mid-year. Drop.
bysort mrun: gen order=_n
bysort mrun: egen max_order=max(order)
drop if max_order==2
drop order max_order

save $cleaned/rendimiento_2009_cleaned.dta, replace

