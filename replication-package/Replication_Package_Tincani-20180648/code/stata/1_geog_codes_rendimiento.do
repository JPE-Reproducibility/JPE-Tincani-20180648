// Author: Michela M. Tincani, UCL
// This version: March 2026



clear all
insheet using $dataconf/raw/20130227_Rendimiento_2009_20100715_PUBL.csv, delim(";") // downloaded on 09/06/2013 at 20.15

keep  cod_reg_rbd cod_com_rbd
duplicates drop

rename cod_reg_rbd cod_reg
rename cod_com_rbd cod_com


save "$cleaned/town_region_codes.dta", replace 

