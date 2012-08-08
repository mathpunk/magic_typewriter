# Textons created by opening up String. Because monkeys are rad. 

class String

  # With more metaprogramming and less repetition, it might look like this:
  #
#def double_bracket(pattern)
  # What, who am I? : self == ?
  # create return array
  # find the pattern
  # ...nongreedily? 
  # append the group to the return array
  # re-iterate on what's left in the string
#end  

  @@magic_pattern = /{{(.*?)}}/m
  @@page_pattern = /[[(.*)]]/m
  @@journal_pattern = /\(\((.*)\)\)/m

  #@attributes = Struct.new

  def double_bracket(name, pattern)
    # pattern = @@#{name}_pattern     # except not wrong
    # textons = []
    # self =~ pattern
    # textons << $1
    # # make new string that lacks the first group
    # # call doublebracket on it
    # @attributes << {#{name} : textons }
  end

  def magic
    self =~ @@magic_pattern
    [$1]
  end

  def pages
    self =~ @@page_pattern
    [$1]
  end

  def journal
    self =~ @@journal_pattern
    [$1]
  end


end



=begin

= Double Bracket Patterns =
So anyway, back to double bracket patterns. Consider this:

<<"primitive".defn("A primitive is a tiniest bit of learning. For example, the
objects for the magic typewriter are complex: textons, databases, and the like.
But Strings and Kernels are something that you can do things with. They are
primitives.")>>

The String "primitive" has been asked to do "defn" to "A primitive is a...". If
there is no such function defined, then "defn" is a property of the texton
entitled "primitive", and its value is "A primitive is a...".

class String
  def method_missing
    if any textons have the name (self)
      then add methodname as a property of the texton self
    else
    end
  end
end
=end

