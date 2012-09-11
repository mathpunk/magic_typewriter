require_relative '../web/main'
require 'test/unit'
require 'rack/test'
require 'turn'

ENV['RACK_ENV'] = 'test'

class MagicTyWebTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_lists_textons
    get '/'
    assert last_response.ok?
    assert last_response.body.include? 'All textons'
  end
  
  #def test_it_says_hello_to_a_person
  #  get '/', :name => 'Simon'
  #  assert last_response.body.include?('Simon')
  #end
end