require 'test/unit'
require 'redgreen'
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
    @config = { "baseDir" => "/home/thomas/lab/magic_typewriter" }
    @texton = Texton.new(File.open(File.join(@config["baseDir"], "test", "texton.txt")).read())
    @plain_texton = Texton.new("Nothing fancy in here.")
    @paragraph_texton = Texton.new("This is the first paragraph.\n\nThis is the second.")
    @torn_texton = Texton.new("Man this is fun.\n---\nI'm so alone...")
    @dramatic_texton = Texton.new("I have** wait for it** an idea...\n***\n\nYeah, it's gone.")
    @exercise_texton  = Texton.new("Think about this: <<your doom>>.")
    @assoc_pairs_texton = Texton.new("i like -> pants\nsneakers -> shoes")
    @assoc_chains_texton = Texton.new("i like -> pants\nsneakers -> shoes -> apparel")
  end

  # FUTURE REFACTORING: Do you think it would work to use :define_method on
  # these repetitive test methods? Or does TestCase expect to see them already
  # written, so as to know to run the tests?

  def test_scan_magic
    assert_equal ["please", "thank you"], @texton.scan_magic
    assert_equal ([] or nil), @plain_texton.scan_magic
  end

  def test_scan_journal
    assert_equal ["thoughts", "feelings"], @texton.scan_journal
    assert_equal ([] or nil), @plain_texton.scan_journal
  end

  def test_scan_pages
    assert_equal ["documents", "pages"], @texton.scan_pages 
    assert_equal ([] or nil), @plain_texton.scan_pages
  end

  def test_scan_instructions
    assert_equal ["your doom"], @exercise_texton.scan_instructions
    assert_equal ([] or nil), @plain_texton.scan_instructions
  end

  def test_scan_tags
    text = Texton.new("This has #hashtags in it, such as #foo and #bar.")
    assert_equal ["hashtags", "foo", "bar"], text.scan_tags
  end

  def test_scan_associations
    # associations in pairs
    assert_equal [["i like", "pants"], ["sneakers", "shoes"]], @assoc_pairs_texton.scan_associations
    # associations in chains
    assert_equal [["i like", "pants"], ["sneakers", "shoes", "apparel"]], @assoc_chains_texton.scan_associations
  end

  def test_split_paragraphs
    assert_equal ["This is the first paragraph." ,"This is the second."], @paragraph_texton.split_paragraphs
  end

  def test_split_tears
    assert_equal ["Man this is fun.", "I'm so alone..."], @torn_texton.split_tears
    # test what happens when you give it a block
  end

  def test_split_ideas
    assert_equal  ["I have** wait for it** an idea...", "Yeah, it's gone."] , @dramatic_texton.split_ideas
  end

  def test_split_beats
    assert_equal ["I have", "wait for it", "an idea...", "Yeah, it's gone."], @dramatic_texton.split_beats
  end
end
