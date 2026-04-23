// Author: Michela M. Tincani, UCL
// This version: March 2026


* This do file generates the Tables and Figures with descriptive statistics from the education data, and the statistics in the text 
* in sections 2 and 3, and in the introduction.

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
	
	
* Construct variables
	gen damage_usd=exp_reconstruction_alu_lca*84175  // average market price of 50 m^2 home in Chile in 2010
	gen annual_hhincome_lagged_usd=12*hhincome_lagged *0.002  // 2010 USD to CLP exchange rate 
    gen damage_over_income=damage_usd/annual_hhincome_lagged_usd 
	
	gen log_income_usd=log(annual_hhincome_lagged_usd )
	reg  damage_usd  log_income_usd  if post==1 & earth_region_rbd &  ${proximity}==0 
	

  gen college=1 if peduc>14 & peduc!=.
  replace college=0 if peduc<=14
  tab college
 
  
    capture log close 
	log using "$output_text/Sections_2_3.txt", text replace
* ======================================

* Descriptive stats in body of text 

* ======================================


* p. 15, most students (~95%) suffering damage rations below 7%:
_pctile  exp_reconstruction_alu_lca if post==1 & earth_region_rbd ==1 & ${proximity}==0, p(95)
return list





* p. 15 average reconstruction costs, in damage ratios, USD and as a fraction of annual income
* In damage ratios
sum exp_reconstruction_alu_lca if post==1 & earth_region_rbd ==1 & ${proximity}==0, de

* In USD
	sum damage_usd if post==1 & earth_region_rbd ==1  & ${proximity}==0 // 

* As average of annual income
	sum damage_over_income if post==1 & earth_region_rbd ==1   & ${proximity}==0 






/*
* p. 15, "On average, the homes of students whose parents have at least some 
         college education incurred $793$ fewer USD of damages, or half the amount,
		  than those of students whose parents do not have any college education."

  p. 3 Introduction "USD 1,552 vs. USD 759, or 47% vs. 23% of annual household income"
  */
  bysort college: sum damage_usd if post==1 & earth_region_rbd==1 & ${proximity}==0 
  bysort college: sum damage_over_income if post==1 & earth_region_rbd ==1 & ${proximity}==0 
   * Difference in means:
  di 1551.883-758.8807



  log off 



* Sample size, numbers
bysort mrun: gen index_mrun=1 if _n==1
bysort rbd: gen index_rbd=1 if _n==1
bysort rbd codigo: gen index_codigo=1 if _n==1
* Numbers of students, schools and classrooms in sample:
sum index_mrun index_rbd index_codigo



			
		
	
	*** Descriptive stats in body of paper, section 2.3
	** Average reconstruction costs, in damage ratios, USD and as a fraction of annual income

	sum exp_reconstruction_alu_lca if post==1 & earth_region_rbd ==1 & ${proximity}==0, de

	** Around 95% have damages up to 0.10
_pctile exp_reconstruction_alu_lca if post==1 & earth_region_rbd==1 & ${proximity}==0, p(95.32)
display r(r1)

	


  
  drop college   
  
  
	
	* fraction of students in post==1 & earth_region_rbd==1  & ${proximity}==0  who go to school in classrooms where not all students got same damages
	bysort post rbd codigo: egen sd_damageratio_class=sd(exp_reconstruction_alu_lca )
	sum sd_damageratio_class if post==1 & earth_region==1 & ${proximity}==0 
	gen variation_in_class_damages=1 if post==1 & earth_region_rbd==1 &   ${proximity}==0  & sd_damageratio_class >0 & sd_damageratio_class !=.
	replace variation_in_class_damages =0 if post==1 & earth_region_rbd==1 & ${proximity}==0  & sd_damageratio_class ==0

	log on
	
	/*
	* p. 16: " $98%$ of students from the post-earthquake cohort going to 
	           school in affected non-coastal areas were enrolled in classrooms
			    where not all students suffered equal damages"
	*/
	sum variation_in_class_damages if ${proximity}==0 
	




	/*
      p. 16: "This fraction is nearly the same across public and private schools 
	         ($98.0\%$ vs. $97.5\%$), and slightly larger among urban ($97.9\%$) 
			 than rural ($95.9\%$) schools."
	*/
	bysort M : sum variation_in_class_damages if ${proximity}==0 
	bysort rural_rbd : sum variation_in_class_damages if ${proximity}==0 



	log off 
	
	* standard deviation in non-standardised damage ratios in these classrooms
	bysort post rbd codigo: gen index=1 if _n==1
	bysort post rbd codigo: egen sd_damageratio_class_usd=sd(damage_usd)

   log on 

   
   /*
    p. 16 "such as 6.1% at the 99th percentile, or USD 5,132, 
	over seven months' worth of income"
   */
   * In damage ratios:
	sum sd_damageratio_class if variation_in_class_damages ==1 , de
	* In USD:
	sum sd_damageratio_class_usd if variation_in_class_damages ==1 , de	
    * over 7 months worth of income 
	sum annual_hhincome_lagged_usd if  post==1 & earth_region_rbd==1 & ${proximity}==0 
     di  5132.283 /8778.431
	 di .58464696*12
	 

* ---------------------------------------------------
* p. 17 ICC: BETWEEN AND WITHIN VARIATION IN DAMAGES 
* ---------------------------------------------------
* ICC: what percentage of the total variance is between-group.
/*
 "Intra-class correlation estimates reveal that $91.0\%$ of the total variance in home damages was explained by differences between schools"
*/
loneway st_exp_reconstruction_alu_lca rbd_unique if post==1 & earth_region_rbd ==1 & ${proximity}==0
 


/*
 "There was also variation in the classroom-level dispersion in damages: 87.4\% of its total variance occurred across schools"
*/
loneway loo_sd_damage_class rbd_unique if  post==1 & earth_region_rbd ==1 & ${proximity}==0
 
/*
"By contrast, virtually all the variation in the classroom-level mean in damages was across schools (99.8\%)."
*/
loneway loo_mean_damage_class rbd_unique  if post==1 & earth_region_rbd ==1 & ${proximity}==0
 

	
	



	
	log off 
	


	drop sd_damageratio_class variation_in_class_damages index sd_damageratio_class_usd
	drop annual_hhincome_lagged_usd 
	
	
	

	
	
* =====================================

* TABLE 1 WITH SUMMARY STATISTICS

* =====================================	

	 
	bysort post: sum simce_avg_st peduc female_r rural_rbd M earth_region_rbd if   ${proximity}==0  
	* generate output table 
	* List your variables here
local variables  simce_avg_st peduc female_r rural_rbd M earth_region_rbd 
cap matrix A
lab var simce_avg_st  "Baseline test score"
lab var peduc "Parental education (years)"
lab var female_r "Female student"
lab var rural_rbd "Rural school"
lab var M "Public school"
lab var  earth_region_rbd "Earthquake-affected region"

* Loop over each variable and add its statistics to the matrix
local k=1
foreach var in `variables' {
    quietly summarize `var' if post==0, detail
    local mean: display %9.3g r(mean)
    local sd: display %9.3g r(sd)
    local N: display %9.0g r(N)
	quietly summarize `var' if  post==1, detail
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
esttab matrix(A) using "$output_tables/descriptive_pre_post.tex", nogap label replace  fragment nomtitles nolines collabels(none)  nonumbers nolines ///
prehead(`"\begin{table}[h!]\centering"' ///
        `"\footnotesize"'  ///
            `"\caption{\label{summaryprepost} Summary statistics of student and school characteristics}"' ///
			`"\label{tab: summaryapplications}"' ///			
            `"\begin{tabular}{l*{1}{cccccc}}"' `"\hline"' ///
			`"	  &  \multicolumn{3}{l}{\textsc{Pre-earthquake cohort}} &  \multicolumn{3}{l}{\textsc{Post-earthquake cohort}}  \\"' ///
			`"    &        Mean&          St.dev.  & N & Mean&           St.dev.    & N\\ "' ///
			 `"   & (1) & (2) & (3) & (4)  & (5) & (6)  \\ "' ///
			`"		    \multicolumn{7}{l}{\textsc{A. All students}}\\"'   `"\cline{1-1}"' ) 
local k=1
foreach var in `variables' {
    quietly summarize `var' if post==0 & ${proximity}==0, detail
    local mean: display %9.3g r(mean)
    local sd: display %9.3g r(sd)
    local N: display %9.0g r(N)
	quietly summarize `var' if  post==1 & ${proximity}==0, detail
    local meanT: display %9.3g r(mean)
    local sdT: display %9.3g r(sd)
    local NT: display %9.0g r(N)
	if `k'==1 {
    matrix B = (`mean', `sd', `N', `meanT', `sdT', `NT')
	}
	else {
    matrix B = B \ (`mean', `sd', `N', `meanT', `sdT', `NT')
	}
	local k=`k'+1
}
* Label the rows and columns of the matrix
matrix rownames B = `variables'
matrix colnames B = Mean SD N Mean SD N
* Display the table
esttab matrix(B) using "$output_tables/descriptive_pre_post.tex", nogap label append nomtitles fragment nolines collabels(none)  nonumbers nolines ///
prehead(`" & & & & & & \\"' `" \multicolumn{7}{l}{\textsc{B. Excluding coastal towns }}\\"'   `"\cline{1-1}"' ) 


preserve 

	* Labeling the interaction variables
	label variable post_st_exp "Effect of damage to own home"
	label variable post_loo_mean_damage "Effect of average damage among classmates"
	label variable post_loo_sd_damage "Effect of standard deviation of damage among classmates"
	label variable post_st_exp_simce "Interacted with baseline test score"
	label variable post_loo_mean_damage_simce "Interacted with baseline test score"
	label variable post_loo_sd_damage_simce "Interacted with baseline test score"
	est clear 
quietly reg ts post_st_exp post_loo_mean_damage post_loo_sd_damage  post $treatment_var_loo $controls_indiv_nodamdet $controls_indiv_damdet $controls_group $intensity_rbd $controls_all_cov  if earth_region_rbd ==1 & ${proximity}==0, cluster(rbd_unique) 
local k=1
foreach var in `variables' {
    quietly summarize `var' if post==0 &  e(sample)==1, detail
    local mean: display %9.3g r(mean)
    local sd: display %9.3g r(sd)
    local N: display %9.0g r(N)
	quietly summarize `var' if  post==1 & e(sample)==1, detail
    local meanT: display %9.3g r(mean)
    local sdT: display %9.3g r(sd)
    local NT: display %9.0g r(N)
	if `k'==1 {
    matrix D = (`mean', `sd', `N', `meanT', `sdT', `NT')
	}
	else {
    matrix D = D \ (`mean', `sd', `N', `meanT', `sdT', `NT')
	}
	local k=`k'+1
}
* Label the rows and columns of the matrix
matrix rownames D = `variables'
matrix colnames D = Mean SD N Mean SD N

restore 
* Display the table
esttab matrix(D) using "$output_tables/descriptive_pre_post.tex", nogap label append nomtitles fragment nolines collabels(none)  nonumbers nolines ///
prehead(`" & & & & & & \\"' `" \multicolumn{7}{l}{\textsc{C. Excluding coastal towns and in earthquake regions (main estimation sample) }}\\"'   `"\cline{1-1}"' ) ///
postfoot(`"\hline"'  `"\end{tabular}"' `"\begin{threeparttable}"' `"\begin{tablenotes}\singlespacing"' ///
	     `"\item	\scriptsize {\it Notes:}  Baseline test scores are the average of Mathematics and language SIMCE test scores in fourth grade, standardized in the population of test takers. A town is defined as coastal if it lies within 1 km of the coast. Distance from the coast was calculated using high resolution shape files for the Chilean coastline (\cite{noaa_gshhg}) and municipalities' geographic coordinates (\cite{tincani_geographic_measures}). The main estimation sample described in Panel C corresponds to the sample used to estimate the regression in column (1) of Table \ref{tab:effectsts}."' ///
		 `"\end{tablenotes}"' `"\end{threeparttable}"'  `"\end{table}"') 



		 
		 
		 
		 
* ============================================================

* Appendix Table A3: descriptives of damage measures 

* ============================================================	 

* Requires: estout (ssc install estout)
* Table with descriptive stats of the treatment variables + statistics reported in the text 

	gen damageratiopp=exp_reconstruction_alu_lca*100
	bysort post rbd codigo: egen sd_damageratio_class=sd(damageratiopp )
	bysort post rbd codigo: egen sd_damageratio_class_usd=sd(damage_usd )
	bysort post rbd codigo: egen sd_damageratio_class_oi=sd(damage_over_income)
	
	bysort post rbd codigo: egen mean_damageratio_class=mean(damageratiopp )
	bysort post rbd codigo: egen mean_damageratio_class_usd=mean(damage_usd )
	bysort post rbd codigo: egen mean_damageratio_class_oi=mean(damage_over_income)

	
	* 1) Set labels so the table is self-explanatory.
label var damageratiopp                           "Damage ratio (share of home collapsed, p.p.)"
label var damage_usd                              "Damage (USD)"
label var damage_over_income                      "Damage relative to income"

label var mean_damageratio_class                  "Class mean: damage ratio (p.p.)"
label var mean_damageratio_class_usd              "Class mean: damage (USD)"
label var mean_damageratio_class_oi               "Class mean: damage relative to income"
label var sd_damageratio_class                    "Class SD: damage ratio (p.p.)"
label var sd_damageratio_class_usd                "Class SD: damage (USD)"
label var sd_damageratio_class_oi                 "Class SD: damage relative to income"

* --------- Define variables for each subpanel ----------
local student_vars damageratiopp damage_usd damage_over_income
local class_vars   mean_damageratio_class mean_damageratio_class_usd mean_damageratio_class_oi ///
                   sd_damageratio_class sd_damageratio_class_usd sd_damageratio_class_oi
				   
* Numbers for text: interpretation of effect sizes 
log on 
* Section 3.1, p. 19, p.20 
	* numbers in body of text in section 3.1, repeated in footnote 28
	/*
    " A one standard deviation increase in a student's damage ratio, 
	corresponding to increasing the collapsed portion of the home by 4.4 
	percentage points (around USD $3,600$ in damages)"
	*/
sum damageratiopp damage_usd if earth_region==1  

log close 



* ============================================
* Build matrices
* ============================================

* --------- Panel A.i: students, post-earthquake cohort  ----------
cap matrix drop A_i
local k = 1
foreach v of local student_vars {
    quietly summarize `v' if post==1 & earth_region_rbd==1 & ${proximity}==0, detail
    local m  : display %9.2f r(mean)
    local s  : display %9.2f r(sd)
    local n  : display %9.0f r(N)

    if `k'==1 {
        matrix A_i = (`m', `s', `n')
    }
    else {
        matrix A_i = A_i \ (`m', `s', `n')
    }
    local ++k
}
matrix rownames A_i = `student_vars'
matrix colnames A_i = Mean SD N

* --------- Panel A.ii: classrooms, post-earthquake cohort ----------
cap matrix drop A_ii
local k = 1
foreach v of local class_vars {
    quietly summarize `v' if post==1 & earth_region_rbd==1 & ${proximity}==0 & class_index==1, detail
    local m  : display %9.2f r(mean)
    local s  : display %9.2f r(sd)
    local n  : display %9.0f r(N)

    if `k'==1 {
        matrix A_ii = (`m', `s', `n')
    }
    else {
        matrix A_ii = A_ii \ (`m', `s', `n')
    }
    local ++k
}
matrix rownames A_ii = `class_vars'
matrix colnames A_ii = Mean SD N

* --------- Panel B.i: students, per-earthquake cohort ----------
cap matrix drop B_i
local k = 1
foreach v of local student_vars {
    quietly summarize `v' if post==0 & earth_region_rbd==1 & ${proximity}==0, detail
    local m  : display %9.2f r(mean)
    local s  : display %9.2f r(sd)
    local n  : display %9.0f r(N)

    if `k'==1 {
        matrix B_i = (`m', `s', `n')
    }
    else {
        matrix B_i = B_i \ (`m', `s', `n')
    }
    local ++k
}
matrix rownames B_i = `student_vars'
matrix colnames B_i = Mean SD N

* --------- Panel B.ii: classrooms, pre-earthquake cohort ----------
cap matrix drop B_ii
local k = 1
foreach v of local class_vars {
    quietly summarize `v' if post==0 & earth_region_rbd==1 & ${proximity}==0 & class_index==1, detail
    local m  : display %9.2f r(mean)
    local s  : display %9.2f r(sd)
    local n  : display %9.0f r(N)

    if `k'==1 {
        matrix B_ii = (`m', `s', `n')
    }
    else {
        matrix B_ii = B_ii \ (`m', `s', `n')
    }
    local ++k
}
matrix rownames B_ii = `class_vars'
matrix colnames B_ii = Mean SD N

* ============================================
* Export LaTeX: Panel A (Ai, Aii) and Panel B (Bi, Bii)
* ============================================
local outfile "$output_tables/descriptives_treatvars_damage.tex"

* ---------- Panel A.i ----------
esttab matrix(A_i) using "`outfile'", replace label nogap fragment nonumbers nomtitles nolines collabels(none) ///
    prehead(`"\begin{table}[H]\centering"' ///
            `"\footnotesize"' ///
            `"\caption{\label{tab:descdamages}Descriptive statistics of damage measures (student and classroom level).}"' ///
            `"\begin{tabular}{lccc}"' `"\toprule"' ///
            `" & Mean & SD & N \\"' `"\midrule"'   ///
            `"\multicolumn{4}{l}{{\bf Panel A: Post-earthquake cohort}} \\"' ///
            `"\multicolumn{4}{l}{\textit{(i) Student-level variables}} \\"' ) ///
    postfoot("")

* ---------- Panel A.ii ----------
esttab matrix(A_ii) using "`outfile'", append label nogap fragment nonumbers nomtitles nolines collabels(none) ///
    prehead(`"\addlinespace"' `"\multicolumn{4}{l}{\textit{(ii) Classroom-level variables}} \\"') ///
    postfoot("")

* ---------- Panel B.i ----------
esttab matrix(B_i) using "`outfile'", append label nogap fragment nonumbers nomtitles nolines collabels(none) ///
    prehead(`"\addlinespace"' ///
            `"\multicolumn{4}{l}{{\bf Panel B: Pre-earthquake cohort}} \\"' ///
            `"\multicolumn{4}{l}{\textit{(i) Student-level variables}} \\"') ///
    postfoot("")

* ---------- Panel B.ii + notes and end of table ----------
esttab matrix(B_ii) using "`outfile'", append label nogap fragment nonumbers nomtitles nolines collabels(none) ///
    prehead(`"\addlinespace"' `"\multicolumn{4}{l}{\textit{(ii) Classroom-level variables}} \\"') ///
    postfoot(`"\bottomrule"' `"\end{tabular}"' ///
             `"\begin{threeparttable}"' `"\begin{tablenotes}\singlespacing"' ///
             `"\item \scriptsize \textit{Notes:} Panel A restricts the sample to students and classrooms in the post-earthquake cohort, in earthquake regions, and attending non-coastal schools (more than 1 km from the coast). Panel B applies the same geographic restrictions to the pre-earthquake cohort. For this cohort, the damage variables do not reflect realised destruction but rather predicted damage, i.e., the level of damage their homes would have suffered had they experienced the 2010 Maule earthquake. Income refers to annual income. It suffers from large attrition because it is collected by the Ministry of Education through a take-home paper survey that the students must bring back to school. In computing the classroom mean and standard deviations of damage relative to income, observations with missing family income are ignored. The damage ratio is the portion of the home that collapsed, expressed in percentage points. US dollars quantification of damages uses the 2010 USD to CLP exchange rate and depends on the assumed cost of reconstructing a completely collapsed home. I assume the cost is equal to the average market price of a 50m\textsuperscript{2} home in Chile in 2010, which was USD 84,175 (see \url{https://www.globalpropertyguide.com/Latin-America/Chile/square-meter-prices}). If a home suffered an unstandardized damage ratio of $ x\%$, then the damage in dollars is measured as $ x\% \cdot$ 84,175."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"')

		 
		 
		 
		 
		 
* ==========================================

* Appendix Table A4: correlates of damages 

* ==========================================
	 
		 
	est clear
	reg st_exp_reconstruction_alu_lca  $controls_indiv_nodamdet $controls_indiv_damdet  M rural_rbd post if earth_region==1 & ${proximity}==0
	est store correlates_damage

	reg cprA_hat  $controls_indiv_nodamdet $controls_indiv_damdet M rural_rbd  post if earth_region==1 & ${proximity}==0
	est store correlates_cpr_A

	reg cprB_hat  $controls_indiv_nodamdet $controls_indiv_damdet M rural_rbd  post if earth_region==1 & ${proximity}==0
	est store correlates_cpr_B

	reg cprCD_hat  $controls_indiv_nodamdet $controls_indiv_damdet M rural_rbd  post if earth_region==1 & ${proximity}==0
	est store correlates_cpr_CD

	label var st_exp_reconstruction_alu_lca "Damage"
			label var cprA_hat "Prob H"
			label var cprB_hat "Prob M"
			label var cprCD_hat "Prob L"
			
			local varlabeld: variable label  st_exp_reconstruction_alu_lca
			local varlabelA: variable label cprA_hat
			local varlabelB: variable label cprB_hat
			local varlabelCD: variable label cprCD_hat
	esttab correlates_damage correlates_cpr_A correlates_cpr_B correlates_cpr_CD using "$output_tables/correlates_pre_post.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
	keep($controls_indiv_nodamdet age_hh_head peduc  M rural_rbd  post ) order($controls_indiv_nodamdet age_hh_head peduc  M rural_rbd  post  ) ///
    nonum collabels(none) ///
    prehead(`"\begin{table}[H]\centering"'  ///
            `"\scriptsize"'  ///
            `"\begin{threeparttable}"' ///
			`"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
            `"\caption{Correlates of damages and of seismic vulnerability of students' homes }"' ///
			`"\label{tab:correlates}"' ///
            `"\begin{tabular}{l*{4}{c}}"' `"\toprule"' ///
			 `"&  (1) & (2) & (3) & (4) \\ "') ///
    postfoot(`"\bottomrule"'  `"\end{tabular}"' ///
             `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\tiny"' ///
             `"{\it Notes:} Results from OLS regressions estimated on the sample of students in earthquake-affected regions and residing more than 1 km from the coast. Damage is measured by the standardized damage ratio. Seismic vulnerability is measured by the predicted probabilities that a student lives in a home of High (column 2), Medium (column 3) or Low (column 4) seismic vulnerability class. The class probabilities are predicted using the LASSO model in Appendix \ref{sec:sv}. The baseline test score is the average between the Mathematics and language SIMCE test scores in the fourth grade, standardized in the population of test takers. All regressions include dummies for the region of residence. POST is a dummy equal to 1 if the student belongs to the post-earthquake cohort, 0 otherwise. *** p$<$0.01, ** p$<$0.05, * p$<$0.10."' ///
             `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"') 
			 
			 
			 
	
* =========================================================

* FIGURE 6: RELATIONSHIP BETWEEN HOME DAMAGE AND PARENTAL
*           EDUCATION BY SCHOOL CHARACTERISTICS 

* ==========================================================
			 
   
   gen damage_percent=exp_reconstruction_alu_lca*100
  
  
	graph twoway (lpolyci  st_exp_reconstruction_alu_lca  peduc if M==1 & pre==0 & earth_region==1 & ${proximity}==0 & peduc>=3 & peduc<=17,  acolor(navy) fi(0) alc(navy) alp(dash) ) (lpolyci st_exp_reconstruction_alu_lca peduc if V==1 & pre==0 & earth_region==1  & ${proximity}==0 & peduc>=3 & peduc<=17 , acolor(green) fi(0) alc(green) alp(dash) ) ,  ytitle("Home damage (standardized)") xtitle("Average education of mothers and fathers (years)") legend(position(6) order(2 "Public school" 4 "Private school") region(lstyle(none))) title(" By school type") graphregion(c(white)) xscale(range(3 (2) 17)) xlabel(3(2)17) saving($trash/damages_peduc_by_school_type_2023, replace)
	graph twoway (lpolyci  st_exp_reconstruction_alu_lca  peduc if rural_rbd==1 & pre==0 & earth_region==1  & ${proximity}==0 & peduc>=3 & peduc<=17,  acolor(navy) fi(0) alc(navy) alp(dash) ) (lpolyci st_exp_reconstruction_alu_lca peduc if rural_rbd==0 & pre==0 & earth_region==1  & ${proximity}==0 & peduc>=3 & peduc<=17, acolor(green) fi(0) alc(green) alp(dash) ) ,  ytitle("Home damage (standardized)") xtitle("Average education of mothers and fathers (years)") legend(position(6)  order(2 "Rural school" 4 "Urban school") region(lstyle(none))) title("By school rurality") graphregion(c(white)) xlabel(3(2)17) saving($trash/damages_peduc_by_school_rurality_2023, replace)	
	graph combine $trash/damages_peduc_by_school_type_2023.gph  $trash/damages_peduc_by_school_rurality_2023.gph, colf graphregion(color(white)) saving($trash/damages_peduc_2023.gph, replace)
	graph export "$output_figures/damages_peduc.png", as(png) name("Graph") replace
	
	
	
* ===================================================

* FIGURE A3: RELATIONSHIP BETWEEN RESPORTED EFFORT 
*            COST AND BASELINE TEST SCORE

* ====================================================
	
	* trim top and bottom 1% of simce_avg_st 
	lpoly effort_cost_std  simce_avg_st if simce_avg_st> -1.699625   & simce_avg_st< 1.810402     & post==1 & earth_region_rbd ==1 & ${proximity}==0, noscatter ci graphregion(color(white)) ///
	ytitle("Effort cost (standardized)") xtitle("Baseline test score") ///
	title("")  legend(off) ///
	saving("$trash/eff_cost_simce.gph", replace)
	graph export "$output_figures/eff_cost_simce.png" , replace
	
	
	
	* Empry trash
	capture erase "$trash/damages_peduc_by_school_type_2023.gph"
	capture erase "$trash/damages_peduc_by_school_rurality_2023.gph"
	capture erase "$trash/damages_peduc_2023.gph"
	capture erase "$trash/eff_cost_simce.gph"
	
		 

		 


	

