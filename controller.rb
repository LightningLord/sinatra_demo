require 'sinatra'
require './models/coach'

#display a list of dbc coaches
get '/' do
  #expanded scope to include the view
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  p 'new coaches'
  erb :new
end

#colon- indicates a placeholder, becomes a key in the params hash
get '/coaches/:id' do
  p 'coaches show'
  #params- implicitly defined local variable for each HTTP request, hash
  p params
  #value- from url
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  p "posting"
  #form data is added to params hash
  Coach.create(params[:new_coach_name])
  redirect '/'
end


# ?key=value&key1=value1



#http://www.yelp.com/search?find_desc=tacos&find_loc=3400+stevenson+blvd%2C+Fremont%2C+CA&ns=1

# http://www.yelp.com/search?find_desc=tacos&find_loc=3400+stevenson+blvd,+Fremont,+CA&start=0&attrs=RestaurantsPriceRange2.1&open_now=9458

#shaun@shaunsweet.com

