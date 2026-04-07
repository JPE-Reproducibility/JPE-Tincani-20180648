## Filepaths Analysis Details

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/appendix.tex**

- Line 6, windows : For each household in the census data (restricted to households with at least one school-aged child), I link the vulnerability class distribution obtained from the latent-class analysis to the household characteristics that are available both in the census and in the education data, which I indicate with $x_i$ here. These are: the age of the household head, the average years of education of mothers and fathers, the region of residence. I then estimate linear regression models using census data restricted to households with at least one school-aged child. The outcome variables are $p_i^j$, the probability that household $i$ lives in a home of seismic vulnerability $j\in\{LV, MV, HV\}$, obtained from the latent-class analysis. The independent variables are parental education and age with exponents one, two and three, and region of residence. All independent variables appear uninteracted and interacted with each other (from pair-wise interactions to the interaction of all variables).
- Line 57, unix : \input{output/tables/distrib_materials}
- Line 62, unix : \input{output/tables/descriptives_treatvars_damage}
- Line 65, unix : \input{output/tables/correlates_pre_post.tex}
- Line 72, unix : \input{output/tables/main_effects_ts_span_math}
- Line 76, unix : \input{output/tables/main_effects_ts_GPA_controls_yn}
- Line 80, unix : \input{output/tables/descriptive_switches}
- Line 85, unix : \input{output/tables/main_effects_ts_st_2025_v2}
- Line 87, unix : \input{output/tables/het_effects_st_ts_GPA_bysimce.tex}
- Line 91, unix : \input{output/tables/het_effects_ts_deciles_2025}
- Line 94, unix : \input{output/tables/het_effects_ts_allint}
- Line 97, unix : \input{output/tables/main_effects_ts_GPA_tsunami_2025}
- Line 101, unix : \input{output/tables/main_effects_spatcor_ts_2025_v2}
- Line 103, unix : %\input{output/tables/conley_to_edit}
- Line 104, unix : % Add columns 2-5 to obtain the correct edited version, check output/tables/Table_A14_conley.txt for values in those columns
- Line 105, unix : \input{output/tables/conley_edited}
- Line 110, unix : \input{output/tables/main_effects_ts_GPA_fe}
- Line 116, unix : \input{output/tables/descriptive_missing_exp}
- Line 119, unix : \input{output/tables/med_effects_expenditures_select_attr.tex}
- Line 125, unix : \input{output/tables/rendidosexp}
- Line 141, unix : \includegraphics[scale=0.5]{Paper/reconstruccion_dios.png}
- Line 150, unix : \includegraphics[scale=0.18]{output/figures/heteffects_ts_GPA_by_GPA4_nofe.png} %0.25
- Line 160, unix : \includegraphics[scale=0.15]{output/figures/heteffects_GPArankmean_bysimce.png} %0.2
- Line 167, unix : \includegraphics[scale=0.15]{output/figures/eff_cost_simce.png}
- Line 335, unix : \input{Paper/model_extension}
- Line 338, unix : \input{Paper/appendix_reconstruction_policy}

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/19_school_resources.do**

- Line 55, unix : forval y=1/14 {
- Line 60, unix : forval y=1/14 {
- Line 67, unix : forval y=1/14 {
- Line 413, unix : gen tot_expenditure_cat_perc = tot_expenditure_cat_1m/__tmp
- Line 450, unix : gen tot_expenditure_cat_perc = tot_expenditure_cat_1m/__tmp

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/11_geog_coastal_proximity.do**

- Line 34, unix : save $trash/towns_post, replace
- Line 49, unix : merge 1:1 cod_com_alu using $trash/towns_post
- Line 62, unix : save $trash/mat_2009_temp, replace
- Line 66, unix : merge 1:1 cod_com_alu using $trash/mat_2009_temp
- Line 82, unix : insheet using $cleaned/towns_with_distance_to_coast.csv
- Line 83, unix : save $cleaned/towns_with_distance_to_coast.dta, replace
- Line 86, unix : merge 1:1 cod_com_alu using $cleaned/towns_with_distance_to_coast.dta, keepusing(distance_to_coast_km)
- Line 136, unix : save $trash/towns_schools_post, replace
- Line 151, unix : merge 1:1 cod_com_rbd using $trash/towns_schools_post
- Line 167, unix : save $trash/mat_2009_temp_rbd, replace
- Line 172, unix : merge 1:1 cod_com_rbd using $trash/mat_2009_temp_rbd
- Line 189, unix : insheet using $cleaned/towns_with_distance_to_coast.csv
- Line 192, unix : save $cleaned/school_towns_with_distance_to_coast.dta, replace
- Line 198, unix : merge 1:1 cod_com_rbd using $cleaned/school_towns_with_distance_to_coast.dta, keepusing(distance_to_coast_km)
- Line 225, unix : capture noisily erase $trash/mat_2009_temp.dta
- Line 226, unix : capture noisily erase $trash/towns_post.dta
- Line 227, unix : capture noisily erase $cleaned/towns_with_distance_to_coast.dta
- Line 228, unix : capture noisily erase $trash/towns_schools_post.dta
- Line 229, unix : capture noisily erase $trash/mat_2009_temp_rbd.dta
- Line 230, unix : capture noisily erase $cleaned/school_towns_with_distance_to_coast.dta

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/9_lca_all.do**

- Line 71, unix : forvalues k = 1/3 {

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/estout.ado**

- Line 4364, windows : local brdrt "\clbrdrt\brdrw10\brdrs"
- Line 4365, windows : local brdrb "\clbrdrb\brdrw10\brdrs"
- Line 4366, windows : local emptycell "\pard\intbl\ql\cell"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/theoretical_model_rank_concerns.tex**

- Line 110, unix : \includegraphics[width=\textwidth]{Paper/classroomA_additive_damage.png}
- Line 115, unix : \includegraphics[width=\textwidth]{Paper/classroomB_additive_damage.png}
- Line 123, unix : \includegraphics[width=\textwidth]{Paper/classrooms_AB_post_earthquake_additive_damage.png}

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/13_gen_data_for_map.do**

- Line 10, unix : use $cleaned/data_final_for_regs_all
- Line 47, unix : gen perc_college=obs_college/17707
- Line 48, unix : gen perc_no_college=obs_no_college/106037
- Line 155, unix : export delimited $data/cleaned/data_for_map_college_2025.csv,  replace
- Line 163, unix : export delimited $data/cleaned/data_for_map_nocollege_2025.csv,  replace

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/15_descriptive_tables_figures.do**

- Line 37, unix : gen damage_over_income=damage_usd/annual_hhincome_lagged_usd
- Line 581, unix : graph combine $trash/damages_peduc_by_school_type_2023.gph  $trash/damages_peduc_by_school_rurality_2023.gph, colf graphregion(color(white)) saving($trash/damages_peduc_2023.gph, replace)
- Line 582, windows : graph export "$output_figures\damages_peduc.png", as(png) name("Graph") replace

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/17_het_effects.do**

- Line 256, windows : `"\par\endgroup\endgroup"' )

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/esttab.ado**

- Line 138, windows : local rtf_open_l3       `" `"\deflang1033\plain\fs24"'"'
- Line 139, windows : local rtf_open_l4       `" `"{\footer\pard\qc\plain\f0\fs24\chpgn\par}"'"'
- Line 149, windows : local rtf_midgap          `"{\trowd\trgaph108\trleft-108@rtfemptyrow\row}"'
- Line 159, windows : local rtf_end             `"}\cell\row}"'
- Line 210, windows : local tex_toprule         `"\`="\hline\hline" + cond("\`longtable'"!="", "\endfirsthead\hline\endhead\hline\endfoot\endlastfoot", "")'"'
- Line 212, windows : local tex_bottomrule      `""\hline\hline""'
- Line 242, windows : local booktabs_toprule    `"\`="\toprule" + cond("\`longtable'"!="", "\endfirsthead\midrule\endhead\midrule\endfoot\endlastfoot", "")'"'
- Line 709, windows : local opening `"`macval(opening)' "\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}""'
- Line 716, windows : local opening `"`macval(opening)' "{" "\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}""'
- Line 725, windows : if `"`width'"'!="" local extracolsep "@{\hskip\tabcolsep\extracolsep\fill}"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/14_analyze_census.do**

- Line 61, windows : file write `fout' "\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}" _n
- Line 217, unix : graph combine $trash/fit_high_peduc.gph $trash/fit_medium_peduc.gph $trash/fit_low_peduc.gph $trash/fit_high_age_hh_head.gph $trash/fit_medium_age_hh_head.gph $trash/fit_low_age_hh_head.gph, c(2) colf graphregion(color(white)) saving($trash/fit_vc_prediction, replace)
- Line 223, unix : erase  $trash/class_prob_by_p_educ.gph
- Line 224, unix : erase  $trash/fit_high_peduc.gph
- Line 225, unix : erase  $trash/fit_medium_peduc.gph
- Line 226, unix : erase  $trash/fit_low_peduc.gph
- Line 227, unix : erase  $trash/fit_high_age_hh_head.gph
- Line 228, unix : erase  $trash/fit_medium_age_hh_head.gph
- Line 229, unix : erase  $trash/fit_low_age_hh_head.gph
- Line 230, unix : erase  $trash/fit_vc_prediction.gph

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/data.tex**

- Line 43, unix : \includegraphics[scale=0.65]{output/figures/earthquake_distribution.png}
- Line 69, unix : \includegraphics[scale=1.3]{output/figures/donut.png} %0.7
- Line 84, unix : \includegraphics[scale=0.15] {output/figures/class_prob_by_p_educ_all.png} %0.33
- Line 97, unix : \includegraphics[scale=0.18]{output/figures/fit_vc_prediction_all.png} %0.43
- Line 137, unix : \includegraphics[scale=0.15]{output/figures/damages_peduc.png}
- Line 149, unix : \includegraphics[scale=0.65]{output/figures/damage_propagation_by_SES_py.png}
- Line 172, unix : \input{output/tables/descriptive_pre_post.tex}

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/7_clean_rendimiento.do**

- Line 36, unix : save $cleaned/rendimiento_2010_cleaned.dta, replace
- Line 62, unix : save $cleaned/rendimiento_2008_cleaned.dta, replace
- Line 105, unix : merge m:1 cod_com using $cleaned/town_region_codes.dta
- Line 132, unix : save $cleaned/rendimiento_2011_cleaned.dta, replace
- Line 163, unix : merge m:1 cod_com using $cleaned/town_region_codes.dta
- Line 181, unix : save $cleaned/rendimiento_2009_cleaned.dta, replace

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/18_med_relationships.do**

- Line 16, unix : use $cleaned/data_final_for_regs_teach_all

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/manuscript.tex**

- Line 69, windows : \newcommand\norm[1]{\left\lVert#1\right\rVert}

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/mechanisms.tex**

- Line 30, unix : \includegraphics[scale=0.22]{output/figures/heteffects_ts_GPA_by_simce_fe.png} %0.25
- Line 40, unix : \input{output/tables/med_effects_curriculum_CIs_2025.tex}
- Line 47, unix : \input{output/tables/med_effects_curriculum_2025.tex}
- Line 73, unix : \input{output/tables/med_effects_exp114}
- Line 78, unix : \includegraphics[scale=0.2]{output/figures/consulting_other_2010_details.png} %0.25
- Line 94, unix : \input{output/tables/med_effects.tex}
- Line 108, unix : \includegraphics[scale=0.15]{output/figures/heteffects_GPAranksd_bysimce.png} %0.2

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/12_gen_variables.do**

- Line 146, unix : insheet using $data/raw/EE_cerr_201011.csv, clear
- Line 147, unix : save $trash/displ_stud_rbd_to2011.dta, replace
- Line 149, unix : merge m:1 rbd using $trash/displ_stud_rbd_to2011
- Line 360, unix : merge m:1 rbd using $trash/displ_stud_rbd_to2011
- Line 379, unix : Ratio: 75,725/589,627 = 0.1284, or approximately 13% of the sample
- Line 439, unix : save $cleaned/pre_cpad_alu_all, replace
- Line 452, unix : use $cleaned/post_cpad_alu_all, clear
- Line 454, unix : append using $cleaned/pre_cpad_alu_all, gen(pre)
- Line 568, unix : save $cleaned/prepost_cpad_alu_all, replace
- Line 853, unix : save $trash/prepost_cpad_alu_all_temp, replace
- Line 1025, unix : save $cleaned/data_final_for_regs_all, replace
- Line 1034, unix : merge m:1 post rbd codigo using $cleaned/endline_simce_leng_2011
- Line 1037, unix : merge m:1 post rbd codigo using $cleaned/endline_simce_mate_2011
- Line 1041, unix : merge m:1 post rbd codigo using $cleaned/endline_simce_leng_2009
- Line 1044, unix : merge m:1 post rbd codigo using $cleaned/endline_simce_mate_2009
- Line 1048, unix : save $cleaned/data_final_for_regs_teach_all, replace
- Line 1063, unix : use $cleaned/data_final_for_regs_all
- Line 1088, unix : capture noisily erase $cleaned/post_cpad_alu_all.dta
- Line 1089, unix : capture noisily erase $cleaned/pre_cpad_alu_all.dta
- Line 1090, unix : capture noisily erase $cleaned/prepost_cpad_alu_all.dta
- Line 1091, unix : capture noisily erase $trash/prepost_cpad_alu_all_temp.dta
- Line 1092, unix : capture noisily erase $cleaned/post_for_predict_class_low_all.dta
- Line 1093, unix : capture noisily erase $cleaned/post_for_predict_class_medium_all.dta
- Line 1094, unix : capture noisily erase $cleaned/post_for_predict_class_high_all.dta
- Line 1095, unix : capture noisily erase $cleaned/pre_for_predict_class_low_all.dta
- Line 1096, unix : capture noisily erase $cleaned/pre_for_predict_class_medium_all.dta
- Line 1097, unix : capture noisily erase $cleaned/pre_for_predict_class_high_all.dta
- Line 1098, unix : capture noisily erase $cleaned/endline_simce_leng_2011.dta
- Line 1099, unix : capture noisily erase $cleaned/endline_simce_mate_2011.dta
- Line 1100, unix : capture noisily erase $cleaned/endline_simce_leng_2009.dta
- Line 1101, unix : capture noisily erase $cleaned/endline_simce_mate_2009.dta

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/analysis_earthquake_effects.tex**

- Line 25, unix : \input{output/tables/main_effects_ts_GPA}
- Line 39, unix : As the earthquake occurred a few days before the start of grade 7 and outcomes are measured in grade 8, a second concern is that the estimates may capture the effect of a reallocation of students across classrooms and/or schools between grades 7 and 8, occurring in response to earthquake damages, that the strategy above and the exclusion from the sample of forced relocations immediately after the earthquake (Section \ref{sec:data}) fail to account for. To examine this, I tracked the movement of students across schools and classrooms between the $7^{th}$ and $8^{th}$ grades, for both cohorts.\par
- Line 47, unix : \input{output/tables/effects_on_switches}
- Line 57, unix : \input{output/tables/main_effects_ts_2025_lagged}
- Line 69, unix : \input{output/tables/test_identif_assmpt}
- Line 86, unix : \input{output/tables/het_effects_ts_GPA_bysimce.tex}
- Line 91, unix : \includegraphics[scale=0.18]{output/figures/heteffects_ts_GPA_by_simce_nofe.png} %0.25

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/ols_spatial_HAC.ado**

- Line 6, unix : v1 S. HSIANG 6/10 [SMH2137@COLUMBIA.EDU]
- Line 8, unix : v2 UPDATE 6/13 [SHSIANG@PRINCETON.EDU]:
- Line 11, unix : V3 UPDATE 6/18 [SHSIANG@BERKELEY.EDU]:
- Line 78, unix : legend: b/se/t

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/20_identifying.do**

- Line 60, unix : save $trash/rendimiento_2010_cleaned.dta, replace
- Line 82, unix : save $trash/rendimiento_2008_cleaned.dta, replace
- Line 95, unix : merge 1:1 mrun using $trash/rendimiento_2010_cleaned.dta
- Line 101, unix : merge 1:1 mrun using $trash/rendimiento_2008_cleaned.dta

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/3_clean_simce_4alu_8alu.do**

- Line 76, unix : gen yearbirth=int(fec_nac_alu/10000)
- Line 141, unix : save $trash/tempsimce, replace
- Line 145, unix : use $trash/tempsimce
- Line 164, unix : capture noisily erase  $trash/tempsimce.dta
- Line 238, unix : gen yearbirth=int(fec_nac_alu/10000)

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/2_clean_census.do**

- Line 202, unix : merge m:1 cod_com using $cleaned/town_region_codes.dta

