# jiyi - long term memory for telegram group chats

## statu

fantasyrepo

## short

Telegram lacks one layer of structural features added on top. Here's mine.
Doesn't work.

## whyy

This software has three primary feats:

1. I like telegram. I want to use it to organize my information between devices.
My information comes in all forms you know. This bot should help me find info 
by searching history and organizing my hash tags which are surprisingly useful.

2. I sometimes make telegram bots for dumb ideas. When someone messages one,
you better believe I want to know about it.. on Telegram! This bot can forward
messages from one room, or one person-to-bot (p2b?) convo, into another one.
You can then reply to that person or room through the bot. Helps you smooth out
some UI rough spots and not be caught with your pants on.

3. The bot should not sell my information to a person who has set out to harm
me or in any way endanger my very super secret sticker sharing activites. It
should not require me to buy a $299 per year discounted plan. I do not wish to
receive a daily marketing BuzzMail with social commentary about Shania
Twombley.

## how

You run the bot on your laptop. No server required but you can use one if
you're into that sorta thing. It's written in a language called Q. 

It sits in a room, or in chat with you, and records everything it sees while
it's in there.

You can ask it questions to recall this info later. Questions start with `ji
....`. You can just say `ji` and it will try to give you help in a crude and
terse way. 

Note that the message has to **start** with `ji` - it ignores anything with
`ji` in the middle of the message. So you don't have to worry about jiyi
rejiggering your conversations.

It doesn't do any creepy shit. You own all data, and this code - it's public
domain.

## ops

The bot has a concept of operators. It understands messages from operators
differently than other Telegram users. `ji op` for more.

## help 

talk about wishful thinking

all commands should have a one letter abbreviation for quick use. minimize typin

`ji` - help and world times for all users seen in operator room

`ji ?` - status, connections, users, your own shit, whatever

`ji ! shell cmd text` - scary

`ji $ code textorurl` - set `$code` in future messages to text or results of
http get url. global

`ji @ tag` - in bouncer mode, when replying to the bot in the operator room,
add a tag to the user who sent the message to the bot. In all future messages,
this tag will be prepended to their message text.

`ji # tag` - in bouncer mode, when replying to the bot in the operator room,
add a tag to the last message. This can help you tag someone's complaints, make
notes about that user or their experience or more likely ignore them.

`ji a(larms)` - wut we got

`ji a(larm) time jicmd` do something at this time. time can be relative:

`ji a 60s r wiredshut you dozed off again`
`ji a 5m r 2814528282 make sure granny is still breathing`
`ji a 1h r tlack305 wash hands and rattail`
`ji a 3d r 818492591 change oil in car`

..nothing more than days cuz that's crazy

`ji c(oin) [sym [sym...]]`

`ji d(b)` - database stats in the ji's working dir

`ji d p(wd) ./db/` - rehome next ji commands to this dir. has nothing to do
with operational db.

`ji d u` - upload elsewhere

`ji f u/d/b/r path` - host system file upload via file upload in TG (`ji f u
/etc/passwd`), download, backup (create tgz of path), restore (into path)

`ji l(ast)` - summary of last commands bot saw and acted on or messages sent
to it

`ji hg url... (re (ua))` - url get spew

`ji hh header` - set headers for next hg/hp. do the full string like X-Blah: Ugh..

`ji hp url... urlencodeddata (re (ua))` - post

`ji ho optiii` - nooooo

`ji hw url... (re (ua))` - watch url. fetch every minute and report when changes.
set referrer value and user agent. 

`ji j hg cmd..` - `ji j..` interprets ji commands

`ji n kwd,kwd2` - the grudge report. search defined news feeds for keywords.
use newsapi.org

`ji op +idorname` - add user to ji's internal table of operators who can send
it commands. operator is a cool name but powers limited compared to:

`ji op @idorname` - make user an administrator. can see other information and
use shell `!` and execute `x`/`xj` (json) commands.

`ji op [idorname]` - user activity log

`ji op /idorname` - silence user, remove from any rooms, permanently sterilize,
and remote to relevant authorities via Facebook

`ji op -idorname` - ..remove

`ji p(ub) toid msgtext` - publish to person/group chat as if `msgtext` was said
by bot. `toid` may not be a wild card.

`ji q(uery) taga,tagb` - all results for #taga and #tagb 

`ji q(uery) taga&tagb` - found together? show together

`ji q(uery) taga|tagb` - or?

`ji r(eply) chatid|msgid msgtext` - reply to msgid (not person or chat id) with
msgtext. This is different than the bot just saying it. When you reply to a
bot's bounced message, you can just use `ji r msgtext`. `msgid` may not be a 
wild card.

`ji s(ub) fromid toid` - forward all messages from/to person/group. use wild
card of `*` for all.

`ji t(ags) [tags..]` - tag analysis

`ji u(pdate)` - restart bot, useful when you make a change to code or config
and are detached from console running jiyi

`ji w(here/hen) words..` - quick search, summary with *

`ji x qstmt..` - execute Q code and show result as pretty printed text

`ji xj qstmt..` - same, but return json inside preformatted text block.

`ji xh :localhost:5010 qstmt..` - do something in q, send it via ipc, return result. i swear this is useful.

`ji xH ..` - same, but async. no result in room. at all.

`ji xs :localhost:5010 qstmt` - q set, execute qstmt and send to remote q server

`ji xg :localhost:5010 qstmt` - q get, connect to q server, run query, return results

## should

understand editing messages

give index of all used tags `ji t(ags..)`

quick summary of other instances of word/name/tag `ji w(here) word,name,tag...`

have some basic concept of files and not just TOTALLY FUCKING IGNORE THEM

## does

nothing! (..yet)

## doesnt (..yet)

understand deleting messages

## maybe

math help, calculator, world clock, calendar (short/long)..

sentiment analysis

cross indexes

date ranges

boolean search terms

web interface

csv export

newsapi.org bridge

twilio message bridge

email bridge

slack bridge (just kidding dude)

## wont

utf8 in depth (should support utf8 in messages transparently)

emoji

mysql, python, node, php, js, ...

## help

`ji 

## now

1. Install Q/Kdb 32bit from KxSystems (free). 300kb download, no spyware, no
accounts. Make sure Q works. When you run Q from the command line, or a shell
script, or a batch file, sometimes you have to refer to it by its full
directory name, sometimes not. That's their problem and you can ask them about
it. 

2. Create a bot by messaging Botfather on Telegram. Give it stupid name, doesn't matter. 

3. **Turn off privacy mode for this bot** If you don't, the bot can only hear
things that are addressed specifically to it. That sounds cute, but means it
won't be able to collect the very information that you wish for it to organize!
Privacy is the wrong name for this feature inside Telegram. It should be called
useless, or functionless-automaton-mode.

4. Collect API key. Don't share this with anyone or you might get botjacked

5. Rename `_CONF.EXAMPLE.q` to `_CONF.q`, edit it, and put in your API key in
the labeled orifice.

6. From your terminal or shell run `/q/l32/q jiyi.q`, or `c:\q\w32\q.exe
jiyi.q`, or whatever works for your OS, and it will check its own messages
every five seconds.  You can kill it and restart at any time. You can edit the
config file to tell it to check every second if you're really anal, or you
could make it check every 60 seconds, and let your computer take a nap. You are
running the show. 

7. Message your bot. It will say hello back to you. The help message should get you going.

7a. If not, see if you see any obvious errors in the results of step #6. You
probably put in the key wrong, or ran Q with the wrong path name. See steps #1
and #4-5

7b. Still can't figure it out? You're fucked.

8. Invite your bot to a room and it should pop in and say hello. Want help?
Start a message with the `ji` and the bot will tell ya the rest. 

9. Sick of the bot? Kill your copy of Q that's running jiyi, or say in the room
`ji fu`. `fu` is forced-upgrade mode, which makes it quit and not restart
automatically. (Did you think it meant something else?)

## name

`jiyi` is supposedly the Chinese word for memory. Not **the** word, but one of
them, that's for sure. It may not even be Chinese. It's definitely quick to
type `ji` though.

## license

public domain, or whatever you want. just make something up. please god worry
about something else just for riiiight now. got something to sign? wont do it.
got it! fake my signature.

## who

@tlack305 on telegram

