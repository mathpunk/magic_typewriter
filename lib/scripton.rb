# Stub methods. I'm not entirely clear what a scripton 'is'. 
# It should
#   respond to texton methods, acting all enumerator-like;
#   respond to searches or queries, perhaps by sorting by a block given;
#   be editable into a new texton maybe? 

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

  def search &block
    Scripton.new(@textons.sort &block)
  end
end
