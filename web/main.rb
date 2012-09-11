require 'rubygems'
require 'bundler/setup'

require 'sinatra'

require_relative '../lib/texton'

set :views, settings.root + '/html'


get '/' do
  @all = Texton.all
  @title = "All textons"
  erb :all
end