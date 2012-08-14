require 'mongo'
require 'mongo_mapper'
require_relative 'texton'

# =================================================== 
module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "test-mt"
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

=begin
messages = ["First message", "Second message", "This supports #tags if all's going well.", "Next up: interating through a corpus directory."]
messages.each_with_index do |msg,k|
  message = Texton.new(msg)
  emitted = Textino.new
  emitted.name = "Untitled #{k+1}"
  emitted.body = message
  emitted.tags = message.scan_tags
  emitted.save
end

all = Textino.all
puts all.inspect
=end
