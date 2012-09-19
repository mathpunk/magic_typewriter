require 'rubygems'
require 'bundler/setup'
require 'mongo'
require 'sinatra'
require 'json'

@@mongoconn = Mongo::Connection.new '208.111.39.248'
@@db = @@mongoconn['sinatratest']
@@coll = @@db['testing']

require_relative '../lib/texton'

set :views, settings.root + '/html'


get '/' do
  @all = Texton.all
  @title = "All textons"
  erb :all
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

post '/new' do 
  o = JSON.parse(params[:content])
  @@coll.insert(o)
  "You said what? #{params[:content]}\n\nOkay"
end

get '/old' do
  r = []
  @@coll.find.each { |doc| r.append(doc.inspect)}
  r.join('\n')
end
