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
    erb :items, :locals => {:item => item, :id => id}
  end

  get '/items/:id/edit' do
    id = params[:id].to_i
    item = ITEMS[id]
    erb :edit, :locals => {:item => item, :id => id}
  end

  post '/items/:id' do

   ITEMS[params[:id].to_i] = params[:item_name]

    redirect '/'

  end

  end




#get /items/:id/edit
#put item/:id
#delete /item/:id