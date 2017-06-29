require 'sinatra'
require 'faker'
require 'sass/plugin/rack'

# Static Files
set :public_folder, File.dirname(__FILE__) + '/public'

# Sass
Sass::Plugin.options[:syntax] = :scss
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

# Root
get '/' do
  erb :index
end
