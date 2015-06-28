require 'sinatra'
require './models/coach'

get '/' do
  #this is a local variable only
  # @ means this variable is available to the view
  @coaches = Coach.all
  #render this data
  erb :index
end

get '/coaches/new' do
  erb :new
end

get '/coaches/:id' do
  #new => 0
  #colon defines a placeholder
  # params hash- implicitly defined local variable, contains information from the user (about the HTTP request)
  #id becomes a key, points to what is in the url
  #the return value of the last line is rendered
  @coach = Coach.find(params[:id])
  erb :show
end
#form data is available in params hash
#params hash is re-built in every http request
post '/coaches' do
  Coach.create(params[:coach_name])
  #redirect executes another route
  redirect '/'
end

