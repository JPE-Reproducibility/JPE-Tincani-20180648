// Author: Michela M. Tincani, UCL
// This version: March 2026


* This do file generates the Table with the main effects, and the Tables with the robustness results.


clear all
use "$cleaned/data_final_for_regs_all", clear 

* =====================================

* PRELIMINARIES

* =====================================

	bysort post rbd: gen school_index=1 if _n==1
	bysort post rbd codigo: gen class_index=1 if _n==1
	
	* Rename outcome variables for eststo to work
	rename simce_math_std ts_math
	rename simce_span_std ts_span 
	renam avg_simce_8_std ts
	
   * Labeling interaction variables for tables
	label variable post_st_exp "Effect of damage to own home"
	label variable post_loo_mean_damage "Effect of average damage among classmates"
	label variable post_loo_sd_damage "Effect of standard deviation of damage among classmates"
	label variable post_st_exp_simce "Interacted with baseline test score"
	label variable post_loo_mean_damage_simce "Interacted with baseline test score"
	label variable post_loo_sd_damage_simce "Interacted with baseline test score"
	
	
* =====================================

* TABLE 2: MAIN EFFECTS

* =====================================


label var ts "standardized eighth-grade test score"
label var ts_math "standardized eighth-grade Mathematics test score"
label var ts_span "standardized eighth-grade Language test score"
label var GPA_std "standardized eight-grade GPA"

est clear 
    reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_ts
	reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_GPA

	  * esttab command - ts, main body of text
   local varlabel : variable label ts 
    esttab nofe_ts   nofe_GPA    using "$output_tables/main_effects_ts_GPA.tex",  replace label booktabs b(3) se(3)   r2 ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    mtitles("(1)" "(2)"  ) nonum collabels(none) ///
    prehead(`"\begin{table}[h!]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA}"' ///
			`"\label{tab:effectsts}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			`"& \multicolumn{1}{c}{Test score} & \multicolumn{1}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. The treatment effects, including of the classroom-level damages, are measured in standard deviations of the student-level damage distribution; Table \ref{tab:effectstsst} shows estimates where each treatment effect is measured in standard deviations of the treatment variable itself. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
* ===========================================

* TABLE A5: RESULTS ON MATHEMATICS AND
*           SPANISH TEST SCORES 

* ==========================================

est clear 
foreach var of varlist ts_math ts_span {
	
	local varlabel : variable label `var'
	
    * Regressions
    reg `var' post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_`var'
	
 
}

				 
   * esttab command - ts_span, ts_math, Appendix 
   label var ts_math "Mathematics"
   label var ts_span "Language"
    local varlabelspan : variable label ts_span 
	local varlabelmath : variable label ts_math
    esttab nofe_ts_span  nofe_ts_math   using "$output_tables/main_effects_ts_span_math.tex",  replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test scores in Spanish and Mathematics }"' ///
			`"\label{tab:effectsspanmath}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			 `"&  (1) & (2) \\ "') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variables are Language (column (1)) and Mathematics (column (2)) SIMCE scores, standardized to have mean 0 and variance 1. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
	
	
* ===================================================

* TABLE A6: TREATMENT VARIABLES STANDARDIZED W.R.T.
*           THEIR OWN DISTRIBUTIONS

* ==================================================

* ----------------------------------------------------------------------
* Different normalization of treatment variables
* Generate standardized measures of loo mean and standard deviations
* ---------------------------------------------------------------------
	
	egen st_loo_mean_damage_class=std(loo_mean_damage_class) if earth_region_rbd ==1 & ${proximity}==0  
	egen st_loo_sd_damage_class =std(loo_sd_damage_class) if earth_region_rbd ==1 & ${proximity}==0  

	gen post_st_loo_mean_damage = post * st_loo_mean_damage_class if earth_region_rbd ==1 & ${proximity}==0  
	gen post_st_loo_sd_damage = post * st_loo_sd_damage_class if earth_region_rbd ==1 & ${proximity}==0  
	
	label variable post_st_loo_mean_damage "Effect of average damage among classmates"
	label variable post_st_loo_sd_damage "Effect of standard deviation of damage among classmates"
	
	
	
	
label var ts "standardized eighth-grade test score"
label var GPA_std "standardized eight-grade GPA"


est clear 
    reg ts post_st_exp post_st_loo_mean_damage post_st_loo_sd_damage  post $treatment_var_st_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_ts
	reg GPA_std post_st_exp post_st_loo_mean_damage post_st_loo_sd_damage  post $treatment_var_st_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov    if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_GPA

	  * esttab command - ts, main body of text
   local varlabel : variable label ts 
    esttab nofe_ts   nofe_GPA    using "$output_tables/main_effects_ts_st_2025_v2.tex",  replace label booktabs b(3) se(3)   r2 ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_st_loo_mean_damage  post_st_loo_sd_damage  ) order(post_st_exp post_st_loo_mean_damage  post_st_loo_sd_damage  ) ///
    mtitles("(1)" "(2)"  ) nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA, all treatment variables measured in standard deviations}"' ///
			`"\label{tab:effectstsst}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			`"& \multicolumn{1}{c}{Test score} & \multicolumn{1}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. The treatment variables are standardized to have mean zero and variance one in the estimation sample. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
* ============================================

* TABLE A7: ROBUSTNESS TO CONTROLS

* ============================================

label var ts "standardized eighth-grade test score"
label var ts_math "standardized eighth-grade Mathematics test score"
label var ts_span "standardized eighth-grade Language test score"
label var GPA_std "standardized eight-grade GPA"

est clear 
    reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo  $controls_indiv_damdet    if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo ts_c1
	estadd local controls "No"
		    reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo  $controls_indiv_damdet     if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)   
    eststo GPA_c1
	estadd local controls "No"
	
	
reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo  $controls_indiv_damdet  $controls_indiv_nodamdet $intensity_rbd $controls_group $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) // 
    eststo ts_c4
	estadd local controls "Yes"
		    reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo  $controls_indiv_damdet $controls_indiv_nodamdet   $intensity_rbd $controls_group $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)   //  
   eststo GPA_c4
   estadd local controls "Yes"
	
   * esttab command 
   local varlabel : variable label ts 
    esttab  ts_c1  ts_c4 GPA_c1 GPA_c4  using "$output_tables/main_effects_ts_GPA_controls_yn.tex",  replace label booktabs b(3) se(3)   r2 ///
	    scalars("controls Controls") ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    mtitles("(1)" "(2)" "(3)" "(4)"  ) nonum collabels(none) ///
    prehead(`"\FloatBarrier \begin{table}[H]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA, robustness to controls}"' ///
			`"\label{tab:effectstscontrolsyn}"' ///
            `"\begin{tabular}{l*{4}{c}}"' `"\toprule"' ///
			`"& \multicolumn{2}{c}{Test score} & \multicolumn{2}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variables are measured in eighth grade. In columns (1) and (2) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in columns (3) and (4) it is the GPA, also standardized. All regressions include controls for the student characteristics used to predict home quality (age of household head, parental education, region of residence). Columns (1) and (3) include no other control variables. Columns (2) and (4) include all standard controls. For students, these are: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. For classrooms, these are: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
* ===============================================================

* TABLE A11: ROBUSTNESS TO DIFFERENT GEOGRAPHIC RESTRICTIONS

* ===============================================================

label var ts "standardized eighth-grade test score"
label var ts_math "standardized-eighth grade Mathematics test score"
label var ts_span "standardized-eighth grade Language test score"


label var post_st_exp "Effect of own damage"
label var post_loo_mean_damage  "Effect of average damage"
label var post_loo_sd_damage "Effect of st. dev. of damage"

est clear 


	* 1.5k
    reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & coastal_1p5k==0, cluster(rbd_unique) 
    eststo ts_1p5k
	estadd local km  "1.5 km"
	
reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1 & coastal_1p5k==0, cluster(rbd_unique) 
    eststo GPA_1p5k
	estadd local km  "1.5 km"
	
	* 1k
	 reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & coastal_1k==0, cluster(rbd_unique) 
    eststo ts_1k
	estadd local km  "1 km"
reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1 & coastal_1k==0, cluster(rbd_unique) 
    eststo GPA_1k
	estadd local km  "1 km"
	
	* 0p5k
	reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & coastal_0p5k==0, cluster(rbd_unique) 
    eststo ts_0p5k
	estadd local km  "0.5 km"
reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1 & coastal_0p5k==0, cluster(rbd_unique) 
    eststo GPA_0p5k
	estadd local km  "0.5 km"
	
	* All
	 reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov if earth_region_rbd ==1 , cluster(rbd_unique) 
    eststo ts_all
	estadd local km  "All towns"
reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1, cluster(rbd_unique) 
    eststo GPA_all
	estadd local km  "All towns"
	
	

	  * esttab command - ts, main body of text
   local varlabel : variable label ts 
    esttab ts_1p5k   ts_1k ts_0p5k ts_all  GPA_1p5k GPA_1k GPA_0p5k GPA_all  using "$output_tables/main_effects_ts_GPA_tsunami_2025.tex",  replace label booktabs b(3) se(3)   r2 scalars("km Geographic restriction")  ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    mtitles("(1)" "(2)" "(3)" "(4)" "(5)" "(6)" "(7)" "(8)" ) nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA under different geographical sample restrictions}"' ///
			`"\label{tab:effectststsunami}"' ///
            `"\begin{tabular}{l*{8}{c}}"' `"\toprule"' ///
			`"& \multicolumn{4}{c}{Test score} & \multicolumn{4}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake. Geographic restriction indicates the minimum distance from the coast required for a municipality to be included in the sample (e.g., 1 km means only municipalities at least 1 km from the coast; All towns includes all municipalities, including coastal ones). Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. In columns (1)-(4) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1. In columns (5)-(8) it is the GPA, also standardized. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 

* =====================================================

* TABLE A12: SPATIAL CORRELATION OF THE RESIDUALS

* ====================================================
* Clustering SE at school-municipality-by-cohort-level.

gen cod_com_rbd_unique = cod_com_rbd + post*100000

est clear 
label var ts "standardized eighth-grade test score"
label var GPA_std "standardized eight-grade GPA"


est clear 
    reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(cod_com_rbd_unique) 
    eststo nofe_ts
	reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(cod_com_rbd_unique) 
    eststo nofe_GPA

	* esttab command - ts, main body of text
   local varlabel : variable label ts 
    esttab nofe_ts   nofe_GPA    using "$output_tables/main_effects_spatcor_ts_2025_v2.tex",  replace label booktabs b(3) se(3)   r2 ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    mtitles("(1)" "(2)"  ) nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA, accounting for spatial correlation in the residuals}"' ///
			`"\label{tab:effectstsspatcor}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			`"& \multicolumn{1}{c}{Test score} & \multicolumn{1}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-municipality-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
* ====================================

* TABLE A16: MAIN EFFECTS WITH 
*            SCHOOL-BY-COHORT FE

* ====================================

tsset rbd_unique mrun 

label var ts "standardized eighth-grade test score"
label var ts_math "standardized eighth-grade Mathematics test score"
label var ts_span "standardized eighth-grade Language test score"
label var GPA_std "standardized eight-grade GPA"

est clear 
    xtreg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) fe
    eststo fe_ts
	xtreg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov      if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) fe
    eststo fe_GPA

	* esttab command - ts, main body of text
    local varlabel : variable label ts 
    esttab fe_ts   fe_GPA    using "$output_tables/main_effects_ts_GPA_fe.tex",  replace label booktabs b(3) se(3)   r2 ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    mtitles("(1)" "(2)"  ) nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on standardized eighth-grade test score and GPA, with school by cohort fixed effects}"' ///
			`"\label{tab:effectstsfe}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			`"& \multicolumn{1}{c}{Test score} & \multicolumn{1}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\tilde{\delta}$ obtained from OLS estimation of regression \eqref{regression1prime}. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. Regressions include school by cohort fixed effects and student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 

* -------------------------------------------------------------------------------------------

* Numbers in text: p-values for difference in coefficients in regressions w/ and w/ou FE 

* -------------------------------------------------------------------------------------------


* TS outcome 
* Build p-value for H_0 that the coefficient of post_loo_sd_damage in the regressions with the FE is equal to the coefficient of post_loo_sd_damage in the regressions without the FE 
est clear 

rename st_exp_reconstruction_alu_lca damage_indiv
global treatment_var_loo_16 = "damage_indiv loo_mean_damage_class loo_sd_damage_class "
global controls_indiv_damdet_16 = "age_hh_head peduc" // eliminate region from controls, drops out in within transformation and creates naming issues

* Pooled OLS
reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo_16 $controls_indiv_nodamdet $controls_indiv_damdet_16 $controls_group $intensity_rbd $controls_all_cov i.cod_reg_alu  if earth_region_rbd ==1 & ${proximity}==0
gen byte sample_reg = e(sample)   // mark the estimation sample
est store pooled


* De-mean variables within rbd_unique, on the same sample as pooled OLS
foreach v in ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo_16 $controls_indiv_nodamdet $controls_indiv_damdet_16 $controls_group $intensity_rbd $controls_all_cov {
    by rbd_unique: egen `v'_bar = mean(`v') if sample_reg
   quietly  gen `v'_tilde = `v' - `v'_bar if sample_reg
}


global treatment_var_loo_16_tilde = "damage_indiv_tilde loo_mean_damage_class_tilde loo_sd_damage_class_tilde "
global controls_indiv_nodamdet_tilde = "simce_avg_st_tilde female_r_tilde same_town_school_tilde " 
global controls_indiv_damdet_16_tilde = "age_hh_head_tilde peduc_tilde"
global controls_group_tilde = "class_size_r_tilde M_tilde rural_rbd_tilde mean_simce_avg_st_tilde mean_peduc_tilde sd_simce_avg_st_tilde sd_peduc_tilde mean_female_tilde mean_same_town_tilde "
global intensity_rbd_tilde = "intensity_rbd_tilde intensity_rbdXM_tilde intensity_rbdXpost_tilde intensity_rbdXpostXM_tilde postXM_tilde"	
global controls_all_cov_tilde = "cov_dam_female_tilde cov_dam_peduc_tilde cov_dam_same_town_tilde cov_dam_simce_tilde cov_female_same_town_tilde cov_peduc_female_tilde cov_peduc_same_town_tilde cov_simce_female_tilde cov_simce_peduc_tilde cov_simce_same_town_tilde"   


* FE-equivalent regression (within-school)
reg ts_tilde post_st_exp_tilde post_loo_mean_damage_tilde post_loo_sd_damage_tilde  post_tilde $treatment_var_loo_tilde $controls_indiv_nodamdet_tilde $controls_indiv_damdet_tilde $controls_group_tilde $intensity_rbd_tilde $controls_all_cov_tilde   if sample_reg & earth_region_rbd ==1 & ${proximity}==0  
est store fe_within

* Joint covariance of pooled and FE-within estimators
suest pooled fe_within, vce(cluster rbd_unique)

capture log close 
log using "$output_text/Section_4_1_1.txt", text replace

* =================================

* Numbers in text, section 4.1

* =================================

/*
 "Additionally, the impacts with and without the inclusion of fixed effects are statistically 
 indistinguishable: the p-values for equality are 0.413 for test scores and 0.371 for GPA."
*/
* p-value for equality, test scores outcome 
test [pooled_mean]post_loo_sd_damage = [fe_within_mean]post_loo_sd_damage_tilde


log off



* GPA outcome 
* Build p-value for H_0 that the coefficient of post_loo_sd_damage in the regressions with the FE is equal to the coefficient of post_loo_sd_damage in the regressions without the FE 
est clear 
drop sample_reg 

* Pooled OLS
reg GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo_16 $controls_indiv_nodamdet $controls_indiv_damdet_16 $controls_group $intensity_rbd $controls_all_cov i.cod_reg_alu  if earth_region_rbd ==1 & ${proximity}==0
gen byte sample_reg = e(sample)   // mark the estimation sample
est store pooled


* De-mean variables within rbd_unique, on the same sample as pooled OLS
foreach v in GPA_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo_16 $controls_indiv_nodamdet $controls_indiv_damdet_16 $controls_group $intensity_rbd $controls_all_cov {
    by rbd_unique: egen `v'_bar2 = mean(`v') if sample_reg
  quietly  gen `v'_tilde2 = `v' - `v'_bar2 if sample_reg
}


global treatment_var_loo_16_tilde2 = "damage_indiv_tilde2 loo_mean_damage_class_tilde2 loo_sd_damage_class_tilde2 "
global controls_indiv_nodamdet_tilde2 = "simce_avg_st_tilde2 female_r_tilde2 same_town_school_tilde2 " 
global controls_indiv_damdet_16_tilde2 = "age_hh_head_tilde2 peduc_tilde2"
global controls_group_tilde2 = "class_size_r_tilde2 M_tilde2 rural_rbd_tilde2 mean_simce_avg_st_tilde2 mean_peduc_tilde2 sd_simce_avg_st_tilde2 sd_peduc_tilde2 mean_female_tilde2 mean_same_town_tilde2 "
global intensity_rbd_tilde2 = "intensity_rbd_tilde2 intensity_rbdXM_tilde2 intensity_rbdXpost_tilde2 intensity_rbdXpostXM_tilde2 postXM_tilde2"	
global controls_all_cov_tilde2 = "cov_dam_female_tilde2 cov_dam_peduc_tilde2 cov_dam_same_town_tilde2 cov_dam_simce_tilde2 cov_female_same_town_tilde2 cov_peduc_female_tilde2 cov_peduc_same_town_tilde2 cov_simce_female_tilde2 cov_simce_peduc_tilde2 cov_simce_same_town_tilde2"   


* FE-equivalent regression (within-school)
reg GPA_std_tilde2 post_st_exp_tilde2 post_loo_mean_damage_tilde2 post_loo_sd_damage_tilde2  post_tilde2 $treatment_var_loo_tilde2 $controls_indiv_nodamdet_tilde2 $controls_indiv_damdet_tilde2 $controls_group_tilde2 $intensity_rbd_tilde2 $controls_all_cov_tilde2   if sample_reg & earth_region_rbd ==1 & ${proximity}==0  
est store fe_within

* Joint covariance of pooled and FE-within estimators
suest pooled fe_within, vce(cluster rbd_unique)

* Look at names of equations and coefficients
*matrix list e(b)


log on 
* p-value for equality, GPA outcome
test [pooled_mean]post_loo_sd_damage = [fe_within_mean]post_loo_sd_damage_tilde2
log close


