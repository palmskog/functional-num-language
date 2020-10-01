open HolKernel boolLib Parse bossLib ottLib relationTheory functionalTheory;

val _ = new_theory "functionalMeta";

Theorem os_red_eval:
 !e n. es_eval e n <=> RTC os_red e (e_num n)
Proof
 cheat
QED   

val _ = export_theory ();
