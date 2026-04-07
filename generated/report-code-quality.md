## Code Quality

### Stata

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (11_geog_coastal_proximity.do, line 59)
  → drop if cod_com_alu==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (11_geog_coastal_proximity.do, line 67)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (11_geog_coastal_proximity.do, line 173)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (11_geog_coastal_proximity.do, line 199)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 25)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 150)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 167)
  → drop if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 390)
  → drop if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 404)
  → drop if codigo==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 470)
  → drop if num_in_class<=5

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 538)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 1035)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 1038)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 1042)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (12_gen_variables.do, line 1045)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (13_gen_data_for_map.do, line 14)
  → keep if earth_region_rbd==1 & post==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (13_gen_data_for_map.do, line 64)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (13_gen_data_for_map.do, line 154)
  → drop if share_college_k==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (13_gen_data_for_map.do, line 162)
  → drop if share_nocollege_k==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (14_analyze_census.do, line 77)
  → drop if missing(`varlist')

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (19_school_resources.do, line 73)
  → drop if anio==2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (19_school_resources.do, line 109)
  → drop if anio==2008

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (19_school_resources.do, line 166)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (19_school_resources.do, line 172)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 44)
  → drop if prom_gral==0 // estudiantes retirados, not in that school anymore

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 53)
  → drop if max>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 68)
  → drop if prom_gral==0 // estudiantes retirados, not in that school anymore

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 74)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 77)
  → drop if max_order>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 91)
  → drop if max>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 96)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (20_identifying.do, line 102)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (21_conley.do, line 120)
  → drop if _merge!=3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (21_conley.do, line 127)
  → drop if latitude==. | longitude==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (21_conley.do, line 128)
  → keep if earth_region_rbd ==1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (21_conley.do, line 129)
  → keep if ${proximity} ==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (2_clean_census.do, line 27)
  → keep if _merge==3

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 28)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 34)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 55)
  → keep if cod_ense==110

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 56)
  → keep if cod_grado==4

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 82)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 88)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 109)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 152)
  → drop if simce_avg_st==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 189)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 195)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 217)
  → keep if cod_ense==110

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 218)
  → keep if cod_grado==4

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 244)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 251)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 273)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 304)
  → drop if number_diplicates>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 312)
  → drop if simce_avg_st==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 350)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (3_clean_simce_4alu_8alu.do, line 379)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (4_clean_simce_8calu.do, line 151)
  → drop if n_copies>1

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5_clean_4cpad_8cpad.do, line 19)
  → drop if max_order>1 & max_order!=.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (5_clean_4cpad_8cpad.do, line 115)
  → drop if max_order>1 & max_order!=.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 30)
  → drop if prom_gral==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 54)
  → drop if prom_gral==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 60)
  → drop if mrun==.

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 100)
  → drop if prom_gral==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 106)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 129)
  → drop if max_order==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 142)
  → keep if cod_ense==110 & cod_grado==8

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 158)
  → drop if prom_gral==0

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 166)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (7_clean_rendimiento.do, line 178)
  → drop if max_order==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (8_merge.do, line 23)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (8_merge.do, line 71)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (8_merge.do, line 96)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (8_merge.do, line 142)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (8_merge.do, line 192)
  → drop if _merge==2

[ADVISORY] Sample drop (`drop if` / `keep if`) not preceded by a comment within 2 lines — consider adding a comment explaining the criterion. (8_merge.do, line 215)
  → drop if _merge==2

