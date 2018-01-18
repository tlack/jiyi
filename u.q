.q.Of:{y@x}                                                        / `mykey Of mydict
Sx:string;                                                         / convert to string 
Dbg:{if[DBG;0N!(`dbg;x)];x}; DbT:{a:.z.P;r:@[x;y;Sx];0N!(`dbT;.z.P-a;r);r}        / debug (with timings..) 
Zsa:{"'",ssr[x;"'";"\\'"],"'"}                                     / escape shell arguments with single quotes
Fc:{('[;])over x}                                                  / create new function like {x[0] x[1] x[3] ... arg}
Hg:{""sv DbT system Dbg CURL," ",Dbg Zsa[x]}; Hj:{.j.k Dbg Hg x}       / http get text and json
Tg:{[ofs] Hg TGAPI,"getUpdates?offset=",Sx ofs}                    / telegram get updates..
Tp:{[to;txt] Hg TGAPI,"sendMessage?parse_mode=Markdown&chat_id=",Sx[to],"&text=",.h.hu txt} / post msg
Tr:{[to;msgid;txt] Hg TGAPI,"sendMessage?parse_mode=Markdown&reply_to_message_id=",Sx[to],"&chat_id=",Sx[msgid],"&text=",.h.hu txt} / reply
Tu:{[ch;msgid;txt] Hg TGAPI,"editMessageText?parse_mode=Markdown&message_id=",Sx[to],"&chat_id=",Sx[msgid],"&text=",.h.hu txt} / update msg

