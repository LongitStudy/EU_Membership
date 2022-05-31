# EU Membership
This Stata syntax creates an European Union (EU) membership variable consisting of categories that indicate the year each member country acceded to the EU.

There are two versions:
- Version 1: derives the variable based on country of birth in 2001.
- Version 2: derives the variable based on country of birth in 2011.
 
West Germany joined EU in 1951 but the 2001 code does not distinguish between West and East Germany. Therefore everyone born in Germany (cobp0==075) is included in the 2001 version of the syntax.

_Variables needed for version 1 of the code_:
- **cobp0** (country of birth 2001)
- **cobpimp** (cob imputation flag in 2001)

_Variables needed for version 2 of the code_:
- **cobp11** (country of birth 2011)
- **cobp11_imp** (cob imputation flag in 2011)
