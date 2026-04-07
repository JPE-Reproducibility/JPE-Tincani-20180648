## Potential Personal Identifiable Information (PII)

⚠️ We found the following instances of potentially personally identifying information. This may be completely legitimate but might be worth checking. *As a reminder, privacy legislation in many countries (e.g. GDPR in EU) prohibits the dissemination of personal identifiable information without prior (and documented) consent of individuals.* If indeed you want to publish such information with your replication package, you should probably have obtained IRB approval for this - please check!

**Summary:**
- Data files with PII indicators: 14
- Variables flagged in data: 60
- Code files with PII references: 42
- PII references in code: 4586

### Summary of Flagged Files

| File Type | File | Variables/References | PII Categories |
|-----------|------|----------------------|----------------|
| Data | `census_parents_clean_2023.dta` | 5 | father, mother, degree, child, school, house |
| Data | `census_parents_clean_wclass_all.dta` | 5 | father, mother, degree, child, school, house |
| Data | `census_with_class_type_true_predicted_all.dta` | 5 | father, mother, degree, child, school, house |
| Data | `comuna_alu_geocoded.csv` | 2 | lat, lon |
| Data | `comuna_alu_geocoded.dta` | 2 | lat, lon |
| Data | `data_final_for_regs_all.dta` | 12 | school, father, mother, house, loc |
| Data | `data_final_for_regs_teach_all.dta` | 12 | school, father, mother, house, loc |
| Data | `data_for_map_2025_all.csv` | 2 | lat, lon |
| Data | `donut_graph_construction_types.xlsx` | 1 | census, name |
| Data | `earthquake_catalog_6.csv` | 3 | lat, lon, loc, location |
| Data | `eb_map_iv_f.txt` | 1 | name |
| Data | `post_for_predict_2025.dta` | 4 | gender, father, mother, house |
| Data | `pre_for_predict_2025.dta` | 4 | gender, father, mother, house |
| Data | `towns_with_distance_to_coast.csv` | 2 | lat, lon |
| Code | `0_Peer_Effects_and_Rank_Concerns.do` | 18 | name, loc, school, census, minute, lat |
| Code | `10_predict_vulnerability.do` | 21 | census, son, dob, second, name |
| Code | `11_geog_coastal_proximity.do` | 17 | school, house, name, loc |
| Code | `12_gen_variables.do` | 95 | lat, dob, son, name, school, loc, lon |
| Code | `13_gen_data_for_map.do` | 17 | name, lat, lon, coord |
| Code | `14_analyze_census.do` | 38 | house, lat, child, school, census, name, loc, dob, father, lon, mother |
| Code | `15_descriptive_tables_figures.do` | 108 | school, name, house, lon, loc, lname, lat, father, mother |
| Code | `16_main_effects_and_rob.do` | 36 | school, name, loc, lat, municipality |
| Code | `17_het_effects.do` | 38 | school, name, loc, lon |
| Code | `18_med_relationships.do` | 30 | school, name, loc, lat |
| Code | `19_school_resources.do` | 56 | school, sex, son, lat, loc, name, lname |
| Code | `1_geog_codes_rendimiento.do` | 2 | name |
| Code | `20_identifying.do` | 64 | school, name, loc, lname |
| Code | `21_conley.do` | 18 | lat, minute, son, name, lon |
| Code | `2_clean_census.do` | 83 | house, son, census, child, school, father, mother, wife, husband, degree, name |
| Code | `3_clean_simce_4alu_8alu.do` | 9 | school, birth, name, second |
| Code | `5_clean_4cpad_8cpad.do` | 38 | father, mother, house, name, second, son |
| Code | `6_clean_simce_8prof.do` | 12 | name, school |
| Code | `7_clean_rendimiento.do` | 16 | school, name, country |
| Code | `8_merge.do` | 5 | lon, school |
| Code | `9_lca_all.do` | 7 | name, census, loc |
| Code | `_gcorr.ado` | 16 | lat, loc |
| Code | `_grmiss2.ado` | 7 | loc |
| Code | `analysis_earthquake_effects.tex` | 10 | lon, lat, loc, location, school, second, country |
| Code | `appendix.tex` | 16 | house, lat, sex, school, loc, second, lon |
| Code | `appendix_reconstruction_policy.tex` | 7 | school, lat, loc, location, second |
| Code | `calculate_coastal_proximity.py` | 10 | coord, lat, lon, zip |
| Code | `conclusions.tex` | 2 | lon, school |
| Code | `create_map.py` | 9 | coord, lat, lon, zip, name |
| Code | `data.tex` | 8 | gender, house, school, lat, country, loc, lon, second |
| Code | `estadd.ado` | 736 | loc, lon, name, lname, lat |
| Code | `estout.ado` | 1657 | loc, name, son, lname, lat, block, lon |
| Code | `estpost.ado` | 596 | lat, loc, name, lon, lname, son |
| Code | `eststo.ado` | 100 | loc, lon, name |
| Code | `esttab.ado` | 524 | loc, lon, name, second |
| Code | `introduction.tex` | 6 | child, school, house, loc, lat, location, son, gender, lon |
| Code | `manuscript.tex` | 3 | lon, url |
| Code | `mechanisms.tex` | 13 | school, lat, loc, location, son, second, lon, gender, social |
| Code | `model_extension.tex` | 42 | lon, lat |
| Code | `ols_spatial_HAC.ado` | 86 | lat, lon, city, degree, loc, location, coord, name, second, son, lname |
| Code | `plot_histogram_earthquakes.R` | 2 | name |
| Code | `theoretical_model_rank_concerns.tex` | 8 | lat, school, lon, son, city |

*See [Appendix](report-pii-appendix.md) for detailed listing of all flagged instances.*
