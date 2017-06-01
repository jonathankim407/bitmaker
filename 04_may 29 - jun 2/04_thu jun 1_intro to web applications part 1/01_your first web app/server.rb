require 'sinatra'

get '/home' do
  erb :index
end
# http://localhost:4567/home

get '/portfolio' do
  erb :gallery
end
# http://localhost:4567/portfolio

get '/about_me' do
  erb :bio
end
# http://localhost:4567/about_me
