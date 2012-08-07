# Textons created by opening up String. Because monkeys are rad. 

class String

  page_pattern = /[[(.*)]]/m
  journal_pattern = /\(\((.*)\)\)/m

  def magic
    magic_pattern = /{{(.*)}}/m
    self =~ magic_pattern
    [$1]
  end

  def pages
  end

  def journal
  end

end



=begin
def double_bracket(pattern)
  # self?
  # find the pattern
  # append the group to the return array
  # re-iterate on what's left in the string
end  
=end
