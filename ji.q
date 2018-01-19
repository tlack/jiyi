/jiyi 
\l _CONF.q
\l db.q /schema
.q.Of:{y@x}                                                        / `mykey Of mydict
Sx:string;                                                         / convert to string 
DBT0:.z.P; Dbg:{if[not 0~DBG;0N!(DBG;x)];x}; DbL:{DBG::x;Dbg y}; Db0:{y}; DbT:{a:.z.P;if[DBT0;0N!(`dbT;a-DBT0)];x}        / debug (with timings..) 
/linux: Zsa:{"'",ssr[x;"'";"\\'"],"'"}                                     / escape shell arguments with single quotes
Zsa:{"\"",ssr[x;"\"";"\""],"\""}                                     / escape shell arguments with single quotes
Fc:{('[;])over x}                                                  / (f)unc (c)reator: {x[0] x[1] x[3] ... arg}
Hg:{""sv Dbg system DbL[`curlcmd;] CURL," ",Dbg Zsa[x]}; Hj:{DbL[`Hj;] .j.k Hg x};   / http (g)et text and (j)son
Tg:{[ofs] Hj DbL[`tg;] TGAPI,"getUpdates?timeout=",Sx[KATS],"&offset=",Sx ofs} / telegram get updates..
Tp:{[to;txt] Hj TGAPI,"sendMessage?parse_mode=Markdown&chat_id=",Sx[to],"&text=",.h.hu txt} / post msg
Tr:{[to;msgid;txt] Hj TGAPI,"sendMessage?parse_mode=Markdown&reply_to_message_id=",Sx[msgid],"&chat_id=",Sx[to],"&text=",.h.hu txt}; / reply
Tu:{[ch;msgid;txt] Hj TGAPI,"editMessageText?parse_mode=Markdown&message_id=",Sx[msgid],"&chat_id=",Sx[to],"&text=",.h.hu txt}; / update msg

MID:0j; CID:0j; UID:0j; MTXT:""; TXTW:(); BOTW:(); LASTRAWMSG:();
CMDS:()!();
CMDS[`debug]:{[s]Reply[`debug;(s;get`.)]};
Reply:{[cmd;panels]DbL[`reply;(cmd;panels)];{Tr[CID;MID;Sx y,.Q.s x]}[;cmd]each panels};
ParseCmd:{
	DbL[`cmd;LASTRAWMSG::x]; 
	0N!`:Tmsgs.qdb upsert DbL[`newrow;]("j"$.z.P;.z.P;DbL[`upd;]u:x`result);
	if[0N!()~DbL[`msg;] msg:`message Of x;:()];
  MTXT::DbL[`mtxt;]$[0n~DbL[`txt;]t:msg[`text];"";t]; 
	MID::$[null m:"j"$DbL[`mid;]msg[`message_id];0j;m];
  TXTW::Db0[`txtw;]" "vs $[10=type MTXT;MTXT;""]; BOTW::DbL[`botw;]$[MTXT like CMDKWD,"*";1_TXTW;()]; /BOTW==()? not for bot
  CID::Db0[`cid;]$[`chat in key msg;"j"$msg[`chat]`id;0j]; 
	UID::Db0[`uid;]$[`from in key msg;"j"$msg[`from]`id;0j]; 
	UN::DbL[`un;]$[`from in key msg;`$first 32 cut msg[`from]`username;""];
	DbL[`done;]{DbL[`inner;]x[y]}[;MTXT] each value DbL[`cmds;]CMDS}
.z.ts:{ParseCmd each `result Of DbL[`tgresp;] Tg 0};
DbL[`boot;NM];
show system"chdir";
system"p ",Sx PORT;
system"t ",Sx LOOPDLY*1000;

/in terms of priority:
/TODO write it the simplest way first. thats probably the best way.
/TODO dont over generalize!!!
/TODO allow anything to be returned as CSV
