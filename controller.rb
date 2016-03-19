require 'sinatra'
require './models/coach'

#display a list of all coaches
get '/' do
  #@ expands the scope of a variable
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new
end

#show info for one coach
#colon creates a placeholder
get '/coaches/:id' do
  #implicitly defined local variable called params
  #that contains info about the request
  p params
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  #form data is available in params
  coach = Coach.create(params[:new_coach_name])

  redirect '/'
end

# get '/search'
#query string
# https://www.yelp.com/search?find_desc=tacos&find_loc=San+Francisco,+CA&start=0&attrs=RestaurantsPriceRange2.1&open_now=8137


# & separate key/value pairs, = connects a key with a value

#ianmthorp@gmail.com
