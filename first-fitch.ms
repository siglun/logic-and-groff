.PS
.ps 10
.vs 12
scale=2.54
moveht=0.75
boxht=0.75
movewid=0.9

set_steps_and_depths(8,3)

start_proof(START);
add_premis(START,"$A or B$");
add_premis(START,"$not A$");
premis_end(START);

start_proof(SUB1);
add_premis(SUB1,"$A$");
premis_end(SUB1);
add_step(SUB1,"$\[pp]$","\[pp] Intro: 3,2");
add_step(SUB1,"$B$","\[pp] Elim: 4");
end_proof(SUB1);

start_proof(SUB2);
add_premis(SUB2,"$B$");
premis_end(SUB2);
add_step(SUB2,"$B$","Reit: 6");
end_proof(SUB2);

add_step(START,"$B$","$or$ Elim: 6-7,3-5,1");
end_proof(START)
.PE
