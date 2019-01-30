class PlayersController < ApplicationController

  set :views, "app/views/players"
  
  get '/players' do 
    erb :index
  end
end
