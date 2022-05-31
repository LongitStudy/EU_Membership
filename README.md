# EU Membership
This Stata syntax creates an European Union (EU) membership variable consisting of categories that indicate the year each member country acceded to the EU.  

There are two versions:
- Version 1: derives the variable based on country of birth in 2001.
- Version 2: derives the variable based on country of birth in 2011.  

 

West Germany joined EU in 1951 but the 2001 code does not distinguish between West and East Germany. Therefore everyone born in Germany (cobp0==075) is included in the 2001 version of the syntax.


Variables needed for version 1 of the code:
- **cobp0** (country of birth 2001)
- **cobpimp** (cob imputation flag in 2001)


Variables needed for version 2 of the code:
- **cobp11** (country of birth 2011)
- **cobp11_imp** (cob imputation flag in 2011)


The categories are: 
1. 1951 (includes Belgium, France, Germany, Italy, Luxembourg, the Netherlands).
2. 1973 (includes Denmark and Ireland (the UK also joined the EU in 1973, but is in a separate category in this syntax))
3. 1981 (includes Greece).
4. 1986 (includes Portugal and Spain).
5. 1995 (includes Austria, Finland and Sweden).
6. 2004 (includes Cyprus (Republic of Cyprus only), Czech Republic, Estonia, Hungary, Latvia, Lithuania, Malta, Poland, Slovakia, Slovenia).
7. 2007 (includes Bulgaria and Romania).
8. United Kingdom.
9. Elsewhere in the world.
