
// Author: Michela M. Tincani, UCL
// This version: March 2026

// See README.md for instructions on how to run the code and reproduce the results in the paper.




// WORKSPACE
clear all
macro drop _all
set more off
set rng mt64
capture noisily set processors 1 // Conley runs: Stata/SE does not allow 'set processors'
set seed 27062007
set sortseed 123456
capture noisily  version 18 // Conley runs: Stata15 does not allow 'version 18'
set type double
set varabbrev off
set linesize 255




**************************************
* Use frozen ado files
**************************************


// define the reference folder

* Automatically detect root directory
* --- Set root robustly (works in GUI, batch, VS Code) ---
* Move to the directory containing this do-file (if c(filename) is available)
* capture noisily cd "`=subinstr("`c(filename)'", "/0_Peer_Effects_and_Rank_Concerns.do", "", .)'" 

* If the above fails (e.g., c(filename) not set), assume user started Stata in root
* and proceed with current working directory
local pwd "`c(pwd)'"

* If we are in .../code/stata, go up two levels to reach the package root
local root "`pwd'"
if strpos("`pwd'", "code") {
    * go up two levels from code/stata to root
    quietly cd ..
    quietly cd ..
    local root "`c(pwd)'"
}

global root "`root'"

* --- Guard: ensure user is running from replication package root ---
capture confirm file "$root/code/stata/0_Peer_Effects_and_Rank_Concerns.do"
if _rc {
    di as error "ERROR: Stata must be started in the replication package root directory."
    di as error "Please run:"
    di as error `"cd "Replication_Package_Tincani-20180648""'
    di as error `"do code/stata/0_Peer_Effects_and_Rank_Concerns.do"'
    exit 198
}

global code   "$root/code/stata"
global ado_frozen "$code/ado_frozen"
adopath + "$ado_frozen"
capture which esttab
if _rc {
    di as error "Missing frozen ado: esttab"
    exit 198
}

capture which eststo
if _rc {
    di as error "Missing frozen ado: eststo"
    exit 198
}

capture which estadd
if _rc {
    di as error "Missing frozen ado: estadd"
    exit 198
}

capture which estpost
if _rc {
    di as error "Missing frozen ado: estpost"
    exit 198
}

capture which _gcorr
if _rc {
    di as error "Missing frozen ado: _gcorr (egenmore corr())"
    exit 198
}

capture which _grmiss2
if _rc {
    di as error "Missing frozen ado: _grmiss2 (rmiss2())"
    exit 198
}

capture which ols_spatial_HAC
if _rc {
    di as error "Missing frozen ado: ols_spatial_HAC"
    exit 198
}

global output  "$root/output"
global data    "$root/data"
global dataconf "$root/confidential-data-not-for-publication"
global trash   "$dataconf/processed"
global cleaned "$dataconf/processed"
global output_figures "$output/figures"  
global output_tables "$output/tables"  
global output_text "$output/in_text_numbers"




cd "$code"
// define macros
    
	
	global intensity_rbd = "intensity_rbd intensity_rbdXM intensity_rbdXpost intensity_rbdXpostXM postXM"	
	
	global controls_group = "class_size_r M rural_rbd mean_simce_avg_st mean_peduc sd_simce_avg_st sd_peduc mean_female mean_same_town "
	
	global controls_all_cov = "cov_dam_female cov_dam_peduc cov_dam_same_town cov_dam_simce cov_female_same_town cov_peduc_female cov_peduc_same_town cov_simce_female cov_simce_peduc cov_simce_same_town"   

	global controls_all_cov_nodam = " cov_female_same_town cov_peduc_female cov_peduc_same_town cov_simce_female cov_simce_peduc cov_simce_same_town"   
		
	global controls_all_cov_i = "cov_dam_female_i cov_dam_peduc_i cov_dam_simce_i cov_peduc_female cov_simce_female cov_simce_peduc " 
	
	global treatment_var_loo="st_exp_reconstruction_alu_lca loo_mean_damage_class loo_sd_damage_class "
	
	global treatment_var_st_loo="st_exp_reconstruction_alu_lca st_loo_mean_damage_class st_loo_sd_damage_class "
		
	global covariance_treat="cov_dam_simce cov_dam_peduc cov_dam_female cov_dam_same_town"

	global controls_indiv_damdet = "age_hh_head peduc i.cod_reg_alu"
	
	global controls_indiv_nodamdet = "simce_avg_st female_r same_town_school "   
	
	global controls_indiv_nodamdet_noa = " female_r same_town_school "  

	global controls_indiv_interacted_cts = "simce_avg_st  peduc_st hhincome_lagged_st "
	
	global controls_indiv_interacted_int = " female_r"
	
	global controls_rbd = "class_size_rbd M rural_rbd mean_simce_avg_st_rbd mean_peduc_rbd sd_simce_avg_st_rbd sd_peduc_rbd mean_female_rbd mean_same_town_rbd "
	
	global proximity  coastal_1k

	





// This is the sequence of do files to generate the datasets for the analyses:

******************************************************************************
* Prepare datasets 
******************************************************************************


do "$code/1_geog_codes_rendimiento.do" // Extracts town and region codes from the admin registry of schools used for the rendimiento dataset. Takes less than 1 minute.

do "$code/2_clean_census.do"  // Clean census data. Takes around 2 minutes. 

do "$code/3_clean_simce_4alu_8alu.do" // Cleans admin data on students, including baseline simce and GPA. Takes arorund 1 minute.

do "$code/4_clean_simce_8calu.do" // Cleans survey data on students (requires package rmiss2)  Takes less than 1 minute.

do "$code/5_clean_4cpad_8cpad.do"  // Cleans survey data on parents. Takes less than 1 minute.

do "$code/6_clean_simce_8prof.do" // Clean survey data on teachers. Takes less than 1 minute.

do "$code/7_clean_rendimiento.do" // Cleans classrooms roasters over time to analyze classroom formation in response to the earthquake. Takes around 1 minute.
                               								
do "$code/8_merge.do"  // Combines cleaned datasets to prepare final dataset for analysis. Takes less than 1 minute.

do "$code/9_lca_all.do" // Generates building type probabilities through LCA model. Only uses census data on families w/ school-aged children. Takes up to 4 hours.

do "$code/10_predict_vulnerability.do"  // Performs regression to predict class probability from household characteristics. Takes less than 1 minute.

do "$code/11_geog_coastal_proximity.do" // Generates coastal proximity using high-resolution coastline files elaborated in python. Takes less than 1 minute.

do "$code/12_gen_variables.do"   // Generates variables needed for the analysis including damage variables from house quality and earthquake distance. Takes time to create within classroom covariance variables. Takes 1 hour and 34 minutes.  

do "$code/13_gen_data_for_map.do"  



	
	
// This is the sequence of do files to reproduce the final paper results:
	
	
*******************************************************************************
* Main analysis
*******************************************************************************

do "$code/14_analyze_census.do" 

do "$code/15_descriptive_tables_figures.do"  

do "$code/16_main_effects_and_rob.do" 

do "$code/17_het_effects.do" 

do "$code/18_med_relationships.do"  

do "$code/19_school_resources.do"  

do "$code/20_identifying.do" 

do "$code/21_conley.do"  

