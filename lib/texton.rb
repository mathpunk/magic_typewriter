class String
  def fulltext
    self
  end
end

class Texton < String

  rubble = {magic: /{{(.*?)}}/m, journal: /\(\((.*?)\)\)/m, pages: /\[\[(.*?)\]\]/m }

  rubble.each_entry do |cantrip, incantation|
    define_method("invoke_#{cantrip}".to_sym) do 
      textons = []
      self.scan(incantation) do |words|
        textons += words
      end
    textons
    end
  end
end

# Po the cantrips have a name, a pattern, and the symbol :split or :scan.
# Po cantrips take a code block to decide what to do with their information
# e.g., 
#   {{ paragraph.each {|p| bold p} }}

text = Texton.new("This is a paragraph with no hashtags.

This is a paragraph with #one hashtag. 

This is a #paragraph with #two hashtags. 

This has #two hashtags #too.")

class Texton
  def hashes
    hashtag = /\#([^\s]+)/
    self.scan hashtag
  end

  def paragraphs
    paragraph = "\n\n" 
    self.split paragraph
  end
end
