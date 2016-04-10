require 'sinatra'
require './models/coach'


get '/' do
  #expanded scope
  p params
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new
end

#show info for one coach
#colon means this becomes a placeholder
#names the key
get '/coaches/:id' do
  #params- implicitly defined local variable
  #for every route. contains information from the HTTP request
  p params
  @coach = Coach.find(params[:id]) #hannah
  erb :show
end

post '/coaches' do
  #form data goes to params
  p params
  Coach.create(params[:new_coach_name])
  redirect '/'
end


#query string
#find_desc=tacos&find_loc=Fremont,+CA&start=0&attrs=RestaurantsPriceRange2.1&open_now=8261
