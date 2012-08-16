# ALL COPIED TO TEXTON - REPLACE WITH VERSION CONTROL CODE
require 'mongo'
require 'mongo_mapper'
require_relative 'texton'

# =================================================== 
module Configuration
  HOST = "wry.23q.org"
  DATABASE = "test-mt"
  CORPUS = "/home/thomas/lab/magic_typewriter/corpus"
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

class Accelerator
  @@dir = Configuration::CORPUS

  def welcome
    messages = ["First message", "Second message", 
                "This supports #tags if all's going well.",
                "Stand by..."] 

    messages.each_with_index do |msg,k|
      message = Texton.new(msg)
      emitted = Textino.new
      emitted.name = "Untitled #{k+1}"
      emitted.body = message
      emitted.tags = message.scan_tags
      emitted.save
    end
  end

  def accelerate_file(filename)
    textino = Textino.new
    textino.name = filename
    textino.body = Texton.new(File.open(filename).read)
    textino.save
  end

  def accelerate_dir(dir=@@dir)
    Dir[dir+"/*.wiki"].each do |file|
      self.accelerate_file file
    end
  end
end

# Populating a new database...
# accelerator = Accelerator.new
# accelerator.welcome
# accelerator.accelerate_dir

class Reader; end
