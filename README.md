# jiyi - long term memory for telegram group chats

## statu

fantasyrepo

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

Telegram lacks one layer of structural features added on top. Here's mine.

## how

You run the bot on your laptop. No server required but you can use one if
you're into that sorta thing. It's written in a language called Q. 

It sits in a room, or in chat with you, and records everything it sees while
it's in there.

You can ask it questions to recall this info later. Questions start with `ji
....`. You can just say `ji` and it will try to give you help in a crude and
terse way. The message has to **start** with `ji` - it ignores anything with
`ji` in the middle of the message. So you don't have to worry about ji
rejiggering your conversations.

It doesn't do any creepy shit. You own all data, and this code - it's public
domain.

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

cross indexes
date ranges
boolean search terms
web interface
csv export

## wont

utf8 in depth (should support utf8 in messages transparently)
emoji
mysql, python, node, php, js, ...

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

6. Run "/q/l32/q jiyi.q", or "c:\q\w32\q.exe jiyi.q", or whatever works for
your OS, and it will check its own messages every five seconds.  You can kill
it and restart at any time. You can edit the config file to tell it to check
every second if you're really anal, or you could make it check every 60
seconds, and let your computer take a nap. You are running the show. 

7. Message your bot. It will say hello back to you. The help message should get you going?

7a. If not, see if you see any obvious errors in the results of step #6. You
probably put in the key wrong, or ran Q with the wrong path name. See steps #1
and #4-5

7b. Still can't figure it out? You're fucked.

8. Invite your bot to a room and it should pop in and say hello. Want help?
Start a message with the "ji " and the bot will tell ya the rest.

9. Sick of the bot? Kill your copy of Q that's running jiyi, or say in the room
"ji fu". "fu" is forced-upgrade mode, which makes it quit and not restart
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

