// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file computes standard errors allowing for spatial correlation using the Conley (1999) method.
* Notice: Total expected time: around 61 hours (see details below).
* Before running, ensure the .ado file is saved in the directory from which you run this code.
************************************************************************************************************************************************************
* Running times on UCL cluster, STATA 15:
* By spatial correlation kernel cutoff distance:
* distance 10 --> 14 h 16 min
* distance 25 --> 13 h 4 min
* distance 50 --> 14 h 21 min
* distance 250 for test score outcomes --> 10 h 45 min 
* distance 350 for GPA outcome --> 8 h and 24 min
* Total time required to run this do file sequentially: 60 hours and 50 minutes 
*                                                          
*************************************************************************************************************************************************************

* Using version 15 ensures replicability of the esults from this code, which was run on STATA 15. 
* If you do not run this on STATA 15, some minor differences in results may arise due to 
* differences across STATA versions.

version 15



clear all
use "$cleaned/data_final_for_regs_all"



* ===============================
* GLOBALS - CONTROLS
* ===============================

	 	
	global controls_indiv_damdet_con = "age_hh_head peduc "  // without region of residence, for computational reasons
	
	

* ===================================
* PRELIMINARIES
* ===================================

	rename simce_math_std ts_math
	rename simce_span_std ts_span
	rename avg_simce_8_std ts

	label var ts "standardized eighth-grade test score"
	label var ts_math "standardized eighth-grade Mathematics test score"
	label var ts_span "standardized eighth-grade Language test score"
	label var GPA_std "standardized eight-grade GPA"


	label variable post_st_exp "Effect of damage to own home"
	label variable post_loo_mean_damage "Effect of average damage among classmates"
	label variable post_loo_sd_damage "Effect of standard deviation of damage among classmates"
	
	

	
	
* ========================
* CONLEY STANDARD ERRORS
* ========================
* First column, repeat main analysis without region of residence dummies

est clear 


 reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
 eststo nofe_ts 
 
 * Print table with these two outcomes and just first columns populated, adjust manually to add the conley columns 
 
 	    esttab  nofe_ts using "$output_tables/conley_to_edit.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep( post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) stats( r2 N, fmt( 3 0) labels( "R-squared" "Observations")) /// 
    order( post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
   nonum collabels(none) nolines /// 
    prehead(`"\FloatBarrier \begin{table}[H]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eghth-grade test score and GPAm accounting for spatial correlation in the residuals using the Conley method}"' ///
			`"\label{tab:medeffectexp}"' ///
            `"\begin{tabular}{l*{6}{c}}"' `"\toprule \midrule"' ///
			 `"&  (1) & (2) & (3) & (4) & (5)  \\ \midrule "' ///
			   `"& \multicolumn{5}{c}{\textbf{A. Test scores}}  \\ "') ///
    postfoot(`" & & & & & \\"')
	
	

		est clear
		
      reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
	  eststo nofe_GPA 
	
		
	    esttab  nofe_GPA  using "$output_tables/conley_to_edit.tex", append label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep( post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) stats( r2 N, fmt( 3 0) labels( "R-squared" "Observations")) /// 
    order( post_st_exp post_loo_mean_damage  post_loo_sd_damage    ) ///
   nonum collabels(none) nolines /// 
    prehead( `"& \multicolumn{5}{c}{\textbf{B. GPA (std)}}  \\ "') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `" {\it Notes:}  Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The first column reports the original standard errors clustered at the school-by-cohort level and corresponding significance levels. Columns (2) to (6) report standard errors and significance levels calculated according to the method in \cite{conley1999gmm}, under different distance thresholds. 587 km represents the distance between the asperity and the farthest town with positive shaking intensity. Parameter estimates slightly differ from those in Table \ref{tab:effectsts} because regional fixed effects are omitted for computational reasons. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
			 
			
adopath + "$code/ado_frozen"

preserve
clear all
insheet using "$data/raw/comuna_alu_geocoded.csv"
save "$trash/comuna_alu_geocoded.dta", replace 
restore 
 merge m:1 cod_com_alu using "$trash/comuna_alu_geocoded.dta" , keepusing(latitude_alu longitude_alu)
drop if _merge!=3
drop _merge

rename latitude_alu latitude
rename longitude_alu longitude 


drop if latitude==. | longitude==.
keep if earth_region_rbd ==1
keep if ${proximity} ==0

gen constant = 1

capture log close 
log using "$output_tables/Table_A14_conley.txt", text replace

* Distance 10km
ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov , lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(10) 

ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov , lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(10) 


* Distance 25km
ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov , lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(25) 

ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov , lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(25) 


* Distance 50km
ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov , lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(50) 

ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov , lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(50) 


* Distance 250+ km
* Ensure the Conley-HAC code uses exactly the OLS estimation sample.
* (ols_spatial_HAC relies on marksample, which may include observations dropped by OLS 
*  due to missing regressors or collinearity, leading to missing SEs at large dist().)

est clear 
regress ts post_st_exp post_loo_mean_damage post_loo_sd_damage constant post ///
    $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet ///
    $controls_group $intensity_rbd $controls_all_cov , nocons

ols_spatial_HAC ts post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if e(sample), lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(250) 


est clear 
regress GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage constant post ///
    $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet ///
    $controls_group $intensity_rbd $controls_all_cov, nocons

ols_spatial_HAC GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  constant post $treatment_var_loo $controls_indiv_damdet_con $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if e(sample), lat(latitude) lon(longitude) timevar(post) panelvar(rbd) dist(350) 


log close


capture noisily erase "$trash/comuna_alu_geocoded.dta" 