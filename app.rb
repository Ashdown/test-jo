require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'slim'

set :haml, :format => :html5

get '/' do
  slim :index
end
