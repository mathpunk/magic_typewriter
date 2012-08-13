THE_LIST_OF_LISTS = ['unreality']

class WordVector < Array
  def multiply 
    # relation = ...the words in the array zipped up into ordered pairs
    # relation is delivered as a maybe, unless there's a true flag I s'pose
    
      in an editable text file
      in an editable web format
      it will probably be called a WordMatrix or WordTable or WordTableaux
    should be blank if no block
  end

  def multiply_for_editing
  end

  def multiply_for_web
  end

  def add 
    # should concatenate the vectors
  end

end


class Relation
  include Mongomapper
end
== The Relation ==

What are they good for? We dunno yet. Abstractly, they're just ordered pairs
that want to point to something. So, they generate hash keys. Who cares? What is
in the value of the keys? Submissions? Clickdata? Writing assignments?
Randomizations? a 'get_from_reader' that accepts a code block? A badge maker? 
require 'mongo' 
require 'mongo_mapper'
require_relative 'texton'

module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "subrosa"
  COLLECTION = "snowdrift"
end

class Textino       # the image of a texton
  include MongoMapper::Document

  key :title, String
  key :fulltext, String
  key :magic, Array
  key :journal, Array
  key :pages, Array

end

class Antitextino < Textino
  # The diff between a new Textino and its previous Textino
end


=begin
simple_textino = Textino.create( {
  title: "Simple testino",
  fulltext: "This is my text. Nothing fancy.",
  magic: [],
  pages: [],
  journal: []
})

simple_textino.save


texton = Texton.new("This is my text. I have {{magic words}}, a ((journal entry)), and [[some pages i wrote]].")

real_textino = Textino.create({
  title: "Complex testino",
  fulltext: texton
})
=end
== The Relation ==

What are they good for? We dunno yet. Abstractly, they're just ordered pairs
that want to point to something. So, they generate hash keys. Who cares? What is
in the value of the keys? Submissions? Clickdata? Writing assignments?
Randomizations? a 'get_from_reader' that accepts a code block? A badge maker? 
