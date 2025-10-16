.special STIXMath
.char \[/-] \[u22A2]
.char \[/--] \[u22A8]
\" \[turn] \[dturn]
.EQ
sdefine falsum  %{type "operator" \[pp]}%
sdefine not     %{type "operator" \[no]}%
sdefine and     %{type "operator" \[AN]}%
sdefine or      %{type "operator" \[OR]}%
sdefine any     %{type "operator" \[fa]}%
sdefine some    %{type "operator" \[te]}%

sdefine nece  %{type "operator"  vcenter \[sq]}%
sdefine possi %{type "operator"  vcenter \[lz]}%

define necessarily X { nece } X
define possibly    X {possi } X

define forall X { any $1 ^ }  X
define exists X { some $1 ^ } X

sdefine implies %{type "operator" vcenter \[->]}%
sdefine iff     %{type "operator" vcenter \[<>]}%
sdefine equiv   %{type "operator" vcenter \[<>]}%

sdefine vdash	%{type "operator" vcenter \[/-]}%
sdefine entails	%{type "operator" vcenter \[/-]}%

sdefine vDash	%{type "operator" vcenter \[/--]}%
sdefine satisfies	%{type "operator" vcenter \[/--]}%

sdefine therefore   %{type "operator" vcenter \[tf]}%
sdefine empty       %{type "operator" vcenter \[es]}%
sdefine member      %{type "operator" vcenter \[mo]}%
sdefine notmember   %{type "operator" vcenter \[nm]}%
sdefine subset      %{type "operator" vcenter \[ib]}%
sdefine powerset    %{type "operator" vcenter \[wp]}%
sdefine identicalto %{type "operator" vcenter \[==]}%
.EN
