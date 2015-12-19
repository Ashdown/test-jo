require 'sinatra'
require 'sinatra/activerecord'
require 'slim'
require 'slim/include'

set :haml, :format => :html5

get '/' do
  slim :index
end
