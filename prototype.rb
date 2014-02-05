require 'sinatra'
require 'faker'

# Static Files
set :public_folder, File.dirname(__FILE__) + '/static'

get '/prototype' do
  erb :index
end

