require 'mongo'
require 'mongo_mapper'
require_relative 'texton'
require_relative '../config/config.rb'

class Texton < String

  # Patterns textons know about
  @@sigils = { magic: /{{(.*?)}}/m, 
               instructions: /<<(.*?)\>>/m, 
               journal: /\(\((.*?)\)\)/m, 
               pages: /\[\[(.*?)\]\]/m,
               tags: /\#(\w+)/, 
               paragraphs: /\n\n+/, 
               tears: /^---$/, 
               ideas: /^\*{3,}$/, 
               beats: /\*{2,}/,
               associations: /(.*)? -> (.*)?$/
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

  # Special handling
  def scan_associations
    associations = []
    pattern = @@sigils[:associations]
    associations += self.scan(pattern)
  end

  # Transmute methods
  #   These look like maybe they could be done using one of the methods above,
  #   but yielding to a block to work with. 

  def transmute_journal
    # the texton's text, minus journal entries
  end

  def transmute_magic
    # the texton's text, with magic replaced by its return value(?). 
    # WARNING: Can this result in dangerous stupidity?
  end

  def transmute_instructions
    # the texton's text, with instructions appearing, but transformed;
    # perhaps with the right editing, the Author can clear it for transmission to Readers
  end

  # Invoke methods
  def invoke_pages
    # something useable in a cluster diagram of your pages, maybe.
  end
end
