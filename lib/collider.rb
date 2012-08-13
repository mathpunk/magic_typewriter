require 'mongo'

module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "subrosa"
  COLLECTION = "snowdrift"
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
