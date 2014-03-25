require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :index, locals: {items: ["Channa Masala", "Saag Paneer"]}
  end

  get '/add_item' do
    erb :add_item
  end

  post '/items' do
    redirect '/'
  end
end