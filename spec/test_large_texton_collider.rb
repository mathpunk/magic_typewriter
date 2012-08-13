require 'test/unit'
require 'redgreen'
require_relative '../lib/textino.rb'

class TestTextino < Test::Unit::TestCase
  def setup
    @texton = Texton.new(File.open("test/texton.txt").read())
  end

  def test_create
    textino = Textino.create({
      title: "simple textino",
      fulltext: "a simple textino, without all the frou-frou"
    })
  end
end
