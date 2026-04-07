*! version 2.0.0  07/24/91                      (STB-26: dm31)
program define _grmiss2
        version 3.0
        local type "`1'"
        mac shift
        local g "`1'"
        mac shift
        mac shift                               /* discard = sign */
        local varlist "req ex"
        local in "opt"
        local if "opt"
        parse "`*'"
        quietly {
                parse "`varlist'", parse(" ")
    local VTYPE : type `1'
    if substr("`VTYPE'",1,1)=="s" { gen `type' `g' = (`1'=="") `if' `in' }
    else {
                gen `type' `g' = (`1'==.) `if' `in'
    }
                mac shift
                while "`1'"!="" {
    local VTYPE : type `1'
    if substr("`VTYPE'",1,1)=="s" { replace `type' `g' = (`1'=="") `if' `in' }
    else {
                        replace `g' = `g' + (`1'==.) `if' `in'
    }
                        mac shift
                }
        }
end
