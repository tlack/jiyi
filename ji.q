/jiyi 
\l _CONF.q
\l u.q
Cmds:()!();Cmds[`start]:{"blah"}
if[not `Tmsgs.qdb in  key`:.;`:Tmsgs.qdb set ([]id:"j"$();dt:"p"$();data:())]; /<- is there a more idiomatic way?
Tmsgs:get `:Tmsgs.qdb;
.z.ts:{r:Dbg[Tg;0];`:Tmsgs.qdb upsert ("j"$.z.P;.z.P;x`update);r};
show `$NAME," up";
system"p ",Sx PORT;
system"t ",Sx LOOPDLY*1000;

/in terms of priority:
/TODO write it the simplest way first. thats probably the best way.
/TODO dont over generalize!!!
/TODO allow anything to be returned as CSV
