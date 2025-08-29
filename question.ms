.so fitch-macros.pic
.so parameters.ms
.SH
Fitch argument
.LP
Show that $forall(x) (Tx implies (Lx or Mx)$ given $not exists(x) (Tx and Sx)$ and $forall(y) (Sy or My or Ly)$.
This is how the argument looks like
.PS
.ps 10
.vs 12
scale=2.54
moveht=0.75
boxht=0.75
movewid=0.9

set_steps_and_depths(15,5)

start_proof(START);
add_premis(START,"$not exists(x) (Tx and Sx)$");
add_premis(START,"$forall(y) (Sy or My or Ly)$");
premis_end(START);

start_proof(UNIV);
add_premis(UNIV,"$[a] ^ Ta$");
premis_end(UNIV);

add_step(UNIV,"$Sa or (Ma or La)$","$any$ Elim 2");

start_proof(DIS1);
add_premis(DIS1,"$Sa$");
premis_end(DIS1);

add_step(DIS1,"$Ta and Sa$","$and$ Intro 3,5");
add_step(DIS1,"$exists(x)(Tx and Sx)$","$exists()$ Intro 6");
add_step(DIS1,"$falsum$","$falsum$ Intro 1,7");
add_step(DIS1,"$La or Ma$","$falsum$ Elim 8");

end_proof(DIS1);

start_proof(DIS2);
add_premis(DIS2,"$Ma or La$");
premis_end(DIS2);

start_proof(DIS21);
add_premis(DIS21,"$Ma$");
premis_end(DIS21);
end_proof(DIS21);

start_proof(DIS22);
add_premis(DIS22,"$La$");
premis_end(DIS22);
end_proof(DIS22);
add_step(DIS2,"$La or Ma$","$or$ Elim 10,11,12");
end_proof(DIS2);

add_step(UNIV,"$La or Ma$","$or$ Elim 4,5-9,10-13");
end_proof(UNIV);

add_step(START,"$forall(x) (Tx implies (Lx or Mx))$","$any$ Intro 3-14");

end_proof(START);
.PE

