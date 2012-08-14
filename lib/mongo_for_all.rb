require 'mongo'
require 'mongo_mapper'
require_relative 'texton'

# =================================================== 
module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "confusing"
  # COLLECTION = ""
  CORPUS_DIR = "/home/thomas/lab/magic_typewriter/corpus"
end
# =================================================== 

class Textino
  include MongoMapper::Document
  connection Mongo::Connection.new(Configuration::HOST)
  set_database_name Configuration::DATABASE

  # key :text_id, ObjectID
  key :name, String#, :required => true
  key :body, Texton
  key :tags, Array
  # timestamps!
  # key :date, Time
  # many :subtextons
end 

t = Texton.new("fooooooooooooooo")
emitted = Textino.new
emitted.name = "Bologna"
emitted.body = t
emitted.save

all = Textino.all
puts all.inspect
