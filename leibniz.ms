.LP
\f[B]Leibniz' laws of identity:\f[P]
If everything which is true about $A$ are true for $B$, and vice versa, then $A=B$.
Here are some variations upon that theme.
(i) The indiscernibility of identicals
.EQ
forall(x) forall(y) left [ x=y implies forall(F) (Fx implies Fy) right ]
.EN
Here is the source of that equation
.LD
.vs 12
.ps 10
\f[CR]\&.EQ
forall(x) forall(y) left [ x=y implies forall(F) (Fx implies Fy) right ]
\&.EN\f[P]
.DE
That is, if $x$ equals $y$ then $y$ has all the properties of $x$.
.LP
(ii) The identity of indicernibles:
.EQ
forall(x) forall(y) left [ forall(F) (Fx implies Fy) implies x=y right ]
.EN
The source code
.LD
.vs 12
.ps 10
\&\f[CR].EQ
forall(x) forall(y) left [ forall(F) (Fx implies Fy) implies x=y right ]
\&.EN\f[P]
.DE
If for all $x$ and $y$ each property of $x$ also is also a property of $y$, then this implicates that $x$ and  $y$ are identical.
.LP
(iii) Biconditional version of \(rqLeibniz's Law\(rq:
.EQ
forall(x) forall(y) left [ x=y iff forall(F) ( Fx iff Fy) right ]
.EN
The source code
.LD
.vs 12
.ps 10
\&\f[CR].EQ
forall(x) forall(y) left [ x=y iff forall(F) ( Fx iff Fy) right ]
\&.EN\f[P]
.DE
For each $x$ and $y$ it is true that $x=y$ if and only all properties of $x$ are also properties of $y$.
This is what we refer to as Leibniz' law.
