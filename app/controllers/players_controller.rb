class PlayersController < ApplicationController

  set :views, "app/views/players"
  
  get '/players' do 
    @players = Player.all
    erb :index
  end
end
