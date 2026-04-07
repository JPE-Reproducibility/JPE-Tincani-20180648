// Author: Michela M. Tincani, UCL
// This version: March 2026

* This do file cleans the following datasets, and saves them separately:
* simce students 8o basico 2009 student quetionnaire, simce students 8o basico 2011 student questionnaire
* these data contain information on perceived cost of study effort and course engagement
* Raw data: SIMCE_8B_2009_CEST (2009) and CEST8VO (2011)



*---------------------------------
*-----  SIMCE 8o BASICO 2009 -----
*---------------------------------

* clean simce data
clear all
insheet using "$dataconf/raw/SIMCE_8B_2009_CEST.csv", delim(,)  

*** EFFORT
** Following questions asked on likert scale:
* 1 : muy de acuerdo
* 2 : de acuerdo 
* 3 : ni de acuerdo ni en desacuerdo
* 4 : en desacuerdo
* 5 : muy en desacuerdo


gen effort_costly=cest_p05_04
replace effort_costly=. if (effort_costly==0 | effort_costly==99)
gen effort_costly_YES=1 if effort_costly==1 
replace effort_costly_YES=0 if effort_costly!=1 & effort_costly!=.
label var effort_costly_YES "Answered agree v much"
gen effort_costly_NO=1 if effort_costly==5
replace effort_costly_NO=0 if effort_costly!=5 & effort_costly!=.
label var effort_costly_NO "Answered disagree v much"
drop effort_costly 

gen do_difficult_hw=cest_p05_05
replace do_difficult_hw=. if (do_difficult_hw==0 | do_difficult_hw==99)
gen do_difficult_hw_YES=1 if do_difficult_hw==1
replace do_difficult_hw_YES=0 if do_difficult_hw!=1 & do_difficult_hw!=.
label var do_difficult_hw_YES "Answered agree v much"
gen do_difficult_hw_NO=1 if do_difficult_hw==5
replace do_difficult_hw_NO=0 if do_difficult_hw!=5 & do_difficult_hw!=.
label var do_difficult_hw_NO "Answered disagree v much"
drop do_difficult_hw

gen incomplete_notebooks=cest_p05_06
replace incomplete_notebooks=. if (incomplete_notebooks==0 | incomplete_notebooks==99)
gen incomplete_notebooks_YES=1 if incomplete_notebooks==1
replace incomplete_notebooks_YES=0 if incomplete_notebooks!=1 & incomplete_notebooks!=.
gen incomplete_notebooks_NO=1 if incomplete_notebooks==5
replace incomplete_notebooks_NO=0 if incomplete_notebooks!=5 & incomplete_notebooks!=.
label var incomplete_notebooks_YES "Answered agree v much"
label var incomplete_notebooks_NO "Answered disagree v much"
drop incomplete_notebooks


gen take_notes=cest_p05_09
replace take_notes=. if (take_notes==0 | take_notes==99)
gen take_notes_YES=1 if take_notes==1
replace take_notes_YES=0 if take_notes!=1 & take_notes!=.
gen take_notes_NO=1 if take_notes==5
replace take_notes_NO=0 if take_notes!=5 & take_notes!=.
drop take_notes  
label var take_notes_YES "Answered agree v much"
label var take_notes_NO "Answered disagree v much"


keep  idalumno rbd  effort_costly* do_difficult_hw* incomplete_notebooks* take_notes*  

save  "$cleaned/simce_calu_8o_2009_cleaned.dta", replace


clear all

*---------------------------------
*-----  SIMCE 8o BASICO 2011 -----
*---------------------------------

* clean simce data

insheet using "$dataconf/raw/CEST8VO.csv"   

duplicates drop



*** EFFORT
** Following questions asked on likert scale:
* 1 : muy de acuerdo
* 2 : de acuerdo 
* 3 : en desacuerdo
* 4 : muy en desacuerdo

gen effort_costly=p06_4
replace effort_costly=. if (effort_costly==0 | effort_costly==99)
gen effort_costly_YES=1 if effort_costly==1
replace effort_costly_YES=0 if effort_costly!=1 & effort_costly!=.
gen effort_costly_NO=1 if effort_costly==4
replace effort_costly_NO=0 if effort_costly!=4 & effort_costly!=.
drop effort_costly
label var effort_costly_YES "Answered agree v much"
label var effort_costly_NO "Answered disagree v much"

gen do_difficult_hw=p06_5
replace do_difficult_hw=. if (do_difficult_hw==0 | do_difficult_hw==99)
gen do_difficult_hw_YES=1 if do_difficult_hw==1
replace do_difficult_hw_YES=0 if do_difficult_hw!=1 & do_difficult_hw!=.
gen do_difficult_hw_NO=1 if do_difficult_hw==4
replace do_difficult_hw_NO=0 if do_difficult_hw!=4 & do_difficult_hw!=.
drop do_difficult_hw
label var do_difficult_hw_YES "Answered agree v much"
label var do_difficult_hw_NO "Answered disagree v much"

gen incomplete_notebooks=p06_6
replace incomplete_notebooks=. if (incomplete_notebooks==0 | incomplete_notebooks==99)
gen incomplete_notebooks_YES=1 if incomplete_notebooks==1 
replace incomplete_notebooks_YES=0 if incomplete_notebooks!=1 & incomplete_notebooks!=.
gen incomplete_notebooks_NO=1 if incomplete_notebooks==4
replace incomplete_notebooks_NO=0 if incomplete_notebooks!=4 & incomplete_notebooks!=.
drop incomplete_notebooks
label var incomplete_notebooks_YES "Answered agree v much"
label var incomplete_notebooks_NO "Answered disagree v much"


gen take_notes=p06_9
replace take_notes=. if (take_notes==0 | take_notes==99)
gen take_notes_YES=1 if take_notes==1
replace take_notes_YES=0 if take_notes!=1 & take_notes!=.
gen take_notes_NO=1 if take_notes==4
replace take_notes_NO=0 if take_notes!=4 & take_notes!=.
drop take_notes
label var take_notes_YES "Answered agree v much"
label var take_notes_NO "Answered disagree v much"



keep  idalumno rbd   effort_costly* do_difficult_hw* incomplete_notebooks* take_notes*  

duplicates drop

* eliminate duplicates in terms of idalumno by keeping those with fewest nonmissing
egen nmis=rmiss2(   effort_costly_YES effort_costly_NO do_difficult_hw_YES do_difficult_hw_NO incomplete_notebooks_YES incomplete_notebooks_NO take_notes_YES take_notes_NO  )
bysort idalumno rbd: egen maxx=max(nmis)
bysort idalumno rbd: gen order=_n
bysort idalumno rbd: egen n_copies=max(order)
drop order
bysort idalumno rbd: drop if nmis==maxx & n_copies>1 & n_copies!=.

drop if n_copies>1
drop n_copies

isid idalumno

save  "$cleaned/simce_calu_8o_2011_cleaned.dta", replace
