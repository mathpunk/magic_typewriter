class Texton < String


  @@sigils = { magic: /{{(.*?)}}/m, 
               journal: /\(\((.*?)\)\)/m, 
               pages: /\[\[(.*?)\]\]/m,
               tags: /\#(\w+)/, 
               paragraphs: /\n\n+/, 
               tears: /^---$/, 
               ideas: /^\*{3,}$/, 
               beats: /\*{2,}/ 
             }                                                                        
  def method_missing (method_name, &block)
    message = method_name.to_s.split('_')
    method = message.shift
    # This method expects only one sigil word; it could be improved with an
    # iterator 
    sigil = message.shift
    self.send(method.to_sym, @@sigils[sigil.to_sym], &block)
  end

end

text = Texton.new("This is a thing **that has a #tag in it **but also [[a page of some kind]]. 
                  
                  And then, a paragraph.")
puts text.scan_pages
puts text.scan_tags
puts text.split_paragraphs
