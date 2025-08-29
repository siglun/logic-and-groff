.PS
.ps 10
.vs 12

scale=2.54;

A:box invis "$forall(x) left ( S(x) implies P(x) right )$" "All S are P"
L1: line right 4.0 from A.se
B:box invis "$forall(x) left ( S(x) implies not P(x) right )$" "No S are P"  with .sw at last line .e
L2: line down 4.0 from B.sw
C:box invis "$exists(x) left ( S(x) and not P(x) right )$" "Some S are not P" with .nw at last line .s
L3: line left 4.0 from C.nw
D:box invis "$exists(x) left ( S(x) and P(x) right )$" "Some S are P" with .ne at last line .w
L4: line up 4.0 from D.ne

line from A.se to C.nw
line from B.sw to D.ne

box invis "Contradictories" fill 0  with .c at 1/2 of the way between A.se and C.nw

box invis "Contraries" with .s at 1/2 of the way between A.se and B.sw
box invis "Subcontraries" with .n at 1/2 of the way between D.ne and C.nw

.PE
