require 'test/unit'
require 'redgreen'
require_relative '../lib/pulverizer.rb'


class TestPulverizer < Test::Unit::TestCase
  def setup
    @testfile = "test/texton.txt"
    @pulverizer = Pulverizer.new(@testfile)
  end

  def test_magic
    assert_equal ["please", "thank you"], @pulverizer.magic
  end

  def test_journal
    assert_equal ["thoughts", "feelings"], @pulverizer.journal 
  end

  def test_pages
    assert_equal ["documents", "pages"], @pulverizer.pages
  end

end
