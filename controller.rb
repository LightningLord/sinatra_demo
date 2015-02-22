require 'sinatra'
require 'shotgun'
require './models/coach'

get '/' do
  #this variable is available to the view
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new
end

get '/coaches/:id' do
  #params- implicitly defined local variable with information from the user, hash
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  p params
  #params does not persist between routes
  #form data is accessible via params hash
  #keys correspond to the name attribute of the input tags
  full_name = "#{params[:first_name]} #{params[:last_name]}"
  Coach.create(full_name)
  redirect '/'
end
