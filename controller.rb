require 'sinatra'
require 'shotgun'
require './models/coach'

get '/' do
  #this syntax changes the scope of the variable
  #this variable is now available to the view
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new
end

#this is a RESTful route
get '/coaches/:id' do
  #the colon syntax means that 'id' becomes a placeholder
  #for what the user types in the browser

  #params- implicitly defined local variable
  #hash, contains information from the browser
  #the string after the colon in the code becomes a key
  #in params, the value is whatever the user typed in
  #that spot
  p params
  @coach = Coach.find(params[:id])
  erb :show
end

#http://espn.go.com/ncb/boxscore?gameId=400593294&key=value&key2=value2
# {"gameId" => 40059329, "key" => "value", "key2" => "value2"}
post '/coaches' do
  #form data is accessible via params
  p params
  Coach.create(params[:coach_name])
  redirect '/'
end
