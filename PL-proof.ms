.PS
.vs 12
.ps 10
scale=2.54
moveht=0.75
boxht=0.75
movewid=1.0

set_steps_and_depths(12,5);

start_proof(START);
add_premis(START,"$A or B$");
add_premis(START,"$not B or C$");
premis_end(START);

start_proof(SUB1);	
add_premis(SUB1,"$A$");
premis_end(SUB1);
add_step(SUB1,"$A or C$","\[OR] Intro:3");
end_proof(SUB1)

start_proof(SUB2);
add_premis(SUB2,"$B$");
premis_end(SUB2);

start_proof(SUB21);
add_premis(SUB21,"$not B$");
premis_end(SUB21);
add_step(SUB21,"$falsum$","\[pp] Intro:6,5");
add_step(SUB21,"$A or  C$","\[pp] Elim:7");
end_proof(SUB21);

start_proof(SUB22);
add_premis(SUB22,"$C$");
premis_end(SUB22);
add_step(SUB22,"$A or C$","\[OR] Intro:9");
end_proof(SUB22);

add_step(SUB2,"$A or C$","\[OR] Elim:2,6-8,9-10");
end_proof(SUB2);

add_step(START,"$A or C$","\[OR] Elim:1,3-4,5-11");

end_proof(START);
.PE
