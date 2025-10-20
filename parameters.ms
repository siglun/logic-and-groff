.nr PL 29.4c
.nr LL 16.0c
.nr HM 2.0c
.nr FM 2.0c
.nr PO 2.5c
.nr PS 12
.nr VS 14
.\"nr PI 3m
.\"nr QI 4m
.nr step 0 1
.OH '''%'
.\"OF 'left'center'right'
.EH '%'''
.\"EF 'left'center'right'
.\" ds REFERENCES Literature
.ds MO \E*[MONTH\n[mo]]
.\"ds DY \*[MO] \n[dy], \n[year]
.ds DY \n[dy] \*[MO] \n[year]
.EQ
define diff X { roman d $1 } over { roman d $2 } X
delim $$
.EN
.R1
sort "A+D+"
reverse "A1E1"
abbreviate "AE"
discard "NXYZ"
et-al " \fIet al.\fR" 2 3
no-label-in-reference
no-default-database
move-punctuation
date-as-label D.+yD.y%a*D.-y
database ./references.text
join-authors " and " ", " " and "
short-label "(@|Q) ' ('(D.y%a*|D%a*)')'"
label "(@|Q) ', ' (D.y%a*|D%a*)"
bracket-label " (" ")" "; "
.R2
.fam STIX
