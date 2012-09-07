magic typewriter
================

Directory structure
--------------------------------------------------- 
* **config**. Things that shouldn't change much once databases and resources are set up. 

* **corpus**.  Test text of some complexity. 

* **grimoire**. Another configuration directory, but this one contains author-defined sigils (meaningful /patterns/) and editor
functions. 

* **lib**. Main codebase. 

* **misc**. Design notes and some LaTeX pdfs I didn't know what to do with. Crosses over a
bit with...

* **spec**. Speculations for future features. 

* **spells**. Associations and keywords. A 'spike' is what you drive through a
corpus in order to search for several things in an ordered fashion. 

* **test**. It has tests in it!

Classes
--------------------------------------------------- 
* **texton**. The texton class reads sigil patterns in from ./grimoire/sigils,
  and uses them to define methods that probe the internal structure of the
  texton. It mixes in MongoMapper::Document, so textons should respond to a
  'save' message. It also delegates messages it does not understand to its
  @body, so that textons will do the expected thing when sent String methods (as
  well as singleton methods named on @body).

* **textino**. _Not implemented._ A 'diff' for a texton.
 
Issues
======
Can't test without an internet connection, because (I suppose) textons want to
make a connection with the database before they start having tests run on them?


Questionable Ideas
=============================

What's a page, anyway? 
----------------------
Dorian Taylor describes writing by alluding to unwritten concepts via
[[wikiword]], and how that leads to an unmanageable workflow. 

But suppose that missing pages complain to the author when they are read (or
rather, failed to be read). Suppose that a page unpacks itself on the successive
paragraph if an only if that page has not been read already; it does not appear
in the scripton-so-far. Suppose that a page throws an exception to the reader
when it fails, one which notifies the reader that there has been failure but
also directs her to the wikipedia page on the topic. Or a picture of a bunny
with a pancake on its head. Remember: throwing exceptions is how machines swear 
(possibly with the Wordnik API helping us create good swears?)

