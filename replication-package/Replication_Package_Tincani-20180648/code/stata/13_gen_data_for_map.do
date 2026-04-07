// Author: Michela M. Tincani, UCL
// This version: March 2026

****************************************************************************************************************
*                      Description: creates data used to create map of damage propagation by parental education                                                        
*****************************************************************************************************************

clear all

use $cleaned/data_final_for_regs_all



  keep if earth_region_rbd==1 & post==1
  gen college=1 if peduc>14 & peduc!=.
  replace college=0 if peduc<=14
  tab college
  
  gen damage_usd=exp_reconstruction_alu_lca*84175
  
  bysort cod_com_alu: egen mean_damage_usd_college=mean(damage_usd) if college==1
  bysort cod_com_alu: egen mean_damage_usd_no_college=mean(damage_usd) if college==0
  bysort cod_com_alu college: gen obs_college=_N if college==1
  bysort cod_com_alu college: gen obs_no_college=_N if college==0
  
  keep cod_com_alu mean_damage_usd_college mean_damage_usd_no_college obs*
  duplicates drop 
  
  bysort cod_com_alu: egen max=max(mean_damage_usd_college)
  drop mean_damage_usd_college
  rename max mean_damage_usd_college
  bysort cod_com_alu: egen max=max(mean_damage_usd_no_college)
  drop mean_damage_usd_no_college
  rename max mean_damage_usd_no_college
  bysort cod_com_alu: egen max=max( obs_college)
  drop  obs_college
  rename max  obs_college
  
  bysort cod_com_alu: egen max=max( obs_no_college)
  drop  obs_no_college
  rename max  obs_no_college
  
  
  
  duplicates drop 
  
  gen perc_college=obs_college/17707
  gen perc_no_college=obs_no_college/106037
  drop obs_college obs_no_college
  
  label var perc_college "Town population of college educated parents as a fraction of all parents with college education in earthquake regions"
  label var perc_no_college "Town population of not college educated parents as a fraction of all parents without in earthquake regions"
  
  
  preserve
  insheet using "$data/raw/comuna_alu_geocoded.csv", clear 
  save "$trash/comuna_alu_geocoded.dta", replace 

  restore 
   merge 1:1 cod_com_alu using "$trash/comuna_alu_geocoded.dta", keepusing(nom_com_alu latitude_alu longitude_alu)
   rename latitude_alu latitude
   rename longitude_alu longitude 
 
 keep if _merge==3
 drop _merge
 order nom_com_alu
 sort nom_com_alu
 
 * Avoid clashes in map software due to special characters in Spanish language  
 replace nom_com_alu="ALHUE" if cod_com_alu==13502
 replace nom_com_alu="CANETE" if cod_com_alu==8203
 replace nom_com_alu="CHANARAL" if cod_com_alu==3201
 replace nom_com_alu="COLBUN" if cod_com_alu==7402  
 replace nom_com_alu="COMBARBALA" if cod_com_alu==4302
 replace nom_com_alu="CONCEPCION" if cod_com_alu==8101
 replace nom_com_alu="CONCHALI" if cod_com_alu==13104
 replace nom_com_alu="CONSTITUCION" if cod_com_alu==7102
 replace nom_com_alu="COPIAPO" if cod_com_alu==3101
 replace nom_com_alu="CURACAUTIN" if cod_com_alu==9203
 replace nom_com_alu="CURACAVI" if cod_com_alu==13503
 replace nom_com_alu="DONIHUE" if cod_com_alu==6105
 replace nom_com_alu="ESTACION CENTRAL" if cod_com_alu==13106
 replace nom_com_alu="FUTALEUFU" if cod_com_alu==10402
 replace nom_com_alu="HUALAIHUE" if cod_com_alu==10403
 replace nom_com_alu="HUALANE" if cod_com_alu==7302
 replace nom_com_alu="HUALPIN" if cod_com_alu==8112
 replace nom_com_alu="JUAN FERNANDEZ"	 if cod_com_alu==5104
 replace nom_com_alu="LA UNION" if cod_com_alu==14201
 replace nom_com_alu="LICANTEN" if cod_com_alu==7303
 replace nom_com_alu="LONGAVI" if cod_com_alu==7403
 replace nom_com_alu="LOS ANGELES" if cod_com_alu==8301
 replace nom_com_alu="MAIPU" if cod_com_alu==13119
 replace nom_com_alu="MARIA PINTO" if cod_com_alu==13504
 replace nom_com_alu="MAULLIN" if cod_com_alu==10108
 replace nom_com_alu="MULCHEN" if cod_com_alu==8305
 replace nom_com_alu="PENAFLOR" if cod_com_alu==13605
 replace nom_com_alu="PENALOLEN" if cod_com_alu==13122
 replace nom_com_alu="PITRUFQUEN" if cod_com_alu==9114
 replace nom_com_alu="PUNCHUCAVI" if cod_com_alu==5105
 replace nom_com_alu="PUCON" if cod_com_alu==9115
 replace nom_com_alu="PUREN" if cod_com_alu==9208
 replace nom_com_alu="QUELLON" if cod_com_alu==10208
 replace nom_com_alu="QUILLON" if cod_com_alu==8413
 replace nom_com_alu="RANQUIL" if cod_com_alu==8415
 replace nom_com_alu="RIO CLARO" if cod_com_alu==7108
 replace nom_com_alu="RIO HURTADO" if cod_com_alu==4305
 replace nom_com_alu="SAN FABIAN" if cod_com_alu==8417
 replace nom_com_alu="SAN JOAQUIN" if cod_com_alu==13129
 replace nom_com_alu="SAN JOSE DE MAIPO" if cod_com_alu==13203
 replace nom_com_alu="SAN NICOLAS" if cod_com_alu==8419
 replace nom_com_alu="SAN RAMON" if cod_com_alu==13131
 replace nom_com_alu="SANTA BARBARA" if cod_com_alu==8311
 replace nom_com_alu="SANTA MARIA" if cod_com_alu==5706
 replace nom_com_alu="TIRUA" if cod_com_alu==8207
 replace nom_com_alu="TOLTEN" if cod_com_alu==9118
 replace nom_com_alu="TOME" if cod_com_alu==8111
 replace nom_com_alu="TRAIGUEN" if cod_com_alu==9210
 replace nom_com_alu="VALPARAISO" if cod_com_alu==5101
 replace nom_com_alu="VICHUQUEN" if cod_com_alu==7309
 replace nom_com_alu="VILCUN" if cod_com_alu==9119
 replace nom_com_alu="VINA DEL MAR" if cod_com_alu==5109
 replace nom_com_alu="NIQUEN" if cod_com_alu==8409
 replace nom_com_alu="NUNOA" if cod_com_alu==13120
 
 
 * Make format ENVI-compatible (ENVI is the software used to generate the map)
 * Coordinates
format latitude  %11.6f
format longitude %12.6f

* Damages in USD
format mean_damage_usd_college    %12.2f
format mean_damage_usd_no_college %12.2f

* Percent-of-sample shares (very small numbers)
format perc_college    %14.8f
format perc_no_college %14.8f

* Scale shares to per-thousand (×1000) for sizing in ENVI
gen share_college_k    = perc_college*1000
gen share_nocollege_k  = perc_no_college*1000
format share_college_k   %12.6f
format share_nocollege_k %12.6f

drop perc_college perc_no_college

order nom_com_alu cod_com_alu mean_damage_usd_college mean_damage_usd_no_college share_college_k share_nocollege_k latitude longitude

* Create two datsets, one with families with college-educated parents and and one with families with not-college educated familites
/*
preserve

keep nom_com_alu cod_com_alu mean_damage_usd_college  share_college_k   latitude longitude
drop if share_college_k==. 
export delimited $data/cleaned/data_for_map_college_2025.csv,  replace 

restore 

preserve

keep nom_com_alu cod_com_alu  mean_damage_usd_no_college  share_nocollege_k latitude longitude
drop if share_nocollege_k==. 
export delimited $data/cleaned/data_for_map_nocollege_2025.csv,  replace 

restore 
*/

 
export delimited $cleaned/data_for_map_2025_all.csv,  replace  // automatic UTF8 encoding, needed for inputting into ENVI for map generation; ensure no scientific notation. 

  
  