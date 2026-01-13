#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Read Data
data=read.csv('CefiderocolClinicalS_DATA_2026-01-12_1829.csv')
#Setting Labels

label(data$record_id) = "Record ID"
label(data$questionnaire_timestamp) = "Survey Timestamp"
label(data$working_group) = "Would you like to be part of the CLEARER working group related publication?"
label(data$country) = "Where do you currently live or work?(Choose Rather not say if needed)"
label(data$city) = "City"
label(data$specialization) = "Please indicate your field of specialization"
label(data$specialization_other) = "If other, please specify"
label(data$mainrole) = "Are you a prescriber? "
label(data$experience) = "Please indicate the years of activity you have been involved in Infectious Diseases or related fields"
label(data$teach_hosp) = "Do you work at a university/teaching hospital?"
label(data$number_beds) = "Please indicate the number of beds in your hospital"
label(data$surveill_cr) = "Does your institution collect surveillance data on the prevalence of carbapenem-resistant pathogens?"
label(data$frequency_preval) = "Please specify how often prevalence/point prevalence investigations are performed at your hospital"
label(data$cre_k_prev) = "Please specify the approximate number of carbapenem-resistant Klebsiella pneumoniae isolates at your hospital over 100 K. pneumoniae positive blood cultures."
label(data$cre_p_prev) = "Please specify the approximate number of carbapenem-resistant Pseudomonas aeruginosa spp. isolates at your hospital over 100 P. aeruginosa positive blood cultures."
label(data$cre_a_pre) = "Please specify the approximate number of carbapenem-resistant Acinetobacter baumannii isolates at your hospital over 100 A. baumannii positive blood cultures."
label(data$cre_mechanism) = "Please indicate which is the most frequent resistance mechanism in carbapenem-resistant Enterobacterales"
label(data$spec_metal) = "Please specify"
label(data$spec_othermech) = "Please specify"
label(data$guidelines) = "Are there clinical guidelines for treating carbapenem-resistant pathogens at your disposal?"
label(data$available_guidelines___1) = "Please specify the type of available guidelines (choice=Hospital/institution)"
label(data$available_guidelines___2) = "Please specify the type of available guidelines (choice=Local)"
label(data$available_guidelines___3) = "Please specify the type of available guidelines (choice=National)"
label(data$available_guidelines___4) = "Please specify the type of available guidelines (choice=International)"
label(data$access_guidelines___1) = "What kind of platform grants you access to those guidelines? (choice=Hospital link)"
label(data$access_guidelines___2) = "What kind of platform grants you access to those guidelines? (choice=Online)"
label(data$access_guidelines___3) = "What kind of platform grants you access to those guidelines? (choice=Smartphone/tablet app)"
label(data$access_guidelines___4) = "What kind of platform grants you access to those guidelines? (choice=Paper based)"
label(data$algorithms) = "Do you have clinical algorithms to guide empirical antibiotic therapy for carbapenem-resistant pathogens  based on local epidemiological data?"
label(data$access_algorithms___1) = "How do you access those algorithms? (choice=Hospital link)"
label(data$access_algorithms___2) = "How do you access those algorithms? (choice=Online)"
label(data$access_algorithms___3) = "How do you access those algorithms? (choice=Smartphone/tablet app)"
label(data$access_algorithms___4) = "How do you access those algorithms? (choice=Paper based)"
label(data$stewardship) = "Is there an antimicrobial stewardship team supporting your work?"
label(data$acces_stewards___1) = "What platform grants you access to stewardship programs? (choice=Hospital link)"
label(data$acces_stewards___2) = "What platform grants you access to stewardship programs? (choice=Online)"
label(data$acces_stewards___3) = "What platform grants you access to stewardship programs? (choice=Smartphone/tablet app)"
label(data$acces_stewards___4) = "What platform grants you access to stewardship programs? (choice=Paper based)"
label(data$access_stewards___1) = "Please specify how you access to these platforms (choice=Available without restrictions (open access))"
label(data$access_stewards___2) = "Please specify how you access to these platforms (choice=Available only if you have special permission (private))"
label(data$access_stewards___3) = "Please specify how you access to these platforms (choice=Available with a subscription)"
label(data$carabap_detection) = "Is information regarding resistance mechanisms for suspected carbapenem-resistant bacteria available at your institution?"
label(data$kindoftestcr___1) = "Which kind of tests are available? (choice=Immunochromatography tests)"
label(data$kindoftestcr___2) = "Which kind of tests are available? (choice=Phenotypic methods)"
label(data$kindoftestcr___3) = "Which kind of tests are available? (choice=Molecular methods (PCR))"
label(data$kindoftestcr___4) = "Which kind of tests are available? (choice=I dont have this information)"
label(data$suscept_testcefi) = "Is cefiderocol susceptibility routinely tested at your hospital?"
label(data$casescefi_tested___1) = "When is cefiderocol tested? (choice=Every time a gram negative is isolated)"
label(data$casescefi_tested___2) = "When is cefiderocol tested? (choice=Every time a carbapenemase is detected)"
label(data$casescefi_tested___3) = "When is cefiderocol tested? (choice=Only if a metallo-betalactamase is detected (e.g., VIM, NDM, IMP))"
label(data$casescefi_tested___4) = "When is cefiderocol tested? (choice=Only when a gram negative isolate is resistant to other last-generation antibiotics)"
label(data$casescefi_tested___5) = "When is cefiderocol tested? (choice=If requested by the clinician)"
label(data$casescefi_tested___6) = "When is cefiderocol tested? (choice=I dont have this information)"
label(data$type_test___1) = "What cefiderocol susceptibility test is available at your institution? (choice=Broth microdiluition)"
label(data$type_test___2) = "What cefiderocol susceptibility test is available at your institution? (choice=Disk diffusion)"
label(data$type_test___3) = "What cefiderocol susceptibility test is available at your institution? (choice=Gradient strips (only for P. aeruginosa))"
label(data$type_test___4) = "What cefiderocol susceptibility test is available at your institution? (choice=Agar diffusion)"
label(data$type_test___5) = "What cefiderocol susceptibility test is available at your institution? (choice=Other)"
label(data$specify_senstest) = "Please specify other sensitivity test(s)"
label(data$brothmicrodil_specify) = "Please specify which kind  broth diluition method you use"
label(data$avail_cefid) = "Is cefiderocol available at your hospital?"
label(data$compass) = "Do you know if cefiderocol was prescribed for compassionate use at your hospital?"
label(data$rct_cefid) = "Do you know if cefiderocol has been used in randomized clinical trials at your hospital?"
label(data$clprac_cef) = "Is cefiderocol used in clinical practice at your hospital?"
label(data$pharmacy_restrict) = "Is cefiderocol use restricted by your hospitals pharmacy (e.g. allowed only with specialist prescription)?"
label(data$icu_only) = "Is cefiderocol use limited to the intensive care unit at your hospital?"
label(data$n_treatments) = "Please specify how often you believe cefiderocol is prescribed in a month at your hospital? "
label(data$cefi_cre_nonspecified) = "Would you normally use cefiderocol for carbapenem-resistant Enterobacterales (CRE) before the mechanism of resistance is known?"
label(data$combocreempiric) = "Would you use it alone or in combination?"
label(data$cefi_crenonndm) = "Would you normally use cefiderocol for CRE that do not produce metallo-betalactamases?"
label(data$combocreempiric_2) = "Would you use it alone or in combination?"
label(data$cefi_crendm) = "Would you use cefiderocol for CRE producing metallo-betalactamases?"
label(data$cefi_crpa) = "Would you normally use cefiderocol as a treatment option for carbapenem-resistant P. aeruginosa (CRPA)?"
label(data$cefi_crpandm) = "Would you use cefiderocol for CRPA producing metallo-betalactamases?"
label(data$cefi_crab) = "Would you normally use cefiderocol as an option for carbapenem-resistant Acinetobacter baumannii (CRAB)?"
label(data$cefi_crab_combo) = "Would you use it alone or in combination?"
label(data$cuti) = "Complicated UTI"
label(data$bsi) = "BSI"
label(data$hap_vap) = "HAP/VAP"
label(data$cnsi) = "CNS infection"
label(data$cai) = "Complicated abdominal infection"
label(data$off_l) = "Other type of infection (e.g., bone or skin/soft tissues)"
label(data$percept_crab_n_m) = "CRAB (non metallo-betalactamase)"
label(data$percept_crab_mb) = "CRAB (metallo-betalactamase)"
label(data$percept_crpa_n_mb) = "CRPA (non metallo-betalactamase)"
label(data$percptcrpa_mb) = "CRPA (metallo-betalactamase)"
label(data$perceptcre_n_mb) = "CRE (non metallo-betalactamase)"
label(data$perceptcre_mb) = "CRE (metallo-betalcactamase)"
label(data$percept_cuti) = "Complicated UTI"
label(data$percept_bsi) = "BSI"
label(data$percept_hap_vap) = "HAP/VAP"
label(data$percept_cns) = "CNS infection"
label(data$percept_cai) = "Complicated abdominal infection"
label(data$compar_colistin) = "Colistin/Polymyxin B"
label(data$compar_meropenem) = "Meropenem"
label(data$compar_c_avi) = "Ceftazidime/avibactam"
label(data$compar_c_tazo) = "Ceftolozane/tazobactam"
label(data$compar_fosfo) = "Fosfomycin"
label(data$compar_amika) = "Amikacin"
label(data$compar_plazo) = "Plazomicin"
label(data$compar_tige) = "Tigecyclin"
label(data$compar_mer_vabo) = "Meropenem/vaborbatam"
label(data$copar_imi_rele) = "Imipenem/relebactam"
label(data$capmpar_c_avi_aztr) = "Ceftazidime/avibactam+aztreonam"
label(data$non_cr) = "Do you use cefiderocol for carbapenem-susceptible isolates?"
label(data$cases_noncr) = "In which cases?"
label(data$combination) = "Do you use cefiderocol in combination with other anti gram-negative antibiotics?"
label(data$drugs_combination___1) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Aminoglycosides)"
label(data$drugs_combination___2) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Carbapenems)"
label(data$drugs_combination___3) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Colistin/polymyxin B)"
label(data$drugs_combination___4) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Tetracyclines)"
label(data$drugs_combination___5) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Ampicillin/sulbactam)"
label(data$drugs_combination___6) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Quinolones)"
label(data$drugs_combination___7) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Fosfomycin)"
label(data$drugs_combination___8) = "Please list your preferred antibiotic(s) to use in combination with cefiderocol (choice=Other (specify))"
label(data$specfy_combo) = "Please specify"
label(data$reason_combo___1) = "What is the main reason for combination therapy (choice=To decrease the selection of antibiotic resistant bacteria)"
label(data$reason_combo___2) = "What is the main reason for combination therapy (choice=In case of sepsis or septic shock)"
label(data$reason_combo___3) = "What is the main reason for combination therapy (choice=In immunocompromised patients)"
label(data$reason_combo___4) = "What is the main reason for combination therapy (choice=According to the isolates)"
label(data$specify_isolatecombo) = "Please specify for which isolate(s) do you use cefiderocol in combination "
label(data$var_dose) = "Do you usually use cefiderocol according to the label dosage of 2 g every 8 hours (with changes according to renal function) or also at different doses? "
label(data$var_dose_why___1) = "Why? (choice=Based on local therapeutic drug monitoring)"
label(data$var_dose_why___2) = "Why? (choice=I increase the dose for sepsis/septic shock)"
label(data$var_dose_why___3) = "Why? (choice=To achieve higher tissue concentration (e.g., CNS infection))"
label(data$v1_ab_empirical) = "Would you consider the coverage ofAcinetobacter baumannii in the empirical antibiotic therapy?"
label(data$v1_ab_urinary) = "If a urinary source of infection is confirmed, and urine cultures turn positive for A. baumannii (pending antibiogram results), would you change antibiotic therapy to....?"
label(data$a_b_comb_spec) = "Please specify"
label(data$a_b_mono_specify) = "Please specify"
label(data$vign_2_treatment) = "Would  you use cefiderocol in this scenario? "
label(data$v2_specify_combo) = "Please specify the combination drug you would use"
label(data$v2_specify_1stcoice) = "Please specify the first line treatment you would have used"
label(data$v3_1stlinetherapy___1) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Cefiderocol)"
label(data$v3_1stlinetherapy___2) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Aztreonam+ceftazidime/avibactam)"
label(data$v3_1stlinetherapy___3) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Colistin/polymyxin B)"
label(data$v3_1stlinetherapy___4) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Carbapenem)"
label(data$v3_1stlinetherapy___5) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Carbapenem high-dose extended-infusion)"
label(data$v3_1stlinetherapy___6) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Aminoglicoside)"
label(data$v3_1stlinetherapy___7) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Tigecycline)"
label(data$v3_1stlinetherapy___8) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Quinolone)"
label(data$v3_1stlinetherapy___9) = "What would be your treatment of choice (select more than one treatment if you intend to use a combination therapy)?  (choice=Trimethoprim-sulfamethoxazole)"
label(data$v3_2linetherapy___1) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Cefiderocol)"
label(data$v3_2linetherapy___2) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Aztreonam+ceftazidime/avibactam)"
label(data$v3_2linetherapy___3) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Colistin/polymyxin B)"
label(data$v3_2linetherapy___4) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Carbapenem)"
label(data$v3_2linetherapy___5) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Carbapenem high-dose extended-infusion)"
label(data$v3_2linetherapy___6) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Aminoglicoside)"
label(data$v3_2linetherapy___7) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Tigecycline)"
label(data$v3_2linetherapy___8) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Quinolone)"
label(data$v3_2linetherapy___9) = "Urinary microbiological tests show NDM-producing K. pneumoniae, susceptible only to cefiderocol, ciprofloxacin, and gentamicin/amikacin. No synergy test for cedtazidime/avibactam and aztreonam is available. The patients is not deteriorating but does not show clinical improvement. What would be your treatment of choice? (select more than one treatment if you intend to use a combination therapy) (choice=Trimethoprim-sulfamethoxazole)"
label(data$crabhap_target) = "Which therapy would you choose?"
label(data$cefi_crab_hap) = "Would you consider cefiderocol if the patient developed septic shock and the antibiogram for A. baumannii was still pending?"
label(data$otherd_combocefi___1) = "Please specify the other drug (s) (choice=Amikacin)"
label(data$otherd_combocefi___2) = "Please specify the other drug (s) (choice=Colistin/polymyxin B)"
label(data$otherd_combocefi___3) = "Please specify the other drug (s) (choice=Tigeciclin)"
label(data$otherd_combocefi___4) = "Please specify the other drug (s) (choice=Ampicillin/sulbactam)"
label(data$otherd_combocefi___5) = "Please specify the other drug (s) (choice=High dose meropenem)"
label(data$otherd_combocefi___6) = "Please specify the other drug (s) (choice=Other)"
label(data$spec_otherd_crabhap) = "Please specify other drug"
label(data$questionnaire_complete) = "Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
mapping_working_group = c(
	"1" = "Yes",
	"0" = "No"
)
data$working_group.factor = factor(data$working_group, levels = names(mapping_working_group), labels = mapping_working_group)

mapping_country = c(
	"0" = "Rather not say",
	"1" = "Afghanistan",
	"2" = "Albania",
	"3" = "Algeria",
	"4" = "American Samoa",
	"5" = "Andorra",
	"6" = "Angola",
	"7" = "Antigua and Barbuda",
	"8" = "Argentina",
	"9" = "Armenia",
	"10" = "Aruba",
	"11" = "Australia",
	"12" = "Austria",
	"13" = "Azerbaijan",
	"14" = "Bahamas, The",
	"15" = "Bahrain",
	"16" = "Bangladesh",
	"17" = "Barbados",
	"18" = "Belarus",
	"19" = "Belgium",
	"20" = "Belize",
	"21" = "Benin",
	"22" = "Bermuda",
	"23" = "Bhutan",
	"24" = "Bolivia",
	"25" = "Bosnia and Herzegovina",
	"26" = "Botswana",
	"27" = "Brazil",
	"28" = "Brunei",
	"29" = "Bulgaria",
	"30" = "Burkina Faso",
	"31" = "Burundi",
	"32" = "Cabo Verde (Cape Verde)",
	"33" = "Cambodia",
	"34" = "Cameroon",
	"35" = "Canada",
	"36" = "Cayman Islands",
	"37" = "Central African Republic",
	"38" = "Chad",
	"39" = "Chile",
	"40" = "China",
	"41" = "Colombia",
	"42" = "Comoros",
	"43" = "Congo, Democratic Republic of the",
	"44" = "Congo, Republic of the",
	"45" = "Costa Rica",
	"46" = "Côte dIvoire",
	"47" = "Croatia",
	"48" = "Cuba",
	"49" = "Curaçao",
	"50" = "Cyprus",
	"51" = "Czech Republic",
	"52" = "Denmark",
	"53" = "Djibouti",
	"54" = "Dominica",
	"55" = "Dominican Republic",
	"56" = "East Timor",
	"57" = "Ecuador",
	"58" = "Egypt",
	"59" = "El Salvador",
	"60" = "Equatorial Guinea",
	"61" = "Eritrea",
	"62" = "Estonia",
	"63" = "Eswatini (Swaziland)",
	"64" = "Ethiopia",
	"65" = "Faroe Islands",
	"66" = "Fiji",
	"67" = "Finland",
	"68" = "France",
	"69" = "French Guiana",
	"70" = "French Polynesia",
	"71" = "Gabon",
	"72" = "Gambia, The",
	"73" = "Gaza Strip",
	"74" = "Georgia",
	"75" = "Germany",
	"76" = "Ghana",
	"77" = "Greece",
	"78" = "Greenland",
	"79" = "Grenada",
	"80" = "Guadeloupe",
	"81" = "Guam",
	"82" = "Guatemala",
	"83" = "Guernsey",
	"84" = "Guinea",
	"85" = "Guinea-Bissau",
	"86" = "Guyana",
	"87" = "Haiti",
	"88" = "Honduras",
	"89" = "Hong Kong",
	"90" = "Hungary",
	"91" = "Iceland",
	"92" = "India",
	"93" = "Indonesia",
	"94" = "Iran",
	"95" = "Iraq",
	"96" = "Ireland",
	"97" = "Isle of Man",
	"98" = "Israel",
	"99" = "Italy",
	"100" = "Jamaica",
	"101" = "Japan",
	"102" = "Jersey",
	"103" = "Jordan",
	"104" = "Kazakhstan",
	"105" = "Kenya",
	"106" = "Kiribati",
	"107" = "Korea, North",
	"108" = "Korea, South",
	"109" = "Kosovo",
	"110" = "Kuwait",
	"111" = "Kyrgyzstan",
	"112" = "Laos",
	"113" = "Latvia",
	"114" = "Lebanon",
	"115" = "Lesotho",
	"116" = "Liberia",
	"117" = "Libya",
	"118" = "Liechtenstein",
	"119" = "Lithuania",
	"120" = "Luxembourg",
	"121" = "Macau",
	"122" = "Madagascar",
	"123" = "Malawi",
	"124" = "Malaysia",
	"125" = "Maldives",
	"126" = "Mali",
	"127" = "Malta",
	"128" = "Marshall Islands",
	"129" = "Martinique",
	"130" = "Mauritania",
	"131" = "Mauritius",
	"132" = "Mayotte",
	"133" = "Mexico",
	"134" = "Micronesia",
	"135" = "Moldova",
	"136" = "Monaco",
	"137" = "Mongolia",
	"138" = "Montenegro",
	"139" = "Morocco",
	"140" = "Mozambique",
	"141" = "Myanmar (Burma)",
	"142" = "Namibia",
	"143" = "Nauru",
	"144" = "Nepal",
	"145" = "Netherlands",
	"146" = "New Caledonia",
	"147" = "New Zealand",
	"148" = "Nicaragua",
	"149" = "Niger",
	"150" = "Nigeria",
	"151" = "North Macedonia",
	"152" = "Northern Mariana Islands",
	"153" = "Norway",
	"154" = "Oman",
	"155" = "Pakistan",
	"156" = "Palau",
	"157" = "Panama",
	"158" = "Papua New Guinea",
	"159" = "Paraguay",
	"160" = "Peru",
	"161" = "Philippines",
	"162" = "Poland",
	"163" = "Portugal",
	"164" = "Puerto Rico",
	"165" = "Qatar",
	"166" = "Réunion",
	"167" = "Romania",
	"168" = "Russia",
	"169" = "Rwanda",
	"170" = "Saint Kitts and Nevis",
	"171" = "Saint Lucia",
	"172" = "Saint Vincent and the Grenadines",
	"173" = "Samoa",
	"174" = "San Marino",
	"175" = "Sao Tome and Principe",
	"176" = "Saudi Arabia",
	"177" = "Senegal",
	"178" = "Serbia",
	"179" = "Seychelles",
	"180" = "Sierra Leone",
	"181" = "Singapore",
	"182" = "Sint Maarten",
	"183" = "Slovakia",
	"184" = "Slovenia",
	"185" = "Solomon Islands",
	"186" = "Somalia",
	"187" = "South Africa",
	"188" = "South Sudan",
	"189" = "Spain",
	"190" = "Sri Lanka",
	"191" = "Sudan",
	"192" = "Suriname",
	"193" = "Sweden",
	"194" = "Switzerland",
	"195" = "Syria",
	"196" = "Taiwan",
	"197" = "Tajikistan",
	"198" = "Tanzania",
	"199" = "Thailand",
	"200" = "Togo",
	"201" = "Tonga",
	"202" = "Trinidad and Tobago",
	"203" = "Tunisia",
	"204" = "Turkey",
	"205" = "Turkmenistan",
	"206" = "Tuvalu",
	"207" = "Uganda",
	"208" = "Ukraine",
	"209" = "United Arab Emirates",
	"210" = "United Kingdom",
	"211" = "United States",
	"212" = "United States Virgin Islands",
	"213" = "Uruguay",
	"214" = "Uzbekistan",
	"215" = "Vanuatu",
	"216" = "Vatican City",
	"217" = "Venezuela",
	"218" = "Vietnam",
	"219" = "West Bank",
	"220" = "Yemen",
	"221" = "Zambia",
	"222" = "Zimbabwe"
)
data$country.factor = factor(data$country, levels = names(mapping_country), labels = mapping_country)

mapping_specialization = c(
	"1" = "Infectious Diseases specialist",
	"2" = "Internal Medicine physician",
	"3" = "Clinical Microbiologist",
	"4" = "Clinical Pharmacist",
	"5" = "Intensivist",
	"6" = "Other"
)
data$specialization.factor = factor(data$specialization, levels = names(mapping_specialization), labels = mapping_specialization)

mapping_mainrole = c(
	"1" = "Yes",
	"0" = "No"
)
data$mainrole.factor = factor(data$mainrole, levels = names(mapping_mainrole), labels = mapping_mainrole)

mapping_experience = c(
	"1" = "1-5",
	"2" = "6-10",
	"3" = "11-15",
	"4" = "16-20",
	"5" = "21 or above",
	"7" = "Not directly involved",
	"8" = "Not involved anymore"
)
data$experience.factor = factor(data$experience, levels = names(mapping_experience), labels = mapping_experience)

mapping_teach_hosp = c(
	"1" = "Yes",
	"0" = "No"
)
data$teach_hosp.factor = factor(data$teach_hosp, levels = names(mapping_teach_hosp), labels = mapping_teach_hosp)

mapping_number_beds = c(
	"1" = "< 100",
	"2" = "100-300",
	"3" = "301-500",
	"4" = ">500"
)
data$number_beds.factor = factor(data$number_beds, levels = names(mapping_number_beds), labels = mapping_number_beds)

mapping_surveill_cr = c(
	"1" = "Yes",
	"2" = "No",
	"3" = "I dont have this information"
)
data$surveill_cr.factor = factor(data$surveill_cr, levels = names(mapping_surveill_cr), labels = mapping_surveill_cr)

mapping_frequency_preval = c(
	"1" = "More than once a year",
	"2" = "Every year",
	"3" = "Every 2 years",
	"4" = "Every 3 years",
	"5" = "Every 4 years",
	"6" = "Every 5 years or more",
	"7" = "I dont have this information"
)
data$frequency_preval.factor = factor(data$frequency_preval, levels = names(mapping_frequency_preval), labels = mapping_frequency_preval)

mapping_cre_mechanism = c(
	"1" = "KPC",
	"2" = "OXA",
	"3" = "NDM",
	"4" = "VIM",
	"5" = "IMP",
	"6" = "GES",
	"7" = "Other carbapenemase",
	"8" = "Other mechanism (eg. efflux pump up-regulation, loss of porins etc.)"
)
data$cre_mechanism.factor = factor(data$cre_mechanism, levels = names(mapping_cre_mechanism), labels = mapping_cre_mechanism)

mapping_guidelines = c(
	"1" = "Yes",
	"0" = "No"
)
data$guidelines.factor = factor(data$guidelines, levels = names(mapping_guidelines), labels = mapping_guidelines)

mapping_available_guidelines___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$available_guidelines___1.factor = factor(data$available_guidelines___1, levels = names(mapping_available_guidelines___1), labels = mapping_available_guidelines___1)

mapping_available_guidelines___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$available_guidelines___2.factor = factor(data$available_guidelines___2, levels = names(mapping_available_guidelines___2), labels = mapping_available_guidelines___2)

mapping_available_guidelines___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$available_guidelines___3.factor = factor(data$available_guidelines___3, levels = names(mapping_available_guidelines___3), labels = mapping_available_guidelines___3)

mapping_available_guidelines___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$available_guidelines___4.factor = factor(data$available_guidelines___4, levels = names(mapping_available_guidelines___4), labels = mapping_available_guidelines___4)

mapping_access_guidelines___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_guidelines___1.factor = factor(data$access_guidelines___1, levels = names(mapping_access_guidelines___1), labels = mapping_access_guidelines___1)

mapping_access_guidelines___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_guidelines___2.factor = factor(data$access_guidelines___2, levels = names(mapping_access_guidelines___2), labels = mapping_access_guidelines___2)

mapping_access_guidelines___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_guidelines___3.factor = factor(data$access_guidelines___3, levels = names(mapping_access_guidelines___3), labels = mapping_access_guidelines___3)

mapping_access_guidelines___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_guidelines___4.factor = factor(data$access_guidelines___4, levels = names(mapping_access_guidelines___4), labels = mapping_access_guidelines___4)

mapping_algorithms = c(
	"1" = "Yes",
	"0" = "No"
)
data$algorithms.factor = factor(data$algorithms, levels = names(mapping_algorithms), labels = mapping_algorithms)

mapping_access_algorithms___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_algorithms___1.factor = factor(data$access_algorithms___1, levels = names(mapping_access_algorithms___1), labels = mapping_access_algorithms___1)

mapping_access_algorithms___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_algorithms___2.factor = factor(data$access_algorithms___2, levels = names(mapping_access_algorithms___2), labels = mapping_access_algorithms___2)

mapping_access_algorithms___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_algorithms___3.factor = factor(data$access_algorithms___3, levels = names(mapping_access_algorithms___3), labels = mapping_access_algorithms___3)

mapping_access_algorithms___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_algorithms___4.factor = factor(data$access_algorithms___4, levels = names(mapping_access_algorithms___4), labels = mapping_access_algorithms___4)

mapping_stewardship = c(
	"1" = "Yes",
	"0" = "No"
)
data$stewardship.factor = factor(data$stewardship, levels = names(mapping_stewardship), labels = mapping_stewardship)

mapping_acces_stewards___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$acces_stewards___1.factor = factor(data$acces_stewards___1, levels = names(mapping_acces_stewards___1), labels = mapping_acces_stewards___1)

mapping_acces_stewards___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$acces_stewards___2.factor = factor(data$acces_stewards___2, levels = names(mapping_acces_stewards___2), labels = mapping_acces_stewards___2)

mapping_acces_stewards___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$acces_stewards___3.factor = factor(data$acces_stewards___3, levels = names(mapping_acces_stewards___3), labels = mapping_acces_stewards___3)

mapping_acces_stewards___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$acces_stewards___4.factor = factor(data$acces_stewards___4, levels = names(mapping_acces_stewards___4), labels = mapping_acces_stewards___4)

mapping_access_stewards___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_stewards___1.factor = factor(data$access_stewards___1, levels = names(mapping_access_stewards___1), labels = mapping_access_stewards___1)

mapping_access_stewards___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_stewards___2.factor = factor(data$access_stewards___2, levels = names(mapping_access_stewards___2), labels = mapping_access_stewards___2)

mapping_access_stewards___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$access_stewards___3.factor = factor(data$access_stewards___3, levels = names(mapping_access_stewards___3), labels = mapping_access_stewards___3)

mapping_carabap_detection = c(
	"1" = "Yes",
	"0" = "No"
)
data$carabap_detection.factor = factor(data$carabap_detection, levels = names(mapping_carabap_detection), labels = mapping_carabap_detection)

mapping_kindoftestcr___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$kindoftestcr___1.factor = factor(data$kindoftestcr___1, levels = names(mapping_kindoftestcr___1), labels = mapping_kindoftestcr___1)

mapping_kindoftestcr___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$kindoftestcr___2.factor = factor(data$kindoftestcr___2, levels = names(mapping_kindoftestcr___2), labels = mapping_kindoftestcr___2)

mapping_kindoftestcr___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$kindoftestcr___3.factor = factor(data$kindoftestcr___3, levels = names(mapping_kindoftestcr___3), labels = mapping_kindoftestcr___3)

mapping_kindoftestcr___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$kindoftestcr___4.factor = factor(data$kindoftestcr___4, levels = names(mapping_kindoftestcr___4), labels = mapping_kindoftestcr___4)

mapping_suscept_testcefi = c(
	"1" = "Yes",
	"2" = "No",
	"3" = "I dont have this information"
)
data$suscept_testcefi.factor = factor(data$suscept_testcefi, levels = names(mapping_suscept_testcefi), labels = mapping_suscept_testcefi)

mapping_casescefi_tested___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$casescefi_tested___1.factor = factor(data$casescefi_tested___1, levels = names(mapping_casescefi_tested___1), labels = mapping_casescefi_tested___1)

mapping_casescefi_tested___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$casescefi_tested___2.factor = factor(data$casescefi_tested___2, levels = names(mapping_casescefi_tested___2), labels = mapping_casescefi_tested___2)

mapping_casescefi_tested___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$casescefi_tested___3.factor = factor(data$casescefi_tested___3, levels = names(mapping_casescefi_tested___3), labels = mapping_casescefi_tested___3)

mapping_casescefi_tested___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$casescefi_tested___4.factor = factor(data$casescefi_tested___4, levels = names(mapping_casescefi_tested___4), labels = mapping_casescefi_tested___4)

mapping_casescefi_tested___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$casescefi_tested___5.factor = factor(data$casescefi_tested___5, levels = names(mapping_casescefi_tested___5), labels = mapping_casescefi_tested___5)

mapping_casescefi_tested___6 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$casescefi_tested___6.factor = factor(data$casescefi_tested___6, levels = names(mapping_casescefi_tested___6), labels = mapping_casescefi_tested___6)

mapping_type_test___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$type_test___1.factor = factor(data$type_test___1, levels = names(mapping_type_test___1), labels = mapping_type_test___1)

mapping_type_test___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$type_test___2.factor = factor(data$type_test___2, levels = names(mapping_type_test___2), labels = mapping_type_test___2)

mapping_type_test___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$type_test___3.factor = factor(data$type_test___3, levels = names(mapping_type_test___3), labels = mapping_type_test___3)

mapping_type_test___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$type_test___4.factor = factor(data$type_test___4, levels = names(mapping_type_test___4), labels = mapping_type_test___4)

mapping_type_test___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$type_test___5.factor = factor(data$type_test___5, levels = names(mapping_type_test___5), labels = mapping_type_test___5)

mapping_brothmicrodil_specify = c(
	"1" = "Commercial broth microdiluition",
	"2" = "Manual broth microdiluition (in-house)"
)
data$brothmicrodil_specify.factor = factor(data$brothmicrodil_specify, levels = names(mapping_brothmicrodil_specify), labels = mapping_brothmicrodil_specify)

mapping_avail_cefid = c(
	"1" = "Yes",
	"0" = "No"
)
data$avail_cefid.factor = factor(data$avail_cefid, levels = names(mapping_avail_cefid), labels = mapping_avail_cefid)

mapping_compass = c(
	"1" = "Yes",
	"0" = "No"
)
data$compass.factor = factor(data$compass, levels = names(mapping_compass), labels = mapping_compass)

mapping_rct_cefid = c(
	"1" = "Yes",
	"0" = "No"
)
data$rct_cefid.factor = factor(data$rct_cefid, levels = names(mapping_rct_cefid), labels = mapping_rct_cefid)

mapping_clprac_cef = c(
	"1" = "Yes",
	"0" = "No"
)
data$clprac_cef.factor = factor(data$clprac_cef, levels = names(mapping_clprac_cef), labels = mapping_clprac_cef)

mapping_pharmacy_restrict = c(
	"1" = "Yes",
	"0" = "No"
)
data$pharmacy_restrict.factor = factor(data$pharmacy_restrict, levels = names(mapping_pharmacy_restrict), labels = mapping_pharmacy_restrict)

mapping_icu_only = c(
	"1" = "Yes",
	"0" = "No"
)
data$icu_only.factor = factor(data$icu_only, levels = names(mapping_icu_only), labels = mapping_icu_only)

mapping_n_treatments = c(
	"1" = "< 2 treatment",
	"2" = "1-5 treatments",
	"3" = "5-10 treatments",
	"4" = ">10 treatments"
)
data$n_treatments.factor = factor(data$n_treatments, levels = names(mapping_n_treatments), labels = mapping_n_treatments)

mapping_cefi_cre_nonspecified = c(
	"1" = "Yes",
	"3" = "No"
)
data$cefi_cre_nonspecified.factor = factor(data$cefi_cre_nonspecified, levels = names(mapping_cefi_cre_nonspecified), labels = mapping_cefi_cre_nonspecified)

mapping_combocreempiric = c(
	"1" = "Alone",
	"2" = "In combination"
)
data$combocreempiric.factor = factor(data$combocreempiric, levels = names(mapping_combocreempiric), labels = mapping_combocreempiric)

mapping_cefi_crenonndm = c(
	"1" = "Yes",
	"2" = "No"
)
data$cefi_crenonndm.factor = factor(data$cefi_crenonndm, levels = names(mapping_cefi_crenonndm), labels = mapping_cefi_crenonndm)

mapping_combocreempiric_2 = c(
	"1" = "Alone",
	"2" = "In combination"
)
data$combocreempiric_2.factor = factor(data$combocreempiric_2, levels = names(mapping_combocreempiric_2), labels = mapping_combocreempiric_2)

mapping_cefi_crendm = c(
	"1" = "Yes, first choice",
	"2" = "Yes, second choice after ceftazidime/avibactam plus aztreonam combination",
	"3" = "Yes, if there are no alternative regimens",
	"4" = "No"
)
data$cefi_crendm.factor = factor(data$cefi_crendm, levels = names(mapping_cefi_crendm), labels = mapping_cefi_crendm)

mapping_cefi_crpa = c(
	"1" = "Yes",
	"0" = "No"
)
data$cefi_crpa.factor = factor(data$cefi_crpa, levels = names(mapping_cefi_crpa), labels = mapping_cefi_crpa)

mapping_cefi_crpandm = c(
	"1" = "Yes, first choice",
	"2" = "Yes, second choice after ceftazidime/avibactam plus aztreonam combination",
	"3" = "Yes, if there are no alternative regimens",
	"4" = "No"
)
data$cefi_crpandm.factor = factor(data$cefi_crpandm, levels = names(mapping_cefi_crpandm), labels = mapping_cefi_crpandm)

mapping_cefi_crab = c(
	"1" = "Yes",
	"0" = "No"
)
data$cefi_crab.factor = factor(data$cefi_crab, levels = names(mapping_cefi_crab), labels = mapping_cefi_crab)

mapping_cefi_crab_combo = c(
	"1" = "Alone",
	"2" = "In combination"
)
data$cefi_crab_combo.factor = factor(data$cefi_crab_combo, levels = names(mapping_cefi_crab_combo), labels = mapping_cefi_crab_combo)

mapping_cuti = c(
	"1" = "Also in empirical therapy",
	"2" = "Whenever a carbapenem-resistant gram negative bacteria is isolated",
	"3" = "Whenever a metallo-betalactamase producing bacteria is isolated",
	"4" = "Only if there are  no alternative therapeutic regimens",
	"5" = "Never"
)
data$cuti.factor = factor(data$cuti, levels = names(mapping_cuti), labels = mapping_cuti)

mapping_bsi = c(
	"1" = "Also in empirical therapy",
	"2" = "Whenever a carbapenem-resistant gram negative bacteria is isolated",
	"3" = "Whenever a metallo-betalactamase producing bacteria is isolated",
	"4" = "Only if there are  no alternative therapeutic regimens",
	"5" = "Never"
)
data$bsi.factor = factor(data$bsi, levels = names(mapping_bsi), labels = mapping_bsi)

mapping_hap_vap = c(
	"1" = "Also in empirical therapy",
	"2" = "Whenever a carbapenem-resistant gram negative bacteria is isolated",
	"3" = "Whenever a metallo-betalactamase producing bacteria is isolated",
	"4" = "Only if there are  no alternative therapeutic regimens",
	"5" = "Never"
)
data$hap_vap.factor = factor(data$hap_vap, levels = names(mapping_hap_vap), labels = mapping_hap_vap)

mapping_cnsi = c(
	"1" = "Also in empirical therapy",
	"2" = "Whenever a carbapenem-resistant gram negative bacteria is isolated",
	"3" = "Whenever a metallo-betalactamase producing bacteria is isolated",
	"4" = "Only if there are  no alternative therapeutic regimens",
	"5" = "Never"
)
data$cnsi.factor = factor(data$cnsi, levels = names(mapping_cnsi), labels = mapping_cnsi)

mapping_cai = c(
	"1" = "Also in empirical therapy",
	"2" = "Whenever a carbapenem-resistant gram negative bacteria is isolated",
	"3" = "Whenever a metallo-betalactamase producing bacteria is isolated",
	"4" = "Only if there are  no alternative therapeutic regimens",
	"5" = "Never"
)
data$cai.factor = factor(data$cai, levels = names(mapping_cai), labels = mapping_cai)

mapping_off_l = c(
	"1" = "Also in empirical therapy",
	"2" = "Whenever a carbapenem-resistant gram negative bacteria is isolated",
	"3" = "Whenever a metallo-betalactamase producing bacteria is isolated",
	"4" = "Only if there are  no alternative therapeutic regimens",
	"5" = "Never"
)
data$off_l.factor = factor(data$off_l, levels = names(mapping_off_l), labels = mapping_off_l)

mapping_percept_crab_n_m = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_crab_n_m.factor = factor(data$percept_crab_n_m, levels = names(mapping_percept_crab_n_m), labels = mapping_percept_crab_n_m)

mapping_percept_crab_mb = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_crab_mb.factor = factor(data$percept_crab_mb, levels = names(mapping_percept_crab_mb), labels = mapping_percept_crab_mb)

mapping_percept_crpa_n_mb = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_crpa_n_mb.factor = factor(data$percept_crpa_n_mb, levels = names(mapping_percept_crpa_n_mb), labels = mapping_percept_crpa_n_mb)

mapping_percptcrpa_mb = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percptcrpa_mb.factor = factor(data$percptcrpa_mb, levels = names(mapping_percptcrpa_mb), labels = mapping_percptcrpa_mb)

mapping_perceptcre_n_mb = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$perceptcre_n_mb.factor = factor(data$perceptcre_n_mb, levels = names(mapping_perceptcre_n_mb), labels = mapping_perceptcre_n_mb)

mapping_perceptcre_mb = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$perceptcre_mb.factor = factor(data$perceptcre_mb, levels = names(mapping_perceptcre_mb), labels = mapping_perceptcre_mb)

mapping_percept_cuti = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_cuti.factor = factor(data$percept_cuti, levels = names(mapping_percept_cuti), labels = mapping_percept_cuti)

mapping_percept_bsi = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_bsi.factor = factor(data$percept_bsi, levels = names(mapping_percept_bsi), labels = mapping_percept_bsi)

mapping_percept_hap_vap = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_hap_vap.factor = factor(data$percept_hap_vap, levels = names(mapping_percept_hap_vap), labels = mapping_percept_hap_vap)

mapping_percept_cns = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_cns.factor = factor(data$percept_cns, levels = names(mapping_percept_cns), labels = mapping_percept_cns)

mapping_percept_cai = c(
	"1" = "High",
	"2" = "Moderate",
	"3" = "Low"
)
data$percept_cai.factor = factor(data$percept_cai, levels = names(mapping_percept_cai), labels = mapping_percept_cai)

mapping_compar_colistin = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_colistin.factor = factor(data$compar_colistin, levels = names(mapping_compar_colistin), labels = mapping_compar_colistin)

mapping_compar_meropenem = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_meropenem.factor = factor(data$compar_meropenem, levels = names(mapping_compar_meropenem), labels = mapping_compar_meropenem)

mapping_compar_c_avi = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_c_avi.factor = factor(data$compar_c_avi, levels = names(mapping_compar_c_avi), labels = mapping_compar_c_avi)

mapping_compar_c_tazo = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_c_tazo.factor = factor(data$compar_c_tazo, levels = names(mapping_compar_c_tazo), labels = mapping_compar_c_tazo)

mapping_compar_fosfo = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_fosfo.factor = factor(data$compar_fosfo, levels = names(mapping_compar_fosfo), labels = mapping_compar_fosfo)

mapping_compar_amika = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_amika.factor = factor(data$compar_amika, levels = names(mapping_compar_amika), labels = mapping_compar_amika)

mapping_compar_plazo = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_plazo.factor = factor(data$compar_plazo, levels = names(mapping_compar_plazo), labels = mapping_compar_plazo)

mapping_compar_tige = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_tige.factor = factor(data$compar_tige, levels = names(mapping_compar_tige), labels = mapping_compar_tige)

mapping_compar_mer_vabo = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$compar_mer_vabo.factor = factor(data$compar_mer_vabo, levels = names(mapping_compar_mer_vabo), labels = mapping_compar_mer_vabo)

mapping_copar_imi_rele = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$copar_imi_rele.factor = factor(data$copar_imi_rele, levels = names(mapping_copar_imi_rele), labels = mapping_copar_imi_rele)

mapping_capmpar_c_avi_aztr = c(
	"1" = "More effective, same/less toxicity",
	"2" = "More effective, higher toxicity",
	"3" = "Equivalent, same/less toxicity",
	"4" = "Equivalent, higher toxicity",
	"5" = "Less effective, same/less toxicity",
	"6" = "Less effective, higher toxicity",
	"7" = "It depends on the specific pathogen and type of infection",
	"8" = "There is not enough scientific evidence to give an answer"
)
data$capmpar_c_avi_aztr.factor = factor(data$capmpar_c_avi_aztr, levels = names(mapping_capmpar_c_avi_aztr), labels = mapping_capmpar_c_avi_aztr)

mapping_non_cr = c(
	"1" = "Yes",
	"0" = "No"
)
data$non_cr.factor = factor(data$non_cr, levels = names(mapping_non_cr), labels = mapping_non_cr)

mapping_combination = c(
	"1" = "Not usually, I prefer cefiderocol as monotherapy",
	"2" = "Yes, usually",
	"3" = "Only in selected cases"
)
data$combination.factor = factor(data$combination, levels = names(mapping_combination), labels = mapping_combination)

mapping_drugs_combination___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___1.factor = factor(data$drugs_combination___1, levels = names(mapping_drugs_combination___1), labels = mapping_drugs_combination___1)

mapping_drugs_combination___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___2.factor = factor(data$drugs_combination___2, levels = names(mapping_drugs_combination___2), labels = mapping_drugs_combination___2)

mapping_drugs_combination___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___3.factor = factor(data$drugs_combination___3, levels = names(mapping_drugs_combination___3), labels = mapping_drugs_combination___3)

mapping_drugs_combination___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___4.factor = factor(data$drugs_combination___4, levels = names(mapping_drugs_combination___4), labels = mapping_drugs_combination___4)

mapping_drugs_combination___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___5.factor = factor(data$drugs_combination___5, levels = names(mapping_drugs_combination___5), labels = mapping_drugs_combination___5)

mapping_drugs_combination___6 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___6.factor = factor(data$drugs_combination___6, levels = names(mapping_drugs_combination___6), labels = mapping_drugs_combination___6)

mapping_drugs_combination___7 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___7.factor = factor(data$drugs_combination___7, levels = names(mapping_drugs_combination___7), labels = mapping_drugs_combination___7)

mapping_drugs_combination___8 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$drugs_combination___8.factor = factor(data$drugs_combination___8, levels = names(mapping_drugs_combination___8), labels = mapping_drugs_combination___8)

mapping_reason_combo___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reason_combo___1.factor = factor(data$reason_combo___1, levels = names(mapping_reason_combo___1), labels = mapping_reason_combo___1)

mapping_reason_combo___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reason_combo___2.factor = factor(data$reason_combo___2, levels = names(mapping_reason_combo___2), labels = mapping_reason_combo___2)

mapping_reason_combo___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reason_combo___3.factor = factor(data$reason_combo___3, levels = names(mapping_reason_combo___3), labels = mapping_reason_combo___3)

mapping_reason_combo___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reason_combo___4.factor = factor(data$reason_combo___4, levels = names(mapping_reason_combo___4), labels = mapping_reason_combo___4)

mapping_var_dose = c(
	"1" = "I use it also at different dosages than the label dosage",
	"2" = "I use it according to label dosage"
)
data$var_dose.factor = factor(data$var_dose, levels = names(mapping_var_dose), labels = mapping_var_dose)

mapping_var_dose_why___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$var_dose_why___1.factor = factor(data$var_dose_why___1, levels = names(mapping_var_dose_why___1), labels = mapping_var_dose_why___1)

mapping_var_dose_why___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$var_dose_why___2.factor = factor(data$var_dose_why___2, levels = names(mapping_var_dose_why___2), labels = mapping_var_dose_why___2)

mapping_var_dose_why___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$var_dose_why___3.factor = factor(data$var_dose_why___3, levels = names(mapping_var_dose_why___3), labels = mapping_var_dose_why___3)

mapping_v1_ab_empirical = c(
	"1" = "No",
	"2" = "Yes, using cefiderocol plus gentamicin",
	"3" = "Yes, using gentamicin only",
	"4" = "Yes, using  cefiderocol only",
	"5" = "Yes, using gentamicin in association with high-dose ampicillin/sulbactam",
	"6" = "Yes, using  cefiderocol in association with high-dose ampicillin/sulbactam",
	"7" = "Yes, using other antibiotics (based on the local susceptibility profiles)",
	"8" = "Unsure"
)
data$v1_ab_empirical.factor = factor(data$v1_ab_empirical, levels = names(mapping_v1_ab_empirical), labels = mapping_v1_ab_empirical)

mapping_v1_ab_urinary = c(
	"1" = "Cefiderocol monotherapy",
	"2" = "Gentamicin monotherapy",
	"3" = "High-dose ampicillin/sulbactam monotherapy",
	"4" = "Colistin/polymyxin B monotherapy",
	"5" = "Colistin/polymyxin B + high-dose ampicillin/sulbactam",
	"6" = "Gentamicin + high-dose ampicillin/sulbactam",
	"7" = "Cefiderocol+ gentamicin",
	"8" = "Cefiderocol + high-dose  ampicillin/sulbactam",
	"9" = "Other combination (specify)",
	"10" = "Other monotherapy (specify)",
	"11" = "No changes in antibiotic therapy"
)
data$v1_ab_urinary.factor = factor(data$v1_ab_urinary, levels = names(mapping_v1_ab_urinary), labels = mapping_v1_ab_urinary)

mapping_vign_2_treatment = c(
	"1" = "Yes, first line treatment  (monotherapy)",
	"2" = "Yes, in combination with another susceptible drug",
	"3" = "Yes, as an alternative to another drug if intolerance or resistance",
	"4" = "No",
	"5" = "Not sure"
)
data$vign_2_treatment.factor = factor(data$vign_2_treatment, levels = names(mapping_vign_2_treatment), labels = mapping_vign_2_treatment)

mapping_v2_specify_combo = c(
	"1" = "Colistin/polymyxin B",
	"2" = "Ceftazidime/avibactam",
	"3" = "Fosfomycin",
	"4" = "Aminoglicoside"
)
data$v2_specify_combo.factor = factor(data$v2_specify_combo, levels = names(mapping_v2_specify_combo), labels = mapping_v2_specify_combo)

mapping_v2_specify_1stcoice = c(
	"1" = "Colistin/polymyxin B",
	"2" = "Ceftazidime/avibactam",
	"3" = "Fosfomycin",
	"4" = "Aminoglicoside"
)
data$v2_specify_1stcoice.factor = factor(data$v2_specify_1stcoice, levels = names(mapping_v2_specify_1stcoice), labels = mapping_v2_specify_1stcoice)

mapping_v3_1stlinetherapy___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___1.factor = factor(data$v3_1stlinetherapy___1, levels = names(mapping_v3_1stlinetherapy___1), labels = mapping_v3_1stlinetherapy___1)

mapping_v3_1stlinetherapy___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___2.factor = factor(data$v3_1stlinetherapy___2, levels = names(mapping_v3_1stlinetherapy___2), labels = mapping_v3_1stlinetherapy___2)

mapping_v3_1stlinetherapy___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___3.factor = factor(data$v3_1stlinetherapy___3, levels = names(mapping_v3_1stlinetherapy___3), labels = mapping_v3_1stlinetherapy___3)

mapping_v3_1stlinetherapy___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___4.factor = factor(data$v3_1stlinetherapy___4, levels = names(mapping_v3_1stlinetherapy___4), labels = mapping_v3_1stlinetherapy___4)

mapping_v3_1stlinetherapy___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___5.factor = factor(data$v3_1stlinetherapy___5, levels = names(mapping_v3_1stlinetherapy___5), labels = mapping_v3_1stlinetherapy___5)

mapping_v3_1stlinetherapy___6 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___6.factor = factor(data$v3_1stlinetherapy___6, levels = names(mapping_v3_1stlinetherapy___6), labels = mapping_v3_1stlinetherapy___6)

mapping_v3_1stlinetherapy___7 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___7.factor = factor(data$v3_1stlinetherapy___7, levels = names(mapping_v3_1stlinetherapy___7), labels = mapping_v3_1stlinetherapy___7)

mapping_v3_1stlinetherapy___8 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___8.factor = factor(data$v3_1stlinetherapy___8, levels = names(mapping_v3_1stlinetherapy___8), labels = mapping_v3_1stlinetherapy___8)

mapping_v3_1stlinetherapy___9 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_1stlinetherapy___9.factor = factor(data$v3_1stlinetherapy___9, levels = names(mapping_v3_1stlinetherapy___9), labels = mapping_v3_1stlinetherapy___9)

mapping_v3_2linetherapy___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___1.factor = factor(data$v3_2linetherapy___1, levels = names(mapping_v3_2linetherapy___1), labels = mapping_v3_2linetherapy___1)

mapping_v3_2linetherapy___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___2.factor = factor(data$v3_2linetherapy___2, levels = names(mapping_v3_2linetherapy___2), labels = mapping_v3_2linetherapy___2)

mapping_v3_2linetherapy___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___3.factor = factor(data$v3_2linetherapy___3, levels = names(mapping_v3_2linetherapy___3), labels = mapping_v3_2linetherapy___3)

mapping_v3_2linetherapy___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___4.factor = factor(data$v3_2linetherapy___4, levels = names(mapping_v3_2linetherapy___4), labels = mapping_v3_2linetherapy___4)

mapping_v3_2linetherapy___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___5.factor = factor(data$v3_2linetherapy___5, levels = names(mapping_v3_2linetherapy___5), labels = mapping_v3_2linetherapy___5)

mapping_v3_2linetherapy___6 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___6.factor = factor(data$v3_2linetherapy___6, levels = names(mapping_v3_2linetherapy___6), labels = mapping_v3_2linetherapy___6)

mapping_v3_2linetherapy___7 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___7.factor = factor(data$v3_2linetherapy___7, levels = names(mapping_v3_2linetherapy___7), labels = mapping_v3_2linetherapy___7)

mapping_v3_2linetherapy___8 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___8.factor = factor(data$v3_2linetherapy___8, levels = names(mapping_v3_2linetherapy___8), labels = mapping_v3_2linetherapy___8)

mapping_v3_2linetherapy___9 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$v3_2linetherapy___9.factor = factor(data$v3_2linetherapy___9, levels = names(mapping_v3_2linetherapy___9), labels = mapping_v3_2linetherapy___9)

mapping_crabhap_target = c(
	"1" = "Cefiderocol monotherapy",
	"2" = "Ampicillin/sulbactam monotherapy",
	"3" = "Colistin/polymyxin B monotherapy",
	"4" = "Cefiderocol+ampicillin/sulbactam",
	"5" = "Cefiderocol+colistin/polymyxin B",
	"6" = "Ampicillin/sulbactam+colistin/polymyxin B",
	"7" = "Other"
)
data$crabhap_target.factor = factor(data$crabhap_target, levels = names(mapping_crabhap_target), labels = mapping_crabhap_target)

mapping_cefi_crab_hap = c(
	"1" = "Yes in monotherapy",
	"3" = "Only in combination with another drug",
	"4" = "Only in combination with 2 other drugs",
	"5" = "No",
	"6" = "Not sure"
)
data$cefi_crab_hap.factor = factor(data$cefi_crab_hap, levels = names(mapping_cefi_crab_hap), labels = mapping_cefi_crab_hap)

mapping_otherd_combocefi___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$otherd_combocefi___1.factor = factor(data$otherd_combocefi___1, levels = names(mapping_otherd_combocefi___1), labels = mapping_otherd_combocefi___1)

mapping_otherd_combocefi___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$otherd_combocefi___2.factor = factor(data$otherd_combocefi___2, levels = names(mapping_otherd_combocefi___2), labels = mapping_otherd_combocefi___2)

mapping_otherd_combocefi___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$otherd_combocefi___3.factor = factor(data$otherd_combocefi___3, levels = names(mapping_otherd_combocefi___3), labels = mapping_otherd_combocefi___3)

mapping_otherd_combocefi___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$otherd_combocefi___4.factor = factor(data$otherd_combocefi___4, levels = names(mapping_otherd_combocefi___4), labels = mapping_otherd_combocefi___4)

mapping_otherd_combocefi___5 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$otherd_combocefi___5.factor = factor(data$otherd_combocefi___5, levels = names(mapping_otherd_combocefi___5), labels = mapping_otherd_combocefi___5)

mapping_otherd_combocefi___6 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$otherd_combocefi___6.factor = factor(data$otherd_combocefi___6, levels = names(mapping_otherd_combocefi___6), labels = mapping_otherd_combocefi___6)

mapping_questionnaire_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$questionnaire_complete.factor = factor(data$questionnaire_complete, levels = names(mapping_questionnaire_complete), labels = mapping_questionnaire_complete)

