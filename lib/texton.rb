require 'mongo'
require 'mongo_mapper'
require_relative '../config/config.rb'
require 'yaml'

class Texton 

  include MongoMapper::Document
  connection Mongo::Connection.new(Configuration::HOST)
  set_database_name Configuration::DATABASE

  # key :text_id, ObjectID
  key :body, String, :required => true
  key :name, String

  timestamps!             # Are both these lines necessary?
  key :date, Time         
  # many :subtextons      # Neat that you can do 'many' but not sure this
                          # belongs in our schema. 
  # key :tags, Array      # I'm guessing we'll want tags/keywords saved for
                          # search purposes. 

  def initialize(string, name="")
    @body = string
    @name = name
  end

  # Idea: Factor out the sigil hash into ../grimoire/sigils, with the user saying whether they're 
  # split, scan, or chain patterns. 

  @@sigils = YAML.load(open('grimoire/sigils'))

  @@sigils = { magic: /{{(.*?)}}/m, 
               instructions: /<<(.*?)\>>/m, 
               journal: /\(\((.*?)\)\)/m, 
               pages: /\[\[(.*?)\]\]/m,
               tags: /\#(\w+)/, 
               paragraphs: /\n\n+/, 
               tears: /^---$/, 
               ideas: /^\*{3,}$/, 
               beats: /\*{2,}/,
               associations: /\s?->\s?/,
               jumps: /\s?=>\s?/
             }                                                                        

  # Scan methods
  @@sigils.each_entry do |name, pattern|
    define_method("scan_#{name}".to_sym) do 
      textons = []
      @body.scan(pattern) do |items|
      textons += items
    end
    textons
  end
  end

  # Split methods
  @@sigils.each_entry do |name, pattern|
    define_method("split_#{name}".to_sym) do 
      @body.split(pattern).collect do |x| 
        x.strip
      end
    end
  end

  # Chain methods
  @@sigils.each_entry do |name, pattern|
    define_method("chain_#{name}".to_sym) do 
      results = []
      @body.lines do |line|
        results << line.split(pattern).each {|match| match.strip!}
      end
      results
    end
  end

  # Missing methods are sent to @body; presumably they are String or singleton
  # messages. 
  def method_missing(message, *args)
    if @body.respond_to?(message)
      return @body.send(message, *args) 
    else
      raise "Method #{message} missing in both #{self.inspect} and #{@body.inspect}"
    end
  end

end
