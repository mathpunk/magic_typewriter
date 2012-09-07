require 'rubygems'
require 'bundler/setup'

require 'sinatra'

require '../lib/texton'

get '/' do
  "o hai"
end