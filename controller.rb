require 'sinatra'
require './models/coach'

#route
#show a list of all dbc coaches
get '/' do
  #@ variables have expanded scope (includes the view)
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new
end

#REST
#colon- placeholder, id becomes the key
get '/coaches/:id' do
  #params- implicitly defined local variable, exists in every route (hash)
  p params
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  p params
  coach = Coach.create(params[:new_coach_name])
  redirect '/'
end

# "find_desc=tacos&find_loc=mountain+view,+ca&start=0&attrs=RestaurantsPriceRange2.1&open_now=8070"
# get '/search' do
#   {"find_desc" => "tacos", "open_now" => "8070", }
# params["find_desc"]
# end

#rochej@gmail.com
