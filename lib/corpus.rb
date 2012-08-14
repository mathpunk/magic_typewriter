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

