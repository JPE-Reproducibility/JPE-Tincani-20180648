// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file estimates effects on mediating factors. 



* -----------------------------------------------

* Table with effects on curriculum covered

* -----------------------------------------------


    clear all
	use $cleaned/data_final_for_regs_teach_all
	
	
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
	
	
	
	
	* Labeling the new interaction variables
	label variable post_st_exp "Effect of damage to own home"
	label variable post_loo_mean_damage "Effect of average damage among classmates"
	label variable post_loo_sd_damage "Effect of standard deviation of damage among classmates"
	

	
	

	* Generate interaction variables using the non-loo (loo = leave one out) classroom variables (since regressions are at classroom, not student level)
	gen post_mean_damage = post * mean_damage_class
	gen post_sd_damage = post * sd_damage_class

	
	* 3. Label new interaction variables
	label variable post_mean_damage "Effect of average damage among classmates"
	label variable post_sd_damage "Effect of standard deviation of damage among classmates"

	
	* 4. Label teacher survey variables
	rename curriculum_leng cl 
	label variable cl "Language"
	rename curriculum_mate cm
	label variable cm "Mathematics"
	
	* 5. Run regressions 
		est clear
		foreach var of varlist cl cm  {
		local varlabel : variable label `var' 


		reg `var' post_mean_damage  post_sd_damage post mean_damage_class sd_damage_class $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & class_index==1 & ${proximity}==0, cluster(rbd_unique) 
		eststo nofe_`var' 

		}
		
		** Store file with confidence intervals 

		local models "nofe_cl   nofe_cm  "
		local params "post_mean_damage post_sd_damage"

		tempname fh
		file open `fh' using "$output_tables/med_effects_curriculum_CIs_2025.tex", write replace

		foreach m of local models {
			est restore `m'
			local tcrit = invttail(e(df_r), 0.025)  // two-sided 95%
			foreach p of local params {
			local lo  = _b[`p'] - `tcrit' * _se[`p']
			local hi  = _b[`p'] + `tcrit' * _se[`p']
			local lo3 : display %9.3f `lo'
			local hi3 : display %9.3f `hi'

        // Build a simple macro name: remove underscores just to be LaTeX-safe
        local mac = subinstr("`m'_`p'", "_", "", .)

        // Write a LaTeX macro to use in the text body
        file write `fh' "\newcommand{\CI`mac'}{[`lo3', `hi3']}" _n
		}
	}
	file close `fh'

		
		* esttab command for Table 
		
	    esttab nofe_cl   nofe_cm   using "$output_tables/med_effects_curriculum_2025.tex", replace label booktabs b(3)  se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep( post_mean_damage  post_sd_damage  ) /// 
    order( post_mean_damage  post_sd_damage    ) ///
   nonum collabels(none) /// 
    prehead(`"\begin{table}[h]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on the percentage of the curriculum covered in class}"' ///
			`"\label{tab:medeffectcv}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			 `"&  (1) & (2)   \\ "') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Schools in regions affected by the earthquake, located more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regressions \eqref{regression1het}, where the unit of observation is the classroom. The outcome variables were collected through surveys administered to Language and Spanish teachers. They are the percentages of the Language (column 1) and Mathematics (column 2) curricula they covered. Regressions include school and classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Standard errors clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 	
			 
			 
			 

* Numbers in text:
capture log close
log using "$output_text/Section_4_1_2.txt", text replace
/*
* In-text numbers, section 4.1.2.
" On average, Language teachers cover $65.8\%$ of the curriculum, and Mathematics teachers $63.1\%$."" 
*/
sum cl cm if class_index==1 

/*
* In-text confidence intervals are saved in $output_tables/med_effects_curriculum_CIs_2025.tex and compiled
directly in the text.
*/

log close




* ----------------------------------------------------------

* Table with effects on cost of effort and course engagement 

* ----------------------------------------------------------



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
	

	* Labeling interaction variables
	label variable post_st_exp "Effect of damage to own home"
	label variable post_loo_mean_damage "Effect of average damage among classmates"
	label variable post_loo_sd_damage "Effect of standard deviation of damage among classmates"
	label variable post_st_exp_simce "Interacted with baseline test score"
	label variable post_loo_mean_damage_simce "Interacted with baseline test score"
	label variable post_loo_sd_damage_simce "Interacted with baseline test score"
	
	
	

est clear 

foreach var of varlist effort_cost_std engagement_std    {
	
	
	* Regressions 
    reg `var' post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo nofeni_`var' 
    
}
	
	label var effort_cost_std "Effort cost"
	label var engagement_std "Course engagement"

	local varlabeleffortc : variable label effort_cost_std
	local varlabelengage : variable label engagement_std

	esttab nofeni_effort_cost_std      nofeni_engagement_std      using "$output_tables/med_effects.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage    ) /// 
    order(post_st_exp  post_loo_mean_damage  post_loo_sd_damage   ) ///  
   nonum collabels(none) /// 
    prehead(`"\begin{table}[h!]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Impacts of earthquake damages on student cost of effort and course engagement}"' ///
			`"\label{tab:medeffectallni}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			 `"&  (1) & (2) \\ "') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and resding more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1het}. The outcome variables, perceived cost of study effort and engagement with the course, are built from items from the survey administered in eighth grade, using the procedure described in Appendix \ref{sec:surveyeffort}. Regressions include student and classroom characteristics. Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 	
			 
			 
			 
			 
			 
* -----------------------------------------------------------------------------------------

* Figures with impacts of mean and standard deviation of damages
* on GPA rank by baseline test score

* -----------------------------------------------------------------------------------------

* --------------------------
* Effects on GPA rank 
* -------------------------
est clear  
reg rank_GPA post_st_exp c.post_st_exp#c.simce_avg_st ///
 post_loo_mean_damage c.post_loo_mean_damage#c.simce_avg_st ///
 post_loo_sd_damage c.post_loo_sd_damage#c.simce_avg_st ///
 i.post##c.simce_avg_st ///
 $treatment_var_loo c.($treatment_var_loo)#c.simce_avg_st  $controls_indiv_damdet  simce_avg_st $controls_indiv_nodamdet_noa $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 

* For post_loo_mean_damage
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
		  yscale(range(-0.2 0.2)) ylabel(-0.2(0.1)0.2) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA rank") ///
           xtitle("Baseline test score") ///
           title("Average", size(medlarge))
    graph save "$trash/GPArank_mean_simce_nofe.gph", replace
	graph export "$output_figures/heteffects_GPArankmean_bysimce.png" , replace
restore


	* For post_loo_sd_damage
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(90) ///
    saving("$trash/s_postmean90.dta", replace)
margins, dydx(post_loo_sd_damage) at(simce_avg_st=(-2(1)2)) level(80) ///
    saving("$trash/s_postmean80.dta", replace)	
		
	
	
	preserve
    * Prep 90% file: keep only CI bounds and x-var
    use "$trash/s_postmean90.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb90 ci_ub90)
    keep   _at1 ci_lb90 ci_ub90
    save "$trash/s_postmean90.dta", replace 

    * Prep 80% file (master; keeps _margin which we'll plot)
    use "$trash/s_postmean80.dta", clear
    rename (_ci_lb _ci_ub) (ci_lb80 ci_ub80)

    merge 1:1 _n using "$trash/s_postmean90.dta", nogen
	
  	
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
		  yscale(range(-0.2 0.2)) ylabel(-0.2(0.1)0.2) ///
           yline(0, lcolor(black)) ///
           ytitle("Effect on GPA rank") ///
           xtitle("Baseline test score") ///
           title("Standard deviation", size(medlarge))
    graph save "$trash/GPArank_sd_simce_nofe.gph", replace
	graph export "$output_figures/heteffects_GPAranksd_bysimce.png" , replace
restore
	
	

	
	
	
	
	
	capture erase "$trash/m_postmean80.dta"
	capture erase "$trash/m_postmean90.dta"
	capture erase "$trash/s_postmean80.dta"
	capture erase "$trash/s_postmean90.dta"
	capture erase "$trash/GPArank_sd_simce_nofe.gph"
	capture erase "$trash/GPArank_mean_simce_nofe.gph"
	capture erase "$trash/heteffects_GPArank_bysimce.gph"
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
