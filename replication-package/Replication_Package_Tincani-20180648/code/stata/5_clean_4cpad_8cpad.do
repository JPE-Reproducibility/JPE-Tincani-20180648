// Author: Michela M. Tincani, UCL
// This version: March 2026

* The first part of this do file cleans the parental questionnaire for fourth graders, to build the baseline family characteristics
* Cohort PRE: 4th grade 2005
* Cohort POST: 4th grade 2007



*---------------------------------
*-----  SIMCE 4o BASICO 2007 -----
*---------------------------------

* clean simce data
import excel using "$dataconf/raw/2007 4b bbdd cpadres.xlsx", firstrow clear // .csv copy reported in package

bysort IDALUMNO: gen order=_n
bysort IDALUMNO: egen max_order=max(order)
drop if max_order>1 & max_order!=.
drop order max_order
 

* father's education: P6
gen feduc=0 if P6=="02"
replace feduc=1 if P6=="03"
replace feduc=2 if P6=="04"
replace feduc=3 if P6=="05"
replace feduc=4 if P6=="06"
replace feduc=5 if P6=="07"
replace feduc=6 if P6=="08"
replace feduc=7 if P6=="09"
replace feduc=8 if P6=="10"
replace feduc=9 if P6=="11"
replace feduc=10 if P6=="12"
replace feduc=11 if P6=="13"
replace feduc=12 if P6=="14"
replace feduc=12 if P6=="15"
replace feduc=13 if P6=="16"
replace feduc=15 if P6=="17"
replace feduc=15 if P6=="18"
replace feduc=17 if P6=="19"
replace feduc=18 if P6=="20"
replace feduc=20 if P6=="21"


* mother's education: P7
gen meduc=0 if P7=="02"
replace meduc=1 if P7=="03"
replace meduc=2 if P7=="04"
replace meduc=3 if P7=="05"
replace meduc=4 if P7=="06"
replace meduc=5 if P7=="07"
replace meduc=6 if P7=="08"
replace meduc=7 if P7=="09"
replace meduc=8 if P7=="10"
replace meduc=9 if P7=="11"
replace meduc=10 if P7=="12"
replace meduc=11 if P7=="13"
replace meduc=12 if P7=="14"
replace meduc=12 if P7=="15"
replace meduc=13 if P7=="16"
replace meduc=15 if P7=="17"
replace meduc=15 if P7=="18"
replace meduc=17 if P7=="19"
replace meduc=18 if P7=="20"
replace meduc=20 if P7=="21"

gen peduc=meduc if meduc!=. & feduc==.
replace peduc=feduc if feduc!=. & meduc==.
replace peduc=(meduc+feduc)/2 if meduc!=. & feduc!=.

label var peduc "Average of mother's and father's education(yrs)"
label var meduc "Mother's educ (yrs)"
label var feduc "Father's educ (yrs)"

* household income: p8
gen hhincome=50000 if P8=="01"
replace hhincome=150000 if P8=="02"
replace hhincome=250000 if P8=="03"
replace hhincome=350000 if P8=="04"
replace hhincome=450000 if P8=="05"
replace hhincome=550000 if P8=="06"
replace hhincome=700000 if P8=="07"
replace hhincome=900000 if P8=="08"
replace hhincome=1100000 if P8=="09"
replace hhincome=1300000 if P8=="10"
replace hhincome=1500000 if P8=="11"
replace hhincome=1700000 if P8=="12"
replace hhincome=1900000 if P8=="13"
label variable hhincome "household income per month in CLP"

rename IDALUMNO idalumno
keep idalumno meduc feduc peduc hhincome

rename meduc meduc_lagged 
rename feduc feduc_lagged
rename peduc peduc_lagged
rename hhincome hhincome_lagged

save "$cleaned/baseline_simce_cpad_2007", replace




*---------------------------------
*-----  SIMCE 4o BASICO 2005 -----
*---------------------------------
* 
clear all
import excel using "$dataconf/raw/SIMCE_4B_2005_CPADRES.xlsx", firstrow clear // .csv copy reported in package


bysort idalumno: gen order=_n
bysort idalumno: egen max_order=max(order)
drop if max_order>1 & max_order!=.
drop order max_order

* father's education: P6
gen feduc=0 if cpad_p07==0
replace feduc=1 if cpad_p07==1
replace feduc=2 if cpad_p07==2
replace feduc=3 if cpad_p07==3
replace feduc=4 if cpad_p07==4
replace feduc=5 if cpad_p07==5
replace feduc=6 if cpad_p07==6
replace feduc=7 if cpad_p07==7
replace feduc=8 if cpad_p07==8
replace feduc=9 if cpad_p07==9
replace feduc=10 if cpad_p07==10
replace feduc=11 if cpad_p07==11
replace feduc=12 if cpad_p07==12
replace feduc=12 if cpad_p07==13
replace feduc=13 if cpad_p07==14
replace feduc=15 if cpad_p07==15
replace feduc=15 if cpad_p07==16
replace feduc=17 if cpad_p07==17
replace feduc=18 if cpad_p07==18
replace feduc=20 if cpad_p07==19


* mother's education: P8
gen meduc=0 if cpad_p08==0
replace meduc=1 if cpad_p08==1
replace meduc=2 if cpad_p08==2
replace meduc=3 if cpad_p08==3
replace meduc=4 if cpad_p08==4
replace meduc=5 if cpad_p08==5
replace meduc=6 if cpad_p08==6
replace meduc=7 if cpad_p08==7
replace meduc=8 if cpad_p08==8
replace meduc=9 if cpad_p08==9
replace meduc=10 if cpad_p08==10
replace meduc=11 if cpad_p08==11
replace meduc=12 if cpad_p08==12
replace meduc=12 if cpad_p08==13
replace meduc=13 if cpad_p08==14
replace meduc=15 if cpad_p08==15
replace meduc=15 if cpad_p08==16
replace meduc=17 if cpad_p08==17
replace meduc=18 if cpad_p08==18
replace meduc=20 if cpad_p08==19

gen peduc=meduc if meduc!=. & feduc==.
replace peduc=feduc if feduc!=. & meduc==.
replace peduc=(meduc+feduc)/2 if meduc!=. & feduc!=.

label var peduc "Average of mother's and father's education(yrs)"
label var meduc "Mother's educ (yrs)"
label var feduc "Father's educ (yrs)"



* household income: p12
gen hhincome=50000 if cpad_p12==0
replace hhincome=150000 if cpad_p12==1
replace hhincome=250000 if cpad_p12==2
replace hhincome=350000 if cpad_p12==3
replace hhincome=450000 if cpad_p12==4
replace hhincome=550000 if cpad_p12==5
replace hhincome=700000 if cpad_p12==6
replace hhincome=900000 if cpad_p12==7
replace hhincome=1100000 if cpad_p12==8
replace hhincome=1300000 if cpad_p12==9
replace hhincome=1500000 if cpad_p12==10
replace hhincome=1700000 if cpad_p12==11
replace hhincome=1900000 if cpad_p12==12
label variable hhincome "household income per month in CLP"

keep idalumno meduc feduc peduc hhincome
rename meduc meduc_lagged 
rename feduc feduc_lagged
rename peduc peduc_lagged
rename hhincome hhincome_lagged

save "$cleaned/baseline_simce_cpad_2005", replace




* The second part of this do file cleans the following datasets, and saves them separately:
* simce parents 8o basico 2009, simce parents 8o basico 2011 = parental education variables, will be needed for students for whom parental education not available in 4th grade data


*---------------------------------
*-----  SIMCE 8o BASICO 2011 -----
*---------------------------------

* clean simce data
clear all
import excel using "$dataconf/raw/CPA8VO.xlsx", firstrow clear // .csv copy reported in package

rename IDALUMNO idalumno
isid idalumno

gen age_hh_head=P02
replace age_hh_head=. if P02==0
replace age_hh_head=. if P02<29

* father's education: p08_1 to p08_21
gen feduc=0 if P08_1==1
replace feduc=1 if P08_2==1
replace feduc=2 if P08_3==1
replace feduc=3 if P08_4==1
replace feduc=4 if P08_5==1
replace feduc=5 if P08_6==1
replace feduc=6 if P08_7==1
replace feduc=7 if P08_8==1
replace feduc=8 if P08_9==1
replace feduc=9 if P08_10==1
replace feduc=10 if P08_11==1
replace feduc=11 if P08_12==1
replace feduc=12 if P08_13==1
replace feduc=12 if P08_14==1
replace feduc=13 if P08_15==1
replace feduc=15 if P08_16==1
replace feduc=15 if P08_17==1
replace feduc=17 if P08_18==1
replace feduc=18 if P08_19==1
replace feduc=20 if P08_20==1


* mother's education: P09
gen meduc=0 if P09_1==1
replace meduc=1 if P09_2==1
replace meduc=2 if P09_3==1
replace meduc=3 if P09_4==1
replace meduc=4 if P09_5==1
replace meduc=5 if P09_6==1
replace meduc=6 if P09_7==1
replace meduc=7 if P09_8==1
replace meduc=8 if P09_9==1
replace meduc=9 if P09_10==1
replace meduc=10 if P09_11==1
replace meduc=11 if P09_12==1
replace meduc=12 if P09_13==1
replace meduc=12 if P09_14==1
replace meduc=13 if P09_15==1
replace meduc=15 if P09_16==1
replace meduc=15 if P09_17==1
replace meduc=17 if P09_18==1
replace meduc=18 if P09_19==1
replace meduc=20 if P09_20==1

gen peduc=meduc if meduc!=. & feduc==.
replace peduc=feduc if feduc!=. & meduc==.
replace peduc=(meduc+feduc)/2 if meduc!=. & feduc!=.

label var peduc "Average of mother's and father's education(yrs)"
label var meduc "Mother's educ (yrs)"
label var feduc "Father's educ (yrs)"

*head of household age (= person who fills in form, assume it's the head of household)
keep idalumno peduc meduc feduc age_hh_head

save "$cleaned/endline_simce_cpad_2011", replace


*---------------------------------
*-----  SIMCE 8o BASICO 2009 -----
*---------------------------------
clear all

import delimited using "$dataconf/raw/2009 8b bbdd cpadres.csv", delimiter(";") varnames(1)  // First downloaded at 07/09/2011 at 12.59

 keep idalumno p02 p09p_1- p09m_21
 generate str idalumno_temp = substr(idalumno, 1, strlen(idalumno) - 6)
 destring idalumno_temp , replace
 drop idalumno
 rename idalumno_temp idalumno
 
 generate str age_temp = substr(p02, 1, strlen(p02) - 6)
 destring age_temp, replace
 rename age_temp age_hh_head
 drop p02
 

replace age_hh_head=. if age_hh_head<29
 
 
 * father's education: p09p_1 to p09p_20
gen feduc=0 if p09p_1 =="1,00000"
replace feduc=1 if p09p_2=="1,00000"
replace feduc=2 if p09p_3=="1,00000"
replace feduc=3 if p09p_4=="1,00000"
replace feduc=4 if p09p_5=="1,00000"
replace feduc=5 if p09p_6=="1,00000"
replace feduc=6 if p09p_7=="1,00000"
replace feduc=7 if p09p_8=="1,00000"
replace feduc=8 if p09p_9=="1,00000"
replace feduc=9 if p09p_10=="1,00000"
replace feduc=10 if p09p_11=="1,00000"
replace feduc=11 if p09p_12=="1,00000"
replace feduc=12 if p09p_13=="1,00000"
replace feduc=12 if p09p_14=="1,00000"
replace feduc=13 if p09p_15=="1,00000"
replace feduc=15 if p09p_16=="1,00000"
replace feduc=15 if p09p_17=="1,00000"
replace feduc=17 if p09p_18=="1,00000"
replace feduc=18 if p09p_19=="1,00000"
replace feduc=20 if p09p_20=="1,00000"


* mother's education: P09m_1 to p09m_20
gen meduc=0 if p09m_1=="1,00000"
replace meduc=1 if p09m_2=="1,00000"
replace meduc=2 if p09m_3=="1,00000"
replace meduc=3 if p09m_4=="1,00000"
replace meduc=4 if p09m_5=="1,00000"
replace meduc=5 if p09m_6=="1,00000"
replace meduc=6 if p09m_7=="1,00000"
replace meduc=7 if p09m_8=="1,00000"
replace meduc=8 if p09m_9=="1,00000"
replace meduc=9 if p09m_10=="1,00000"
replace meduc=10 if p09m_11=="1,00000"
replace meduc=11 if p09m_12=="1,00000"
replace meduc=12 if p09m_13=="1,00000"
replace meduc=12 if p09m_14=="1,00000"
replace meduc=13 if p09m_15=="1,00000"
replace meduc=15 if p09m_16=="1,00000"
replace meduc=15 if p09m_17=="1,00000"
replace meduc=17 if p09m_18=="1,00000"
replace meduc=18 if p09m_19=="1,00000"
replace meduc=20 if p09m_20=="1,00000"

gen peduc=meduc if meduc!=. & feduc==.
replace peduc=feduc if feduc!=. & meduc==.
replace peduc=(meduc+feduc)/2 if meduc!=. & feduc!=.

label var peduc "Average of mother's and father's education(yrs)"
label var meduc "Mother's educ (yrs)"
label var feduc "Father's educ (yrs)"

keep idalumno peduc meduc feduc age_hh_head

save "$cleaned/endline_simce_cpad_2009", replace



 
 








