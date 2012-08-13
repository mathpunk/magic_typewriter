require 'test/unit'
require 'redgreen'
require_relative '../lib/texton.rb'
BASE = "/home/thomas/lab/magic_typewriter/"

class TestTexton < Test::Unit::TestCase
  def setup
    @texton = Texton.new(File.open(BASE+"test/texton.txt").read())
    @plain_texton = "Nothing fancy in here."
  end

  def test_scan_magic
    assert_equal ["please", "thank you"], @texton.scan_magic
    assert_equal ([] or nil), @plain_texton.scan_magic
  end

  def test_scan_journal
    assert_equal ["thoughts", "feelings"], @texton.scan_journal
    assert_equal ([] or nil), @plain_texton.scan_magic
  end

  def test_scan_pages
    assert_equal ["documents", "pages"], @texton.scan_pages 
    assert_equal ([] or nil), @plain_texton.scan_magic
  end

  def test_split_paragraphs
    text = Texton.new("This is the first paragraph.

This is the second.")
    assert_equal ["This is the first paragraph." ,"This is the second."], text.split_paragraphs
  end

  def test_scan_tags
    text = Texton.new("This has #hashtags in it, such as #foo and #bar.")
    assert_equal ["hashtags", "foo", "bar"], text.scan_tags
  end

end

