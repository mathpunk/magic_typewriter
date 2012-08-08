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

