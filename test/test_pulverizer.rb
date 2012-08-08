require 'test/unit'
require 'redgreen'
require_relative '../lib/pulverizer.rb'

class TestPulverizer < Test::Unit::TestCase

  def test_magic
    assert_equal ["please"], "The magic word is {{please}}.".magic
    assert_equal ["please", "thank you"], "The magic words are {{please}} and {{thank you}}.".magic
  end

  def test_journal
    assert_equal ["thought"], "Hmmm... I had a ((thought)).".journal
    assert_equal ["thoughts", "feelings"], "I'm having ((thoughts)) and ((feelings)).".journal
  end

  def test_pages
    assert_equal ["page"], "This [[page]] intentionally left blank.".pages
    assert_equal ["documents", "pages"], "Read these [[documents]] and [[pages]].".pages 
  end

end
