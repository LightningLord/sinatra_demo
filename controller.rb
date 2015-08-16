require 'sinatra'
require './models/coach'

get '/' do
  puts "home route"
  #show a list of all coaches
  #looks like an instance variable
  #@ expands the scope of this variable
  #this variable is available to the view
  puts params
  @coaches = Coach.all
  erb :index
  #embedded ruby, renders a file by name
end

get '/coaches/new' do
  puts "new coach route"
  erb :new
end

get '/coaches/:id' do
  puts "coaches profile route"
  puts params
  #colon syntax in the path- placeholder, becomes a key in params
  #params- implicitly defined local variable that is created in every
  #http request (or every time a route is executed)
  #hash
  #values come from what the user typed in the browser
  @coach = Coach.find(params[:id])
  erb :show
end

post '/coaches' do
  puts params
  Coach.create(params[:coach])
  #HTTP requests are stateless
  #redirect executes another route
  redirect '/'
end


get '/search'

end

# ?find_desc=att+store&find_loc=cupertino%2C+ca&ns=1
  #?key1=value1&key2=value2
  #params[:key1]
#create a new coach
#show a new coach form (blank)

#submit the form



#what is params
#where/when is it defined
#where do the keys/values come from (other than splat/captures)


#what is the point of sinatra
#what is a route
#what is an "instance" variable
#what does erb mean, diff types of erb tags





