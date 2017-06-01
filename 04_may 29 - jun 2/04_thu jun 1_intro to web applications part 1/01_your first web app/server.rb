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
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end
# http://localhost:4567/about_me

get '/favourites' do
  @fav_links = ['http://www.google.ca', 'http://www.nba.com', 'http://www.realgm.com', 'http://www.youtube.com', 'http://www.wimp.com']
  erb :favourites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
