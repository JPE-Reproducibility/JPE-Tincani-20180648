// Author: Michela M. Tincani, UCL
// This version: March 2026

* This dataset creates the variables needed for the analyses.




clear all 
use "$cleaned/post_for_predict_2025", clear
merge  1:1 mrun using "$cleaned/post_for_predict_class_low_all.dta"
drop _merge
merge  1:1 mrun using "$cleaned/post_for_predict_class_medium_all.dta"

drop _merge
merge  1:1 mrun using "$cleaned/post_for_predict_class_high_all.dta"

drop _merge



** merge in distance from asperity to build measure of MSK intensity
merge m:1 cod_com_alu using $data/raw/stud_com_dist.dta , keepusing(distance_asperity earth_region nom_com_alu) // .csv version saved in replication package
 
drop if _merge==2 


* Replace distance asperity (from google maps) for towns not in dataset 
replace distance_asperity=222 if cod_com_alu==5801
replace distance_asperity=234 if cod_com_alu==5802
replace distance_asperity=239 if cod_com_alu==5803
replace distance_asperity=224 if cod_com_alu==5804

replace earth_region=1 if cod_reg_alu==5 

drop _merge

gen earth_region_rbd=1 if cod_reg_rbd==5 | cod_reg_rbd==6 | cod_reg_rbd==7 | cod_reg_rbd==8 | cod_reg_rbd==9 | cod_reg_rbd==13
replace earth_region_rbd=0 if cod_reg_rbd==1 | cod_reg_rbd==2 | cod_reg_rbd==3 | cod_reg_rbd==4 | cod_reg_rbd==10 | cod_reg_rbd==11 | cod_reg_rbd==12 | cod_reg_rbd==14 | cod_reg_rbd==15


* generate measure of adjusted distance that takes into account depth of asperity. See Astroza et. al 2012 paper.

gen adjusted_distance=sqrt((distance_asperity^2)+20^2) if earth_region==1
replace adjusted_distance=-99 if adjusted_distance==.

** apply the intensity attenuation formula for adjusted distances between 0 and 600. Assign intensity 0 if distance above 600.
gen log_adj_dis=log10(adjusted_distance) if adjusted_distance!=-99
gen intensity_alu=19.781-5.927*log_adj_dis+0.00087*adjusted_distance if adjusted_distance>=0 & adjusted_distance<=600

** generate intensity categories, to be used to calculate damage 
gen intensity_alu_cat=5 if intensity_alu>=4.5 & intensity_alu<5.5
replace intensity_alu_cat=6 if intensity_alu>=5.5 & intensity_alu<6.5
replace intensity_alu_cat=7 if intensity_alu>=6.5 & intensity_alu<7.5
replace intensity_alu_cat=8 if intensity_alu>=7.5 & intensity_alu<8.5
replace intensity_alu_cat=9 if intensity_alu>=8.5 & intensity_alu<9.5

* use actual (not predicted) categories when MSK was directly measured (from Astroza et al Table 3)
replace intensity_alu_cat=8 if nom_com_alu=="CAUQUENES"
replace intensity_alu_cat=8 if nom_com_alu=="PARRAL"
replace intensity_alu_cat=7 if nom_com_alu=="COINCO"
replace intensity_alu_cat=7 if cod_com_alu==8101
replace intensity_alu_cat=7 if nom_com_alu=="LITUECHE"
replace intensity_alu_cat=7 if nom_com_alu=="MACHALI"
replace intensity_alu_cat=7 if nom_com_alu=="RAUCO"
replace intensity_alu_cat=7 if cod_com_alu==7302
replace intensity_alu_cat=7 if nom_com_alu=="PENCAHUE"
replace intensity_alu_cat=7 if nom_com_alu=="EMPEDRADO"
replace intensity_alu_cat=7 if nom_com_alu=="SAN CARLOS"
replace intensity_alu_cat=7 if cod_com_alu==8413
replace intensity_alu_cat=7 if nom_com_alu=="BULNES"
replace intensity_alu_cat=7 if nom_com_alu=="PENCO"
replace intensity_alu_cat=7 if cod_com_alu==8111
replace intensity_alu_cat=7 if nom_com_alu=="FLORIDA"
replace intensity_alu_cat=7 if nom_com_alu=="LOTA"
replace intensity_alu_cat=7 if nom_com_alu=="SANTIAGO"
replace intensity_alu_cat=6 if cod_com_alu==8301
replace intensity_alu_cat=6 if nom_com_alu=="ANGOL"
replace intensity_alu_cat=6 if nom_com_alu=="SAN ANTONIO"
replace intensity_alu_cat=6 if nom_com_alu=="LAS CABRAS"
replace intensity_alu_cat=6 if nom_com_alu=="REQUINOA"
replace intensity_alu_cat=6 if nom_com_alu=="CHIMBARONGO"
replace intensity_alu_cat=6 if nom_com_alu=="ROMERAL"
replace intensity_alu_cat=6 if nom_com_alu=="YERBAS BUENAS"
replace intensity_alu_cat=6 if nom_com_alu=="SAN IGNACIO"
replace intensity_alu_cat=6 if nom_com_alu=="CURANILAHUE"
replace intensity_alu_cat=6 if nom_com_alu=="NACIMIENTO"
replace intensity_alu_cat=6 if nom_com_alu=="LEBU"



* Rename using class names from damage ratio formula 

* high  vulnerability  cat A (adobe)  
* low vulnerability -- C or D (reinforced masonry)
* medium vulnerability cat B (unreinforced masonry)   

rename cpr_high_hat cprA_hat
rename cpr_low_hat cprCD_hat
rename cpr_medium_hat  cprB_hat



replace cprB_hat=0 if cprB_hat<0
replace cprB_hat=1 if cprB_hat>1 & cprB_hat!=.
replace cprA_hat=0 if cprA_hat<0
replace cprA_hat=1 if cprA_hat>1 & cprA_hat!=.
replace cprCD_hat=0 if cprCD_hat<0
replace cprCD_hat=1 if cprCD_hat>1 & cprCD_hat!=.


/*
Calculate expected damages: 
Use damage conditional on vulnerability class, then take expectation between 3 building classes using predicted building class probability for the education dataset.
Use  assumed damage ratios from Bommer et al 2002

*/


gen exp_reconstruction_alu_lca=0  if earth_region==0
replace exp_reconstruction_alu_lca=0 if peduc!=. & age_hh_head!=. & earth_region==1
replace exp_reconstruction_alu_lca= cprA_hat*0.001 if intensity_alu_cat==5 
replace exp_reconstruction_alu_lca=cprA_hat*0.011+cprB_hat*0.001 if intensity_alu_cat==6  
replace exp_reconstruction_alu_lca=cprA_hat*0.084 + cprB_hat*0.017+cprCD_hat*0.0055 if intensity_alu_cat==7 
replace exp_reconstruction_alu_lca=cprA_hat*0.337 + cprB_hat*0.084+cprCD_hat*0.0165 if intensity_alu_cat==8  	 
replace exp_reconstruction_alu_lca=cprA_hat*0.69 + cprB_hat*0.337+cprCD_hat*0.053 if intensity_alu_cat==9
replace exp_reconstruction_alu_lca=0 if earth_region==0 & earth_region_rbd==1 // 0 changes

log using "$output/in_text_numbers/Section_2_1.txt", replace text
/*
Footnote 10: students from private unsubsidized schools represent approximately 7% of the student ppulation
* current sample in memory: post-earthquake cohort
* variable U identifies students enrolled in private unsubsidized schools
*/

tab U
** eliminate from sample U schools (private unsubsidized)
drop if U==1
drop U

log off

** eliminate from sample schools that collapsed, and schools that received students who were relocated from collapsed schools.

preserve
insheet using $data/raw/EE_cerr_201011.csv, clear
save $trash/displ_stud_rbd_to2011.dta, replace
restore 
merge m:1 rbd using $trash/displ_stud_rbd_to2011    
drop if _merge==2

gen relocated_student=1 if _merge==3
replace relocated_student=0 if _merge==1 
log on
/*
Footnote 11: I dropped 36,941 observations from the post-earthquake cohort.
Sample in memory: post-earthquake cohort
Variable relocated_student identifies students who were relocated from collapsed schools to other schools.
*/

tab relocated_student 

log off

drop relocated_student

drop if _merge==3
drop _merge

log on
/*
Footnote 12: These are 17,944 observations in the post-earthquake cohort
Dataset in memory: post-earthquake cohort
Classroom identifier: codigo
*/
count if codigo==.

log off

** get rid of schools with missing class id
drop if codigo==.


* normalise damages among all students who are in schools that are in earthquake regions
egen st_exp_reconstruction_alu_lca=std(exp_reconstruction_alu_lca) if earth_region_rbd==1


** standardise simce outcome variables
gen simce_8=(ptje_mat+ptje_lect)/2 if ptje_lect!=. & ptje_mat!=.
replace simce_8=ptje_mat if ptje_lect==. & ptje_mat!=.
replace simce_8=ptje_lect if ptje_lect!=. & ptje_mat==.
egen avg_simce_8_std=std(simce_8)
drop simce_8

egen simce_math_std=std(ptje_mat)
egen simce_span_std=std(ptje_lect)


** standardize GPA outcome variables
egen GPA_std=std(prom_gral)
gen GPA_7_8=(prom_gral+prom_gral_7_or_8)/2 
replace GPA_7_8=prom_gral if prom_gral!=. & prom_gral_7_or_8==.
egen GPA_7_8_std=std(GPA_7_8)

gen same_town_school=1 if cod_com_alu ==cod_com_rbd
replace same_town_school=0 if cod_com_alu!=cod_com_rbd

label var st_exp_reconstruction_alu_lca "Standardized expected damage (percentage of home damaged)"
label var peduc "Parental education (years)"
label var female_r "Female student"
label var M "Public school"
label var age_hh_head "Age of parent-respondent"
label var simce_math_std "Standardized 8th grade mathematics score"
label var simce_span_std "Standardized 8th grade Spanish score"
label var avg_simce_8_std "Standardized 8th grade average score"
label var same_town_school "Student resides in same town as school's"
label var GPA_std "Standardized 8th grade GPA"

save "$cleaned/post_cpad_alu_all", replace

clear all






clear all
use "$cleaned/pre_for_predict_2025", clear



merge  1:1 mrun using "$cleaned/pre_for_predict_class_low_all.dta"

drop _merge
merge  1:1 mrun using "$cleaned/pre_for_predict_class_medium_all.dta"

drop _merge

merge  1:1 mrun using "$cleaned/pre_for_predict_class_high_all.dta"

drop _merge


** merge in geographic variables 
merge m:1 cod_com_alu using $data/raw/stud_com_dist.dta , keepusing(distance_asperity earth_region nom_com_alu)  // .csv version saved in replication package
drop if _merge==2 
drop _merge 


gen earth_region_rbd=1 if cod_reg_rbd==5 | cod_reg_rbd==6 | cod_reg_rbd==7 | cod_reg_rbd==8 | cod_reg_rbd==9 | cod_reg_rbd==13
replace earth_region_rbd=0 if cod_reg_rbd==1 | cod_reg_rbd==2 | cod_reg_rbd==3 | cod_reg_rbd==4 | cod_reg_rbd==10 | cod_reg_rbd==11 | cod_reg_rbd==12 | cod_reg_rbd==14 | cod_reg_rbd==15




* generate measure of adjusted distance that takes into account depth of asperity (see Astroza et al. 2012)

gen adjusted_distance=sqrt((distance_asperity^2)+20^2) if earth_region==1
replace adjusted_distance=-99 if adjusted_distance==.

** apply the intensity attenuation formula for adjusted distances between 0 and 600. Assign intensity 0 if distance above 600.
gen log_adj_dis=log10(adjusted_distance) if adjusted_distance!=-99
gen intensity_alu=19.781-5.927*log_adj_dis+0.00087*adjusted_distance if adjusted_distance>=0 & adjusted_distance<=600

** generate intensity categories, to be used to calculate damage.

gen intensity_alu_cat=5 if intensity_alu>=4.5 & intensity_alu<5.5
replace intensity_alu_cat=6 if intensity_alu>=5.5 & intensity_alu<6.5
replace intensity_alu_cat=7 if intensity_alu>=6.5 & intensity_alu<7.5
replace intensity_alu_cat=8 if intensity_alu>=7.5 & intensity_alu<8.5
replace intensity_alu_cat=9 if intensity_alu>=8.5 & intensity_alu<9.5


replace intensity_alu_cat=8 if nom_com_alu=="CAUQUENES"
replace intensity_alu_cat=8 if nom_com_alu=="PARRAL"
replace intensity_alu_cat=7 if nom_com_alu=="COINCO"
replace intensity_alu_cat=7 if cod_com_alu==8101
replace intensity_alu_cat=7 if nom_com_alu=="LITUECHE"
replace intensity_alu_cat=7 if nom_com_alu=="MACHALI"
replace intensity_alu_cat=7 if nom_com_alu=="RAUCO"
replace intensity_alu_cat=7 if cod_com_alu==7302
replace intensity_alu_cat=7 if nom_com_alu=="PENCAHUE"
replace intensity_alu_cat=7 if nom_com_alu=="EMPEDRADO"
replace intensity_alu_cat=7 if nom_com_alu=="SAN CARLOS"
replace intensity_alu_cat=7 if cod_com_alu==8413
replace intensity_alu_cat=7 if nom_com_alu=="BULNES"
replace intensity_alu_cat=7 if nom_com_alu=="PENCO"
replace intensity_alu_cat=7 if cod_com_alu==8111
replace intensity_alu_cat=7 if nom_com_alu=="FLORIDA"
replace intensity_alu_cat=7 if nom_com_alu=="LOTA"
replace intensity_alu_cat=7 if nom_com_alu=="SANTIAGO"
replace intensity_alu_cat=6 if cod_com_alu==8301
replace intensity_alu_cat=6 if nom_com_alu=="ANGOL"
replace intensity_alu_cat=6 if nom_com_alu=="SAN ANTONIO"
replace intensity_alu_cat=6 if nom_com_alu=="LAS CABRAS"
replace intensity_alu_cat=6 if nom_com_alu=="REQUINOA"
replace intensity_alu_cat=6 if nom_com_alu=="CHIMBARONGO"
replace intensity_alu_cat=6 if nom_com_alu=="ROMERAL"
replace intensity_alu_cat=6 if nom_com_alu=="YERBAS BUENAS"
replace intensity_alu_cat=6 if nom_com_alu=="SAN IGNACIO"
replace intensity_alu_cat=6 if nom_com_alu=="CURANILAHUE"
replace intensity_alu_cat=6 if nom_com_alu=="NACIMIENTO"
replace intensity_alu_cat=6 if nom_com_alu=="LEBU"



* Rename variables as in damage ratio formula 
*  high  vulnerability  cat A (adobe)  
*  low vulnerability -- C or D (reinforced masonry)
*  medium vulnerability cat B (unreinforced masonry)   

rename cpr_high_hat cprA_hat
rename cpr_low_hat cprCD_hat
rename cpr_medium_hat  cprB_hat


replace cprB_hat=0 if cprB_hat<0
replace cprB_hat=1 if cprB_hat>1 & cprB_hat!=.
replace cprA_hat=0 if cprA_hat<0
replace cprA_hat=1 if cprA_hat>1 & cprA_hat!=.
replace cprCD_hat=0 if cprCD_hat<0
replace cprCD_hat=1 if cprCD_hat>1 & cprCD_hat!=. 


/*

Calculate expected damages: 
Use damage conditional on vulnerability class, then take expectation between 3 building classes using predicted building class probability for the education dataset.
Use  assumed damage ratios from Bommer et al 2002

*/

gen exp_reconstruction_alu_lca=0  if earth_region==0
replace exp_reconstruction_alu_lca=0 if peduc!=. & age_hh_head!=. & earth_region==1
replace exp_reconstruction_alu_lca= cprA_hat*0.001 if intensity_alu_cat==5 
replace exp_reconstruction_alu_lca=cprA_hat*0.011+cprB_hat*0.001 if intensity_alu_cat==6  
replace exp_reconstruction_alu_lca=cprA_hat*0.084 + cprB_hat*0.017+cprCD_hat*0.0055 if intensity_alu_cat==7 
replace exp_reconstruction_alu_lca=cprA_hat*0.337 + cprB_hat*0.084+cprCD_hat*0.0165 if intensity_alu_cat==8  	 
replace exp_reconstruction_alu_lca=cprA_hat*0.69 + cprB_hat*0.337+cprCD_hat*0.053 if intensity_alu_cat==9
replace exp_reconstruction_alu_lca=0 if earth_region==0 & earth_region_rbd==1  


log on 
/*
Footnote 10: students from private unsubsidized schools represent approximately 7% of the student ppulation
* current sample in memory: pre-earthquake cohort
* variable U identifies students enrolled in private unsubsidized schools
*/

tab U

** eliminate from sample  U schools
drop if U==1
drop U
log off


** eliminate from sample schools that collapsed, and schools that received students who were relocated from collapsed schools.
merge m:1 rbd using $trash/displ_stud_rbd_to2011
drop if _merge==2


gen relocated_student=1 if _merge==3
replace relocated_student=0 if _merge==1 
log on
/*
Footnote 11: I dropped 38,784 observations from the pre-earthquake cohort.
Sample in memory: pre-earthquake cohort
Variable relocated_student identifies students who were relocated from collapsed schools to other schools.
*/

tab relocated_student 

/*
Footnote 11: corresponding to 13% of the sample 
Numerator: 38,784 (pre-earthquake cohort students who were relocated from collapsed schools to other schools) + 36,941 (post-earthquake cohort students who were relocated from collapsed schools to other schools) = 75,725
Denominator: 248,162 (pre-earthquake cohort sample size) + 341,465 (post-earthquake cohort sample size) = 589,627
Ratio: 75,725/589,627 = 0.1284, or approximately 13% of the sample
*/

di (36941+38784)/(248162+341465)

log off

drop relocated_student



drop if _merge==3
drop _merge


log on
/*
Footnote 12: These are 21,194 observations in the pre-earthquake cohort
Dataset in memory: pre-earthquake cohort
Classroom identifier: codigo
*/
count if codigo==.

log off

drop if codigo==.


egen st_exp_reconstruction_alu_lca=std(exp_reconstruction_alu_lca) if earth_region_rbd==1

** standardize simce outcome variables
gen simce_8=(ptje_mat+ptje_lect)/2 if ptje_lect!=. & ptje_mat!=.
replace simce_8=ptje_mat if ptje_lect==. & ptje_mat!=.
replace simce_8=ptje_lect if ptje_lect!=. & ptje_mat==.
egen avg_simce_8_std=std(simce_8)
drop simce_8

egen simce_math_std=std(ptje_mat)
egen simce_span_std=std(ptje_lect)

** standardize GPA
egen GPA_std=std(prom_gral)
gen GPA_7_8=(prom_gral+prom_gral_7_or_8)/2 
replace GPA_7_8=prom_gral if prom_gral!=. & prom_gral_7_or_8==.


gen same_town_school=1 if cod_com_alu ==cod_com_rbd
replace same_town_school=0 if cod_com_alu!=cod_com_rbd

label var st_exp_reconstruction_alu_lca "Standardized expected damage (percentage of home damaged)"
label var peduc "Parental education (years)"
label var female_r "Female student"
label var M "Public school"
label var age_hh_head "Age of parent-respondent"
label var simce_math_std "Standardized 8th grade mathematics score"
label var simce_span_std "Standardized 8th grade Spanish score"
label var avg_simce_8_std "Standardized 8th grade average score"
label var same_town_school "Student resides in same town as school's"
label var GPA_std "Standardized 8th grade GPA"

save $cleaned/pre_cpad_alu_all, replace






*------------------------------
*   Append PRE to POST cohort
*------------------------------


clear all
use $cleaned/post_cpad_alu_all, clear

append using $cleaned/pre_cpad_alu_all, gen(pre)


gen post=1 if pre==0
replace post=0 if pre==1

log on 
/*
Footnote 13: These correspond to 2,484 student-level observations, or 0.7 percent of the sample
*/

*drop classrooms with fewer than 5 students  
	bysort post rbd codigo: gen num_in_class=_N
	gen fewer_than_5_students=1 if num_in_class<=5
	replace fewer_than_5_students=0 if num_in_class>5 & num_in_class!=.
	tab fewer_than_5_students
	drop if num_in_class<=5
	drop num_in_class 

log off
drop fewer_than_5_students



*---------------------------------------------------
* Generate variables used in regression analysis 
*---------------------------------------------------
	  bysort post rbd codigo: egen mean_simce_avg_st=mean(simce_avg_st)
      bysort post rbd codigo: egen mean_female=mean(female_r)
	  bysort post rbd codigo: egen mean_same_town=mean(same_town_school)
	  bysort post rbd codigo: egen mean_peduc=mean(peduc)
	  bysort post rbd codigo: egen mean_age_hh_head=mean(age_hh_head) 
	  
	  bysort post rbd codigo: egen mean_damage_class=mean(st_exp_reconstruction_alu_lca )
      bysort post rbd codigo: egen sd_damage_class=sd(st_exp_reconstruction_alu_lca )
      bysort post rbd codigo: egen sd_simce_avg_st=sd(simce_avg_st)
	  bysort post rbd codigo: egen sd_peduc=sd(peduc)
	  
	  label var st_exp_reconstruction_alu_lca "Standardized expected damage to home (% of home damaged)"
	
	  *** other characteristics
	  gen log_hh_income=log(hhincome_lagged)
	  
	  
	  
	  
	  *** [following takes long time to run]
	** covariance of damages with student characteristics
	bysort post rbd codigo: egen cov_dam_simce = corr(st_exp_reconstruction_alu_lca simce_avg_st ), covariance
	bysort post rbd codigo: egen cov_dam_peduc = corr(st_exp_reconstruction_alu_lca peduc ), covariance
	bysort post rbd codigo: egen cov_dam_female=corr(st_exp_reconstruction_alu_lca female_r), covariance
    bysort post rbd codigo: egen cov_dam_same_town=corr(st_exp_reconstruction_alu_lca same_town_school), covariance
 
    ** pairwise covariances of student characteristics
	bysort post rbd codigo: egen cov_simce_peduc = corr(simce_avg_st peduc ), covariance		
	bysort post rbd codigo: egen cov_simce_female = corr(simce_avg_st female_r), covariance
	bysort post rbd codigo: egen cov_simce_same_town = corr(simce_avg_st same_town_school ), covariance
	bysort post rbd codigo: egen cov_peduc_female = corr(peduc female_r), covariance
	bysort post rbd codigo: egen cov_peduc_same_town = corr(peduc same_town_school), covariance
	bysort post rbd codigo: egen cov_female_same_town = corr(female_r same_town_school), covariance
	
	
    *** [end of part taking long time]		
	
	
		
*** labelling
	label var rural_rbd "Rural school"
	label var st_exp_reconstruction_alu_lca "Standardized expected HD"
	label var mean_damage_class "Mean(HD)"
	label var sd_damage_class "$\sigma$(HD)"
	label var cov_dam_peduc "Cov(HD, peduc)"
	label var cov_dam_simce "Cov(HD,simce)"
	label var post "POST"
	
	
	
	preserve
	clear all
	use $data/raw/sch_com_dist, clear    // .csv version saved in replication package
	rename distance_asperity distance_asperity_rbd 
	save "$trash/school_distance_asperity", replace 
	restore 
    merge m:1 cod_com_rbd using "$trash/school_distance_asperity", keepusing(distance_asperity_rbd ) 
	drop if _merge==2 
	replace distance_asperity_rbd=222 if cod_com_rbd==5801
	replace distance_asperity_rbd =234 if cod_com_rbd==5802
	replace distance_asperity_rbd =239 if cod_com_rbd==5803
	replace distance_asperity_rbd =224 if cod_com_rbd==5804


	drop _merge 
	

* generate measure of adjusted distance that takes into account depth of asperity. See Astroza et. al 2012 paper.

gen adjusted_distance_rbd=sqrt((distance_asperity_rbd^2)+20^2) if earth_region_rbd==1
replace adjusted_distance_rbd=-99 if adjusted_distance_rbd==.

** apply the intensity attenuation formula for adjusted distances between 0 and 600. Assign intensity 0 if distance above 600.
gen log_adj_dis_rbd=log10(adjusted_distance_rbd) if adjusted_distance_rbd!=-99
gen intensity_rbd=19.781-5.927*log_adj_dis_rbd+0.00087*adjusted_distance_rbd if adjusted_distance_rbd>=0 & adjusted_distance_rbd<=600
replace intensity_rbd=0 if intensity_rbd==.
label var intensity_rbd "Intensity of shaking in school's town'"


** keep the average simce outcome only when both math and spanish are available. [Up until here, this variable took on the value of the non-missing subject]	  
replace avg_simce_8_std=. if simce_math_std==. | simce_span_std==.	  
egen hugo=std(avg_simce_8_std)
drop avg_simce_8_std
rename hugo avg_simce_8_std



save $cleaned/prepost_cpad_alu_all, replace


  *----------------------------------------------------------------------------
  *---- DATA CLEANING: BUILDING VARIABLES RELEVANT FOR REGRESSION ANALYSIS ----
  *----------------------------------------------------------------------------
  
	  gen missing_HD=1 if exp_reconstruction_alu_lca==.
	  replace missing_HD=0 if exp_reconstruction_alu_lca!=.
	  bysort post: tab earth_region missing_HD , row
	  
	  label var post "POST" 
	  label var simce_avg_st "Baseline test score"
	  
	  label var earth_region "Student resides in earthquake region"
	  label var earth_region_rbd "School is located in earthquake region"
	  
	  * Meaning of class letters
      * High vulnerability   -- cat A (adobe)
      * Medium vulnerability -- cat B (unreinforced masonry) 
	  * Low vulnerability    -- C or D (reinforced masonry) 
	  
		  
	  gen cprAB_hat=1-cprCD_hat	  
      bysort post rbd codigo: egen mean_classA_class=mean(cprA_hat )
      bysort post rbd codigo: egen sd_classA_class=sd(cprA_hat )
  
      bysort post rbd codigo: egen mean_classCD_class=mean(cprCD_hat )
      bysort post rbd codigo: egen sd_classCD_class=sd(cprCD_hat )
  
      bysort post rbd codigo: egen mean_classB_class=mean(cprB_hat )
      bysort post rbd codigo: egen sd_classB_class=sd(cprB_hat )
  
      bysort post rbd codigo: egen mean_classAB_class=mean(cprAB_hat )
      bysort post rbd codigo: egen sd_classAB_class=sd(cprAB_hat )
  
  
*** build standardized measures of building type   	  
	egen cprA_hat_st=std(cprA_hat)
	egen cprB_hat_st=std(cprB_hat)
	egen cprCD_hat_st=std(cprCD_hat)
	egen cprAB_hat_st=std(cprAB_hat)
	
*** express classroom level variables in terms of standardised building type	
	bysort post rbd codigo: egen mean_classA_class_st=mean(cprA_hat_st )
	bysort post rbd codigo: egen sd_classA_class_st=sd(cprA_hat_st )
  
	bysort post rbd codigo: egen mean_classCD_class_st=mean(cprCD_hat_st )
	bysort post rbd codigo: egen sd_classCD_class_st=sd(cprCD_hat_st )
  
	bysort post rbd codigo: egen mean_classB_class_st=mean(cprB_hat_st )
	bysort post rbd codigo: egen sd_classB_class_st=sd(cprB_hat_st )
  
	bysort post rbd codigo: egen mean_classAB_class_st=mean(cprAB_hat_st )
	bysort post rbd codigo: egen sd_classAB_class_st=sd(cprAB_hat_st )
	

	
	* Build measure of building quality used for the test of the identifying assumption using non-earthquake regions  
	* Generate index = 1 if high vulnerability home for sure, and = 0 if low vulnerability home for sure
	gen vuln_index=cprA_hat+0.5*cprB_hat
	* Standardize in the population 
	egen vuln_index_st = std(vuln_index)
	
	gen rbd_unique=rbd+post*100000  // for FE and clustering at the school-by-cohort level 
	  
*-------------------------------------------------------------------------------------
* Build leave-one-out mean of home-quality-based measure of vulnerability
* ------------------------------------------------------------------------------------

	* Step 1: Calculate the total sum of damage for each classroom
     egen total_damage_c = sum(vuln_index_st), by(rbd_unique codigo)

	* Step 2: Calculate the total number of students in each classroom
	egen num_students_c = count(vuln_index_st), by(rbd_unique codigo)

	* Step 3: Calculate the sum of damage for each student by subtracting their own damage
	gen sum_damage_excluded = total_damage_c - vuln_index

	* Step 4: Calculate the number of students excluding oneself
	gen num_students_excluded = num_students_c - 1

	* Step 5: Calculate the leave-one-out mean
	gen loo_mean_vuln_st_class = sum_damage_excluded / num_students_excluded


* ---------------------------------------------------------------------------------------------
* Build leave-one-out standard deviation of home-quality-based measure of vulnerability
* ---------------------------------------------------------------------------------------------

	* Calculate squared difference between each student's damage and the leave-one-out mean
	gen squared_diff = (vuln_index_st- loo_mean_vuln_st_class)^2

	* Calculate the total of these squared differences for each classroom
	egen total_squared_diff_c = sum(squared_diff), by(rbd_unique codigo)

	* Subtract each student's squared difference from the classroom total (leave-one-out)
	gen loo_squared_diff_sum = total_squared_diff_c - squared_diff

	* Using the count of students excluding oneself from the previous example (num_students_excluded), calculate the LOO standard deviation
	gen loo_sd_vuln_st_class = sqrt(loo_squared_diff_sum / num_students_excluded)
	

	* Cleaning up temporary variables
	drop total_damage_c num_students_c sum_damage_excluded num_students_excluded  squared_diff total_squared_diff_c loo_squared_diff_sum
	
	
* -----------------------------------------------------------------------------------------------
* Build covariance terms  - take long time to run
* -----------------------------------------------------------------------------------------------
	
	* cov_dam_female_i cov_dam_peduc_i cov_dam_simce_i
	bysort post rbd codigo: egen cov_dam_simce_i=corr(vuln_index_st  simce_avg_st), covariance
	bysort post rbd codigo: egen cov_dam_peduc_i=corr(vuln_index_st peduc), covariance
	bysort post rbd codigo: egen cov_dam_female_i=corr(vuln_index_st  female_r), covariance

	
	*generate and label interaction variables
	gen mean_damageXpost=mean_damage_class*post
	label var mean_damageXpost "Mean(d) $\times$ POST"
	gen sd_damageXpost=sd_damage_class*post
	label var sd_damageXpost "$\sigma$(d) $\times$ POST"
	gen st_exp_recon_aluXpost=st_exp_reconstruction_alu_lca*post
	label var st_exp_recon_aluXpost "d $\times$ POST"
	gen cov_dam_peducXpost=cov_dam_peduc*post
	label var cov_dam_peducXpost "Cov(d, peduc) $\times$ POST"
	gen cov_dam_simceXpost=cov_dam_simce*post
	label var cov_dam_simceXpost "Cov(d, simce) $\times$ POST"
	  
	gen mean_classAXpost=mean_classA_class*post
	label var mean_classAXpost "Fraction high vuln. $\times$ POST"
	gen sd_clasAXpost=sd_classA_class*post
	label var sd_clasAXpost "St. dev. of fraction high vuln. $\times$ POST"
	gen cprA_hatXpost=cprA_hat*post
	label var cprA_hatXpost "High vuln. (own) $\times$ POST"
	    
	gen mean_classCDXpost=mean_classCD_class*post
	label var mean_classCDXpost "Mean(Low Vuln.) $\times$ POST"
	gen sd_clasCDXpost=sd_classCD_class*post
	label var sd_clasCDXpost "$\sigma$(Low Vuln.) $\times$ POST"
	gen cprCD_hatXpost=cprCD_hat*post
	label var cprCD_hatXpost "Low Vuln. $\times$ POST"
	    
	gen mean_classABXpost=mean_classAB_class*post
	label var mean_classABXpost "Mean(High Vulnerability) $\times$ POST"
	gen sd_clasABXpost=sd_classAB_class*post
	label var sd_clasABXpost "$\sigma$(High Vulnerability) $\times$ POST"
	gen cprAB_hatXpost=cprAB_hat*post
	label var cprAB_hatXpost "High Vulnerability $\times$ POST"

	    
	gen mean_classBXpost=mean_classB_class*post
	label var mean_classBXpost "Mean of class B $\times$ POST"
	gen sd_clasBXpost=sd_classB_class*post
	label var sd_clasBXpost "St. dev. of class B $\times$ POST"
	gen cprB_hatXpost=cprB_hat*post
	label var cprB_hatXpost "Class B (own) $\times$ POST"  
	  
	gen mean_classA_stXpost=mean_classA_class_st*post
	label var mean_classA_stXpost "Mean of class A $\times$ POST"
	gen sd_clasA_stXpost=sd_classA_class_st*post
	label var sd_clasA_stXpost "St. dev. of class A $\times$ POST"
	gen cprA_hat_stXpost=cprA_hat_st*post
	label var cprA_hat_stXpost "Class A (own) $\times$ POST"
	  
	gen mean_classCD_stXpost=mean_classCD_class_st*post
	label var mean_classCD_stXpost "Mean(Low Vulnerability) $\times$ POST"
	gen sd_clasCD_stXpost=sd_classCD_class_st*post
	label var sd_clasCD_stXpost "$\sigma$(Low Vulnerability) $\times$ POST"
	gen cprCD_hat_stXpost=cprCD_hat_st*post
	label var cprCD_hat_stXpost "Low Vulnerability $\times$ POST"
	    
	gen mean_classAB_stXpost=mean_classAB_class_st*post
	label var mean_classAB_stXpost "Mean(High Vulnerability) $\times$ POST"
	gen sd_clasAB_stXpost=sd_classAB_class_st*post
	label var sd_clasAB_stXpost "$\sigma$(High Vulnerability) $\times$ POST"
	gen cprAB_hat_stXpost=cprAB_hat_st*post
	label var cprAB_hat_stXpost "High Vulnerability $\times$ POST"  
	  
	gen mean_classB_stXpost=mean_classB_class_st*post
	label var mean_classB_stXpost "Mean of class B $\times$ POST"
	gen sd_clasB_stXpost=sd_classB_class_st*post
	gen cprB_hatstXpost=cprB_hat_st*post
	label var cprB_hatstXpost "Class B (own) $\times$ POST"  
	  		  
	gen mean_damageXsimceXpost=mean_damage_class*post*simce_avg_st
	label var mean_damageXsimceXpost "Mean(HD) $\times$ lagged TS $\times$ POST"
	gen sd_damageXsimceXpost=sd_damage_class*post*simce_avg_st
	label var sd_damageXsimceXpost "$\sigma$(HD) $\times$ lagged TS $\times$ POST"
	gen st_exp_recon_aluXsimceXpost=st_exp_reconstruction_alu_lca*post*simce_avg_st
	label var st_exp_recon_aluXsimceXpost "HD $\times$ lagged TS $\times$ POST"
	gen cov_dam_peducXsimceXpost=cov_dam_peduc*post*simce_avg_st
	label var cov_dam_peducXsimceXpost "Cov(DM peduc) $\times$ lagged TS $\times$ P"
	gen cov_dam_simceXsimceXpost=cov_dam_simce*post*simce_avg_st
	label var cov_dam_simceXsimceXpost "Cov(DM simce) $\times$ lagged TS $\times$ P"
	
	
*-------------------------------------------------------------------------------------
* Build leave-one-out mean of home quality  - definition class A = high vulnerability 
* ------------------------------------------------------------------------------------


** Definition A: high vulnerability 
	* Step 1: Calculate the total sum of damage for each classroom
     egen total_damage_c = sum(cprA_hat_st), by(rbd_unique codigo)

	* Step 2: Calculate the total number of students in each classroom
	egen num_students_c = count(cprA_hat_st), by(rbd_unique codigo)

	* Step 3: Calculate the sum of damage for each student by subtracting their own damage
	gen sum_damage_excluded = total_damage_c - cprA_hat_st

	* Step 4: Calculate the number of students excluding oneself
	gen num_students_excluded = num_students_c - 1

	* Step 5: Calculate the leave-one-out mean
	gen loo_mean_A_class = sum_damage_excluded / num_students_excluded


* -----------------------------------------------------------------------------------------------------------------	
* Build leave-one-out standard deviation and variance of home quality - definition class A = high vulnerability 
* -----------------------------------------------------------------------------------------------------------------

	* Calculate squared difference between each student's damage and the leave-one-out mean
	gen squared_diff = (cprA_hat_st- loo_mean_A_class)^2

	* Calculate the total of these squared differences for each classroom
	egen total_squared_diff_c = sum(squared_diff), by(rbd_unique codigo)

	* Subtract each student's squared difference from the classroom total (leave-one-out)
	gen loo_squared_diff_sum = total_squared_diff_c - squared_diff

	* Using the count of students excluding oneself from the previous example (num_students_excluded), calculate the LOO standard deviation
	gen loo_sd_A_class = sqrt(loo_squared_diff_sum / num_students_excluded)
	

	* Cleaning up temporary variables
	drop total_damage_c num_students_c sum_damage_excluded num_students_excluded  squared_diff total_squared_diff_c loo_squared_diff_sum
	
	
	
*-------------------------------------------------------------------------------------------------
* Build leave-one-out mean of home quality  - definition class AB = high or medium vulnerability 
* ------------------------------------------------------------------------------------------------

** Definition A: high vulnerability 
	* Step 1: Calculate the total sum of damage for each classroom
     egen total_damage_c = sum(cprAB_hat_st), by(rbd_unique codigo)

	* Step 2: Calculate the total number of students in each classroom
	egen num_students_c = count(cprAB_hat_st), by(rbd_unique codigo)

	* Step 3: Calculate the sum of damage for each student by subtracting their own damage
	gen sum_damage_excluded = total_damage_c - cprAB_hat_st

	* Step 4: Calculate the number of students excluding oneself
	gen num_students_excluded = num_students_c - 1

	* Step 5: Calculate the leave-one-out mean
	gen loo_mean_AB_class = sum_damage_excluded / num_students_excluded


* ---------------------------------------------------------------------------------------------------------------------------
* Build leave-one-out standard deviation and variance of home quality - definition class AB = high or medium vulnerability 
* ---------------------------------------------------------------------------------------------------------------------------

	* Calculate squared difference between each student's damage and the leave-one-out mean
	gen squared_diff = (cprAB_hat_st- loo_mean_AB_class)^2

	* Calculate the total of these squared differences for each classroom
	egen total_squared_diff_c = sum(squared_diff), by(rbd_unique codigo)

	* Subtract each student's squared difference from the classroom total (leave-one-out)
	gen loo_squared_diff_sum = total_squared_diff_c - squared_diff

	* Using the count of students excluding oneself from the previous example (num_students_excluded), calculate the LOO standard deviation
	gen loo_sd_AB_class = sqrt(loo_squared_diff_sum / num_students_excluded)
	

	* Cleaning up temporary variables
	drop total_damage_c num_students_c sum_damage_excluded num_students_excluded  squared_diff total_squared_diff_c loo_squared_diff_sum
	  

 

	save $trash/prepost_cpad_alu_all_temp, replace
 

* ===============================================================================
* ADD GEOGRAPHICAL INFORMATION FOR ROBUSTNESS TO COASTAL DEFINITION ANALYSIS
* ===============================================================================
	
	* merge in the file created by do file 11_geog_coastal_proximity
	merge m:1 cod_com_alu using "$cleaned/comuna_alu_coastal_proximity", keepusing(coastal_0p5k  coastal_1k coastal_1p5k )
	drop if _merge==2
	drop _merge 
	
	
	
	
* ==============================================
* BUILD LEAVE-ONE-OUT MOMENTS
* ==============================================

*------------------------------------------
* Build leave-one-out mean of damages 
* -----------------------------------------	
	* Step 1: Calculate the total sum of damage for each classroom
     egen total_damage_c = sum(st_exp_reconstruction_alu_lca), by(rbd_unique codigo)

	* Step 2: Calculate the total number of students in each classroom
	egen num_students_c = count(st_exp_reconstruction_alu_lca), by(rbd_unique codigo)

	* Step 3: Calculate the sum of damage for each student by subtracting their own damage
	gen sum_damage_excluded = total_damage_c - st_exp_reconstruction_alu_lca

	* Step 4: Calculate the number of students excluding oneself
	gen num_students_excluded = num_students_c - 1

	* Step 5: Calculate the leave-one-out mean
	gen loo_mean_damage_class = sum_damage_excluded / num_students_excluded


* ---------------------------------------------------------------	
* Build leave-one-out standard deviation and variance of damages
* ----------------------------------------------------------------

	* Calculate squared difference between each student's damage and the leave-one-out mean
	gen squared_diff = (st_exp_reconstruction_alu_lca- loo_mean_damage_class)^2

	* Calculate the total of these squared differences for each classroom
	egen total_squared_diff_c = sum(squared_diff), by(rbd_unique codigo)

	* Subtract each student's squared difference from the classroom total (leave-one-out)
	gen loo_squared_diff_sum = total_squared_diff_c - squared_diff

	* Using the count of students excluding oneself from the previous example (num_students_excluded), calculate the LOO standard deviation
	gen loo_sd_damage_class = sqrt(loo_squared_diff_sum / num_students_excluded)
	gen loo_var_damage_class = loo_sd_damage_class*loo_sd_damage_class 

	* Cleaning up temporary variables
	drop total_damage_c num_students_c sum_damage_excluded num_students_excluded  squared_diff total_squared_diff_c loo_squared_diff_sum
	
	
* -------------------------------------------------------------------
* Build leave-one-out covariance between baseline simce and damage
* -------------------------------------------------------------------
	gen damage=st_exp_reconstruction_alu_lca
	* Generate classroom totals for damage, simce_avg_st, and their product within each unique rbd_unique-codigo group
	egen total_damage_class = total(damage), by(rbd_unique codigo)
	egen total_simce_class = total(simce_avg_st), by(rbd_unique codigo)
	egen total_product_class = total(damage*simce_avg_st), by(rbd_unique codigo)

	* Generate classroom counts within each unique rbd_unique-codigo group
	egen count_class = count(mrun), by(rbd_unique codigo)

	* Calculate leave-one-out totals
	gen loo_total_damage = total_damage_class - damage
	gen loo_total_simce = total_simce_class - simce_avg_st
	gen loo_total_product = total_product_class - (damage * simce_avg_st)

	* Calculate leave-one-out means
	gen loo_mean_damage = loo_total_damage / (count_class - 1)
	gen loo_mean_simce = loo_total_simce / (count_class - 1)

	* Calculate leave-one-out covariance
	gen loo_cov_dam_simce = (loo_total_product / (count_class - 1)) - (loo_mean_damage * loo_mean_simce)

	* Drop intermediate variables if desired
	drop total_* loo_total_* count_class loo_mean_damage loo_mean_simce damage

	
* ====================================================
* BIILD PERCEIVED EFFORT COST AND COURSE ENGAGEMENT
* ====================================================

* -----------------------------------------------------------
* Build PCA measure of engagement (only engagement items) 
* -----------------------------------------------------------

	* Reverse coding the variables for which an increase indicates a decrease in "ability to study"
	gen do_difficult_hw_REV = 1 - do_difficult_hw_NO
	gen incomplete_notebooks_REV = 1 - incomplete_notebooks_YES
	gen take_notes_REV = 1 - take_notes_NO
	* Perform PCA - self-reported course engagement
	pca do_difficult_hw_YES incomplete_notebooks_NO take_notes_YES ///
	do_difficult_hw_REV incomplete_notebooks_REV take_notes_REV
	predict engage, score
	screeplot
	
	egen engagement_std = std(engage)
	
	drop engage 
	
* ---------------------------------------------
* Build perceived cost of effort
* ---------------------------------------------

* 1. Create categorical variable with three categories
   gen effort_cost_cat=0 if effort_costly_NO==1
   replace effort_cost_cat=1 if effort_costly_NO!=1 & effort_costly_YES!=1
   replace effort_cost_cat=2 if effort_cost_cat==. & effort_costly_YES==1


* 2. Generate a mean-centered variable
	egen effort_cost_std = std(effort_cost_cat)


* ===========================================================================
* BUILD EFFORT COST/EFFORT AT THE CLASSROOM LEVEL (LEAVE-ONE-OUT MOMENTS)
* ===========================================================================

* ---------------
* GPA rank
* ---------------
* Sort data by classroom identifiers and GPA
sort rbd_unique codigo GPA_std

* Generate a ranking variable within each classroom
by rbd_unique codigo: gen rank_GPA = _n

* Generate a variable indicating the number of students in each classroom
by rbd_unique codigo: egen num_students = total(1)

* Normalize the rank_GPA variable to get a score between 0 and 1
gen norm_rank_GPA = (rank_GPA - 1) / (num_students - 1)

* Clean up: drop the intermediate variables
drop rank_GPA num_students
rename norm_rank_GPA rank_GPA 



* create variables used in analysis

	gen intensity_rbdXpost=intensity_rbd*post
	gen intensity_rbdXM=intensity_rbd*M
	gen intensity_rbdXpostXM=intensity_rbd*post*M 
	gen postXM=post*M 
	
    gen var_damage_class=sd_damage_class^2
	
	gen var_simce = sd_simce_avg_st*sd_simce_avg_st
	gen var_peduc = sd_peduc*sd_peduc
	gen var_female = mean_female*(1-mean_female)
	gen var_same_town = mean_same_town*(1-mean_same_town)
	
	* Generate interaction terms
	gen post_st_exp = post * st_exp_reconstruction_alu_lca
	gen post_loo_mean_damage = post * loo_mean_damage_class
	gen post_loo_sd_damage = post * loo_sd_damage_class

	gen post_st_exp_simce = post_st_exp * simce_avg_st
	gen post_loo_mean_damage_simce = post_loo_mean_damage * simce_avg_st
	gen post_loo_sd_damage_simce = post_loo_sd_damage * simce_avg_st


	save $cleaned/data_final_for_regs_all, replace 






** merge in teacher variables.

merge m:1 post rbd codigo using $cleaned/endline_simce_leng_2011
drop if _merge==2
drop _merge 
merge m:1 post rbd codigo using $cleaned/endline_simce_mate_2011
drop if _merge==2
drop _merge 

merge m:1 post rbd codigo using $cleaned/endline_simce_leng_2009
drop if _merge==2
drop _merge 
merge m:1 post rbd codigo using $cleaned/endline_simce_mate_2009
drop if _merge==2
drop _merge 

save $cleaned/data_final_for_regs_teach_all, replace 


log on

/*
Section 2.1: ``The full constructed dataset consists of 354,133 students in 13,268 classrooms across 8,974 schools
* Dataset in memory: full constructed dataset 
* Student identifier: mrun
* Classroom identifier: codigo
* School identifier: rbd
* Cohort identifier: post
*/

clear all 
use $cleaned/data_final_for_regs_all

bysort post rbd codigo: gen class_identifier=1 if _n==1 
bysort post rbd: gen school_identifier=1 if _n== 1
sum mrun class_identifier school_identifier 

/*
Section 2.1: around 15% of observations, corresponding to schools located in coastal towns
Variable coastal_1k identifies students in coastal towns, defined as those located within 1 km of the coast.
*/

tab coastal_1k

log close
drop class_identifier school_identifier



* Erase from disk data files no longer needed
capture noisily erase "$trash/displ_stud_rbd_to2011.dta"
capture noisily erase "$trash/prepost_cpad_alu_all_temp.dta"
capture noisily erase "$trash/school_distance_asperity.dta"


* Erase from disk data files no longer needed
capture noisily erase $cleaned/post_cpad_alu_all.dta
capture noisily erase $cleaned/pre_cpad_alu_all.dta
capture noisily erase $cleaned/prepost_cpad_alu_all.dta
capture noisily erase $trash/prepost_cpad_alu_all_temp.dta
capture noisily erase $cleaned/post_for_predict_class_low_all.dta
capture noisily erase $cleaned/post_for_predict_class_medium_all.dta
capture noisily erase $cleaned/post_for_predict_class_high_all.dta
capture noisily erase $cleaned/pre_for_predict_class_low_all.dta
capture noisily erase $cleaned/pre_for_predict_class_medium_all.dta
capture noisily erase $cleaned/pre_for_predict_class_high_all.dta
capture noisily erase $cleaned/endline_simce_leng_2011.dta
capture noisily erase $cleaned/endline_simce_mate_2011.dta
capture noisily erase $cleaned/endline_simce_leng_2009.dta
capture noisily erase $cleaned/endline_simce_mate_2009.dta




