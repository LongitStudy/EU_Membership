/*cobeumem

This code creates an EU membership variable that consists of categories that indicate the year that they joined the EU.

There are two versions:
	The first version derives the variable based on cobp0 (i.e. country of birth in 2001).
	The second version derives the variable based on cobp11 (i.e. country of birth in 2011).
 
West Germany joined EU in 1951 but the 2001 code does not distinguish between 
West and East Germany. Therefore everyone born in Germany (cobp0==075) is included here

Variables needed for version 1 of the code:
	cobp0 (country of birth 2001)
	cobpimp (cob imputation flag in 2001)
Variables needed for version 2 of the code:
	cobp11 (country of birth 2011)
	cobp11_imp (cob imputation flag in 2011)
*/

/*Make sure that you change your working directory to your project area
cd "         "
*/
********************************************************************************

/*Version 1 - Deriving the variable based on country of birth in 2001
Open the dataset that you want to add the derived variable to.
Make sure that it has the 2001 variables (above) in it, i.e. cobp0 and cobpimp*/

gen cobeumem0=9

replace cobeumem0=1 if (cobp0==19 | cobp0==71 | cobp0==75 | cobp0==99 | ///
	cobp0==120 | cobp0==144) 
replace cobeumem0=2 if (cobp0==57 | cobp0==97 | cobp0==930)
replace cobeumem0=3 if cobp0==79
replace cobeumem0=4 if (cobp0==164 | cobp0==190)
replace cobeumem0=5 if (cobp0==12 | cobp0==70 | cobp0==195)
replace cobeumem0=6 if (cobp0==55 | cobp0==56 | cobp0==66 | cobp0==91 | ///
	cobp0==113 | cobp0==119 | cobp0==127 | cobp0==163 | cobp0==185 | cobp0==186)
replace cobeumem0=7 if (cobp0==32 | cobp0==168)
replace cobeumem0=8 if (cobp0==64 | cobp0==213 | cobp0==220 | ///
	cobp0==179 | cobp0==78 | cobp0==152)

replace cobeumem0=. if (cobpimp==1 | cobp0==-7 | cobp0==-9)

lab var cobeumem0 "Country of birth 2001:  EU accession categories"
lab def  cobeu 1 "1951" 2 "1973 excl. UK" 3 "1981" 4 "1986" 5 "1995" 6 "2004" ///
	7 "2007" 8 "UK" 9 "Elsewhere in the world"
lab val cobeumem0 cobeu

tab cobeumem

*SAVE YOUR DATA
********************************************************************************

/*Version 2 - Deriving the variable based on country of birth in 2011
Open the dataset that you want to add the derived variable to.
Make sure that it has the 2011 variables (above) in it, i.e. cobp11 and cobp11_imp from ME11*/

tab cobp11

gen cobeumem=9

replace cobeumem=1 if (cobp11==56 | cobp11==250 | cobp11==276 | cobp11==380 | ///
	cobp11==442 | cobp11==528) 
replace cobeumem=2 if (cobp11==208 | cobp11==372 | cobp11==373)
replace cobeumem=3 if cobp11==300
replace cobeumem=4 if (cobp11==620 | cobp11==913 | cobp11==911)
replace cobeumem=5 if (cobp11==40 | cobp11==246 | cobp11==752)
replace cobeumem=6 if (cobp11==903 | cobp11==203 | cobp11==233 | cobp11==348 | ///
	cobp11==428 | cobp11==440 | cobp11==470 | cobp11==616 | cobp11==703 | cobp11==971 ///
	| cobp11==705)
replace cobeumem=7 if (cobp11==100 | cobp11==642)
replace cobeumem=8 if (cobp11==921 | cobp11==924 |  cobp11==941 | cobp11==926 | ///
	cobp11==924 | cobp11==293 | cobp11==925 | cobp11==922)

replace cobeumem=. if (cobp11_imp==1 | cobp11==-6 | cobp11==-9)

lab var cobeumem "Country of birth 2011:  EU accession categories"
lab def  cobeu 1 "1951" 2 "1973 excl. UK" 3 "1981" 4 "1986" 5 "1995" 6 "2004" ///
	7 "2007" 8 "UK" 9 "Elsewhere in the world"
lab val cobeumem cobeu

tab cobeumem

*SAVE YOUR DATA
