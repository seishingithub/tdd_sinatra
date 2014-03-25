require 'sinatra/base'

class App < Sinatra::Base

  ITEMS = []

  get '/' do
    erb :index, :locals => {:items => ITEMS}
  end

  get '/items/new' do
    erb :new_item
  end

  post '/items' do
    ITEMS << params[:item_name]
    redirect '/'
  end

  get '/items/:id' do
    id = params[:id].to_i
    item = ITEMS[id]
    erb :items, locals: {:item => item, :id => id}
  end

  put '/items/:id/items' do

  end
  #get /items/:id/edit
  #put item/:id
  #delete /item/:id

end