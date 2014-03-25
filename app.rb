require 'sinatra/base'

class App < Sinatra::Base

  set :items, ["Channa Masala", "Saag Paneer"]

  get '/' do
    erb :index, locals: {items: settings.items }
  end

  get '/items/new' do
    erb :new_item
  end

  post '/items' do
    settings.items << params[:item_name]
    redirect '/'
  end

end