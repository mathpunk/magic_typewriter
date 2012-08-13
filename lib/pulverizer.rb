require_relative 'texton' 

class Pulverizer
  attr_reader :magic, :journal, :pages

  # Given a filename, pulverizer opens it into a string, and rips it into any
  # subtextons it may contain. 
  #
  # This all works. But it seems like it's not solving any problems. 
  
  def initialize(filename)
    @filename = filename
    @string = File.open(filename).read()
    @texton = Texton.new(@string)
    @magic = @texton.invoke_magic
    @journal = @texton.invoke_journal
    @pages = @texton.invoke_pages
  end
end
