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

get '/contacts/new' do
  erb :new_contact
end
# http://localhost:4567/contacts/new

post '/contacts' do
  Contact.create(
    first_name: params[:first_name],
    last_name:  params[:last_name],
    email:      params[:email],
    note:       params[:note]
  )
  redirect to('/contacts')
end

get '/contacts/:id' do
  # params[:id] contains the id from the URL
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end
# http://localhost:4567/contacts/:id

after do
  ActiveRecord::Base.connection.close
end
