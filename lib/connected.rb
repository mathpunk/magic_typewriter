require 'mongo'
require 'mongo_mapper'
require_relative 'texton'

# =================================================== 
module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "mm_testing"
  COLLECTION = "newthings"
  CORPUS_DIR = "/home/thomas/lab/magic_typewriter/corpus"
end
# =================================================== 

MongoMapper.connection = Mongo::Connection.new(Configuration::HOST)
MongoMapper.database = Configuration::DATABASE
# MongoMapper.collection = Configuration::COLLECTION

class Textino
  include MongoMapper::Document
  # key :text_id, ObjectID
  key :name, String
  key :body, Texton
  key :tags, Array
  timestamps!
  # many :subtextons
end 

class Collider
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

t = Texton.new("Let's do this\n---\n\nuh huh\n---\n\nall right")
a = t.split_tears
a.each do |line|
  t = Textino.new
  t.body = line
end
Textino.all


