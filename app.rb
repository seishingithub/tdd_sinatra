require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Our Menu"
  end
end