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

class LargeTextonCollider
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

@conn = Mongo::Connection.new
@db   = @conn['sample-db']
@coll = @db['test']

@coll.remove
3.times do |i|
    @coll.insert({'a' => i+1})
end

puts "There are #{@coll.count} records. Here they are:"
@coll.find.each { |doc| puts doc.inspect }

class Texton
  include MongoMapper::Document
  key :title, String
  key :body, String
  key :tags, Array
  many :subtextons
  timestamps!
end 

class Subtexton
  include MongoMapper::EmbeddedDocument
  key :cantrip, String
  key :body, String
end

class Corpus

  # get an array of files from the CORPUS
  # every file's filename is a title
  # every file's text is text
  
  def initialize
    @dir = Configuration::CORPUS_DIR 
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


collider = LargeTextonCollider.new

