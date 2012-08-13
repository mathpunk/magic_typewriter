# Sends and retrieves Textinos from the database. 
#
# require_relative 'texton' 
#

# improving Texton without testing -- so bad! 
class Texton < String

  # double-bracket spells: toil and trouble
  rubble = { 
    magic: /{{(.*?)}}/m, 
    journal: /\(\((.*?)\)\)/m, 
    links: /\[\[(.*?)\]\]/m,
  }

  # splitting spells: splitting the atom and eve
  sleeve = {  
    pages: /^---$/,
    ideas: /^***$/,
    beats: /**/
  }
  
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

# Remember, a texton is just a string, with some methods added. Oh, and exposed
# to horrible radiation experiments. 

class Collider
  # given all-the-textons
  # takes each texton 
    # splits its pages
    # records any chainings (are they just like links? why not?)
    # generates its invocations 
    # and assigns them to fields
    # finally, it sends an update request to Mongo_mapper
  #
end



