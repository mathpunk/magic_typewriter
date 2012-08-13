require_relative 'texton'

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
