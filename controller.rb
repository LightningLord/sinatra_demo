require 'sinatra'
require './models/coach'


get '/' do
  #@ means expanded scope (to the view)
  @coaches = Coach.all
  #erb method renders a view (takes a filename)
  erb :index
end


get '/coaches/new' do
  p "new route"
  erb :new
end

get '/coaches/:id' do
  p "show route"
  #colon- indicates placeholder, id becomes the key, value comes from the browser
  p params #implicitly defined variable that exists in every route, hash, contains info about the request
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  p params
  Coach.create(params[:new_coach_name])
  redirect '/'
end

post '/search' do
  # business logic

  redirect "/search_results?find_desc=#{params[:find_desc]}"
end

#query string- after the question mark in a url

#https://www.yelp.com/search?find_desc=tacos&find_loc=633+folsom+street&start=0&attrs=RestaurantsPriceRange2.1

#{find_desc: 'tacos', find_loc: '633 folsom street', start: '0', attrs: 'RestaurantsPriceRange2.1'}

#aaron1515@gmail.com
