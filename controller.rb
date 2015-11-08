require 'sinatra'
require './models/coach'
get '/' do
  p params
  #scope of this @ variable is expanded
  #available to the view
  @coaches = Coach.all
  #erb- render the file with name index
  #erb- embedded ruby
  erb :index
end

get '/coaches/new' do
  erb :new
end

#colon makes this a placeholder
get '/coaches/:id' do
  #params- automatically initialized local variable in the controller
  #ruby hash
  #the data from the url in the browser becomes a value in the params hash
  #the data from the path (line 13) becomes a key in the params hash
  p params
  @coach = Coach.find(params[:id])
  erb :show
end

#http verbs/db interactions
#params
#redirect
post '/coaches' do
  p params
  #form data is available in params
  #key- name attribute of input tag
  #value- whatever user entered
  Coach.create(params[:new_coach_name])
  redirect '/'
end

#query_string notes
# http://www.yelp.com/search?find_desc=tacos&find_loc=cupertino,+ca&start=0&attrs=RestaurantsPriceRange2.1&open_now=9539

# query_string

# query format

# set of key/value pairs written in a particular format

# get '/search' do
#   params['find_desc'] #tacos
#   params['find_loc'] #cupertino,+ca
# end

