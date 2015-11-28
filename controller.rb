require 'sinatra'
require './models/coach'

get '/' do
  #@syntax- expanded scope to include view
  @coaches = Coach.all
  #render a file with this name
  erb :index
end

get '/coaches/new' do
  erb :new
end

get '/coaches/:id' do
  #params- variable contains info about the HTTP request, implicitly defined, exists in every route, hash
  #:id becomes a key, value comes from the browser
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  #form data is accessed via params
  Coach.create(params[:new_coach_name])
  redirect '/'
end

#notes on query string
# http://www.yelp.com/search?find_desc=tacos&find_loc=mountain+view&ns=1
# query string
# GET requests

# {:find_desc => "tacos", :find_loc=>"mountain+view", :ns => 1}

# http://www.yelp.com/search?find_desc=tacos&find_loc=mountain+view&start=0&attrs=RestaurantsPriceRange2.1&open_now=8145


