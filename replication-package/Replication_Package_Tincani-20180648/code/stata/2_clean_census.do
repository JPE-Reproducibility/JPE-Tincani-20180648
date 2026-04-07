// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file cleans the census data and extracts the variables needed to predict the type of structure of the property the family lives in


* ==========================================

* Load raw data and save in .dta format 
* Then merge household and building modules

* ==========================================

*The unique identifier is portafolio vn hn pn, where vn= vivienda numero, hn = hogar numero, pn = persona numero
clear all
insheet using "$data/raw/CPV2002_PERSONA.csv", delim(;) 
save "$trash/CPV2002_PERSONA.dta", replace

clear all
insheet using "$data/raw/CPV2002_Vivienda.csv", delim(;)
save "$trash/CPV2002_Vivienda.dta", replace


* Merge household and building modules 
merge 1:m portafolio vn using "$trash/CPV2002_PERSONA.dta"  

keep if _merge==3




* ==========================================

* Clean census data 

* ==========================================

* 1. Generate education of parents and select sample of households with at least one school-aged child.
*   
*   If head of household is male, assume that is the father, record father's education. Then record education of wife of head of household as mother's education.
*   If head of household is female, assume that is the mother, record mother's education. Then record education of husband of head of household as father's education.
*   Finally, only keep families where there is at least one child of k-12 age. (between 3 and 18)

gen father_hh=1 if p17==1 & p18==1
gen mother_hh=1 if p17==1 & p18==2

gen age_hh_head=p19 if p17==1

gen town_hh_head=p23b if p17==1
replace town_hh_head=. if town_hh_head==99999

gen univ_degree_head=1 if p26a==15 & p17==1
replace univ_degree_head=0 if p26a!=15 & p17==1

* education of head of household when head of household is male, = father
gen feduc=0 if p26a==1 & father_hh==1
replace feduc=0 if p26a==2 & father_hh==1
replace feduc=1 if p26a==4 & p26b==1 & father_hh==1
replace feduc=2 if p26a==4 & p26b==2 & father_hh==1
replace feduc=3 if p26a==4 & p26b==3 & father_hh==1
replace feduc=4 if p26a==4 & p26b==4 & father_hh==1
replace feduc=5 if p26a==4 & p26b==5 & father_hh==1
replace feduc=6 if p26a==4 & p26b==6 & father_hh==1
replace feduc=7 if p26a==4 & p26b==7 & father_hh==1
replace feduc=8 if p26a==4 & p26b==8 & father_hh==1
replace feduc=9 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==1  & father_hh==1
replace feduc=10 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==2  & father_hh==1
replace feduc=11 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==3  & father_hh==1
replace feduc=12 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & (p26b==4 | p26b==5)  & father_hh==1
replace feduc=13 if (p26a==13 | p26a==14 | p26a==15) & p26b==1 & father_hh==1
replace feduc=14 if (p26a==13 | p26a==14 | p26a==15) & p26b==2 & father_hh==1
replace feduc=15 if (p26a==13 | p26a==14 | p26a==15) & p26b==3 & father_hh==1
replace feduc=13 if  p26a==15 & p26b==1 & father_hh==1
replace feduc=14 if  p26a==15 & p26b==2 & father_hh==1
replace feduc=15 if  p26a==15 & p26b==3 & father_hh==1
replace feduc=16 if  p26a==15 & p26b==4 & father_hh==1
replace feduc=17 if  p26a==15 & p26b==5 & father_hh==1
replace feduc=18 if  p26a==15 & p26b==6 & father_hh==1
replace feduc=19 if  p26a==15 & p26b==7 & father_hh==1
replace feduc=20 if  p26a==15 & p26b==8 & father_hh==1

* education of partner of head of household, when partner is male = father
replace feduc=0 if p26a==1 & p17==2 & p18==1
replace feduc=0 if p26a==2 & p17==2 & p18==1
replace feduc=1 if p26a==4 & p26b==1 & p17==2 & p18==1
replace feduc=2 if p26a==4 & p26b==2 & p17==2 & p18==1
replace feduc=3 if p26a==4 & p26b==3 & p17==2 & p18==1
replace feduc=4 if p26a==4 & p26b==4 & p17==2 & p18==1
replace feduc=5 if p26a==4 & p26b==5 & p17==2 & p18==1
replace feduc=6 if p26a==4 & p26b==6 & p17==2 & p18==1
replace feduc=7 if p26a==4 & p26b==7 & p17==2 & p18==1
replace feduc=8 if p26a==4 & p26b==8 & p17==2 & p18==1
replace feduc=9 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==1  & p17==2 & p18==1
replace feduc=10 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==2  & p17==2 & p18==1
replace feduc=11 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==3  & p17==2 & p18==1
replace feduc=12 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & (p26b==4 | p26b==5)  & p17==2 & p18==1
replace feduc=13 if (p26a==13 | p26a==14 | p26a==15) & p26b==1 & p17==2 & p18==1
replace feduc=14 if (p26a==13 | p26a==14 | p26a==15) & p26b==2 & p17==2 & p18==1
replace feduc=15 if (p26a==13 | p26a==14 | p26a==15) & p26b==3 & p17==2 & p18==1
replace feduc=13 if  p26a==15 & p26b==1 & p17==2 & p18==1
replace feduc=14 if  p26a==15 & p26b==2 & p17==2 & p18==1
replace feduc=15 if  p26a==15 & p26b==3 & p17==2 & p18==1
replace feduc=16 if  p26a==15 & p26b==4 & p17==2 & p18==1
replace feduc=17 if  p26a==15 & p26b==5 & p17==2 & p18==1
replace feduc=18 if  p26a==15 & p26b==6 & p17==2 & p18==1
replace feduc=19 if  p26a==15 & p26b==7 & p17==2 & p18==1
replace feduc=20 if  p26a==15 & p26b==8 & p17==2 & p18==1


* education of head of household when head of household is female = mother
gen meduc=0 if p26a==1 & mother_hh==1
replace meduc=0 if p26a==2 & mother_hh==1
replace meduc=1 if p26a==4 & p26b==1 & mother_hh==1
replace meduc=2 if p26a==4 & p26b==2 & mother_hh==1
replace meduc=3 if p26a==4 & p26b==3 & mother_hh==1
replace meduc=4 if p26a==4 & p26b==4 & mother_hh==1
replace meduc=5 if p26a==4 & p26b==5 & mother_hh==1
replace meduc=6 if p26a==4 & p26b==6 & mother_hh==1
replace meduc=7 if p26a==4 & p26b==7 & mother_hh==1
replace meduc=8 if p26a==4 & p26b==8 & mother_hh==1
replace meduc=9 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==1  & mother_hh==1
replace meduc=10 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==2  & mother_hh==1
replace meduc=11 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==3  & mother_hh==1
replace meduc=12 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & (p26b==4 | p26b==5)  & mother_hh==1
replace meduc=13 if (p26a==13 | p26a==14 | p26a==15) & p26b==1 & mother_hh==1
replace meduc=14 if (p26a==13 | p26a==14 | p26a==15) & p26b==2 & mother_hh==1
replace meduc=15 if (p26a==13 | p26a==14 | p26a==15) & p26b==3 & mother_hh==1
replace meduc=13 if  p26a==15 & p26b==1 & mother_hh==1
replace meduc=14 if  p26a==15 & p26b==2 & mother_hh==1
replace meduc=15 if  p26a==15 & p26b==3 & mother_hh==1
replace meduc=16 if  p26a==15 & p26b==4 & mother_hh==1
replace meduc=17 if  p26a==15 & p26b==5 & mother_hh==1
replace meduc=18 if  p26a==15 & p26b==6 & mother_hh==1
replace meduc=19 if  p26a==15 & p26b==7 & mother_hh==1
replace meduc=20 if  p26a==15 & p26b==8 & mother_hh==1

* education of partner of head of household, when partner is female = mother
replace meduc=0 if p26a==1 & p17==2 & p18==2
replace meduc=0 if p26a==2 & p17==2 & p18==2
replace meduc=1 if p26a==4 & p26b==1 & p17==2 & p18==2
replace meduc=2 if p26a==4 & p26b==2 & p17==2 & p18==2
replace meduc=3 if p26a==4 & p26b==3 & p17==2 & p18==2
replace meduc=4 if p26a==4 & p26b==4 & p17==2 & p18==2
replace meduc=5 if p26a==4 & p26b==5 & p17==2 & p18==2
replace meduc=6 if p26a==4 & p26b==6 & p17==2 & p18==2
replace meduc=7 if p26a==4 & p26b==7 & p17==2 & p18==2
replace meduc=8 if p26a==4 & p26b==8 & p17==2 & p18==2
replace meduc=9 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==1  & p17==2 & p18==2
replace meduc=10 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==2  & p17==2 & p18==2
replace meduc=11 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & p26b==3  & p17==2 & p18==2
replace meduc=12 if (p26a==5 | p26a==7| p26a==8 | p26a==9 | p26a==10) & (p26b==4 | p26b==5)  & p17==2 & p18==2
replace meduc=13 if (p26a==13 | p26a==14 | p26a==15) & p26b==1 & p17==2 & p18==2
replace meduc=14 if (p26a==13 | p26a==14 | p26a==15) & p26b==2 & p17==2 & p18==2
replace meduc=15 if (p26a==13 | p26a==14 | p26a==15) & p26b==3 & p17==2 & p18==2
replace meduc=13 if  p26a==15 & p26b==1 & p17==2 & p18==2
replace meduc=14 if  p26a==15 & p26b==2 & p17==2 & p18==2
replace meduc=15 if  p26a==15 & p26b==3 & p17==2 & p18==2
replace meduc=16 if  p26a==15 & p26b==4 & p17==2 & p18==2
replace meduc=17 if  p26a==15 & p26b==5 & p17==2 & p18==2
replace meduc=18 if  p26a==15 & p26b==6 & p17==2 & p18==2
replace meduc=19 if  p26a==15 & p26b==7 & p17==2 & p18==2
replace meduc=20 if  p26a==15 & p26b==8 & p17==2 & p18==2

gen offspring=0
replace offspring=1 if p17==4 | p17==5
gen school_age_child=0
replace school_age_child=1 if offspring==1 & p19<=19

** Build variables at household level: meduc, feduc, meduc, has school-aged child, code of comuna
bysort portafolio vn hn : egen meduc_min=min(meduc)
bysort portafolio vn hn : egen feduc_min=min(feduc)
bysort portafolio vn hn : egen max_school_aged_child=max(school_age_child)
bysort portafolio vn hn : egen min_age_hh_head=min(age_hh_head)
bysort portafolio vn hn : egen min_town_hh_head=min(town_hh_head)


drop meduc feduc offspring school_age_child age_hh_head town_hh_head

rename meduc_min meduc 
rename feduc_min feduc
rename max_school_aged_child school_aged_child
rename min_age_hh_head age_hh_head
rename min_town_hh_head cod_com
label var cod_com "Code of the town where household head resides"

* keep one observation per household
keep if pn==1

* sample selection: only families with at least one school-aged child
keep if school_aged_child==1



gen peduc=meduc if meduc!=. & feduc==.
replace peduc=feduc if feduc!=. & meduc==.
replace peduc=(feduc+meduc)/2 if meduc!=. & feduc!=.
label var peduc "Parental years of education"


* merge in REGION according to 2009 regional boundaries. To do so, use comune code and region code obtained from rendimiento data in 2009.
drop _merge
merge m:1 cod_com using $cleaned/town_region_codes.dta
label var cod_reg "Region code according to 2009 division" 



*** get rid of 0s in variables on construction materials
gen v4a_use=v4a if v4a!=0
gen v4b_use=v4b if v4b!=0
gen v4c_use=v4c if v4c!=0
		


** variables used by prediction model (i.e., model predicting vulnerability from data on age of household head, parental education and region.)
gen peduc_2 = peduc*peduc
gen peduc_3=peduc_2*peduc
gen age_hh_head_2=age_hh_head*age_hh_head
gen age_hh_head_3=age_hh_head_2*age_hh_head


sort portafolio vn hn pn

save "$cleaned/census_parents_clean_2023.dta", replace

* Erase from disk data files no longer needed
capture noisily erase "$trash/CPV2002_PERSONA.dta"
capture noisily erase "$trash/CPV2002_Vivienda.dta"








