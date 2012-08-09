require 'mongo'

module Configuration
  HOST = "wry.23q.org"
  PORT = 27017
  DATABASE = "subrosa"
  COLLECTION = "snowdrift"
end

@conn = Mongo::Connection.new(Configuration::HOST, Configuration::PORT)
@db   = @conn[Configuration::DATABASE]
@coll = @db[Configuration::COLLECTION]

# Inserts a record. 
@coll.insert({description: "ran collider.rb", time: Time.now})

# Retrieves some things
puts "There are #{@coll.count} records. Here they are:"
@coll.find.each { |doc| puts doc.inspect }
