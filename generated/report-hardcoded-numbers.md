## Potentially Hardcoded Numeric Constants


We found the following set of hard coded numbers. This may be completely legitimate (parameter input, thresholds for computations, etc), and is hence only for information.

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/estout.ado**

- Line 433, : local starlevels "* 0.05 ** 0.01 *** 0.001"

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/15_descriptive_tables_figures.do**

- Line 36, : gen annual_hhincome_lagged_usd=12*hhincome_lagged *0.002  // 2010 USD to CLP exchange rate
- Line 90, : di 1551.883-758.8807
- Line 175, : di  5132.283 /8778.431
- Line 594, : lpoly effort_cost_std  simce_avg_st if simce_avg_st> -1.699625   & simce_avg_st< 1.810402     & post==1 & earth_region_rbd ==1 & ${proximity}==0, noscatter ci graphregion(color(white)) ///

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/esttab.ado**

- Line 28, : local fixed_starlevels    `"* 0.05 ** 0.01 *** 0.001"'
- Line 154, : local rtf_starlevels      `""{\super *}" 0.05 "{\super **}" 0.01 "{\super ***}" 0.001"'
- Line 187, : local html_starlevels     `"<sup>*</sup> 0.05 <sup>**</sup> 0.01 <sup>***</sup> 0.001"'
- Line 219, : local tex_starlevels      `"\sym{*} 0.05 \sym{**} 0.01 \sym{***} 0.001"'

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/data.tex**

- Line 56, : \paragraph{Step one: ground shaking.} For students who reside in earthquake-afflicted regions, I build a measure of distance between each student's town of residence and the asperity centroid as $\Delta_A=\sqrt{R^2+h^2}$, where $R$ is the distance between the town's center and the point on the earth's surface vertically above the asperity centroid, whose coordinates are ($34.8^{o}$S, $72.6^{o}$W), and $h=20$km is the depth of the latter (the town-level distances $R$ are from \cite{tincani_distance_measures}). I then apply the intensity attenuation formula derived by \cite{astroza2012} for the 2010 Chilean earthquake that gives for each distance $\Delta_A$ a level of severity of ground shaking, $I$, measured on the Medvedev-Sponheuer-Karnik (MSK) scale: $I=19.781-5.927\log_{10}(\Delta_A)+0.00089\Delta_A$ ($R^2=0.9894$).\footnote{$\Delta_A$ is non-negative because it measures a distance, and it is never equal to zero because no town was directly above the asperity, which was in the ocean. The reported $R^2$ refers to the reported regression with MSK-Intensity as outcome variable. }\par

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/18_med_relationships.do**

- Line 96, : local tcrit = invttail(e(df_r), 0.025)  // two-sided 95%

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/manuscript.tex**

- Line 4, : \usepackage[a4paper,left=2.8575cm,right=2.8575cm,top=2.8575cm,bottom=2.8575cm]{geometry}

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/mechanisms.tex**

- Line 21, : Consistent with the limited variability in mean classroom damages within schools noted in Section \ref{sec:descrptive}, the effects of mean damages are imprecisely estimated and uninformative  (Appendix Table \ref{tab:effectstsfe} and Figure \ref{fig:heteffects_bysimce_fe}). Estimates from equation \eqref{regression1prime} show that the average impacts of peer damage dispersion become smaller in magnitude and statistically undetectable once school-by-cohort fixed effects are included (Appendix Table \ref{tab:effectstsfe}). The point estimates, therefore, are inconsistent with schools mitigating the impacts of damage dispersion, because mitigation would have resulted in stronger negative impacts with the inclusion of the fixed effects, not weaker. Additionally, the impacts with and without the inclusion of fixed effects are statistically indistinguishable: the p-values for equality are 0.413 for test scores and 0.371 for GPA. Therefore, the data provide no statistically significant evidence that schools responded to dispersion in damages, and the point estimates are inconsistent with mitigation in response to dispersion.\par

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/12_gen_variables.do**

- Line 49, : gen intensity_alu=19.781-5.927*log_adj_dis+0.00087*adjusted_distance if adjusted_distance>=0 & adjusted_distance<=600
- Line 122, : replace exp_reconstruction_alu_lca= cprA_hat*0.001 if intensity_alu_cat==5
- Line 123, : replace exp_reconstruction_alu_lca=cprA_hat*0.011+cprB_hat*0.001 if intensity_alu_cat==6
- Line 124, : replace exp_reconstruction_alu_lca=cprA_hat*0.084 + cprB_hat*0.017+cprCD_hat*0.0055 if intensity_alu_cat==7
- Line 125, : replace exp_reconstruction_alu_lca=cprA_hat*0.337 + cprB_hat*0.084+cprCD_hat*0.0165 if intensity_alu_cat==8
- Line 126, : replace exp_reconstruction_alu_lca=cprA_hat*0.69 + cprB_hat*0.337+cprCD_hat*0.053 if intensity_alu_cat==9
- Line 264, : gen intensity_alu=19.781-5.927*log_adj_dis+0.00087*adjusted_distance if adjusted_distance>=0 & adjusted_distance<=600
- Line 336, : replace exp_reconstruction_alu_lca= cprA_hat*0.001 if intensity_alu_cat==5
- Line 337, : replace exp_reconstruction_alu_lca=cprA_hat*0.011+cprB_hat*0.001 if intensity_alu_cat==6
- Line 338, : replace exp_reconstruction_alu_lca=cprA_hat*0.084 + cprB_hat*0.017+cprCD_hat*0.0055 if intensity_alu_cat==7
- Line 339, : replace exp_reconstruction_alu_lca=cprA_hat*0.337 + cprB_hat*0.084+cprCD_hat*0.0165 if intensity_alu_cat==8
- Line 340, : replace exp_reconstruction_alu_lca=cprA_hat*0.69 + cprB_hat*0.337+cprCD_hat*0.053 if intensity_alu_cat==9
- Line 379, : Ratio: 75,725/589,627 = 0.1284, or approximately 13% of the sample
- Line 555, : gen intensity_rbd=19.781-5.927*log_adj_dis_rbd+0.00087*adjusted_distance_rbd if adjusted_distance_rbd>=0 & adjusted_distance_rbd<=600

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/tex/Paper/analysis_earthquake_effects.tex**

- Line 28, : The average damages to the homes of classmates have positive effects on own test scores and GPA. An increase in mean peer damages of one standard deviation of the damage distribution (i.e., a 4.2 percentage point increase in the portion of the home that collapsed) increased test scores by 0.05 standard deviations, and GPA by 0.04 standard deviations. This suggests that schools counteracted any potential adverse learning conditions caused by average damages. Overcompensation in response to the earthquake was documented also in post-earthquake crime prevention in Chilean municipalities (\cite{hombrados2020lasting}). Classroom-level damage dispersion had negative effects on test scores and GPA, of similar magnitudes. An increase in the within-classroom standard deviation of damages of one standard deviation of the damage distribution (i.e., a 4.2 percentage point increase in the portion of the home that collapsed) lowered test scores and GPA by around 0.085 standard deviations. These results suggest that schools did not entirely compensate detrimental effects on student learning due to damage dispersion within classrooms. \par

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/ado_frozen/ols_spatial_HAC.ado**

- Line 71, : indep1 |    0.568      0.568      0.568
- Line 72, : |    0.198      0.206      0.240
- Line 73, : |    2.876      2.761      2.369
- Line 74, : const |    6.415      6.415      6.415
- Line 75, : |    0.790      1.176      1.340
- Line 76, : |    8.119      5.454      4.786
- Line 86, : indep1 |   0.568***     0.568***     0.568**
- Line 87, : const |   6.415***     6.415***     6.415***

**/var/folders/5q/yhcyv3z55wvg6lhgc3h22kk00000gq/T/20180648-1/replication-package/Replication_Package_Tincani-20180648/code/stata/16_main_effects_and_rob.do**

- Line 423, : indistinguishable: the p-values for equality are 0.413 for test scores and 0.371 for GPA."

