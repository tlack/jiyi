flz:key`:.;

if[not`:Trunlog.qdb in flz;`:Trunlog.qdb set ([id:"j"$()]dt:"p"$())];     / pid?
`:Trunlog.qdb upsert ("j"$.z.T;.z.P);

if[not`:Tmsgs.qdb in flz;`:Tmsgs.qdb set ([id:"j"$()]dt:"p"$();data:())]; 
Tmsgs:get`:Tmsgs.qdb;

if[not`:Tops.qdb in flz;`:Tops.qdb set ([id:"j"$()]dt:"p"$();isadmin:())]; 
Tops:get`:Tops.qdb;

if[not`:Tlisten.qdb in flz;`:Tlisten.qdb set ([id:"j"$()];dt:"p"$();op:"j"$())];
Tlisten:get`:Tlisten.qdb;


