// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file generates the analyses of effect heterogeneity.


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

	
	egen peduc_st=std(peduc)
    egen hhincome_lagged_st=std(hhincome_lagged)
	
	xtset rbd_unique mrun
	
	
	gen post_st_exp_gpa4 = post_st_exp * GPA_4
	gen post_loo_mean_damage_gpa4 = post_loo_mean_damage * GPA_4
	gen post_loo_sd_damage_gpa4 = post_loo_sd_damage * GPA_4
	
	egen GPA4=std(GPA_4)
	

	
	
	* Labeling the new interaction variables
	label variable post_st_exp "Effect of damage to own home"
	label variable post_loo_mean_damage "Effect of average damage among classmates"
	label variable post_loo_sd_damage "Effect of standard deviation of damage among classmates"
	label variable post_st_exp_simce "Interacted with baseline test score"
	label variable post_loo_mean_damage_simce "Interacted with baseline test score"
	label variable post_loo_sd_damage_simce "Interacted with baseline test score"
	label variable post_st_exp_gpa4 "Interacted with baseline GPA"
	label variable post_loo_mean_damage_gpa4 "Interacted with baseline GPA"
	label variable post_loo_sd_damage_gpa4 "Interacted with baseline GPA"

	
    * Generate standardized measures of treatment variables and their interactions
	egen st_loo_mean_damage_class=std(loo_mean_damage_class)
	egen st_loo_sd_damage_class=std(loo_sd_damage_class)

	gen post_st_loo_mean_damage = post * st_loo_mean_damage_class
	gen post_st_loo_sd_damage = post * st_loo_sd_damage_class
	
	gen post_st_loo_mean_damage_simce = post_st_loo_mean_damage * simce_avg_st
	gen post_st_loo_sd_damage_simce = post_st_loo_sd_damage * simce_avg_st
	
	
	label variable post_st_loo_mean_damage "Effect of average damage among classmates"
	label variable post_st_loo_sd_damage "Effect of standard deviation of damage among classmates"
	

	label variable post_st_loo_mean_damage_simce "Interacted with baseline test score"
	label variable post_st_loo_sd_damage_simce "Interacted with baseline test score"

	
	* Generate interaction terms for appendix table where all student characteristics are interacted
	gen post_st_exp_peduc = post_st_exp * peduc_st
	gen post_loo_mean_damage_peduc = post_loo_mean_damage * peduc_st
	gen post_loo_sd_damage_peduc = post_loo_sd_damage * peduc_st
	
    label variable post_st_exp_peduc "Interacted with parental education"
	label variable post_loo_mean_damage_peduc "Interacted with parental education"
	label variable post_loo_sd_damage_peduc "Interacted with parental education"
	
	gen post_st_exp_female = post_st_exp * female_r
	gen post_loo_mean_damage_female = post_loo_mean_damage * female_r
	gen post_loo_sd_damage_female = post_loo_sd_damage * female_r
	
    label variable post_st_exp_female "Interacted with female dummy"
	label variable post_loo_mean_damage_female "Interacted with female dummy"
	label variable post_loo_sd_damage_female "Interacted with female dummy"
	
	gen post_st_exp_hhincome = post_st_exp * hhincome_lagged_st
	gen post_loo_mean_damage_hhincome = post_loo_mean_damage * hhincome_lagged_st
	gen post_loo_sd_damage_hhincome = post_loo_sd_damage * hhincome_lagged_st
	
    label variable post_st_exp_hhincome "Interacted with income"
	label variable post_loo_mean_damage_hhincome "Interacted with income"
	label variable post_loo_sd_damage_hhincome "Interacted with income"

	
	* Generate deciles for appendix table
	xtile decile = simce_avg_st, nq(10)


		
	
	
* ===================================================================================================================================================
* REGRESSION ANALYSES. 
* ====================================================================================================================================================

*-----------------------------

* INTERACTIONS WITH SIMCE

* ----------------------------
* -----------------------------------------------------------------------
* TABLE 6
* Outcomes = test score (average between mathematics and spanish) and GPA
* -----------------------------------------------------------------------

est clear 


label var ts "standardized eighth-grade test score"
local varlabel : variable label ts
label var GPA_std "Endline GPA"

label var post_loo_mean_damage "Effect of average damage among classmates"
label var post_loo_sd_damage "Effect of standard deviation of damage among classmates"


gen SIMCE=simce_avg_st 
local variables SIMCE /// 


 foreach var in `variables' { //  
* generate interaction terms 
gen post_dam_`var'=post_st_exp*`var' 

gen post_loo_mean_dam_`var'=post_loo_mean_damage*`var' 

gen post_loo_sd_damage_`var'=post_loo_sd_damage*`var'

 } 
 
 label var post_dam_SIMCE "Interacted with baseline test score"
 label var post_loo_mean_dam_SIMCE "Interacted with baseline test score"
 label var  post_loo_sd_damage_SIMCE "Interacted with baseline test score"

 
 * Regressions 
  reg ts post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE post_loo_sd_damage post_loo_sd_damage_SIMCE  post $treatment_var_loo c.($treatment_var_loo)#c.SIMCE  i.post#c.SIMCE   $controls_indiv_damdet $controls_indiv_nodamdet_noa SIMCE  $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m_ts 
	

	  reg GPA_std post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE post_loo_sd_damage post_loo_sd_damage_SIMCE  post $treatment_var_loo c.($treatment_var_loo)#c.SIMCE  i.post#c.SIMCE $controls_indiv_damdet  $controls_indiv_nodamdet_noa SIMCE  $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m_GPA 
	
	
	* esttab command
    esttab m_ts m_GPA   using "$output_tables/het_effects_ts_GPA_bysimce.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE  post_loo_sd_damage post_loo_sd_damage_SIMCE   ) /// 
    order(post_st_exp post_dam_SIMCE  post_loo_mean_damage post_loo_mean_dam_SIMCE   post_loo_sd_damage post_loo_sd_damage_SIMCE   ) ///
	mgroups("(1)" "(2)", pattern(1 1) prefix(\multicolumn{1}{c}{) suffix(}) span) ///
    mtitles("Test score" "GPA (std)") nonum collabels(none) ///
    prehead(`"\begin{table}[h!]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Heterogeneous impacts of earthquake damages on standardized eighth-grade test score and GPA by baseline test scores}"' ///
			`"\label{tab:heteffectsts}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regression \eqref{regression1het}. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 

	
* ------------------------------------------------

* INTERACTIONS WITH SIMCE DECILES (APPENDIX TABLE)

* -----------------------------------------------
label var ts "standardized eighth-grade test score"
label var ts_math "standardized eighth-grade Mathematics test score"
label var ts_span "standardized eighth-grade Language test score"
label var GPA_std "standardized eight-grade GPA"


* Generating new interaction terms
forval i = 2(1)10 {
    gen post_st_exp_d`i' = post_st_exp if decile==`i'
    replace post_st_exp_d`i' = 0 if post_st_exp_d`i'==.
    
    gen post_loo_mean_damage_d`i' = post_loo_mean_damage if decile == `i'
    replace post_loo_mean_damage_d`i' = 0 if post_loo_mean_damage_d`i' == .
    
    gen post_loo_sd_damage_d`i' = post_loo_sd_damage if decile == `i'
    replace post_loo_sd_damage_d`i' = 0 if post_loo_sd_damage_d`i' == .
}

gen post_st_exp_d1 = post_st_exp 
gen post_loo_mean_damage_d1 =  post_loo_mean_damage
gen post_loo_sd_damage_d1  = post_loo_sd_damage

label var post_st_exp_d1 "Effect of damage to own home for decile 1 baseline score"
label var post_loo_mean_damage_d1 "Effect of average damage among classmates for decile 1 baseline score"
label var post_loo_sd_damage_d1 "Effect of st dev of damages among classmates for decile 1 baseline score"

* Labeling the new interaction variables
forval i = 2(1)10 {
    label var post_st_exp_d`i' "Additional effect for decile `i' baseline score"
    label var post_loo_mean_damage_d`i' "Additional effect for decile `i' baseline score"
    label var post_loo_sd_damage_d`i' "Additional effect for decile `i' baseline score"
}

label var ts "Score"
label var GPA_std "GPA (std)"

est clear 
     * Regressions
    reg ts post_st_exp_d* post_loo_mean_damage_d* post_loo_sd_damage_d* i.decile i.decile#c.($treatment_var_loo) i.decile#i.post post $treatment_var_loo $controls_indiv_damdet $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)
    eststo nofe_ts
 
    reg GPA_std post_st_exp_d* post_loo_mean_damage_d* post_loo_sd_damage_d* i.decile i.decile#c.($treatment_var_loo) i.decile#i.post post $treatment_var_loo $controls_indiv_damdet $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)
    eststo nofe_GPA


		esttab nofe_ts nofe_GPA using "$output_tables/het_effects_ts_deciles_2025.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp_d* post_loo_mean_damage_d* post_loo_sd_damage_d* ) ///
    order(post_st_exp_d1 post_st_exp_d2 post_st_exp_d3 post_st_exp_d4 post_st_exp_d5 post_st_exp_d6 post_st_exp_d7 post_st_exp_d8 post_st_exp_d9 post_st_exp_d10 ///
          post_loo_mean_damage_d1 post_loo_mean_damage_d2 post_loo_mean_damage_d3 post_loo_mean_damage_d4 post_loo_mean_damage_d5 post_loo_mean_damage_d6 ///
          post_loo_mean_damage_d7 post_loo_mean_damage_d8 post_loo_mean_damage_d9 post_loo_mean_damage_d10 ///
          post_loo_sd_damage_d1 post_loo_sd_damage_d2 post_loo_sd_damage_d3 post_loo_sd_damage_d4 post_loo_sd_damage_d5 post_loo_sd_damage_d6 ///
          post_loo_sd_damage_d7 post_loo_sd_damage_d8 post_loo_sd_damage_d9 post_loo_sd_damage_d10) ///
    nonum collabels(none) ///
    prehead(`"\begingroup\small\setlength{\tabcolsep}{4pt}\renewcommand{\arraystretch}{0.9}"' ///
            `"\scriptsize \begin{longtable}{@{}lcc@{}}"' ///
            `"\caption{Heterogeneous impacts of earthquake damages on standardized eighth-grade test scores and GPA by deciles of baseline test scores}\label{tab:heteffectsdecilesall}\\ "' ///
            `"\toprule"' ///
            `" & (1) & (2) \\\\ \midrule \endfirsthead"' ///
            `"\toprule  & (1) & (2) \\\\ \midrule \endhead"' ///
            `"\midrule \multicolumn{3}{r}{Continued on next page} \\\\ \midrule \endfoot"' ///
            `"\bottomrule \endlastfoot"' ) ///
    postfoot( `"\bottomrule"' ///
              `"\end{longtable}"' ///
              `" \vspace{-5pt}\noindent\begingroup\footnotesize\setlength{\baselineskip}{0.9\baselineskip}\setlength{\parskip}{0pt}"' ///
              `"\scriptsize {\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regressions \eqref{regression1het}, where {\it a} is replaced by dummy variables identifying a student's fourth-grade test score (SIMCE) decile. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
              `"\par\endgroup\endgroup"' )
			  
			  
			  
		
		
* -------------------------------------------------------------------

* Interactions with all student characteristics, Appendix Table 

* -------------------------------------------------------------------
	
label var ts "standardized eighth-grade test score"
label var GPA_std "standardized eight-grade GPA"
local varlabel : variable label ts
    est clear 
    * Regressions 
	    reg ts post_st_exp post_st_exp_simce post_st_exp_peduc post_st_exp_female post_st_exp_hhincome  post_loo_mean_damage post_loo_mean_damage_simce post_loo_mean_damage_peduc post_loo_mean_damage_female post_loo_mean_damage_hhincome post_loo_sd_damage post_loo_sd_damage_simce post_loo_sd_damage_peduc post_loo_sd_damage_female post_loo_sd_damage_hhincome  post $treatment_var_loo c.($treatment_var_loo)#c.($controls_indiv_interacted_cts) c.($treatment_var_loo)#i.($controls_indiv_interacted_int)  i.post#c.($controls_indiv_interacted_cts)  i.post#i.($controls_indiv_interacted_int) $controls_indiv_interacted_cts $controls_indiv_interacted_int $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_ts

    
	    reg GPA_std post_st_exp post_st_exp_simce post_st_exp_peduc post_st_exp_female post_st_exp_hhincome  post_loo_mean_damage post_loo_mean_damage_simce post_loo_mean_damage_peduc post_loo_mean_damage_female post_loo_mean_damage_hhincome post_loo_sd_damage post_loo_sd_damage_simce post_loo_sd_damage_peduc post_loo_sd_damage_female post_loo_sd_damage_hhincome  post $treatment_var_loo c.($treatment_var_loo)#c.($controls_indiv_interacted_cts) c.($treatment_var_loo)#i.($controls_indiv_interacted_int)  i.post#c.($controls_indiv_interacted_cts)  i.post#i.($controls_indiv_interacted_int) $controls_indiv_interacted_cts $controls_indiv_interacted_int $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofe_GPA


	 * esttab command
    esttab nofe_ts nofe_GPA using "$output_tables/het_effects_ts_allint.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_st_exp_simce post_st_exp_peduc post_st_exp_female post_st_exp_hhincome  post_loo_mean_damage post_loo_mean_damage_simce post_loo_mean_damage_peduc post_loo_mean_damage_female post_loo_mean_damage_hhincome post_loo_sd_damage post_loo_sd_damage_simce post_loo_sd_damage_peduc post_loo_sd_damage_female post_loo_sd_damage_hhincome ) /// 
    order(post_st_exp post_st_exp_simce post_st_exp_peduc post_st_exp_female post_st_exp_hhincome  post_loo_mean_damage post_loo_mean_damage_simce post_loo_mean_damage_peduc post_loo_mean_damage_female post_loo_mean_damage_hhincome post_loo_sd_damage post_loo_sd_damage_simce post_loo_sd_damage_peduc post_loo_sd_damage_female post_loo_sd_damage_hhincome ) ///
	mtitles("(1)" "(2)") nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Heterogeneous impacts of earthquake damages on standardized eighth-grade test score and GPA by student characteristics}"' ///
			`"\label{tab:heteffectstsallint}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of a variation of regression \eqref{regression1het} that includes further interactions. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. Lagged test score, parental education and lagged household income are standardized to have mean 0 and unit variance. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental educational, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
	
	
	
	
* ---------------------------------------------------

* Robustness to controls 

* ---------------------------------------------------

est clear 


label var ts "standardized eighth-grade test score"
local varlabel : variable label ts
label var GPA_std "Endline GPA"

label var post_loo_mean_damage "Effect of average damage among classmates"
label var post_loo_sd_damage "Effect of standard deviation of damage among classmates"

 
 label var post_dam_SIMCE "Interacted with baseline test score"
 label var post_loo_mean_dam_SIMCE "Interacted with baseline test score"
 label var  post_loo_sd_damage_SIMCE "Interacted with baseline test score"

 
 
 
  * Regressions without controls
  reg ts post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE post_loo_sd_damage post_loo_sd_damage_SIMCE  post $treatment_var_loo c.($treatment_var_loo)#c.SIMCE  i.post#c.SIMCE   $controls_indiv_damdet   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m_ts_no
	 estadd local controls "No"
	

	  reg GPA_std post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE post_loo_sd_damage post_loo_sd_damage_SIMCE  post $treatment_var_loo c.($treatment_var_loo)#c.SIMCE  i.post#c.SIMCE $controls_indiv_damdet     if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m_GPA_no
	 estadd local controls "No"
	 
	 
	 
 * Regressions with controls
  reg ts post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE post_loo_sd_damage post_loo_sd_damage_SIMCE  post $treatment_var_loo c.($treatment_var_loo)#c.SIMCE  i.post#c.SIMCE   $controls_indiv_damdet $controls_indiv_nodamdet_noa SIMCE  $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m_ts 
	 estadd local controls "Yes"
	

	  reg GPA_std post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE post_loo_sd_damage post_loo_sd_damage_SIMCE  post $treatment_var_loo c.($treatment_var_loo)#c.SIMCE  i.post#c.SIMCE $controls_indiv_damdet  $controls_indiv_nodamdet_noa SIMCE  $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m_GPA 
	 estadd local controls "Yes"
	
	
	    * esttab command
    esttab m_ts_no m_ts m_GPA_no m_GPA   using "$output_tables/het_effects_ts_GPA_bysimcecontrolsyn.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
	 scalars("controls Controls") ///
    keep(post_st_exp post_dam_SIMCE post_loo_mean_damage post_loo_mean_dam_SIMCE  post_loo_sd_damage post_loo_sd_damage_SIMCE   ) /// 
    order(post_st_exp post_dam_SIMCE  post_loo_mean_damage post_loo_mean_dam_SIMCE   post_loo_sd_damage post_loo_sd_damage_SIMCE   ) ///
	 mtitles("(1)" "(2)" "(3)" "(4)"  ) nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Heterogeneous impacts of earthquake damages on standardized eighth-grade test score and GPA by baseline test scores, robustness to controls}"' ///
			`"\label{tab:heteffectstscontrolsyn}"' ///
           `"\begin{tabular}{l*{4}{c}}"' `"\toprule"' ///
			`"& \multicolumn{2}{c}{Test score} & \multicolumn{2}{c}{GPA (std)} \\   \addlinespace "' ) ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regression \eqref{regression1het}. The outcome variables are measured in eighth grade. In columns (1) and (2) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in columns (3) and (4) it is the GPA, also standardized. All regressions include controls for the student characteristics used to predict home quality (age of household head, parental education, region of residence). Columns (1) and (3) include no other control variables. Columns (2) and (4) include all standard controls. For students, these are: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. For classrooms, these are: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
			 
* ------------------------------------------------------------------------

* Appendix Table with interactions with treatment, all treatment variables 
* standardized w.r.t. their own distribution 

* ----------------------------------------------------------------------- 

	est clear 
	reg ts post_st_exp post_dam_SIMCE post_st_loo_mean_damage post_st_loo_mean_damage_simce post_st_loo_sd_damage post_st_loo_sd_damage_simce  i.post##c.simce_avg_st $treatment_var_st_loo c.($treatment_var_st_loo)#c.simce_avg_st    $controls_indiv_damdet $controls_indiv_nodamdet_noa simce_avg_st $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)  
	eststo m_ts
	
	reg GPA_std post_st_exp post_dam_SIMCE post_st_loo_mean_damage post_st_loo_mean_damage_simce post_st_loo_sd_damage post_st_loo_sd_damage_simce  i.post##c.simce_avg_st $treatment_var_st_loo c.($treatment_var_st_loo)#c.simce_avg_st    $controls_indiv_damdet $controls_indiv_nodamdet_noa simce_avg_st $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)
	eststo m_GPA
	
	
	    * esttab command
    esttab m_ts m_GPA   using "$output_tables/het_effects_st_ts_GPA_bysimce.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_dam_SIMCE post_st_loo_mean_damage post_st_loo_mean_damage_simce  post_st_loo_sd_damage post_st_loo_sd_damage_simce   ) /// 
    order(post_st_exp post_dam_SIMCE post_st_loo_mean_damage post_st_loo_mean_damage_simce  post_st_loo_sd_damage post_st_loo_sd_damage_simce    ) ///
	mgroups("(1)" "(2)", pattern(1 1) prefix(\multicolumn{1}{c}{) suffix(}) span) ///
    mtitles("Test score" "GPA (std)") nonum collabels(none) ///
    prehead(`"\FloatBarrier \begin{table}[H]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Heterogeneous impacts of earthquake damages on standardized eighth-grade test score and GPA by baseline test scores, all treatment variables measured in standard deviations}"' ///
			`"\label{tab:heteffectstsst}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regression \eqref{regression1het}. The outcome variables are measured in eighth grade. In column (1) the outcome is the average between Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1, in column (2) it is the GPA, also standardized. The treatment variables are standardized to have mean zero and variance one in the estimation sample. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 


			 
			 
* -------------------------------------------------------------------------------------------------------

* Figure with main het effects: effects on test scores and endline GPA by baseline simce, without FE

* -------------------------------------------------------------------------------------------------------

	
	est clear  
reg ts post_st_exp c.post_st_exp#c.simce_avg_st ///
post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st  ///
i.post##c.simce_avg_st ///
 $treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st    $controls_indiv_damdet $controls_indiv_nodamdet_noa simce_avg_st $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)  
 
 
*------------------------------------------------------------*
* Marginal effect of post_loo_mean_damage at simce_avg_st grid
* Plot 80% and 90% CIs together  
*------------------------------------------------------------*
* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postmean90.dta", replace)
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postmean80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postmean90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on test scores") ///
           xtitle("Baseline test score ") ///
           title("Average", size(medlarge))
    graph save "$trash/ts_mean_simce_nofe.gph", replace
restore


	* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postsd90.dta", replace)
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postsd80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postsd90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postsd90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postsd80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postsd90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on test scores") ///
           xtitle("Baseline test score ") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/ts_sd_simce_nofe.gph", replace
restore


	est clear  
	
	reg GPA_std post_st_exp c.post_st_exp#c.simce_avg_st ///
	post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
	post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st  ///
	i.post##c.simce_avg_st ///
	$treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st  $controls_indiv_damdet simce_avg_st $controls_indiv_nodamdet_noa $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 


* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postmean90.dta", replace)
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postmean80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postmean90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA (std)") ///
           xtitle("Baseline test score") ///
           title("Average", size(medlarge))
    graph save "$trash/GPA_mean_simce_nofe.gph", replace
restore


	
	est clear  
	*   effects on GPA
	reg GPA_std post_st_exp c.post_st_exp#c.simce_avg_st ///
	post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
	post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st  ///
	i.post##c.simce_avg_st ///
	$treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st $controls_indiv_damdet simce_avg_st $controls_indiv_nodamdet_noa $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
	
	* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postsd90.dta", replace)
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postsd80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postsd90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postsd90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postsd80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postsd90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA (std)") ///
           xtitle("Baseline test score") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/GPA_sd_simce_nofe.gph", replace
restore



	kdensity simce_avg_st if e(sample)==1 &  simce_avg_st >= -2.5  & simce_avg_st<=2.5 , ///
	xscale(range(-2 2)) xlabel(-2(2)2) fcolor(navy) lcolor(navy) /// ///
	graphregion(color(white)) title("Distribution of baseline test scores", size(medlarge)) ///
	saving("$trash/distribution_simce_nofe.gph", replace)
	
 
 
	
	graph combine "$trash/ts_mean_simce_nofe.gph" "$trash/ts_sd_simce_nofe.gph" "$trash/GPA_mean_simce_nofe.gph" "$trash/GPA_sd_simce_nofe.gph" "$trash/distribution_simce_nofe.gph", r(2) c(3) holes(3) ///
	graphregion(color(white)) ///	
	saving("$trash/heteffects_ts_GPA_by_simce_nofe.gph", replace) 
	graph export "$output_figures/heteffects_ts_GPA_by_simce_nofe.png" , replace
	
	* Erase from disk gph and dta files that are not needed
	capture erase "$trash/ts_mean_simce_nofe.gph"
	capture erase "$trash/ts_sd_simce_nofe.gph"
	capture erase "$trash/GPA_mean_simce_nofe.gph"
	capture erase "$trash/GPA_sd_simce_nofe.gph"
	capture erase "$trash/m_postmean80.dta"
	capture erase "$trash/m_postmean90.dta"
	capture erase "$trash/distribution_simce_nofe.gph"
	capture erase "$trash/m_postsd90.dta"
	capture erase "$trash/m_postsd80.dta"
	capture erase "$trash/heteffects_ts_GPA_by_simce_nofe.gph"
	
	
	
* -------------------------------------------------------------------------------------------------------------

* Mech section Figure with main het effects: effects on test scores and endline GPA by baseline simce, with FE

* -------------------------------------------------------------------------------------------------------------	
	
est clear  
xtreg ts post_st_exp c.post_st_exp#c.simce_avg_st ///
post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st  ///
i.post##c.simce_avg_st ///
 $treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st    $controls_indiv_damdet $controls_indiv_nodamdet_noa simce_avg_st $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique)  fe



*------------------------------------------------------------*
* Marginal effect of post_loo_mean_damage at simce_avg_st grid
* Plot 80% and 90% CIs together  
*------------------------------------------------------------*
* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postmean90.dta", replace)
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postmean80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postmean90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on test scores") ///
           xtitle("Baseline test score ") ///
           title("Average", size(medlarge))
    graph save "$trash/ts_mean_simce_fe.gph", replace
restore


	
	* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postsd90.dta", replace)
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postsd80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postsd90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postsd90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postsd80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postsd90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on test scores") ///
           xtitle("Baseline test score ") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/ts_sd_simce_fe.gph", replace
restore

	kdensity simce_avg_st if e(sample)==1 &  simce_avg_st >= -2.5  & simce_avg_st<=2.5 , ///
	xscale(range(-2 2)) xlabel(-2(2)2) fcolor(navy) lcolor(navy) /// ///
	graphregion(color(white)) title("Distribution of baseline test scores", size(medlarge)) ///
	saving("$trash/distribution_simce_fe.gph", replace)


	
	
	

	
	
		est clear  
	
	xtreg GPA_std post_st_exp c.post_st_exp#c.simce_avg_st ///
	post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
	post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st  ///
	i.post##c.simce_avg_st ///
	$treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st  $controls_indiv_damdet simce_avg_st $controls_indiv_nodamdet_noa $controls_group $intensity_rbd  $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) fe


	
		
* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postmean90.dta", replace)
margins, dydx(post_loo_mean_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postmean80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postmean90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA (std)") ///
           xtitle("Baseline test score") ///
           title("Average", size(medlarge))
    graph save "$trash/GPA_mean_simce_fe.gph", replace
restore


	est clear  
	*   effects on GPA
	xtreg GPA_std post_st_exp c.post_st_exp#c.simce_avg_st ///
	post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
	post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st  ///
	i.post##c.simce_avg_st ///
	$treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st $controls_indiv_damdet simce_avg_st $controls_indiv_nodamdet_noa $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) fe


	
		
* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/m_postsd90.dta", replace)
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/m_postsd80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postsd90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postsd90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postsd80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postsd90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==-2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==-1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 0, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 1, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2== 2, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==-1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 0, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 1, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2== 2, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA (std)") ///
           xtitle("Baseline test score") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/GPA_sd_simce_fe.gph", replace
restore





	graph combine "$trash/ts_mean_simce_fe.gph" "$trash/ts_sd_simce_fe.gph" "$trash/GPA_mean_simce_fe.gph" "$trash/GPA_sd_simce_fe.gph" "$trash/distribution_simce_fe.gph", r(2) c(3) holes(3) ///
	graphregion(color(white)) ///	
	saving("$trash/heteffects_ts_GPA_by_simce_fe.gph", replace) 
	graph export "$output_figures/heteffects_ts_GPA_by_simce_fe.png" , replace
	
	
	* Erase from disk gph and dta data no longer needed
	capture erase "$trash/ts_mean_simce_fe.gph"
	capture erase "$trash/ts_sd_simce_fe.gph"
	capture erase "$trash/GPA_mean_simce_fe.gph"
	capture erase "$trash/GPA_sd_simce_fe.gph"
	capture erase "$trash/distribution_simce_fe.gph"
	capture erase "$trash/m_postmean80.dta"
	capture erase "$trash/m_postmean90.dta"
	capture erase "$trash/m_postsd80.dta"
	capture erase "$trash/m_postsd90.dta"
	capture erase "$trash/heteffects_ts_GPA_by_simce_fe.gph"
	
	
	

	
	
	
* -----------------------------------------------------

* Appendix figure with heterogeneity by baseline GPA4

* -----------------------------------------------------


est clear  
reg ts post_st_exp c.post_st_exp#c.GPA_4 ///
 post_loo_mean_damage c.post_loo_mean_damage#c.GPA_4 ///
 post_loo_sd_damage c.post_loo_sd_damage#c.GPA_4 ///
 i.post##c.GPA_4  $treatment_var_loo c.($treatment_var_loo)#c.GPA_4   $controls_indiv_damdet GPA_4  $controls_indiv_nodamdet_noa $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 

* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_mean_damage) at(GPA_4 =(4(1)7)) level(90) ///
    saving("$trash/m_postmean90.dta", replace)
margins, dydx(post_loo_mean_damage) at(GPA_4 =(4(1)7)) level(80) ///
    saving("$trash/m_postmean80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postmean90.dta", nogen
	
    twoway ///
        (rcap  ci_lb80 ci_ub80 _at2 if _at2==4, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==5, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==6, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==7, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==4, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==5, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==6, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==7, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
		  xscale(range(4 7)) xlabel(4(1)7) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on test scores") ///
           xtitle("Baseline GPA") ///
           title("Average", size(medlarge))
    graph save "$trash/ts_mean_GPA4_nofe.gph", replace
restore


* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_sd_damage) at(GPA_4 =(4(1)7)) level(90) ///
    saving("$trash/m_postsd90.dta", replace)
margins, dydx(post_loo_sd_damage) at(GPA_4 =(4(1)7)) level(80) ///
    saving("$trash/m_postsd80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postsd90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postsd90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postsd80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postsd90.dta", nogen
	
    twoway ///
        (rcap  ci_lb80 ci_ub80 _at2 if _at2==4, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==5, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==6, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==7, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==4, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==5, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==6, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==7, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
		  xscale(range(4 7)) xlabel(4(1)7) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on test scores") ///
           xtitle("Baseline GPA") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/ts_sd_GPA4_nofe.gph", replace
restore



	est clear  
	*  FE, effects on GPA by baseline GPA 
	reg GPA_std post_st_exp c.post_st_exp#c.GPA_4 ///
	post_loo_mean_damage c.post_loo_mean_damage#c.GPA_4 ///
	post_loo_sd_damage c.post_loo_sd_damage#c.GPA_4 ///
	i.post##c.GPA_4 ///
	$treatment_var_loo c.($treatment_var_loo)#c.GPA_4  $controls_indiv_damdet GPA_4 $controls_indiv_nodamdet_noa $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
	
	* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_mean_damage) at(GPA_4 =(4(1)7)) level(90) ///
    saving("$trash/m_postmean90.dta", replace)
margins, dydx(post_loo_mean_damage) at(GPA_4 =(4(1)7)) level(80) ///
    saving("$trash/m_postmean80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postmean90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==4, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==5, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==6, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==7, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==4, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==5, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==6, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==7, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
		  		  xscale(range(4 7)) xlabel(4(1)7) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA(std)") ///
           xtitle("Baseline GPA") ///
           title("Average", size(medlarge))
    graph save "$trash/GPA_mean_GPA4_nofe.gph", replace
restore


	est clear  
	reg GPA_std post_st_exp c.post_st_exp#c.GPA_4 ///
	post_loo_mean_damage c.post_loo_mean_damage#c.GPA_4 ///
	post_loo_sd_damage c.post_loo_sd_damage#c.GPA_4 ///
	i.post##c.GPA_4 ///
	$treatment_var_loo c.($treatment_var_loo)#c.GPA_4  $controls_indiv_damdet GPA_4 $controls_indiv_nodamdet_noa $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 

* Compute margins twice with different CI levels, save each
margins, dydx(post_loo_sd_damage) at(GPA_4 =(4(1)7)) level(90) ///
    saving("$trash/m_postsd90.dta", replace)
margins, dydx(post_loo_sd_damage) at(GPA_4 =(4(1)7)) level(80) ///
    saving("$trash/m_postsd80.dta", replace)
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/m_postsd90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/m_postsd90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/m_postsd80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/m_postsd90.dta", nogen
	
    twoway ///
          (rcap  ci_lb80 ci_ub80 _at2 if _at2==4, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==5, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==6, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb80 ci_ub80 _at2 if _at2==7, sort pstyle(ci) color(navy%50)  lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==4, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==5, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==6, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(rcap  ci_lb90 ci_ub90 _at2 if _at2==7, sort pstyle(ci) color(navy%40) lw(medium)) ///
        ||(line    _margin _at2,           sort lpattern(solid) lcolor(navy) lwidth(medium))   ///  << add line
        ||(scatter _margin _at2,                msymbol(O) mcolor(navy) msize(small))           ///  << add dots
          ,  graphregion(color(white)) legend(off) ///
		  yscale(range(-0.4 0.4)) ylabel(-0.4(0.2)0.4) ///
		  		  xscale(range(4 7)) xlabel(4(1)7) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA(std)") ///
           xtitle("Baseline GPA") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/GPA_sd_GPA4_nofe.gph", replace
restore

hist GPA_4 if e(sample)==1  , ///
fcolor(navy) lcolor(navy) ///
graphregion(color(white)) title("Distribution of baseline GPA", size(medlarge)) ///
saving("$trash/distribution_GPA_nofe.gph", replace)



	graph combine "$trash/ts_mean_GPA4_nofe.gph" "$trash/ts_sd_GPA4_nofe.gph"  "$trash/GPA_mean_GPA4_nofe.gph"  "$trash/GPA_sd_GPA4_nofe.gph"  "$trash/distribution_GPA_nofe.gph",  r(2) c(3) holes(3)  ///
	graphregion(color(white)) ///	
	saving("$trash/heteffects_ts_GPA_by_GPA4_nofe.gph", replace) 
	graph export "$output_figures/heteffects_ts_GPA_by_GPA4_nofe.png" , replace  
	
	* Erase from disk gph and dta files no longer needed
	capture erase "$trash/ts_mean_GPA4_nofe.gph"
	capture erase "$trash/ts_sd_GPA4_nofe.gph"
	capture erase "$trash/GPA_mean_GPA4_nofe.gph"
	capture erase "$trash/GPA_sd_GPA4_nofe.gph"
	capture erase "$trash/distribution_GPA_nofe.gph"
	capture erase "$trash/heteffects_ts_GPA_by_GPA4_nofe.gph"
	capture erase "$trash/m_postmean80.dta"
	capture erase "$trash/m_postmean90.dta"
	capture erase "$trash/m_postsd80.dta"
	capture erase "$trash/m_postsd90.dta"
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
			 
*