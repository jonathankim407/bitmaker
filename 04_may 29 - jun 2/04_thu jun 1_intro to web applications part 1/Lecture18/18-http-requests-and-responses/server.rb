require 'sinatra'

# ROUTE = combo of verb and url
# get '/hello'
# get '/goodbye'

get '/' do
  redirect to('/hello')
end
# http://localhost:4567/

get '/hello' do
  # send_file('views/hello.html')

  @title = 'My Awesome Page'
  @current_time = Time.now
# MUST MAKE THESE INSTANCE VARIABLES OR ELSE IT WON'T WORK, CAN'T JUST WRITE title OR current_time
  @todo = [
    'Water the plants',
    'Eat breakfast',
    'Exercise'
  ]

  erb(:hello)
end

# http://localhost:4567/hello

get '/goodbye' do
  'Goodbye Dave!'
end

# http://localhost:4567/goodbye

# 3 ROUTES, 2 PAGES SO FAR

get '/goodbye' do
  'TREE NO FOREST'
end

# top one wins, TREE NO FOREST never makes it, only Goodbye Dave!
