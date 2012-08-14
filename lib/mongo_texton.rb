require 'mongo'
require 'mongo_mapper'
require_relative 'texton'

# =================================================== 
module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "testing"
  COLLECTION = "textons"
  CORPUS_DIR = "/home/thomas/lab/magic_typewriter/corpus"
end
# =================================================== 

# Textons and Textinos?
# Documents and Connectors?
# What's the pattern here?

class MongoTexton < Texton
  include MongoMapper::Document
  
  key :title, String
  key :fulltext, String
  key :tags, Array
end 

class Corpus
  @@dir = Configuration::CORPUS_DIR 

  def initialize
  # get an array of files from the CORPUS
  # every file's filename is a title
  # every file's text is text
  end
end

class Mapper
  def initialize
    @conn = Mongo::Connection.new(Configuration::HOST, Configuration::PORT)
    @db   = @conn[Configuration::DATABASE]
    @coll = @db[Configuration::COLLECTION]
  end

  def add_record(thing)
    @coll.insert(thing)
  end

  def all_records
    puts "There are #{@coll.count} records. Here they are:"
    @coll.find.each { |doc| puts doc.inspect }
  end
end

teston = MongoTexton.new
teston.title = "foo"
teston.text = "text text #text ((thoughtful text)) text"
