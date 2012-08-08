= Cybertext: Content, Form, and Process =

We've gotten used to the idea that *form* can be separated from *content*, such as
with latex preambles and css/sass documents. As I've been writing, I've also ben
separating out *process* from my content; I keep a journal, I keep a notes
document, and these are things that I can work on and think about in my book
without committing to putting in the book. 

But what if we had a third component, *procedure*?  Algorithmic (or procedural)
text that has x properties and uses resource y and goes to position z in
scripton w. Procedure might interact with form: pulling tagged images from your
private cache or from Flickr, or writing certain textons in ransom- or
Dada-style text. Or it could interact with content: dropping search results at
the end of an article; making textons more "demanding" (see below) when a Google
Alert goes off; marking the beats in a card stack; creating badges out of
"exercise"-formatted text; creating a list of non-dictionary words used;
attracting other documents with a particular word in them; changing permissions
on textons, so that they are readable by the World, or the Buyer, or the Team,
or the Author alone. 

= Elements =

== Textons ==

== Explicit Textons ==

If I type three lines and rip the page out of my typewriter, I'm deciding that,
hey, these three lines are a thing.  If I tape two pages together end-to-end, I
want these to be considered a single unit. 

Whether I'm cutting or gluing, I'm making an explicit decision about whether
this texton is a block or not. Although, thanks to magic, there remain etheric
relations to other textons ("I'm from texton x", "I sample texton y"). 


== Passive Textons ==

Any texton has subtextons: subsets and subsequences of the textons. Most
probably we'd be thinking of words, phrases, sentences, or paragraphs. In a
large texton, there might be some explicit structure too: sections or chapters. 


== Demanding Textons ==
The Faceknife aspect of the Magic Typewriter helpfully presents you with things
that it thinks you really ought to work on because, c'mon, people are waiting. 

# Made-up words demand explanations: if they do not have their own texton, or
  appear in some glossary, they get demanding. However, if you have decided to
  explain them implicitly, through context and exformation, the typewriter will
  remember that decision. 
# A page that is linked to a lot of times is more demanding than a page that is
  never or rarely linked to.
# Short (or empty) pages are demanding. If it's just an idea, why does it have
  its own explicit texton? 
# Very long pages are also demanding: if a growing page is not incubated, it
  becomes noisy and wants to be fed. 
# Explicit assignments (to either the author, or to the typewriter) are
  demanding, but not very demanding. They are likely to come up when you examine
  a scripton that they deem as being related to themselves "somehow." 
# Wait, should we just think of "assignments" as being to <<the author>> or
  {{the typewriter}}? What if you have a presentation design, which wants to go
  to the designer? Well, I'm not designing -- so a typewriter which emails the
  designer would be the best magic solution. 
# Journal entries are not very demanding at all. 


== Engaging Textons ==

Someone I was talking with somewhere, maybe with Liene?, mentioned something
that was so interesting I would put it in [[concepts of the internet]].
Basically, if an API would be nice to have, write up its specifications, and it
may just happen. There are things that make it more likely to just happen: being
promoted, being interesting, having fans. 

I am imagining two ways of using Engaging Textons: the Open-Source model, and
the No-Failure model. 

In the open source model, We add things that would be nice to have --
programmatic text, a css model, hypercards, a proof that P=NP -- and route that
to a place where contributions are welcome, and will get ripped into little
pieces by experts. Github, where bad code will be replaced with good code.
Mathoverflow or other communities, where bad behavior will be trolled and
moderated. 

Drive traffic to other places, and traffic shall be driven back to you. 

In the No-Failure model, we ask for submissions with a texton, and we use
those submissions as textons-with-citation. What will they do when they are in
the system? Who can say? What's a little injection attack among friends? 

== Sentient Textons ==

For a long time I was toying with creating two fake bots to do some of my
textual and engagment bidding. However, so many really good fake bots showed up
that "having a fake bot" was no longer enough to be a joke. But, if they can be
a joke *and* an element of the cybertext, they may survive editing. (They
*really* want to survive editing.)

"Submission" is the bot that handles No-Fail Textons, i.e., the submitted
content for missions.  Submission is stoked that you're becoming a better
person, and please don't worry about your demographic and psychological data
being used to create collateralized debt obligations on your family members. 

Subversion is a fake bot which handles discussion- and code-based missions,
using the [[concepts of the internet]] to make the cybertext better. If you
would like to make the cybertext better enough to perform infrastructure attacks
and develop plasma cannons, please submit a patch. 

NB: As a sequence of tweets (or really, engagement requests on any platform), it
probably makes more sense to think of these guys as scriptons. But, while they
are unready to launch yet have the potential to get some lines written for them,
punctuation quirks developed, or Markov corpi assembled, they are technically
textons. 


== Scriptons ==
A scripton is some arrangement of textons. For the moment, let's assume that we
don't want to repeat ourselves, but we certainly might want to limit ourselves,
and so the sorts of arrangements we'll consider are permutations of subsets of
our corpus. 

A few examples:
  Fundamental queue. 
  The actual order in which you did things.

  Digraph view.
  Creating a post-tree structure, either automatically, or in response to queries.

  Placement view.
  A pure version of Nathan's original notion: that one should be able to put
  'piles' of 'pages' in different 'places', with colors and transparancy and
  labels and whatever other image-processes are helpful.

  Linearized view.
  The digraph tries to flatten itself, based on the user's command and ordering.

  Procrustean view.
  Generates tables to fill out of /^words/: (1)/. Choose the row and column. Have
  I been here before? THen print that one. 


=== Permutation spaces and change of basis ===

If my backers came over to my house tomorrow, with knives, I'd be happy to
accompany them to the print shop, buy paper, and print them out copies of the
book as it is. Since it's not rewritten into its unique, final, and "let me tell
you, it would have been perfect if only" form, I'd have to ask myself, What
ordering should I give it to them in? By file modification or creation date? By
title, alphabetically. By decreasing word count? 

A scripton is some choice of a subset of textons, and an ordering of that,
right? That got me thinking about whether permutation spaces have some notion of
a "change of basis." Permutation space admits topologies other than the discrete
topology, right? But whether it's useful to think of it in change of basis terms
is not clear. 

At any rate, here's what came from fantasizing about permutation spaces:

# You might define sequences that do not permute; they move as a block. I think
  we used to call these, blocks of imprimitivity -- I'll have to check out my
  algebraic graph theory book to see if it suggests anything. 
# You can order by any of a number of date objects. 
# You can order by the results of a proc; for example, pass in a proc which counts
  the number of swear words, and order by dirtiness. 
# You can make orderings out of directed graphs, if you do some sort of nesting
  operation, and if you don't expect it to work globally. They may not be unique
  orderings. 
# I had this wild idea... where you, say, order by... how in demand the texton is
  by other pages? Like, if I keep talking about [[wtf maps]], which is my
  canonical example of a document that I keep bringing up without reall explaining
  what I mean by it... if a LOT of pages use it, then it should be at the top of
  an assignment queue of that kind. I.e., it's a page that is much loved by the
  cybertext, so please show it some rewriting love. 




== Magic ==

=== <<>> ===
<<>> make string assigments happen
  but they're already used for notes to self
  but notes to self might be turned into assignments
  so are you saying that <<>> are assignments, 
    and some assignments are programmatic?

=== (()) ===
(()) This is, like, the information on the Gamemaster Screen. In fact, at one
point I have a note which reads GMScreen, like it was an object. At oine point I
became insistent that what we were trying to do was preserve the cool things
about paper, except into text. YOu can tear it, clip it, scribble on it, and the
like. 

Another way of thinking about (()) is: stage directions. 
Another way I've used (()) is as a bit of journaling, or rather, something to
cut out a whiny direction to myself, yet without deleting it so that I could
follow its instructions at another time.

It is really tangled up with <<>>. Well, no... the reason I didn't use <<>> is
because I didn't want to see it in a list of assignments. Is this the mapping?:

  <<>> assignments (to the author, to the string, to magic typewriter)
  (()) comments and journaling (more sense to do #### or is that impossible to
       tokenize?)
  [[]] everyone's favorite
  {{}} unassigned
  //\\ looks kind of like regular expression; could be sugar for some kind of
       search?
  $$$$  
  %%%%

I feel like you're too obsessed with this naming by double-symbol. What are you
actually trying to do? You want text to have some effects, right? Okay, so what
are the effects? 

== String Effects ==

=== Yeah but how do you read them? ===

<<\s?(.*)\s?>>.method("arguments")

=== Open/Create new page, with "title". ===



Open/Create a new spell, newly a method of "string". 
When a texton has more methods than String, it wants to do them. 


"<<title>>.open" => "[[title]]" #with double brackets


=== [[]] ===
For sending text into a different context. 

Hey, here's some text in the wrong context. Maybe I just want a way of sending
text to its right context when I happen to know that. But how often are you
going to know the context ahead of time? Isn't that just going to be another set
of decisions to make prematurely, sapping your willpower for the day? 

Like, using my writing power on that paragraph instead of this one.

[[paper]]

Well, it had an aspect of paragraph to it, but I lost it in the disruption. It
will well up again... the Tao always returns. 

It's impossible to see what happened just now, which is why we want a magic
typewriter. What I did was, type out a paragraph; get upset that it was out of
context; decide, wait, I can just stick it into the context, "paper", which may
or may not be a page. 

It's easy when you double-bracket a word or phrase to MAKE a page. It's more
confusing when you double bracket in order to APPEND to a page. It ought to live
in a sort of, 'accumulated textons' for a word or title... The textons can
easily be merged, and that's how a lot of rewriting works... or sequenced... re
sequenced, orbitals of text... an array of text, cycling or permuting or
applying physics...

So what I mean is, 


When you drop the double bracket, you're shoving something out of context, into
a new or auto-remembered context. 




=== Early fantasizing (needs editing) ===
connections
-> strongly implies being followed by or leading into...
<- might be supported by this notion or link over here...

quantifying
I'd like to be able to follow a line with x's, to denote that I have done the
thing, and I should be awarded points. self-gamification. 

What if it could read vim buffer executes?
What if it had a very easy to remember syntax for generating new kinds of tags
on the fly?
What if it looked for words that were not in the dictionary as hooks to
interrogate you on. Oooh, that's interesting, I don't know that word.

The user marks these guesses/questions/queries by the processor as signifying or
not signifying or not right now signifying. "I never want to see that again"
assigns a huge (infinite?) negative score. Scores accumulate by use. Scores can
be assigned by the user. Scores might be a number. Scores might be a directed
graph. Scores might be musical. Scores are a graph induced by placement,
in-texton features, or explicit numbering. 

Example 1: Wikiwords
Using [[wikiwords]] there is a set of ordered pairs representing the edges of a
graph. 

Example 2: Hello Computer
$ define your prompt
$   and have vim put you in signalling compiler mode for a while
$   and unsafely evaluate it ok maybe not, so export it to a text file to
$   examine. "You can't run this-- you've never read the thing."
$ # man what if it understood comments too?

but now this shouldn't be interpreted as code, although it is the Text of a
Texton with code... \

Example 3: Page Break
Implement user-defined textons by the --- marker. Because why not? 
Display by pages. In what order? Probably one that comes from a View of Ordered
Piles. 
(If you've never read a stack, you've never Ordered it. ?)

It should know that <<writing such as this>> is Exformation-- no one but the
writer ought to see this, but it's okay if they see this. When I use this, it's
because I'm describing some generality that needs to be turned into something
funny in order to work. 




= Examples =
Here is a page I created while imagining that the cybertext was already in good
working order. 

  [[systematizing]]



= Research =

== No Longer No Sense of an Ending ==

by Dorian Taylor

...Let’s imagine a story, idea or argument as a concept map, where the bubbles are
concepts and the lines between them are some form of analogy. We can call this a
representation of a conceptual topology. If you’ve ever done one of these
exercises, you’ll notice it doesn’t take long before you lose track of the
bubbles and the lines start to crisscross. Hypertext was explicitly conceived as
a way to manage the complexity of such a structure.

I’m tempted to claim that hypertext empowers us to represent more complex
conceptual topologies than older literary technologies, but I’m not completely
convinced of that myself: consider the subtlety, nuance, and explosive range of
interpretation embedded in your favourite poem. It’s more accurate to say that
hypertext enables complex conceptual structures to be explicit—baked into the
artifact, rather than emerging through reading. A print-era analogue to this
concept is that while you can debate up and down what an author meant by this or
that word in the text, it’s a lot harder to argue whether or not chapter seven
comes after chapter six. The links in hypertext, likewise, connect any part of a
work to any other as clearly and unambiguously as adjacent chapters.

Following a hypertext link is an ergodic process—in this case, an interaction
with a text which is over and above the everyday act of reading. To examine a
text’s ergodicity, Årseth introduces two units: the texton and the scripton. A
texton is an arbitrarily-sized segment of static text, and a scripton is a
permutation of a (sub)set of textons. For example, each word of a fridge magnet
poetry set is a texton which can be arranged to create millions of viable
scriptons. In contrast, the entirety of Moby Dick, being a contiguous story, is
both one texton and one scripton.

A texton has a definite orientation—i.e., beginning, middle, and end—but a
scripton can have as many orientations as the factorial of its component
textons—a potentially enormous number, though likely made smaller if we remove
the permutations that don’t make any sense. The remaining scriptons may or may
not vary the meaning of the overall work, but they will almost certainly vary
the reader’s experience. And that is what’s so fascinating about hypertext.

We should, as Årseth does in his dissertation, be able to evaluate a
(hyper)textual œuvre in terms of three things:

* textons,
* the scriptons their arrangements produce, and
* the alternate interpretations we can derive from the results.

Using text with a high ratio of scriptons to textons, but low variation in
meaning, we can notify, instruct or persuade readers without demanding they
invest more effort than it takes to get the point across, while leaving an
avenue open for further exploration. At the same time, as an author, you can
remain confident that what they’re reading is what you wrote. 

== Comments ==
It's all very good... I'm not going to copy shitloads in, because instead, go
check it out on the page, where it has its diagrams and all that. (And, might I
add, I'd like to be able to yank the page in its beauty into my text editor,
because I want my text editor to be like Vim only better.)

http://contentsmagazine.com/articles/no-longer-no-sense-of-an-ending/


"It wouldn’t make a difference if I wrote into a Word document, blog engine or
CMS. *As an artifact, unit of progress, and commercial deliverable it is still*
*the same: an indivisible atom which is either ready for consumption, or not.* Why
we put up with this condition is obvious if you’ve tried the alternative. A few
years ago, I had a grandiose vision of producing a treatise on the web as the
web. It was to be a literal brain-dump: a densely connected labyrinth of ideas
that flowed in and out of one another, an exhaustive map that exhibited the
complex interconnections it required, served up in portions small enough so as
not to overwhelm my audience. It turns out that managing a hairball of tiny
documents with a huge set of links between them is something of a challenge."


http://otal.umd.edu/~mgk/blog/archives/000758.html



Links:
http://www.eastgate.com/patterns/Patterns.html
http://contentsmagazine.com/articles/no-longer-no-sense-of-an-ending/
http://www.dkolb.org/fp002.kolb.pdf
http://www.cs.brown.edu/memex/ACM_HypertextTestbed/papers/45.html
https://github.com/WardCunningham/Smallest-Federated-Wiki


http://grandtextauto.org/2005/08/12/clarifying-ergodic-and-cybertext/


= Homework =
[-]  sed?
[-]  awk?
[x]  ipython
[ ]  Backup
[ ]  Ubuntu 12
[ ]  virtualenv
[ ]  screen 
[ ]  dev.twitter.com/apps/new
[ ]  evernote API key (double checking it)
[ ]  Bring Python/Ruby books
[ ]  Read a little on Coffeescript/Javascript

??????????????

Gods, I need to stop adding things to my morgue file. Or, improve the way that I
do it. Maybe I can write an android app that does things right (ha ha ha ha ha). 

[ ]  Evernote download from Windows
[ ]  Solve as many problems as possible with regex
[ ]  Go through items, tagging with POV/Subject and Topic

That last needs explaining. The wild stuff is best told from the perspective of
Thomas Monastic, although some of it is about the Virtual Conspiracy so I might
want to put them in their own category. The essays are from Thomas Henderson.
And there are exercises for readers. HEnce, 

  #tm #th #vc #ex
  
As for topic, there's Life and QUantum and Combinatorial and so on. It's fuzzy.
That's okay, but I want it to be tighter than the last morgue file import. 


Sat Aug  4 16:51:33 PDT 2012

Randomly thinking...

= How to Steal =

I am presented with a 'copy' file, which means that I have typed in some stolen
text from somewhere. I highlight some of it; I yank it to a new texton; I react,
I comment, I tag -- I write! When I am satisfied, it goes away.

What does it look like? A visual selection that gets yanked upward to a new vim
window, for editing, annotating, destroying, splitting apart. 

What is recorded? My own original thoughts; my notion of what it is connected to
in the larger work of which it is a part; the text that I was inspired by, and
its citation information.

= How to interact with the "research queue" =

== Search Results ==

If our textons know about embedded ruby, then as I'm writing along, I might want
to see the latest 

== Dipping in to research ==

I'm happily typing away on whatever. A thought occurs to me, such as:

  "Hey, there was that article on, like, how being smarter makes you stupider,
thanks to cognitive bias and pattern recognition. I know I saved that somewhere;
I know that @s7ephen linked to it; I know I haven't really done anything with
it before. 

So I

<% get {'from':'s7ephen', 'has':'smart stupid'} %>

and the note is inserted (if it is a singleton set) or a selection of notes
appear to choose among. Chances are, it's a tweet size of text. Given what I've
got now, it probably has some useless text like "Sent via Seesmic" that I don't
really want to see. And knowing me, chances are good I saved it a couple of times,
and this would be a good time to let the machine know that that set is really
meant to only be one note, so I'd get rid of the extras, for neatness. (This
might be suggested already by the typewriter, since it has expanded the bit.ly
link and noticed that this page has been saved more than once.)

What happens next? The tweet itself might have a texton worth transforming, some
original text I want to create and remember that there's a citation there...
okay, done. It probably has a link, too... I'll want to examine the referred
page, yank out some textons (with their citation information, naturally), and
perhaps transform those. 

Whatever I was writing has been transformed; I might also want to add some
metadata to that research texton while I have it open, a tag or two. Since the
research texton has been examined, I won't want it to appear in my...

== Unexamined Queue ==

If I'm not writing anything in particular, I might want to examine whatever is
in the big ass queue of things I saved while browsing. So I 

:call examine 

and a texton I've never examined pops up. Hm. For this one I want to start the
beginning of a new piece. Something a lot like the previous example happens...
and, I'm done. Next!

:call examine

Oh, right... This is for the 'ratios' chapter/piece/texton/whatever. I will tag
it as such. Don't remind me of this until I'm working on a 'ratios' piece.

== Saved Search, or a Search What Updates ==

Say I've got a piece which is an expository piece about, I dunno, networks. It
is very general, and it could be nice to send the reader off to browse examples
if they which. So at the point that I'm about to transition into a new thought,
I'll put in a 

<%= search {'tag':'networks'} %>

When this scripton is read, it brings up a little list of things you might want
to look at. Perhaps it's got a little bit of css styling, giving it a little
blockquoted "See also:" pizazz.  

Come to think of it, what if I want to do the same, but not necessarily for
notes I already have? Vi Hart's Youtube channel is a known place of awesomeness.
Perhaps

<%= web.search "vi hart graphs" %>

which, if nil, does nothing. 
