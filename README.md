magic typewriter
================

Directory structure
--------------------------------------------------- 
* config
Things that shouldn't change much once databases and resources are set up. 

* corpus
Test text of some complexity. 

* grimoire
Another configuration directory, but this one contains author-defined sigils (meaningful /patterns/) and editor
functions. 

* lib
Main codebase. 

* misc
Design notes and some LaTeX pdfs I didn't know what to do with. Crosses over a
bit with...

* spec
Speculations for future features. 

* spells
Associations and keywords. A 'spike' is what you drive through a
corpus in order to search for several things in an ordered fashion. 

* test
It has tests in it!

Issues
=================================================== 
* Textons and ill-named textinos
Textons ought to know about MongoDB, but as soon as I added the line to include
MongoMapper::Document, tests started failing. Is it the way the textons in
test_texton.rb are constructed? 
