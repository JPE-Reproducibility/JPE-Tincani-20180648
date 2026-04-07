// Author: Michela M. Tincani, UCL
// This version: March 2026

*========================================================
* 19_school_resources_selected_outputs.do analyses school expendiotures.
* It generates:
*   - descriptive_missing_exp.tex
*   - med_effects_expenditures_select_attr.tex
*   - rendidosexp.tex
*   - med_effects_exp114.tex
*   - consulting_other_2010_details.png
*========================================================

global proximity_rbd  coastal_rbd_1k

* ===================================
* Build expenditure inputs  
* ===================================
clear all
use "$dataconf/raw/SS_Rendidos_2008-2010_20120704_redacted", clear

gen descripcion2_num = .
gen strL d2 = lower(descripcion2)

* ATE
replace descripcion2_num = 2  if missing(descripcion2_num) & cod_cat_ser==2 & strpos(d2, "asesor")>0 & strpos(d2, "pedag")>0
replace descripcion2_num = 10 if missing(descripcion2_num) & cod_cat_ser==2 & strpos(d2, "asesor")>0 & (strpos(d2,"admin")>0 | strpos(d2,"gesti")>0)
replace descripcion2_num = 1  if missing(descripcion2_num) & cod_cat_ser==2 & (strpos(d2,"curso")>0 | strpos(d2,"taller")>0 | strpos(d2,"tutor")>0)

* Personnel
replace descripcion2_num = 4  if missing(descripcion2_num) & cod_cat_ser==1 & strpos(d2,"ampliaci")>0
replace descripcion2_num = 3  if missing(descripcion2_num) & cod_cat_ser==1 & strpos(d2,"contratacion de hor")>0
replace descripcion2_num = 5  if missing(descripcion2_num) & cod_cat_ser==1 & strpos(d2,"honorario")>0
replace descripcion2_num = 9  if missing(descripcion2_num) & cod_cat_ser==1 & (strpos(d2,"viat")>0 | strpos(d2,"pasaje")>0)
replace descripcion2_num = 13 if missing(descripcion2_num) & cod_cat_ser==1 & strpos(d2,"subcategor")>0

* Emergency
replace descripcion2_num = 6  if missing(descripcion2_num) & cod_cat_ser==3 & strpos(d2,"horas extraordinarias")>0
replace descripcion2_num = 14 if missing(descripcion2_num) & cod_cat_ser==3 & strpos(d2,"otro")>0

* Projects
replace descripcion2_num = 11 if missing(descripcion2_num) & cod_cat_ser==4 & strpos(d2,"equipamient")>0
replace descripcion2_num = 12 if missing(descripcion2_num) & cod_cat_ser==4 & strpos(d2,"mobili")>0
replace descripcion2_num = 7  if missing(descripcion2_num) & cod_cat_ser==4 & strpos(d2,"construcci")>0
replace descripcion2_num = 8  if missing(descripcion2_num) & cod_cat_ser==4 & strpos(d2,"reparaci")>0

* Generic fallback
replace descripcion2_num = 14 if missing(descripcion2_num) & strpos(d2,"otro")>0

preserve
keep rbd anio cod_cat_ser descripcion2_num valor
save "$trash/personnel_expenditures_descriptions.dta", replace
restore

forval y=1/14 {
    gen exp_`y' = valor if descripcion2_num==`y'
}

keep rbd anio exp_1-exp_14
forval y=1/14 {
    bysort rbd anio: egen tot_exp_`y' = sum(exp_`y')
}

keep rbd anio tot_exp_1-tot_exp_14
duplicates drop

forval y=1/14 {
    gen tot_exp_`y'_1k = tot_exp_`y'/1000
}

gen post = 1 if anio==2010
replace post = 0 if anio==2009
drop if anio==2008

keep rbd post tot_exp_1_1k tot_exp_2_1k tot_exp_3_1k tot_exp_4_1k tot_exp_5_1k tot_exp_6_1k tot_exp_7_1k tot_exp_8_1k tot_exp_9_1k tot_exp_10_1k tot_exp_11_1k tot_exp_12_1k tot_exp_13_1k tot_exp_14_1k
save "$trash/personnel_expenditures.dta", replace

* ============================================
* Output 1: Rendidosexp.tex
* ============================================
clear all
use "$trash/personnel_expenditures_descriptions.dta", clear

label define cat_en ///
    1 "{\bf Personnel}" ///
    2 "{\bf External ATE services}" ///
    3 "{\bf Emergency}" ///
    4 "{\bf Projects}", replace
label values cod_cat_ser cat_en

label define sub_en ///
    1 "Courses, workshops, tutoring" ///
    2 "Pedagogical and technical support" ///
    3 "Hire new staff hours" ///
    4 "Extend hours for existing staff" ///
    5 "Fee-based services (non-ATE)" ///
    6 "Overtime" ///
    7 "Infrastructure construction" ///
    8 "Infrastructure repair" ///
    9 "Per diems and travel" ///
    10 "Administrative and management consulting" ///
    11 "Equipment" ///
    12 "Furniture" ///
    13 "Personnel - other" ///
    14 "Other", replace
label values descripcion2_num sub_en

preserve
drop if anio==2008
collapse (sum) amount=valor, by(cod_cat_ser descripcion2_num)
tempfile subs
save `subs'

collapse (sum) amount=amount, by(cod_cat_ser)
gen byte is_total = 1
gen descripcion2_num = .
tempfile cats
save `cats'

use `subs', clear
gen byte is_total = 0
append using `cats'

label define cat_en 1 "{\bf Personnel}" 2 "{\bf External ATE services}" 3 "{\bf Emergency}" 4 "{\bf Projects}", replace
label values cod_cat_ser cat_en
decode descripcion2_num, gen(subcat)
replace subcat = "Total" if is_total==1

gen subcat_ix = descripcion2_num
replace subcat_ix = 999 if is_total==1
label define sub_en ///
    1 "Courses, workshops, tutoring" ///
    2 "Pedagogical and technical support" ///
    3 "Hire new staff hours" ///
    4 "Extend hours for existing staff" ///
    5 "Fee-based services (non-ATE)" ///
    6 "Overtime" ///
    7 "Infrastructure construction" ///
    8 "Infrastructure repair" ///
    9 "Per diems and travel" ///
    10 "Administrative and management consulting" ///
    11 "Equipment" ///
    12 "Furniture" ///
    13 "Personnel - other" ///
    14 "Other" ///
    999 " Total", modify
label values subcat_ix sub_en

sort cod_cat_ser subcat_ix
format amount %15.0fc
label var cod_cat_ser  "{\bf Category}"
label var subcat_ix "Sub-category"

collect clear
table (cod_cat_ser subcat_ix), statistic(sum amount) nformat(%15.0fc) nototal
collect export "$output_tables/rendidosexp.tex", as(tex) replace tableonly
restore

* ============================================
* Prepare merged analysis dataset once
* ============================================
clear all
use "$cleaned/data_final_for_regs_all", clear

merge m:1 rbd post using "$trash/personnel_expenditures.dta"
drop if _merge==2
gen missing_exp=1 if _merge==1
replace missing_exp=0 if _merge==3
drop _merge

merge m:1 cod_com_rbd using "$cleaned/comuna_rbd_coastal_proximity"
drop if _merge==2
drop _merge

bysort post rbd: gen school_index=1 if _n==1

bysort post rbd codigo: gen index_class=1 if _n==1
bysort post rbd: egen __tmp=mean(mean_damage_class) if index_class==1
bysort post rbd: egen mean_damage_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(sd_damage_class) if index_class==1
bysort post rbd: egen sd_damage_rbd=max(__tmp)
drop __tmp

gen post_mean_damage = post * mean_damage_rbd
gen post_sd_damage   = post * sd_damage_rbd

bysort post rbd: egen __tmp=mean(class_size_r) if index_class==1
bysort post rbd: egen class_size_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(mean_simce_avg_st) if index_class==1
bysort post rbd: egen mean_simce_avg_st_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(mean_peduc) if index_class==1
bysort post rbd: egen mean_peduc_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(sd_simce_avg_st) if index_class==1
bysort post rbd: egen sd_simce_avg_st_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(sd_peduc) if index_class==1
bysort post rbd: egen sd_peduc_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(mean_female) if index_class==1
bysort post rbd: egen mean_female_rbd=max(__tmp)
drop __tmp
bysort post rbd: egen __tmp=mean(mean_same_town) if index_class==1
bysort post rbd: egen mean_same_town_rbd=max(__tmp)
drop __tmp
drop index_class

* Drop small school with simce nonmissing only for one student, 
* in this school sd simce cannot be calcualated and therefore it is 
* never used in the any of the regressions

drop if rbd==5623

* ============================================
* Output 2: Med_effects_expenditures_select_attr.tex
* ============================================
label var post_mean_damage "Effect of mean damage"
label var post_sd_damage "Effect of standard deviation of damage"
label var missing_exp "Expenditure data missing"


gen nonmissing=1 if missing_exp==0
replace nonmissing=0 if missing_exp==1

log using "$output/in_text_numbers/Section_4_1_3.txt", replace text

/*
In-text number, section 4.1.3, also reported in the introduction
"representing 42\% of the sample schools."

*/



sum nonmissing  if post==0 & earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0

/*
In-text number, section 4.1.3
In the years 2009-2010, SEP funds amounted to around CLP 68.3 billion

Sum up all the totals in Table A18:


*/
di 55467420643+12368851131+334269810+98521288

log close 

drop nonmissing 
est clear
reg missing_exp post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0
su missing_exp if post==0 & earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0
estadd scalar pre_mean=`r(mean)'
eststo nofe_missing_exp

esttab nofe_missing_exp using "$output_tables/med_effects_expenditures_select_attr.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
keep( post_mean_damage post_sd_damage ) stats(pre_mean r2 N, fmt(3 3 0) labels("Pre-earthquake mean" "R-squared" "Observations")) ///
order( post_mean_damage post_sd_damage ) ///
nonum collabels(none) ///
prehead(`"\FloatBarrier \begin{table}[H]\centering"' ///
        `"\scriptsize"' ///
        `"\begin{threeparttable}"' ///
        `"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
        `"\caption{Lack of selective attrition}"' ///
        `"\label{tab:medeffectexpbal}"' ///
        `"\begin{tabular}{l*{1}{c}}"' `"\toprule"' ///
         `"&  (1) \\ "') ///
postfoot(`"\bottomrule"' `"\end{tabular}"' ///
         `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\scriptsize"' ///
         `"{\it Notes:} Schools in regions affected by the earthquake, located more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of a variation of regression \eqref{regression1het} where the unit of observation is the school. The treatment variables represent across-classroom averages within a school, that is, the school-level mean of damages refers to the average of the within-classroom damage means; the school-level standard deviation of damages refers to the average of the within-classroom damage standard deviations. The regression is estimated on the sample of all schools, regardless of whether expenditure data were available, and uses as outcome variable a dummy equal to 1 if data on expenditures is missing, 0 otherwise. Data on expenditures after the earthquake is available only for the 2010 school year, therefore, the post-earthquake period in this Table corresponds to the 2010 school year. Standard errors shown in parentheses. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
         `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"')

* ============================================
* Output 3: Descriptive_missing_exp.tex
* ============================================
est clear
local variables class_size_rbd M rural_rbd mean_simce_avg_st_rbd mean_peduc_rbd sd_simce_avg_st_rbd sd_peduc_rbd mean_female_rbd mean_same_town_rbd intensity_rbd
cap matrix A

lab var class_size_rbd "Class size"
label var M "Public"
label var rural_rbd "Rural"
label var mean_simce_avg_st_rbd "Average simce"
label var mean_peduc_rbd  "Average parental education (yrs)"
label var sd_simce_avg_st_rbd  "St. dev. of simce"
label var sd_peduc_rbd "St. dev. of parental education"
label var mean_female_rbd "Fraction female"
label var mean_same_town_rbd "Fraction local residents"
label var intensity_rbd "MSK intensity"

quietly reg missing_exp post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0

local k=1
foreach var in `variables' {
    quietly summarize `var' if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0 & e(sample)==1, detail
    local mean  = string(r(mean), "%9.2f")
    local sd    = string(r(sd), "%9.2f")
    local N     = string(r(N), "%9.0f")

    quietly summarize `var' if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0 & missing_exp==0 & e(sample)==1, detail
    local meanT = string(r(mean), "%9.2f")
    local sdT   = string(r(sd), "%9.2f")
    local NT    = string(r(N), "%9.0f")

    if `k'==1 {
        matrix A = (`mean', `sd', `N', `meanT', `sdT', `NT')
    }
    else {
        matrix A = A \ (`mean', `sd', `N', `meanT', `sdT', `NT')
    }
    local k=`k'+1
}

matrix rownames A = `variables'
matrix colnames A = Mean SD N Mean SD N

esttab matrix(A) using "$output_tables/descriptive_missing_exp.tex", nogap label replace fragment nomtitles nolines collabels(none) nonumbers nolines ///
prehead(`"\FloatBarrier \begin{table}[H]\centering"' ///
        `"\footnotesize"' ///
        `"\caption{\label{summarymissingexp} Summary statistics of school characteristics.}"' ///
        `"\label{tab:summarymissingexp}"' ///
        `"\begin{tabular}{l*{1}{cccccc}}"' `"\hline"' ///
        `"      &  \multicolumn{3}{c}{\textsc{All }} &  \multicolumn{3}{c}{\textsc{Schools with non-missing}}  \\"' ///
        `"      &  \multicolumn{3}{c}{\textsc{ schools}} &  \multicolumn{3}{c}{\textsc{ expenditure data}}  \\"' ///
        `"    &        Mean&          St.dev.  & N & Mean&           St.dev.    & N\\ "' ///
        `"   & (1) & (2) & (3) & (4)  & (5) & (6)  \\ "' ///
        `"\cline{1-7}"' ) ///
postfoot(`"\hline"' `"\end{tabular}"' `"\begin{threeparttable}"' `"\begin{tablenotes}\singlespacing"' ///
         `"\item \scriptsize {\it Notes:} The unit of observation in this table is a school. The sample is restricted to schools in earthquake regions, located more than 1 km from the coast, and for whom the treatment variables (mean and dispersion of damages) are not missing. Simce refers to baseline test scores, obtained as the average of Mathematics and language test scores in fourth grade, standardized in the population of test takers. Average characteristics of the student body are obtained as within-school averages across classrooms of classroom-level values. For example, average simce refers to the average across classrooms of within-classroom mean simce scores."' ///
         `"\end{tablenotes}"' `"\end{threeparttable}"' `"\end{table}"')

* ============================================
* Output 4: Med_effects_exp114.tex
* ============================================
label var post_mean_damage "Effect of mean dam"
label var post_sd_damage "Effect of sd dam"

label var tot_exp_1_1k "Tutor"
label var tot_exp_2_1k "Pedag and Tech"
label var tot_exp_3_1k "Hires"
label var tot_exp_4_1k "Add hrs"
label var tot_exp_5_1k "Consult"
label var tot_exp_6_1k "Overtime"
label var tot_exp_7_1k "Estates build"
label var tot_exp_8_1k "Estates repairs"
label var tot_exp_9_1k "Travel"
label var tot_exp_10_1k "Admin and mngmt"
label var tot_exp_11_1k "Equip"
label var tot_exp_12_1k "Furn"
label var tot_exp_13_1k "Other pers"
label var tot_exp_14_1k "Other"

* Panel A: with school damage controls
est clear
foreach var of varlist tot_exp_1_1k tot_exp_2_1k tot_exp_3_1k tot_exp_4_1k tot_exp_5_1k tot_exp_6_1k tot_exp_9_1k tot_exp_10_1k tot_exp_14_1k {
    reg `var' post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd $controls_rbd $intensity_rbd if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0 & missing_exp==0
    su `var' if post==0
    estadd scalar pre_mean=`r(mean)'
    eststo m_`var'
    estadd local hasfe "No"
}

esttab m_tot_exp_1_1k m_tot_exp_2_1k m_tot_exp_3_1k m_tot_exp_4_1k m_tot_exp_5_1k m_tot_exp_6_1k m_tot_exp_9_1k m_tot_exp_10_1k m_tot_exp_14_1k using "$output_tables/med_effects_exp114.tex", replace label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
keep( post_mean_damage post_sd_damage ) stats(pre_mean r2 N, fmt(3 3 0) labels("Pre-earthquake mean" "R-squared" "Observations")) ///
order( post_mean_damage post_sd_damage ) ///
nonum collabels(none) nonotes nolines ///
prehead(`"\FloatBarrier \begin{sidewaystable}[p]\centering"' ///
        `"\scriptsize"' `"\scalebox{1.2} {"' ///
        `"\begin{threeparttable}"' ///
        `"\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}"' ///
        `"\caption{Impacts of earthquake damages on category-specific school expenditures}"' ///
        `"\label{tab:medeffectindiv}"' ///
        `"\begin{tabular}{l*{9}{c}}"' `"\toprule \midrule"' ///
         `"&  (1) & (2) & (3) & (4) & (5) & (6) & (7) & (8) & (9) \\  \midrule "' ///
         `"& \multicolumn{9}{c}{\textbf{A. With school damage controls}}  \\ "') ///
postfoot(`" & & & & & & & & & \\"')

* Panel B: without school damage controls
eststo clear
estimates clear
foreach var of varlist tot_exp_1_1k tot_exp_2_1k tot_exp_3_1k tot_exp_4_1k tot_exp_5_1k tot_exp_6_1k tot_exp_9_1k tot_exp_10_1k tot_exp_14_1k {
    reg `var' post_mean_damage post_sd_damage post mean_damage_rbd sd_damage_rbd $controls_rbd if earth_region_rbd==1 & school_index==1 & ${proximity_rbd}==0 & missing_exp==0
    su `var' if post==0
    estadd scalar pre_mean=`r(mean)'
    eststo m_`var'
    estadd local hasfe "No"
}

esttab m_tot_exp_1_1k m_tot_exp_2_1k m_tot_exp_3_1k m_tot_exp_4_1k m_tot_exp_5_1k m_tot_exp_6_1k m_tot_exp_9_1k m_tot_exp_10_1k m_tot_exp_14_1k using "$output_tables/Med_effects_exp114.tex", append label booktabs b(3) se(3) r2 star(* 0.10 ** 0.05 *** 0.01) ///
keep( post_mean_damage post_sd_damage ) stats(pre_mean r2 N, fmt(3 3 0) labels("Pre-earthquake mean" "R-squared" "Observations")) ///
order( post_mean_damage post_sd_damage ) ///
nonum collabels(none) nolines ///
prehead(`"& \multicolumn{9}{c}{\textbf{B. Without school damage controls}}  \\ "') ///
postfoot(`"\bottomrule"' `"\end{tabular}"' ///
         `"\begin{tablenotes}"' `"\item"' `"\setlength{\baselineskip}{0.8\baselineskip}"' `"\scriptsize"' ///
         `"{\it Notes:} Sample of schools belonging to the SEP program in regions affected by the earthquake, located more than 1 km from the coast. Parameters $\delta$ obtained from OLS estimation of regression \eqref{regression1}. The unit of observation is the school. The treatment variables represent across-classroom averages within a school, that is, the school-level mean of damages refers to the average of the within-classroom damage means; the school-level standard deviation of damages refers to the average of the within-classroom damage standard deviations. The outcome variables are measured in thousands of CLP. In 2010, 1,000 CLP corresponded to around 2 USD. The expenditure categories by column are: (1) courses, workshops, tutoring (ATE); (2) pedagogical and technical support (ATE); (3) New staff hours; (4) Extended hours for existing staff; (5) Fee-based consulting (non-ATE); (6) Overtime; (7) Per diems and travel; (8) Administrative and management consulting (ATE); (9) Other. ATE refers to subcontracted consulting provided by accredited institutions that support schools' improvement plans required under the SEP law. Expenditure categories amounting to less than CLP 10,000 (USD 20) per school per year are excluded from the table. Regressions include the following school characteristics: dummy for public school, dummy for rural school, and the following school-level averages of classroom characteristics (obtained as within-school and across-classroom averages of classroom-specific values): class size, classroom fractions of females and of local residents; classroom average and standard deviation of lagged test scores and of parental education. Panel A also includes the regressors accounting for damage to the school building: shaking intensity in the school's town (uninteracted, interacted with public school dummy, interacted with cohort dummy, and interacted with cohort and public dummies), cohort and public dummies interacted. Data on expenditures after the earthquake is available only for the 2010 school year, therefore, the post-earthquake period in this Table corresponds to the 2010 school year. Standard errors shown in parentheses. *** p$<$0.01, ** p$<$0.05, * p$<$0.10. "' ///
         `"\end{tablenotes}"' `"\end{threeparttable}"' `"}"' `"\end{sidewaystable}"')

* ============================================
* Output 5: consulting_other_2010_details.png
* ============================================


clear all
insheet using "$data/raw/expcat_consulting.csv"
gen grand_total=sum(tot_expenditure_cat_1m)
gen __tmp=grand_total if _n==_N
replace __tmp=__tmp[_N] if __tmp==.
drop grand_total
gen tot_expenditure_cat_perc = tot_expenditure_cat_1m/__tmp
drop __tmp
label var tot_expenditure_cat_perc "Spending in 2010 as a fraction of overall spending"

preserve
collapse (sum) tot_expenditure_cat_perc, by(category)
gsort -tot_expenditure_cat_perc
gen sort_order = _n
tempfile cat_order1
save "$trash/cat_order1", replace
restore
merge m:1 category using "$trash/cat_order1", keep(match) nogenerate

levelsof sort_order, local(levels)
foreach lvl of local levels {
    quietly levelsof category if sort_order == `lvl', clean local(catname)
    local catname = subinstr(`"`catname'"', `"""', "", .)
    label define cat_label `lvl' "`catname'", add
}
label values sort_order cat_label

graph bar (sum) tot_expenditure_cat_perc, ///
    over(sort_order, label(angle(45))) ///
    title("Consulting Expenses") ///
    ytitle("Annual Expenditure" "(Percent of Total)") yscale(range(0(0.1)0.7)) ylabel(0(0.1)0.7) ///
    graphregion(color(white)) plotregion(color(white)) ///
    scheme(s2color) saving("$trash/ped_support_2010.gph", replace)

clear all



insheet using "$data/raw/expcat_other.csv", delim(,)
gen grand_total=sum(tot_expenditure_cat_1m)
gen __tmp=grand_total if _n==_N
replace __tmp=__tmp[_N] if __tmp==.
drop grand_total
gen tot_expenditure_cat_perc = tot_expenditure_cat_1m/__tmp
drop __tmp
label var tot_expenditure_cat_perc "Spending in 2010 as a fraction of overall spending"

preserve
collapse (sum) tot_expenditure_cat_perc, by(category)
gsort -tot_expenditure_cat_perc
gen sort_order = _n
tempfile cat_order2
save "$trash/cat_order2", replace
restore
merge m:1 category using "$trash/cat_order2", keep(match) nogenerate

levelsof sort_order, local(levels)
foreach lvl of local levels {
    quietly levelsof category if sort_order == `lvl', clean local(catname)
    local catname = subinstr(`"`catname'"', `"""', "", .)
    label define cat_label `lvl' "`catname'", add
}
label values sort_order cat_label

graph bar (sum) tot_expenditure_cat_perc, ///
    over(sort_order, label(angle(45))) ///
    title("Other Expenses") ///
    ytitle("Annual Expenditure" "(Percent of Total)") yscale(range(0(0.1)0.7)) ylabel(0(0.1)0.7) ///
    graphregion(color(white)) plotregion(color(white)) ///
    scheme(s2color) saving("$trash/otro2010.gph", replace)

graph combine "$trash/ped_support_2010.gph" "$trash/otro2010.gph", r(1)
graph export "$output_figures/consulting_other_2010_details.png", replace

cap erase "$trash/ped_support_2010.gph"
cap erase "$trash/otro2010.gph"
cap erase "$trash/cat_order2"
cap erase "$trash/cat_order1"
