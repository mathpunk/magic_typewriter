class Texton < String


  @@sigils = { magic: /{{(.*?)}}/m, 
               instructions: /<<(.*?)\>>/m, 
               journal: /\(\((.*?)\)\)/m, 
               pages: /\[\[(.*?)\]\]/m,
               tags: /\#(\w+)/, 
               paragraphs: /\n\n+/, 
               tears: /^---$/, 
               ideas: /^\*{3,}$/, 
               beats: /\*{2,}/ 
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

  # If there's to be a default "invoke" algorithm...
  @@sigils.each_entry do |name, pattern|
    define_method("invoke_#{name}".to_sym) do 
      puts "Invokus #{name}us!"
    end
  end

  def invoke_journal
    # texton's text, minus journal entries
  end

  def invoke_magic
    # texton's text, with magic replaced by its return value(?). 
  end

  def invoke_pages
    # something useable in a cluster diagram of your pages, maybe.
    # or, yielding to a block
  end

  def invoke_instructions
    # don't forget to add the pattern
    # transform the text's appearance, for Author or Reader
  end


end
