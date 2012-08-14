=begin Speculative
class Subtexton
  include MongoMapper::EmbeddedDocument
  key :cantrip, String
  key :body, String
end

The idea with this was that perhaps it will be a good idea to explode compound textons, pulverizing
all of them.
=end

=begin Nonsense
class LargeTextonCollider
  def initialize
    @conn = Mongo::Connection.new(Configuration::HOST, Configuration::PORT)
    @db   = @conn[Configuration::DATABASE]
    @coll = @db[Configuration::COLLECTION]
    @local = Configuration::CORPUS_DIR
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
=end
