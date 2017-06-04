require_relative 'contact'
require 'sinatra'

get '/' do
  erb :index
end
# http://localhost:4567/

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end
# http://localhost:4567/contacts

get '/about' do
  erb :about
end
# http://localhost:4567/about

after do
  ActiveRecord::Base.connection.close
end
