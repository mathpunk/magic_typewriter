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
