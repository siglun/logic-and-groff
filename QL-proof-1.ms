.PS
.vs 12
.ps 10
scale=2.54
moveht=0.75
boxht=0.75
boxwd=2.0
movewid=0.9

set_steps_and_depths(12,5);

start_proof(START);
add_premis(START," ");
premis_end(START);

start_proof(SUB1);	
add_premis(SUB1,"$\[fa]x ^ Fx$");
premis_end(SUB1)
start_proof(SUB11)
add_premis(SUB11,"$\[te]x ^ \[no] Fx$")
premis_end(SUB11)

start_proof(SUB111)
add_premis(SUB111,"$[a] ^ \[no] Fa$")
premis_end(SUB111)
add_step(SUB111,"$Fa$","\[fa] Elim 2")
add_step(SUB111,"$\[pp]$","\[pp] Intro 4,5")
end_proof(SUB111)

add_step(SUB11,"$\[pp]$","\[te] Elim 3,4-6")
end_proof(SUB11)
add_step(SUB1,"$\[no] \[te]x ^ \[no] Fx$","")
end_proof(SUB1)

start_proof(SUB2)
add_premis(SUB2,"$\[no] \[te] x ^ \[no] Fx$")
premis_end(SUB2)

start_proof(SUB21)
add_premis(SUB21,"$[a] ^ \[no] Fa$")
premis_end(SUB21)
add_step(SUB21,"$\[te] x \[no] Fx$","\[te] Intro 10")
add_step(SUB21,"$\[pp]$","\[pp] Intro  9,11")
add_step(SUB21,"$\[fa] x ^ Fx$","\[pp] Elim 12")
end_proof(SUB21)

add_step(SUB2,"$\[fa] x ^ Fx$","\[fa] Intro 10-13")
end_proof(SUB2)

add_step(START,"$\[fa] x ^ Fx ^ \[<>] ^ \[no] \[te] x ^ \[no] Fx$","\[<>] Intro 2-8, 9-14")

end_proof(START)
.PE

