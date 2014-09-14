require 'sinatra'
require './models/coach'

get '/' do
  @coaches = Coach.all
  #@ symbol makes this variable available to the view
  erb(:index)
  #embedded ruby
end

get '/coaches/:id' do
  puts params
  #params- local variable that exists for every route, contains info from the http request (HASH)
  @coach = Coach.find(params[:id].to_i)
  erb :show
end
#REST

#HTTP requests
#get- retrieving (reading) info from db
#post- create an entry in the db
#delete- destroy an entry in the db
#put or patch- updates an entry in the db
#CRUD
