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

class Accelerator
  @@dir = Configuration::CORPUS

  def welcome
    messages = ["First message", "Second message", 
                "This supports #tags if all's going well.",
                "Stand by..."] 

    messages.each_with_index do |msg,k|
      message = Texton.new(msg, "Untitled #{k+1}")
      message.save
    end
  end

  def accelerate_file(filename)
    texton = Texton.new(File.open(filename).read, filename)
    texton.save
  end

  def accelerate_dir(dir=@@dir)
    Dir[dir+"/*.wiki"].each do |file|
      self.accelerate_file file
    end
  end
end

# Populating a new database...
accelerator = Accelerator.new
accelerator.welcome
accelerator.accelerate_dir
