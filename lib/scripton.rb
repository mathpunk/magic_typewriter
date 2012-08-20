# UHHHHHHHHHHHHHHHHHH
=begin

What's the idea here? There's all these textons... somewhere... They get
searched, and the result is a scripton, which can be searched just like the
original set of textons. So are you saying that the db is itself a Scripton? By
the ordering of the _ids?


=end


class Query
end

class Scripton
  attr_reader :textons

  def initialize(array_of_textons)
    @textons = array_of_textons
  end

  def edit
    # collapse @textons into a string or temp file
    # open the temp file in vim
    # on saving, the string is a new texton, which knows what textons it came
    # out of. 
    @textons.inject(Texton.new(""), :+) do |accumulator, texton|
      # texton + Texton.(" ")
      # texton + " "
      # texton = texton + " "
      texton = texton + Texton.new(" ")
    end

  end

  def query &block
    Scripton.new(@textons.sort &block)
  end

end
