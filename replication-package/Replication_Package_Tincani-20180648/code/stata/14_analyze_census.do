// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file describes the census data and shows the goodness of fit of the model predicting house construction types from household characteristics

* The outcomes of this do file are:
* figures that show goodness of prediction of house type
* figure showing descriptive statistics of distribution of home types by family SES




* =====================================================================================

* Describe distribution of building materials in entire population
* of households with at least one school-aged child (nearly 1 million observations)

* =====================================================================================

clear all
log using "$output/in_text_numbers/Section_2_2.txt", replace text
use "$cleaned/census_parents_clean_2023.dta", clear
/*
Size of the population of households with at least one school-aged child, as reported in 
the introduction ("nearly one million") and in the notes to Figures 3, 4, 5 and A2 (929,647 households).
*/
sum portafolio
log close 




** Generate descriptive stats of the distribution of building materials in the population (Appendix Table A2)
 ** walls
 estpost tab v4a_use
 esttab, cell("b pct(fmt(a))")  collab("Freq." "Percent") noobs nonumb nomtitle
 esttab, cell("b pct(fmt(a))")  collab("Freq." "Percent")  noobs nonumb nomtitle tex
 ** roof
 estpost tab v4b_use
 esttab, cell("b pct(fmt(a))")  collab("Freq." "Percent") noobs nonumb nomtitle
 esttab, cell("b pct(fmt(a))")  collab("Freq." "Percent")  noobs nonumb nomtitle tex
 ** floor
 estpost tab v4c_use
 esttab, cell("b pct(fmt(a))")  collab("Freq." "Percent") noobs nonumb nomtitle
 esttab, cell("b pct(fmt(a))")  collab("Freq." "Percent")  noobs nonumb nomtitle tex
 



 *****************************************************
* Build LaTeX table with material names 
*****************************************************

local outtex "$output_tables/distrib_materials.tex"
tempname fout
file open `fout' using `"`outtex'"', write replace text

*---- LaTeX header
file write `fout' "\begin{table}[H]\centering" _n
file write `fout' "\footnotesize" _n
file write `fout' "\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}" _n
file write `fout' "\begin{tabular}{l*{1}{cc}}" _n
file write `fout' "\hline" _n
file write `fout' "\multicolumn{1}{c}{} & \multicolumn{1}{c}{Freq.} & \multicolumn{1}{c}{Percent} \\" _n
file write `fout' "\hline" _n


*****************************************************
* Helper program: counts + merge with mapping + write
*****************************************************
capture program drop _write_section
program define _write_section
    syntax varname(numeric) , SECTION(string) MAP(string) OUT(name)

    preserve
        keep `varlist'
        drop if missing(`varlist')

        contract `varlist', freq(Freq)
        egen Total = total(Freq)
        gen Percent = 100*Freq/Total
        drop Total

        rename `varlist' code
        merge 1:1 code using `"`map'"', nogen keep(match)

        sort code

        file write `out' "{\bf `section'} & & \\" _n
        file write `out' "\hline" _n

        forvalues i = 1/`=_N' {
            local nm = name[`i']

            * Escape a few LaTeX special chars (expand if needed)
            local nm : subinstr local nm "&" "\&", all
            local nm : subinstr local nm "%" "\%", all
            local nm : subinstr local nm "_" "\_", all
            local nm : subinstr local nm "#" "\#", all

            * Format numbers as strings
            local fstr : display %12.0f Freq[`i']
            local pstr : display %6.2f  Percent[`i']

            file write `out' "`nm' & `fstr' & `pstr' \\" _n
        }

        file write `out' "\hline" _n
    restore
end


*****************************************************
* Mapping tables (hard-coded, cannot fail)
*****************************************************

tempfile map_walls map_roof map_floor

* Walls map
preserve
clear
input code str80 name
1 "Reinforced concrete, stone"
2 "Brick"
3 "Structural panels, prefabricated"
4 "Wood, lined partition"
5 "Eternit"
6 "Adobe, soggy mud"
7 "Makeshift materials"
end
save `map_walls', replace
restore

* Roof map
preserve
clear
input code str80 name
1 "Roof tiles (clay, metal, cement)"
2 "Shingle (wood, asphalt)"
3 "Concrete slab"
4 "Zinc"
5 "Slate"
6 "Fiberglass, femocolor"
7 "Clickstone"
8 "Mud straw"
9 "Makeshift materials"
end
save `map_roof', replace
restore

* Floor map
preserve
clear
input code str80 name
1 "Hardwood floor"
2 "Ceramic tiles"
3 "Wooden decking"
4 "Wall to wall carpet"
5 "Cement tiles"
6 "Plastics (flexit, linoleum, etc.)"
8 "Radier"
9 "Earthen"
end
save `map_floor', replace
restore


*****************************************************
* Write sections
*****************************************************
_write_section v4a_use, section("Walls") map(`"`map_walls'"') out(`fout')
_write_section v4b_use, section("Roof")  map(`"`map_roof'"')  out(`fout')
_write_section v4c_use, section("Floor") map(`"`map_floor'"') out(`fout')


*---- LaTeX footer
file write `fout' "\end{tabular}" _n
file write `fout' "\caption{Distribution of building materials in the population of households with at least one school-aged child, N=929,647. {\itshape Source}: Chilean census, 2002.\label{distrib_materials}}" _n
file write `fout' "\end{table}" _n

file close `fout'



 
* =============================================================================================================

* Describe how house types (class probabilities) vary by household characteristics 
* Generate graphs with GoF of the model predicting house construction types from household characteristics

* ==============================================================================================================


* Describe house types as a function of parental education 

clear all
 use "$cleaned/census_with_class_type_true_predicted_all.dta" 


graph twoway (lpoly  cpr_low   peduc,   acolor(blue) ) (lpoly cpr_medium peduc  , acolor(green) lpattern(shortdash_dot)) (lpoly cpr_high peduc  , acolor(red)  lpattern(longdash) ),  ytitle("Class probability") xtitle("Average education of mothers and fathers (years)") legend(order(1 "Low Vulnerability" 2 "Medium Vulnerability" 3 "High Vulnerability")) graphregion(color(white)) bgcolor(white) saving("$trash/class_prob_by_p_educ.gph", replace)
graph export $output_figures/class_prob_by_p_educ_all.png, as(png) replace   // Figure 4 


* Goodness of fit graphs for model predicting house type from household characteristics

 * goodness of fit of predicted class probability by parental education
 graph twoway (lpoly  cpr_high   peduc,   acolor(blue) ) (lpoly cpr_high_hat peduc  , lcolor(green) lpattern(dash) ),  ytitle("Class Probability") xtitle("Average education of mothers and fathers (years)") legend(order(1 "True" 2 "Predicted")) title("High Vulnerability") graphregion(color(white)) bgcolor(white) saving($trash/fit_high_peduc.gph, replace)
 graph twoway (lpoly  cpr_medium   peduc,   acolor(blue) ) (lpoly cpr_medium_hat peduc  , lcolor(green) lpattern(dash)  ),  ytitle("Class Probability") xtitle("Average education of mothers and fathers (years)") legend(order(1 "True" 2 "Predicted")) title("Medium Vulnerability") graphregion(color(white)) bgcolor(white)  saving($trash/fit_medium_peduc.gph, replace)
 graph twoway (lpoly   cpr_low   peduc,   acolor(blue) ) (lpoly cpr_low_hat peduc  , lcolor(green) lpattern(dash) ),  ytitle("Class Probability") xtitle("Average education of mothers and fathers (years)") legend(order(1 "True" 2 "Predicted")) title("Low Vulnerability") graphregion(color(white)) bgcolor(white)  saving($trash/fit_low_peduc.gph, replace)
 
 
  *Goodness of fit of predicted class probability by age of household head
 graph twoway (lpoly  cpr_high   age_hh_head,   acolor(blue) ) (lpoly cpr_high_hat age_hh_head  , lcolor(green) lpattern(dash) ),  ytitle("Class Probability") xtitle("Age of household head (years)") legend(order(1 "True" 2 "Predicted")) title("High Vulnerability") graphregion(color(white)) bgcolor(white) saving($trash/fit_high_age_hh_head.gph, replace)
 graph twoway (lpoly  cpr_medium  age_hh_head,   acolor(blue) ) (lpoly cpr_medium_hat age_hh_head  , lcolor(green) lpattern(dash)  ),  ytitle("Class Probability") xtitle("Age of household head (years)") legend(order(1 "True" 2 "Predicted")) title("Medium Vulnerability") graphregion(color(white)) bgcolor(white)  saving($trash/fit_medium_age_hh_head.gph, replace)
 graph twoway (lpoly   cpr_low   age_hh_head,   acolor(blue) ) (lpoly cpr_low_hat age_hh_head  , lcolor(green) lpattern(dash) ),  ytitle("Class Probability") xtitle("Age of household head (years)") legend(order(1 "True" 2 "Predicted")) title("Low Vulnerability") graphregion(color(white)) bgcolor(white)  saving($trash/fit_low_age_hh_head.gph, replace)
 
 graph combine $trash/fit_high_peduc.gph $trash/fit_medium_peduc.gph $trash/fit_low_peduc.gph $trash/fit_high_age_hh_head.gph $trash/fit_medium_age_hh_head.gph $trash/fit_low_age_hh_head.gph, c(2) colf graphregion(color(white)) saving($trash/fit_vc_prediction, replace)
 
 graph export $output_figures/fit_vc_prediction_all.png, as(png) replace   // Figure 5
 
 
 * Empty trash
 erase  $trash/class_prob_by_p_educ.gph
 erase  $trash/fit_high_peduc.gph
 erase  $trash/fit_medium_peduc.gph
 erase  $trash/fit_low_peduc.gph
 erase  $trash/fit_high_age_hh_head.gph
 erase  $trash/fit_medium_age_hh_head.gph
 erase  $trash/fit_low_age_hh_head.gph
 erase  $trash/fit_vc_prediction.gph
 
 * Erase data file no longer needed - toggle one once replication package ready
 * capture noisily erase "$data/cleaned/census_parents_clean_2023.dta"

 
 






