// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file performs tests of the identifying assumption.

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
	
	
	
	* --------------------------------------------------------------------------
	
	* Table with descriptive stats of switches across classrooms and schools
	
	* --------------------------------------------------------------------------
	 * Clean rendimiento datasets
		preserve 
	 	insheet using "$dataconf/raw/Rendimiento por estudiante 2010.csv", clear delimiter(";")
		** keep only students in 7th grade basico
        keep if cod_ense==110 & cod_grado==7
		destring prom_gral, replace dpcomma
        drop if prom_gral==0 // estudiantes retirados, not in that school anymore 

		* Keep only the required variables
		keep rbd let_cur mrun

		duplicates drop

		bysort mrun: gen mrun_number=_n
		bysort mrun: egen max=max(mrun_number)
		drop if max>1
		drop max  mrun_number

	 	* Rename 
		rename rbd     rbd_7_2010
		rename let_cur let_cur_7_2010

		save $trash/rendimiento_2010_cleaned.dta, replace 
	 	restore 

		preserve
       	 	insheet using "$dataconf/raw/Rendimiento por estudiante 2008.csv", clear delimiter(";")
             ** keep only students in 7th grade basico
             keep if cod_ense==110 & cod_grado==7
			 destring prom_gral, replace dpcomma
             drop if prom_gral==0 // estudiantes retirados, not in that school anymore 
			 
             * Keep only the required variables
		     keep rbd let_cur mrun
		     duplicates drop
			 destring mrun, replace 
			 drop if mrun==.
			 bysort mrun: gen order=_n
			 bysort mrun: egen max_order=max(order)
			 drop if max_order>1
			 drop order max_order
			 * Rename
			 rename rbd rbd_7_2008
			 rename let_cur let_cur_7_2008
			 save $trash/rendimiento_2008_cleaned.dta, replace 

		restore 
	
		preserve
	

	bysort mrun: gen mrun_number=_n
	bysort mrun: egen max=max(mrun_number)
	drop if max>1
	drop max  mrun_number
	
    
	merge 1:1 mrun using $trash/rendimiento_2010_cleaned.dta
	drop if _merge==2
	rename _merge _merge_2010
	gen missing_7_grade_info=0 if _merge_2010==3			  

	
	merge 1:1 mrun using $trash/rendimiento_2008_cleaned.dta
	drop if _merge==2
	rename _merge _merge_2008
	replace missing_7_grade_info=0 if missing_7_grade_info==. & _merge_2008==3
	replace missing_7_grade_info=1 if missing_7_grade_info==. 
	
	

		  drop _merge*
	
		  gen rbd_7=rbd_7_2008
		  replace rbd_7=rbd_7_2010 if rbd_7==.
		  
		  gen let_cur_7=let_cur_7_2008
		  replace let_cur_7=let_cur_7_2010 if let_cur_7==""
		  
		 
		  
		  gen switch=0 if rbd_7==rbd & let_cur_7 ==let_cur & missing_7_grade_info==0
		  replace switch=1 if (rbd_7!=rbd | let_cur_7!=let_cur)  & missing_7_grade_info==0
	 
		  
		  gen switch_school=1 if rbd_7!=rbd & missing_7_grade_info==0
		  replace switch_school=0 if rbd_7==rbd
	 
		  * among those who DID NOT change school, how many changed classroom?
		  gen switch_classroom=1 if rbd_7==rbd & let_cur_7!=let_cur & missing_7_grade_info==0
		  replace switch_classroom=0 if (rbd_7==rbd & let_cur_7==let_cur) & missing_7_grade_info==0
		  label var switch_classroom "% who changed classroom | not changing school"
	 
		  
		  
		  
		  
		  ** Table with estimates for whole sample, and for estimation sample (earthquake regions, away from coast):
		  * List your variables here
		  local variables switch switch_school switch_classroom
		  cap matrix A
		  label var switch "Switched school or classroom"
		  label var switch_school "Switched school"
		  label var switch_classroom "Switched classroom within school"
		  
		  * Loop over each variale and add its statistics to the matrix 
		  local k=1
foreach var in `variables' {
    quietly summarize `var' , detail
    local mean: display %9.3g r(mean)
    local sd: display %9.3g r(sd)
    local N: display %9.0g r(N)
	quietly summarize `var' if  earth_region_rbd ==1  & ${proximity}==0, detail
    local meanT: display %9.3g r(mean)
    local sdT: display %9.3g r(sd)
    local NT: display %9.0g r(N)
	if `k'==1 {
    matrix A = (`mean', `sd', `N', `meanT', `sdT', `NT')
	}
	else {
    matrix A = A \ (`mean', `sd', `N', `meanT', `sdT', `NT')
	}
	local k=`k'+1
}
* Label the rows and columns of the matrix
matrix rownames A = `variables'
matrix colnames A = Mean SD N Mean SD N
* Display the table
esttab matrix(A) using "$output_tables/descriptive_switches.tex", nogap label replace  fragment nomtitles nolines collabels(none)  nonumbers nolines ///
prehead(`"\begin{table}[H]\centering"' ///
        `"\footnotesize"'  ///
            `"\caption{\label{summaryswitches} Descriptive statistics of classroom and school changes between grades 7 and 8}"' ///
			`"\label{tab:descriptiveswitches}"' ///			
            `"\begin{tabular}{l*{1}{cccccc}}"' `"\hline"' ///
			`"	  &  \multicolumn{3}{l}{\textsc{All sample}} &  \multicolumn{3}{l}{\textsc{Main estimation sample}}  \\"' ///
			`"    &        Mean&          St.dev.  & N & Mean&           St.dev.    & N\\ "' ///
			 `"   & (1) & (2) & (3) & (4)  & (5) & (6)  \\ "') ///
			postfoot(`"\hline"'  `"\end{tabular}"' `"\begin{threeparttable}"' `"\begin{tablenotes}\singlespacing"' ///
	     `"\item	\scriptsize {\it Notes:}  The main estimation sample corresponds to the sample of observations in earthquake-affected regions and in non-coastal towns. A town is defined as coastal if it lies within 1km of the coast. The last row restricts the sample to students who did not change school between grades 7 and 8."' ///
		 `"\end{tablenotes}"' `"\end{threeparttable}"'  `"\end{table}"') 
		 
		 
		 
* ------------------------------------------------------

* Table with earthquake effects on switches

* -----------------------------------------------------

		  est clear 
		  label var post "Post"
		  reg switch  post if earth_region_rbd ==1 &  ${proximity}==0  , cluster(rbd_unique)
		  estadd local hasc  "No"
		  eststo switch_noc
		  reg switch_school  post if earth_region_rbd ==1  & ${proximity}==0  , cluster(rbd_unique)
		  estadd local hasc  "No"
		  eststo switch_school_noc
		  reg switch_classroom  post if earth_region_rbd ==1  &  ${proximity}==0 , cluster(rbd_unique)
		  estadd local hasc  "No"
		  eststo switch_class_noc
		  
		   reg switch  post  $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1  & ${proximity}==0 , cluster(rbd_unique)  
		   estadd local hasc  "Yes"
		   eststo switch_c
		   reg switch_school  post   $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov    if earth_region_rbd ==1  & ${proximity}==0, cluster(rbd_unique)
		   estadd local hasc  "Yes"
		   eststo switch_school_c
		   reg switch_classroom  post   $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov   if earth_region_rbd ==1  & ${proximity}==0, cluster(rbd_unique)
		   estadd local hasc  "Yes"
		   eststo switch_class_c
		   
		   label var switch "Any"
		   label var switch_school "School"
		   label var switch_classroom "Classroom"
		   
		   esttab switch_noc switch_c switch_school_noc switch_school_c switch_class_noc switch_class_c using "$output_tables/effects_on_switches.tex",  replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post ) order(post ) ///
	    scalars("hasc Controls") ///
    nonum collabels(none) fragment nonotes nomtitles nonumber ///
	substitute("\midrule" "") ///
    prehead(`"\begin{table}[h!]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Classroom and school changes between grades 7 and 8: cohort and earthquake-region differences}"' ///
			`"\label{tab:effectsswitch}"' ///
            `"\begin{tabular}{l*{6}{c}}"' `"\toprule"' ///
			      " & Any & Any & School & School & Classroom & Classroom \\" /// 
			 `"&  (1) & (2) & (3) & (4) & (5) & (6) \\ "' ///
			 `"\hline &&&&&& \\ \multicolumn{7}{l}{{\bf Panel A. Before-after analysis}} \\ "') ///
			 postfoot("")
			 
			 *///
   * postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
     *        `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
     *        `"{\it Notes:} The table reports the estimate of the coefficient of the dummy identifying the post-earthquake cohort of a regression where the outcome variable is a dummy equal to one if a student switched school or classroom (columns 1-2), school (columns 3-4), or classrooms within their school (columns 5-6) between grades 7 and 8. Odd-numbered columns do not include any controls. Even-numbered columns include the standard set of controls. The sample includes only students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
     *        `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
		  
		  
		  est clear 
		  
		  gen post_earth=post*earth_region_rbd
		  label var post_earth "Effect of earthquake"
		  
		  reg switch post earth_region_rbd post_earth if ${proximity}==0, cluster(rbd_unique)
		  estadd local hasc  "No"
		  eststo switch_noc
		  reg switch_school post earth_region_rbd post_earth if ${proximity}==0 , cluster(rbd_unique)
		  estadd local hasc  "No"
		  eststo switch_school_noc
		  reg switch_classroom post earth_region_rbd post_earth if ${proximity}==0 , cluster(rbd_unique)
		  estadd local hasc  "No"
		  eststo switch_class_noc
		  
		  reg switch post earth_region_rbd post_earth $controls_indiv_nodamdet $controls_indiv_damdet $controls_group  $controls_all_cov_nodam if ${proximity}==0 , cluster(rbd_unique)
		  estadd local hasc  "Yes"
		  eststo switch_c
		  reg switch_school post earth_region_rbd post_earth  $controls_indiv_nodamdet $controls_indiv_damdet $controls_group  $controls_all_cov_nodam  if ${proximity}==0, cluster(rbd_unique)
		  estadd local hasc  "Yes"
		  eststo switch_school_c
		  reg switch_classroom post earth_region_rbd post_earth  $controls_indiv_nodamdet $controls_indiv_damdet $controls_group  $controls_all_cov_nodam  if ${proximity}==0 , cluster(rbd_unique)
		  estadd local hasc  "Yes"
		  eststo switch_class_c
		 		   
		   label var switch "Any"
		   label var switch_school "School"
		   label var switch_classroom "Classroom"
		   
		   esttab switch_noc switch_c switch_school_noc switch_school_c switch_class_noc switch_class_c using "$output_tables\effects_on_switches.tex",  append label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_earth ) order(post_earth) ///
		    scalars("hasc Controls") ///
    nonum collabels(none) fragment nonotes nomtitles nonumber ///
	substitute("\midrule" "") ///
 prehead(`"&&&&&& \\"' `"\multicolumn{7}{l}{{\bf Panel B. Difference-in-differences analysis}} \\ "') ///   // `" \hline \\ & & & & & & \\"'
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Panel A is based on the sample students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. It reports the estimate of the coefficient of the dummy identifying the post-earthquake cohort in a regression where the outcome variable is a dummy equal to one if a student switched school or classroom (columns 1-2), school (columns 3-4), or classrooms within their school (columns 5-6) between grades 7 and 8. Panel B is based on the sample of students in any region of Chile, residing more than 1 km from the coast. It reports the estimate of the coefficient on the interaction between the dummy identifying the post-earthquake cohort and that identifying earthquake-affected regions in a regression in which the outcome variable is a dummy equal to one if a student switched school or classroom (columns 1-2), school (columns 3-4), or classrooms within their school (columns 5-6) between grades 7 and 8, and including as regressors also the dummies identifying the post-earthquake cohort and earthquake-affected regions uninteracted. In both panels, odd-numbered columns do not include any controls. Even-numbered columns include the standard set of controls, except those based on the damage measure in Panel B because it is undefined in regions not affected by the earthquake. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 

		  
		  restore 
		  
		  
		  
* -------------------------------------------

* Table with effects on lagged outcomes 

* -------------------------------------------

est clear 
egen GPA_4_std=std(GPA_4)
	label var GPA_4_std "Lagged GPA (std)"
    reg simce_avg_st post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo  $controls_indiv_nodamdet_noa  $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m1_ts
	 reg GPA_4_std post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet_noa $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
    eststo m1_GPA


 
   * esttab command 
   label var post_st_exp "Effect of damage to own home"
   label var post_loo_mean_damage  "Effect of average damage among classmates"
   label var post_loo_sd_damage "Effect of standard deviation of damage among classmates"
   local varlabel : variable label ts 
    esttab m1_ts m1_GPA   using "$output_tables\main_effects_ts_2025_lagged.tex",  replace label booktabs b(3) se(3)  r2 ///
	star(* 0.10 ** 0.05 *** 0.01) ///
    keep(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) order(post_st_exp post_loo_mean_damage  post_loo_sd_damage  ) ///
    mtitles("(1)" "(2)" ) nonum collabels(none) ///
    prehead(`"\begin{table}[h!]\centering"'  ///   // h!
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Validity of the identifying assumption: Impacts of earthquake damages on lagged GPA and test scores}"' ///
			`"\label{tab:effectslaggedtsGPA}"' ///
            `"\begin{tabular}{l*{2}{c}}"' `"\toprule"' ///
			`"& \multicolumn{1}{c}{Lagged test score} & \multicolumn{1}{c}{Lagged GPA (std)} \\  \addlinespace "' ) ///   //\cmidrule(lr){2-2} \cmidrule(lr){3-3} 
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Students enrolled in schools in regions affected by the earthquake and residing more than 1 km from the coast. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variable in column (1) is the average between the lagged (i.e., grade four) Mathematics and Language SIMCE scores, standardized to have mean 0 and variance 1. The outcome variable in column (2) is the lagged (i.e., grade four) GPA, also standardized. Regressions include student and classroom characteristics. Student characteristics: gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females and of local residents; classroom average and standard deviation of fourth-grade test scores and of parental education; all pairwise within-classroom covariances between: damage, gender, parental education, local residency, lagged test score. Damages' mean and standard deviation are leave-one-out moments. Standard errors are clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
	drop GPA_4_std	 
	
	
	
* ---------------------------------------------

* Table testing identifying assumption using 
* non-earthquake regions 

* ---------------------------------------------
gen loo_mean_vuln_st_classXpost = loo_mean_vuln_st_class*post 
gen loo_sd_vuln_st_classXpost = loo_sd_vuln_st_class*post
gen vuln_index_stXpost = vuln_index_st*post 

label var vuln_index_stXpost "Effect of own home vulnerability"
label var loo_mean_vuln_st_classXpost "Effect of average home vulnerability among classmates"
label var loo_sd_vuln_st_classXpost "Effect of standard deviation of home vulnerability among classmates"



* Test score and GPA_std outcomes
est clear 


* earthquake regions 
areg ts vuln_index_stXpost  loo_mean_vuln_st_classXpost loo_sd_vuln_st_classXpost vuln_index_st loo_mean_vuln_st_class loo_sd_vuln_st_class  $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group  $intensity_rbd $controls_all_cov_i post i.cod_com_alu#i.post   if earth_region_rbd ==1 & mean_same_town==1 & ${proximity}==0, absorb(cod_com_alu) cluster(rbd_unique) 
eststo m1_ts
estadd local earthreg  "Yes"

areg GPA_std vuln_index_stXpost  loo_mean_vuln_st_classXpost loo_sd_vuln_st_classXpost vuln_index_st loo_mean_vuln_st_class loo_sd_vuln_st_class  $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group $intensity_rbd $controls_all_cov_i  post i.cod_com_alu#i.post   if earth_region_rbd ==1 & mean_same_town==1 & ${proximity}==0, absorb(cod_com_alu) cluster(rbd_unique) 

eststo m1_GPA
estadd local earthreg  "Yes"

* non-earthquake regions 
areg ts vuln_index_stXpost  loo_mean_vuln_st_classXpost loo_sd_vuln_st_classXpost vuln_index_st loo_mean_vuln_st_class loo_sd_vuln_st_class  $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group  $intensity_rbd  $controls_all_cov_i  post i.cod_com_alu#i.post   if earth_region_rbd ==0  & mean_same_town==1  , absorb(cod_com_alu) cluster(rbd_unique) 

eststo m0_ts
estadd local earthreg  "No"

areg  GPA_std vuln_index_stXpost  loo_mean_vuln_st_classXpost loo_sd_vuln_st_classXpost vuln_index_st loo_mean_vuln_st_class loo_sd_vuln_st_class  $controls_indiv_damdet  $controls_indiv_nodamdet $controls_group  $intensity_rbd $controls_all_cov_i  post i.cod_com_alu#i.post   if earth_region_rbd ==0  & mean_same_town==1   , absorb(cod_com_alu) cluster(rbd_unique) 

eststo m0_GPA
estadd local earthreg  "No"


   * esttab command
    esttab m1_ts m1_GPA m0_ts m0_GPA using "$output_tables/test_identif_assmpt.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
    scalars("earthreg Earthquake region") ///
    keep(vuln_index_stXpost  loo_mean_vuln_st_classXpost loo_sd_vuln_st_classXpost  ) /// 
    order(vuln_index_stXpost  loo_mean_vuln_st_classXpost loo_sd_vuln_st_classXpost  ) ///
	mtitles("(1)" "(2)" "(3)" "(4)") nonum collabels(none) ///
    prehead(`"\begin{table}[h!]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Validity of the identifying assumption: Impacts of seismic vulnerability in non-earthquake regions}"' ///
			`"\label{tab:testidentassmpt}"' ///
            `"\begin{tabular}{l*{4}{c}}"' `"\toprule"' /// 
			`"& Test score & GPA (std) & Test score & GPA (std) \\   \addlinespace "') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Sample of classrooms where all students reside in the school's town. Columns (1) and (2) restrict the sample to earthquake-affected regions and municipalities at least 1 km from the coast, columns (3) and (4) to earthquake-unaffected regions. Home vulnerability is measured as an index ranging from 0 (for sure living in low-vulnerability home) to 1 (for sure living in high-vulnerability home), standardized to have mean zero and variance one in the entire sample. The average and standard deviation of home vulnerability among classmates are leave-one-out moments of this standardized index. Parameter $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The outcome variables are the average between Mathematics and Language SIMCE eighth-grade test scores standardized to have mean 0 and variance 1 in columns (1) and (3), and GPA in eight grade also standardized in columns (2) and (4). Regressions include student and classroom characteristics, and student's town of residence dummies (uninteracted and interacted with the cohort dummy). Student characteristics: fourth-grade test score, gender, whether the student lives in the school town, parental education, age of household head, dummy for region of residence. Classroom characteristics: public school dummy, rural school dummy, in earthquake regions shaking intensity in school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted, class size, classroom fractions of females; classroom average and standard deviation of lagged test scores and of parental education; all pairwise within-classroom covariances between: home vulnerability, gender, parental educational, local residency, lagged test score. Standard errors clustered at the school-by-cohort level. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
		
	
	
		  
		 
		 
		 
		 
		 
	
	
