require 'sinatra'
require './models/coach'

get '/' do
  @coaches = Coach.all
  erb :index
end

get '/coaches/new' do
  erb :new
end

get '/coaches/:id/edit' do
  @coach = Coach.find(params[:id].to_i)
  erb :edit
end

get '/coaches/:id' do
  @coach = Coach.find(params[:id].to_i)
  erb :show
end


post '/coaches' do
  puts params
  Coach.create(params)
  redirect '/'
end

put '/coaches/:id' do
  Coach.update(params)
  redirect '/'
end

delete '/coaches/:id' do
  @coach = Coach.find(params[:id].to_i)
  @coach.destroy
  redirect '/'
end
