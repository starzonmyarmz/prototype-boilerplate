require 'sinatra'
require 'faker'

# Static Files
set :public_folder, File.dirname(__FILE__) + '/static'

# Root
get '/' do
  erb :index
end

# Simple Fuzzy Matching
#
# This allows most urls following this convention
# to be mapped to erb files in the /views directory.
#
# :controller can contain hyphens in the url but are
# stripped so "my-controller" becomes "mycontroller".
#
# :action can be anything, but for all intents and
# purposes should be something like "v1, "v2", etc. It
# can be anything like :controller and hyphens are stripped.
#
# If this url format doesn't work for a particular page, a
# new route should be created above this route to be sure it
# gets picked up before this catch all.

get '/:controller/:action' do
  erb :"#{params['controller'].gsub('-', '')}_#{params['action'].gsub('-', '')}"
end
