// Author: Michela M. Tincani, UCL
// This version: March 2026


version 15

capture log close
log using "$root/output/figures/lca_all.log", replace
* ======================================================

* Estimate LCA model to generate house-type measure

* ======================================================



* Read in starting values
import delimited "$code/eb_map_iv_f.txt", varnames(1) clear stringcols(1 2)


* Lift the map into Mata (so it persists after we load other data)
mata:
    EQ  = st_sdata(., "eq")
    NM  = st_sdata(., "name")
    VAL = st_data(., "value")
end

* --- 1) Build B with the exact stripe/order of the current model ---
preserve
    use "$cleaned/census_parents_clean_2023.dta", clear
    sort portafolio vn hn pn
    bsample 500
    quietly gsem (v4a_use v4b_use v4c_use <- _cons), ///
        family(multinomial) link(logit) lclass(C 3) iterate(0)

    mata:
        // Stripe from the tiny run
        S = st_matrixcolstripe("e(b)")   // S[.,1]=eq, S[.,2]=name
        K = rows(S)
        B = J(1, K, .)

        // Fill B by matching (eq,name) using the TXT we cached in Mata
        for (i=1; i<=rows(VAL); i++) {
            hit = (S[,1]:==EQ[i]) :& (S[,2]:==NM[i])
            idx = selectindex(hit)
            if (rows(idx)==1) B[1,idx] = VAL[i]
        }

        st_matrix("B", B)
        st_matrixcolstripe("B", S)
    end
restore

* --- 2) Estimate on the real sample using starting value ---


use "$cleaned/census_parents_clean_2023.dta", clear
sort portafolio vn hn pn
version 15: quietly gsem (v4a_use v4b_use v4c_use <- _cons), family(multinomial) link(logit) lclass(C 3) from(B) nonrtolerance nocapslatent nodvheader


	
* After your GSEM has converged:
* 1) Posterior class probabilities (one variable per class)
  predict cpr*, classposteriorpr
  sum cpr*


* Get class-specific shares:
foreach v in v4a_use v4b_use v4c_use {
    levelsof `v', local(vals)
    forvalues k = 1/3 {
        di as txt "`v' | class `k'  (posterior-weighted proportions):"
        foreach c of local vals {
            quietly gen byte __iscat = (`v'==`c')
            quietly summarize __iscat [aw = cpr`k'], meanonly
            di as txt "  =`c': " as res %6.4f r(mean)
            drop __iscat
        }
    }
}



* Use the printed output to generate the donut graphs in file $root/output/figures/donut_graph_construction_types.xlsx

save "$cleaned/census_parents_clean_wclass_all.dta", replace


log close

* Back to version used for rest of code 
version 18

