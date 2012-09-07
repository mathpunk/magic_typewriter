require 'test/unit'
#require 'redgreen'
require 'turn'
require 'yaml'
require_relative '../lib/texton.rb'

=begin A sensible and non-working configuration solution. 
if not File.exists? 'pretend.cfg'
  puts 'Need a config file - see pretend.cfg.sample'
  Process.exit
end
=end

class TestTexton < Test::Unit::TestCase
  def setup
    # @config = YAML.load(open('pretend.cfg'))
    @texton = Texton.new(File.open(File.join(File.expand_path(File.dirname(__FILE__)), "texton.txt")).read())
    @plain_texton = Texton.new("Nothing fancy in here.")
    @paragraph_texton = Texton.new("This is the first paragraph.\n\nThis is the second.")
    @torn_texton = Texton.new("Man this is fun.\n---\nI'm so alone...")
    @dramatic_texton = Texton.new("I have** wait for it** an idea...\n***\n\nYeah, it's gone.")
    @exercise_texton  = Texton.new("Think about this: <<your doom>>.")
    @assoc_pairs_texton = Texton.new("i like -> pants\nsneakers -> shoes")
    @assoc_chains_texton = Texton.new("i like -> pants\nsneakers -> shoes -> apparel")
    @jump_pair_texton = Texton.new("ducks => rabbits")
    @jump_chains_texton = Texton.new("ducks => rabbits => cheese toast")
    @real_magic_texton = Texton.new(File.join(@config["baseDir"], "test", "magic_texton.txt")).read())
  end

  # FUTURE REFACTORING: Do you think it would work to use :define_method on
  # these repetitive test methods? Or does TestCase expect to see them already
  # written, so as to know to run the tests?

  def test_magic
    assert_equal ["please", "thank you"], @texton.magic
    assert_equal ([] or nil), @plain_texton.magic
  end

  def test_journal
    assert_equal ["thoughts", "feelings"], @texton.journal
    assert_equal ([] or nil), @plain_texton.journal
  end

  def test_pages
    assert_equal ["documents", "pages"], @texton.pages 
    assert_equal ([] or nil), @plain_texton.pages
  end

  def test_instructions
    assert_equal ["your doom"], @exercise_texton.instructions
    assert_equal ([] or nil), @plain_texton.instructions
  end

  def test_tags
    text = Texton.new("This has #hashtags in it, such as #foo and #bar.")
    assert_equal ["hashtags", "foo", "bar"], text.tags
  end

  def test_associations
    # associations in pairs
    assert_equal [["i like", "pants"], ["sneakers", "shoes"]], @assoc_pairs_texton.associations
    # associations in chains
    assert_equal [["i like", "pants"], ["sneakers", "shoes", "apparel"]], @assoc_chains_texton.associations
  end

  def test_jumps
    assert_equal [["ducks", "rabbits"]], @jump_pair_texton.jumps
    assert_equal [["ducks", "rabbits", "cheese toast"]], @jump_chains_texton.jumps
  end

  def test_paragraphs
    assert_equal ["This is the first paragraph." ,"This is the second."], @paragraph_texton.paragraphs
  end

  def test_tears
    assert_equal ["Man this is fun.", "I'm so alone..."], @torn_texton.tears
    # test what happens when you give it a block
  end

  def test_ideas
    assert_equal  ["I have** wait for it** an idea...", "Yeah, it's gone."] , @dramatic_texton.ideas
  end

  def test_beats
    assert_equal ["I have", "wait for it", "an idea...", "Yeah, it's gone."], @dramatic_texton.beats
  end

  def test_method_missing  
    hi = Texton.new("hello")
    assert_equal "Hello", hi.capitalize
    assert_equal 5, hi.length
  end
end
