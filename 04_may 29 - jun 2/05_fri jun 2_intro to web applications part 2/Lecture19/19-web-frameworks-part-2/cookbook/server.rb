require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact_us' do
  erb :contact_us
end

get '/blog' do
  erb :blog
end

get '/recipes' do
# MAKE SURE ITS AN INSTANCE VARIABLE OR ELSE VIEWS WONT SEE IT
  # @recipes = [
  #   ['BBQ Ribs', '/recipes/bbq-ribs'],
  #   ['Avocado Sushi', '/recipes/avocado-sushi'],
  #   ['Gluten Free Pancakes', '/recipes/gluten-free-pancakes']
  # ]

  @recipes = Recipe.all

  erb(:recipes)
end

# WILD CARD
get '/recipes/:id' do
  # params[:id] # PARAMS IS A HASH

  #1. Retrieve the recipe from the DB
  @recipe = Recipe.find(params[:id])
  #2. Render a recipe page
  erb :recipe
end

# get '/recipes/bbq-ribs' do
#   'BBQ Ribs Recipe'
# end
#
# get '/recipes/avocado-sushi' do
#   'Avocado Sushi'
# end
#
# get '/recipes/gluten-free-pancakes' do
#   'Gluten Free Pancakes'
# end
