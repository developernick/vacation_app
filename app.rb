require 'bundler'
Bundler.require()

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql'
  :database => 'vacadb'
)

require './models/user'
require './models/location'
require './models/visit'

get '/' do
  erb :index
end

get '/api/users' do
	content_type :json
	User.all.to_json
end


get '/api/users/:id' do
	content_type :json
	user = User.find(params[:id].to_i)
	user.to_json
end


post '/api/users' do
	content_type :json
	new_user = User.create(params[:user])
	new_user.to_json
end

put '/api/users/:id' do
	content_type :json
	user = User.find(params[:id].to_i)
	user.update(params[:user])
	user.to_json
end

patch '/api/users/:id' do
	content_type :json
	user = User.find(params[:id].to_i)
	user.update(params[:user])
	user.to_json
end

delete '/api/users/:id' do
	content_type :json
	user = User.find(params[:id].to_i)
	user.delete
	{message: 'User deleted'}.to_json
end

get '/api/locations' do
	content_type :json
	Location.all.to_json
end


get '/api/locations/:id' do
	content_type :json
	location = Location.find(params[:id].to_i)
	location.to_json
end

post '/api/locations' do
	content_type :json
	location = Location.create(params[:location])
	location.to_json
end

put '/api/locations/:id' do
	content_type :json
	location = Location.find(params[:id].to_i)
	location.update(params[:location])
	location.to_json
end

patch '/api/locations/:id' do
	content_type :json
	location = Location.find(params[:id].to_i)
	location.update(params[:location])
	location.to_json
end

delete '/api/locations/:id' do
	content_type :json
	location = Location.find(params[:id].to_i)
	location.delete
	{message: 'Location Deleted'}.to_json
end

get '/api/visits' do
	content_type :json
	Visit.all.to_json
end

get '/api/visits/:id' do
	content_type :json
	visit = Visit.find(params[:id].to_i)
	visit.to_json
end

post '/api/visits' do
	content_type :json
	visit = Visit.create(params[:visit])
	visit.to_json
end


put '/api/visits/:id' do
	content_type :json
	visit = Visit.find(params[:id].to_i)
	visit.update(params[:visit])
	visit.to_json
end

patch '/api/visits/:id' do
	content_type :json
	visit = Visit.find(params[:id].to_i)
	visit.update(params[:visit])
	visit.to_json
end

delete '/api/visits/:id' do
	content_type :json
	visit = Visit.find(params[:id].to_i)
	visit.delete
	{message: 'You have deleted your visit'}.to_json
end
