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

module Config
  HOST = "wry.23q.org"
  PORT = 27017
  COLLECTION = "snow"
end

module Mongoing
end
