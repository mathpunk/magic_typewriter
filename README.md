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
