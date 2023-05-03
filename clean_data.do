use "fascism_db.dta", clear


* standardize dependent and independent vars
foreach var of varlist fascist_violence-strike_agr_1920 lpop1911-volunteers1866_pop rain1918-rain_var {
egen z_`var'=std(`var')
}

* relabel them
run "labels.do"




drop d_reg* province*

drop d_fr*

label variable provincia1921 "Province"
label variable regione1921 "Region" 
label variable circondario1921 "District"

