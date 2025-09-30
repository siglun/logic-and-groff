.so eqn-definitions.ms
.so fitch-macros.pic
.so parameters.ms
.TL
How to type-set logic and natural deductions using
.br
.smallcaps
gnu
./smallcaps
\f[CB]troff\f[P], \f[CB]pic\f[P] and \f[CB]eqn\f[P]
.AU
Sigrid Lundberg
sigfrid (at) sigfrid-lundberg.se
.SH
Introduction
.LP
\f[CR]troff\f[P] is a software system for type-setting using Unix\f[CR]\[tm]\f[P] and related operating systems.
.[
ossanna kernighan
.]
Brian W. Kernighan was one of the creators of Unix and the C programming language.
pic
.[
kernighan pic
.]
and \f[CR]eqn\f[P]
.[
kernighan mathematics
.]
are systems for typesetting graphs and mathematics, also created by Brian Kernighan and his friends.
This group created a full set of tools for the type-setting of scientific text, graphs and diagrams, mathematics, chemistry, reference management and complex tables.
.smallcaps
groff
./smallcaps
aka
.smallcaps
gnu
./smallcaps
\f[CR]troff\f[P] is the implementation I am using.
.[
Foundation groff
.]
There are other competitors, in particular the slightly younger TeX and LaTeX,
I am not able to give you advice on how to use those for logic or science.
There are alternative implementations of \f[CR]troff\f[P],
but the GNU one is the one I have used for 35 years.
.PP
These systems are old,
but they are readily for Linux and Apple iOS computers.
They are based on Unix\f[CR]\[tm]\f[P] operating system, troff works on they command lines.
They were developed by software developers for software developers,
scientists and mathematicians.
They are not very difficult to use,
just very different from what modern users expect.
And you must write your document in a programmer's editor.
.PP
Fitch is a notation for natural deduction.
.[
natural deduction stanford
.]
It has got its name after its inventor, Fredric Fitch.
This notation seems to be a de facto standard:
It is used in all the text books I have been able to find electronically,
and seems to be taught at logics courses in mathematics as well as philosophy.
I started to wrote this tutorial while learning Fitch while reading philosophy;
my intention is to demonstrate how to write predicate and propositional logic,
and deduction on this platform.
I cannot teach you how to format scientific text in general (that is large job),
neither can I give an introduction to logic and natural deduction (I am not qualified for that).
.PP
This document lives in an open project at githup.
Feel free to use the snippets of code and examples.
.KF
.sp
.QP
.vs 12
.ps 10
Table 1. Unicode characters for logical signs and operators.
On some operating systems you can type them by pressing \f[CR]ctrl-shift-u\f[P] and then the four character code (following \f[CR]u+\f[P] in the table). The Groff name is usually better to use than the Unicode character,
but takes a long time to type.
The \f[CR]eqn\f[P] macros are for easier typing and I have tried to adjust spacings for a nicer look.
.TS
allbox center tab(;);
lb lb lb lb lb;
l l l l l.
Unicode;Character;Groff name;\f[CB]eqn\f[P] macro;Comment
U+00AC;¬;\\[no];not	
U+2227;∧;\\[AN];and
U+2228;∨;\\[OR];or
U+2200;∀;\\[fa];any
U+2200;∀;\\[fa];forall(x)
U+2203;∃;\\[te];some
U+2203;∃;\\[te];exists(x)
U+2192;→;\\[->];implies
U+2194;↔;\\[<>];iff
U+2194;↔;\\[<>];equiv
U+21D4;⇔;\\[hA]   
U+22A5;⊥;\\[pp];falsum
U+22A2;⊢;not available;;T{
.na
syntactic consequence
.br
turnstile
.\" tee,yields, proves, satisfies or entails
T}
U+22A8;⊨;not available;;T{
.na
semantic consequence
.br
double turnstile
T}
U+2261;≡;\\[==];identicalto
U+25A1;□;\\[sq];nece
U+25A1;□;\\[sq];necessarily
U+25C7;◊;\\[lz];possi
U+25C7;◊;\\[lz];possibly
U+2234;∴;\\[tf];therefore
U+2205;∅;\\[es];empty
U+2208;∈;\\[mo];member
U+2209;∉;\\[nm];notmember
U+2286;⊆;\\[ib];subset
U+2118;℘;\\[wp];powerset           
.TE
.KE
.SH
Writing text and equations
.LP
First, we need to be able to write our texts
.[\& (there is a good tutorial by  
#
branden kollar
.]\&) 
and then we can continue with formulas and sentences using \f[CR]eqn\f[P].
.[
harding eqn
.]
At a first glance, all of them are are \[lq]equations\[rq],
or anyone who are not familiar with mathematics and logic and the differences between the two will regard them as such.
Logic is actually a special genre of its own when it comes to formulas or equations.
.LP
To write these formulas,
you need to use either the unicode characters,
their Groff names
or macros I have defined in order to simplify typing.
See Table 1.
.LP
Here is a set of predicate logic sentences, first in \f[CR]eqn\f[P] source,
.ID
.ps 10
.vs 12
\&\f[CR].EQ (1)
    pile {
	forall(x) SameSize(x)
	above
	forall(x) Cube(x) implies Cube(b)
	above	
	(Cube(b) and b=c) implies Small(c)
	above
	(Small(b) and SameSize(b,c) implies Small(c)
   }
\&.EN\f[P]
.DE
and then formatted, in Equation (1).
.EQ (1)
pile {
forall(x) SameSize(x)
above
forall(x) Cube(x) implies Cube(b)
above
(Cube(b) and b=c) implies Small(c)
above
(Small(b) and SameSize(b,c)) implies Small(c)
}
.EN
.SH
Using logics in tables and graphs
.LP
See Table 2 and Figure 1.
These things are here just for demonstrating how typographic elements can be combined.
.KF
.sp
.QP
.vs 12
.ps 10
Table 2.
Some useful equivalents if you are doing logic.
They are presented here as an example how you can embed formulas in a table.
.so useful-equivalents.ms
.KE
.KF
.sp
.so aristotelian-syllogism.ms
.QP
.vs 12
.ps 10
Figure 1. The traditional aristotelian syllogisms,
the figure shows how one can embed formulas into a graph.
.KE
.KF
.so first-fitch.ms
.QP
.vs 12
.ps 10
Figure 2. Proof that $A or B, not A therefore B$.
The line numbering is in the left-most margin.
Then there is a vertical line, as long as the proof.
The step 1-2 in the proof is where the premises lives.
The horisontal line after step 2 is usually referred to as the \fIfitch line.\fP
The two groups, 3\(en5 and 3\(en6 are sub-proofs,
with their own premisses,
vertical lines and fitch lines
.sp
.KE
.SH
Writing Fitch arguments
.LP
Authoring natural deduction is similar to embedding formulas in a graph,
as demonstrated in Figure 1.
.PP
Any proof is initialized by calling this macro,
which informs all scripts on the number of steps in the proof and its maxiumum depth,
i.e.,
how deep the hierarchy of proofs is.
That is, how many inside proofs, whitin proofs ... do we have.
You better add one or the references at the right will come to close to the logical statements.
.ID
\f[CR]set_steps_and_depths(8,3)
.DE
.PP
Any proof (the root proof or any sub-proof) starts
with the start_proof() macro,
which also names that proof.
After we have started the proof,
we add its premises,
and end it with \f[CR]premis_end()\f[P].
.ID
\f[CR]start_proof(START);
add_premis(START,"\[Do]A or B\[Do]");
add_premis(START,"\[Do]not A\[Do]");
premis_end(START);\f[P]
.DE
.PP
After ending the premiws section,
we enter the body of our proofs.
In this case we start the sub-proofs
.PP
.ID
\f[CR]start_proof(SUB1);
add_premis(SUB1,"\[Do]A\[Do]");
premis_end(SUB1);\f[P]
.DE
.PP
In the body of a proof, we use the \f[CR]add_step()\f[P] macro,
which has three argument: (i) the name of the current proof,
(ii) the result of the step, and finally (iii)
the references to earlier steps needed for the step.
.ID
\f[CR]add_step(SUB1,"\[Do]falsum\[Do]","\[pp] Intro: 3,2");
add_step(SUB1,"\[Do]B\[Do]","\[pp] Elim: 4");
end_proof(SUB1);
.DE
.PP
We end a proof (be it a sub_proof or a proof) with the \f[CR]end_proof()\f[P] macro,
which needs the name of the current proof as an argument.
Now we start another subproof.
.ID
\f[CR]start_proof(SUB2);
add_premis(SUB2,"\[Do]B\[Do]");
premis_end(SUB2);
add_step(SUB2,"\[Do]B\[Do]","Reit: 6");
end_proof(SUB2);
.DE
.PP
After we have completed the two sub-proofs,
return to the main proof and completes it with a nice $\(OR$ elimination.
.ID
\f[CR]add_step(START,"\[Do]B\[Do]","∨ Elim: 6-7,3-5,1");
end_proof(START)
.DE
.PP
Note that the macros do not check your references.
Sanity checks and proof reading is your job.
.KF
.sp
.ID
.so PL-proof.ms
.DE
.QP
.vs 12
.ps 10
Figure 3.
A slightly longer example:
Prove that $A or B, not B or C therefore A or C$.

.KE
.LP
.KF
.sp
.so QL-proof-1.ms
.QP
.vs 12
.ps 10
Figure 4. A proof using predicate logic.
It proves without premisses one of the de Morgan formulas:
$\[fa] x ^ Fx ^ \[<>] ^ \[no] \[te] x ^ \[no] Fx$,
.i.e.,
All $x$ are $F$ if and only if there is no $x$ which is not $F$.

.KE
.[
$LIST$
.]
.so back-matter.ms
