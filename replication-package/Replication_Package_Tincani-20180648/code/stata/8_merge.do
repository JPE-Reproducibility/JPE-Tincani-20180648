// Author: Michela M. Tincani, UCL
// This version: March 2026

*Separately for 8th grade 2009 and 8th grade 2011, this file starts from the classroom roaster from rendimiento data and merges in:
*  SIMCE contemporaneous student outcomes, 8th grade
*  SIMCE contemporaneous student answers to survey, 8th grade
*  SIMCE contemporaneous parents variables, 8th grade 
*  SIMCE lagged baseline variables, 4th grade 
*  GPA lagged baseline variable, 4th grade 





*--------------------------
*   2011 = POST cohort
*-------------------------

* First, merge cross-sectionally SIMCE students to SIMCE parents in 2011 (using idalumno)
* Second, merge longitudinally baseline characteristics of parents (using idalumno) and save this merged SIMCE dataset. 
	use "$cleaned/simce_8o_2011_cleaned.dta"
	merge 1:1 idalumno using "$cleaned/endline_simce_cpad_2011"
	drop if _merge==2
	drop _merge
	
* merge in students' answers to surveys. 
    merge 1:1 idalumno  using "$cleaned/simce_calu_8o_2011_cleaned"
	drop if _merge==2 
	drop _merge 

** merge in longitudinally
	merge 1:1 idalumno using "$cleaned/baseline_simce_cpad_2007"
	drop if _merge==2
	drop _merge

	replace meduc = meduc_lagged if meduc==.
	replace feduc=feduc_lagged if feduc==.

	drop peduc
	gen peduc=(meduc+feduc)/2 if meduc!=. & feduc!=.
	replace peduc=meduc if feduc==. & meduc!=.
	replace peduc=feduc if feduc!=. & meduc==.

	drop meduc_lagged peduc_lagged feduc_lagged



* drop observations with problematic mrun and rbd (duplicates)
	bysort mrun rbd: gen replica=_N
	drop if replica>1
	drop replica
	* mrun and rbd are identifiers of this dataset. If a student moved across schools over time, we keep the observation that we see in the rendimiento dataset

save "$cleaned/simce_cpad2007_alucpad2011_cleaned_2023.dta", replace

clear all 
* Erase from disk files no longer needed 
capture noisily erase "$cleaned/simce_8o_2011_cleaned.dta"
capture noisily erase "$cleaned/endline_simce_cpad_2011.dta"
capture noisily erase "$cleaned/simce_calu_8o_2011_cleaned.dta"
capture noisily erase "$cleaned/baseline_simce_cpad_2007.dta"


clear all


* Start from rendimiento roaster, and merge in simce_cpad2007_alucpad2011_cleaned, then merge in baseline test scores using baseline SIMCE.
use "$cleaned/rendimiento_2011_cleaned.dta"

merge 1:1 rbd mrun using  "$cleaned/rendimiento_2010_cleaned.dta", keepusing(prom_gral_7_or_8)
drop if _merge==2 
drop _merge



** merge 8th grade data
merge 1:1 rbd mrun let_cur using "$cleaned/simce_cpad2007_alucpad2011_cleaned_2023.dta", keepusing(rbd idalumno codigo ptje_lect ptje_mat ptje_soc ptje_nat mrun female age_hh_head feduc meduc hhincome_lagged peduc effort_costly* do_difficult_hw* incomplete_notebooks* take_notes* )


label var let_cur "Class letter"
label var codigo "Class code"

* observations  only in SIMCE and not in rendimento -> these are students who changed school (classroom) mid-year. Drop them.
drop if _merge==2


drop _merge
tab female female_r, row
* there is very good correspondence between female from rendimiento dataset and female from simce dataset.
* drop female from simce.
drop female

** merge baseline simce test score data
merge 1:1 mrun using "$cleaned/baseline_simce_2007.dta", keepusing(female simce_avg_st GPA_4)

drop if _merge==2
gen missing_baseline_simce_GPA=1 if _merge==1
replace missing_baseline_simce_GPA=0 if _merge==3
drop _merge

tab female_r female // ok, good correspondence 
drop female


gen missing_income=1 if hhincome_lagged==.
replace missing_income=0 if hhincome_lagged!=.

gen missing_peduc=1 if peduc==.
replace missing_peduc=0 if peduc!=.

gen missing_age=1 if age_hh_head==.
replace missing_age=0 if age_hh_head!=.

drop idalumno

sort rbd let_cur mrun

order rbd let_cur mrun
gen peduc_2 = peduc*peduc
gen peduc_3=peduc_2*peduc
gen age_hh_head_2=age_hh_head*age_hh_head
gen age_hh_head_3=age_hh_head_2*age_hh_head

save "$cleaned/post_for_predict_2025", replace

clear all 
capture noisily erase "$cleaned/rendimiento_2011_cleaned.dta"
capture noisily erase "$cleaned/rendimiento_2010_cleaned.dta"
capture noisily erase "$cleaned/simce_cpad2007_alucpad2011_cleaned_2023.dta"
capture noisily erase "$cleaned/baseline_simce_2007.dta"


*--------------------------
*   2009 = PRE cohort
*-------------------------

* First, merge cross-sectionally SIMCE students to SIMCE parents in 2009 (using idalumno)
* Second, merge longitudinally baseline characteristics of parents (using idalumno) and save this merged SIMCE dataset.  
    clear all 
	use "$cleaned/simce_8o_2009_cleaned.dta"
	merge 1:1 idalumno using "$cleaned/endline_simce_cpad_2009"
	drop if _merge==2
	drop _merge
	
	* merge in students' answers to surveys. 
    merge 1:1 idalumno  using "$cleaned/simce_calu_8o_2009_cleaned"
	drop if _merge==2 
	drop _merge 


** merge in longitudinally
	merge 1:1 idalumno using "$cleaned/baseline_simce_cpad_2005"
	drop if _merge==2
	drop _merge

	replace meduc = meduc_lagged if meduc==.
	replace feduc=feduc_lagged if feduc==.

	drop peduc
	gen peduc=(meduc+feduc)/2 if meduc!=. & feduc!=.
	replace peduc=meduc if feduc==. & meduc!=.
	replace peduc=feduc if feduc!=. & meduc==.

	drop meduc_lagged peduc_lagged feduc_lagged



* drop observations with problematic mrun and rbd (duplicates)
	bysort mrun rbd: gen replica=_N
	drop if replica>1
	drop replica
	* mrun and rbd are identifiers of this dataset. If a student moved across schools over time, we keep the observation that we see in the rendimiento dataset

save "$cleaned/simce_cpad2005_alucpad2009_cleaned_2023.dta", replace




clear all

* Erase from disk files no longer needed 
capture noisily erase "$cleaned/simce_8o_2009_cleaned.dta"
capture noisily erase "$cleaned/endline_simce_cpad_2009.dta"
capture noisily erase "$cleaned/simce_calu_8o_2009_cleaned.dta"
capture noisily erase "$cleaned/baseline_simce_cpad_2005.dta"


* Start from rendimiento roaster, and merge in simce_cpad2005_alucpad2009_cleaned, then merge in baseline test scores using baseline SIMCE.
use "$cleaned/rendimiento_2009_cleaned.dta"

merge 1:1 rbd mrun using  "$cleaned/rendimiento_2008_cleaned.dta", keepusing(prom_gral_7_or_8)
drop if _merge==2 
drop _merge



** merge 8th grade data
merge 1:1 rbd mrun let_cur using "$cleaned/simce_cpad2005_alucpad2009_cleaned_2023.dta", keepusing(rbd idalumno codigo ptje_lect ptje_mat ptje_soc ptje_nat mrun female age_hh_head feduc meduc peduc hhincome_lagged  effort_costly* do_difficult_hw* incomplete_notebooks* take_notes* )


label var let_cur "Class letter"
label var codigo "Class code"

* observations only in SIMCE and not in rendimento -> these are students who changed classroom mid-year. Drop them.
drop if _merge==2


drop _merge
tab female female_r, row // ok, good correspondence 
drop female

** merge baseline simce test score data
merge 1:1 mrun using "$cleaned/baseline_simce_2005.dta", keepusing(female simce_avg_st GPA_4)

drop if _merge==2
gen missing_baseline_simce_GPA=1 if _merge==1
replace missing_baseline_simce_GPA=0 if _merge==3
drop _merge

tab female_r female, cell // ok, good correspondence
drop female


gen missing_income=1 if hhincome_lagged==.
replace missing_income=0 if hhincome_lagged!=.

gen missing_peduc=1 if peduc==.
replace missing_peduc=0 if peduc!=.

gen missing_age=1 if age_hh_head==.
replace missing_age=0 if age_hh_head!=.

drop idalumno

sort rbd let_cur mrun

order rbd let_cur mrun
gen peduc_2 = peduc*peduc
gen peduc_3=peduc_2*peduc
gen age_hh_head_2=age_hh_head*age_hh_head
gen age_hh_head_3=age_hh_head_2*age_hh_head

save "$cleaned/pre_for_predict_2025", replace


capture noisily erase "$cleaned/rendimiento_2009_cleaned.dta"
capture noisily erase "$cleaned/rendimiento_2008_cleaned.dta"
capture noisily erase "$cleaned/simce_cpad2005_alucpad2009_cleaned_2023.dta"
capture noisily erase "$cleaned/baseline_simce_2005.dta"



