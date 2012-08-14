require 'mongo'
require 'mongo_mapper'
require_relative 'texton'

# =================================================== 
module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "delete_meh"
  COLLECTION = "textino2"
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

some_text = Texton.new("Let's do this\n---\n\nuh huh\n---\n\nall right").split_tears.each_with_index do |line, k|
# array = some_text.split_tears
# a.each do |line|
  signal = Textino.new
  # signal.name = "number #{k}"
  signal.name = "this textino"
  signal.body = line
  signal.save
end

all_textinos = Textino.all
puts all_textinos.map { |object| object.name }.inspect

