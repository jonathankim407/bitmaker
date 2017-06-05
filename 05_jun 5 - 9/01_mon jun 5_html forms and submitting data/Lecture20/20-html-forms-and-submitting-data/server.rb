require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  @film = Film.find_by(title: params[:title])
  erb :search_results
  # "GET request: #{params}"
end

get '/films/:id' do
  "GET request: #{params}"
end

post '/films' do
  Film.create({title: params[:title], description: params[:description], available: params[:available], rating: params[:rating], country: params[:country]})
  # erb :index #DON'T DO THIS!
  redirect to('/')
  # "POST request: #{params}"
  # GENERAL RULE: get ENDS WITH erb, post ENDS WITH redirect
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  film = Film.find(params[:id])
  film.delete
  redirect to('/')
  # "DELETE request: #{params}"
end
