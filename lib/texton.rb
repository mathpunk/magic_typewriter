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
    # puts "Using method missing on \"#{method_name}\""
    message = method_name.to_s.split('_')
    method = message.shift
    sigil = message.shift
    # puts "Split missing method into \"#{method}\", \"#{sigil}\""

    # scans are working, splits aren't -- I'm intercepting split calls to run
    # a variant algorithm. 

    results = []
    if method == "split"
      self.split_variant method, sigil
    else
      self.send(method.to_sym, @@sigils[sigil.to_sym]) do |found|
        results += found
      end
      results
    end
  end

  def split_variant method, sigil
    # puts "Calling split variant:\n\n\t method: \"#{method}\", sigil: \"#{sigil}\""
    pattern = @@sigils[sigil.to_sym]
    # puts "The pattern is #{pattern}"
    self.send(method.to_sym, pattern).collect {|x| x.strip}
  end
end

