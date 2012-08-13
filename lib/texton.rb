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

    # Things that don't work:
    # --------------------------------------------------- 
    # self.send(method.to_sym, @@sigils[sigil.to_sym], &block)
    # It is the closest to working, but it gives an array of arrays instead of
    # an array.
    # 
    # self.send(method.to_sym, @@sigils[sigil.to_sym], &block).flatten
    # --> flatten is somehow a method missing, in THIS class. Which I guess
    # means that I'm not sending the message to an array -- which means,
    # perhaps, I'm misunderstanding a binding/sending/ordering problem. 
    #
    # results = []
    # self.send(method.to_sym, @@sigils[sigil.to_sym], &block) do |found|
    #   results += found
    # end

    results = []
    self.send(method.to_sym, @@sigils[sigil.to_sym]) do |found|
      results += found
    end
    results

  end

end

text = Texton.new("This is a thing **that has a #tag in it **but also [[a page of some kind]]. 
                  
                  And then, a paragraph.")
puts text.scan_pages
puts text.scan_tags
puts text.split_paragraphs
