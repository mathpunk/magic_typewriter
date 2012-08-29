require 'mongo'
require 'mongo_mapper'
require_relative 'texton'
require_relative '../config/config.rb'

class Texton < String

  # Patterns textons know about. This really ought to be factored into
  # configuration. 
  @@sigils = { magic: /{{(.*?)}}/m, 
               instructions: /<<(.*?)\>>/m, 
               journal: /\(\((.*?)\)\)/m, 
               pages: /\[\[(.*?)\]\]/m,
               tags: /\#(\w+)/, 
               paragraphs: /\n\n+/, 
               tears: /^---$/, 
               ideas: /^\*{3,}$/, 
               beats: /\*{2,}/,
             }                                                                        

  # Scan methods
  @@sigils.each_entry do |name, pattern|
    define_method("scan_#{name}".to_sym) do 
      textons = []
      self.scan(pattern) do |items|
      textons += items
    end
    textons
  end
  end

  # Split methods
  @@sigils.each_entry do |name, pattern|
    define_method("split_#{name}".to_sym) do 
      self.split(pattern).collect do |x| 
        x.strip
      end
    end
  end

  # Special methods
  def associations

    # Associations need special handling because they may come in pairs or in
    # chains, and I don't know the regex to handle such a thing. This means we
    # break the 'sigil' pattern, and do a regular method instead of a
    # define_method. 
    #
    # We assume that associations will be alone on their line. 
    # 
    # Later, consider creating a 'jump' method for chains of =>'s, if it's a
    # sigil that you like. 

    associations = []
    self.lines do |line|
      array = line.split(/\s?->\s?/).each {|match| match.strip!} 
      associations << array
    end
    associations
  end

end
