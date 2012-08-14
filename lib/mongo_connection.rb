# mongo_connection.rb
require 'mongo_mapper'
require 'yaml'
BASE = "/home/thomas/lab/magic_typewriter/"
db_config = YAML::load(File.read( BASE+"database.yml"))

begin
  if db_config['mongodb']
    config = db_config['mongodb']

    MongoMapper.connection = Mongo::Connection.new(config['hostname'], config['port'])
    MongoMapper.database = config['database']
    if config['authenticate'] == true
      MongoMapper.database.authenticate(config['username'], config['password'])
    end
  end
rescue => e
  puts "ERROR: Could not connect to MongoDB or read config: #{e}"
  exit
end
