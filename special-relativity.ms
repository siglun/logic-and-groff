.SH
Särskilda relativitetsteorin
.LP
Särskilda relativitetsteorin bygger enligt
.[\& 
#
wikipedia special relativity
.]\& 
på två principer:
.IP 1
The laws of physics are invariant (identical) in all inertial frames of reference (that is, frames of reference with no acceleration).
This is known as the principle of relativity.
.IP 2    
The speed of light in vacuum is the same for all observers, regardless of the motion of light source or observer.
his is known as the principle of light constancy,
or the principle of light speed invariance.
.LP
The derivation below is partly based on
.[\& 
#
einstein relativitetsteorin
.]\& 
but mostly.
.[\& 
#
wikipedia time dilation
.]
.LP
Figur 1 visar antagandena bakom hur man beräknar särskilda relativitetsteorins tidsdilation.
Vi kan använder abtagandena 1 och 2 ovan,
och Pythagoras sats (se nedersta raden i figuren).
Vi använder $Delta t$ och $Delta t prime$ för att eliminera $L$ och $D$.
.EQ (4)
lpile {
{ Delta t prime = {2 D} over c \[hA]    D = {c Delta t prime} over 2 }
above
{ Delta t = {2 L} over c \[hA]  L = {c Delta t } over 2 }
}
.EN 
.PP
Sätt in $L$ och $D$ från Ekvation (4), i uttrycket från Figur 1.
.EQ (5)
left ( {c Delta t prime} over 2 right ) sup 2 = left ( { c Delta t } over 2 right ) sup 2  + left ( {v Delta t prime } over 2 right ) sup 2
.EN
.PP
Vi kan lösa ut $Delta t prime$ ur Ekvation (5)
.EQ (6)
Delta t prime = { Delta t } over { sqrt { 1 - v sup 2 over c sup 2} }
.EN
.KF
.PSPIC -C "world_line.eps" 8.0c
.QP
.vs 12
.ps 10
Figur 2. Diagram of a light cone.
A light cone (or "null cone") is the path that a flash of light,
emanating from a single event (localized to a single point in space and a single moment in time) and traveling in all directions,
would take through spacetime.
.[\& (CC BY-SA 3.0, 
wikimedia World_line
.]\&)

.KE


.KF
.PS
copy "time-dilation-graph.pic"
.PE
.QP
.vs 12
.ps 10
Figur 1.
Demonstration av hur tidsdilationen och med den Lorentztransformationen härleds för särskilda relativitetsteorin.
(a) visar hur en observatör i vila skapar en ljusblixt från punkten A som sedan reflekteras från en spegel i B.
Avståndet mellan A och B är $L$.
Givet punkt 2 ovan (att ljushastigheten vakuum är den är konstant för $c$ alla observatörer,
kan observatören i (a) uppmäta att hela förloppet tar $2L/c$.
(b) visar hur detta förlopp uppfattas av en observatör som rör sig med hastigheten $v$ i relation till observatör (a).
Här tillryggalägger ljuset avståndet $2 D$,
medan observatören själv rör sig avståndet $v Delta t prime$.
Avstånden i triangeln i (b) är relaterade till varandra enligt Pythagoras sats.
Se texten för resten av härledningen.
.sp
.KE
