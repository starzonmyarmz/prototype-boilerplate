require 'sinatra'
require 'faker'

# Static Files
set :public_folder, File.dirname(__FILE__) + '/public'

# Root
get '/' do
  erb :index
end
