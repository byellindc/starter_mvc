class PlayersController < ApplicationController

  set :views, "app/views/players"
  
  get '/players' do 
    @players = Player.all
    erb :index
  end

  get '/players/new' do
    erb :new
  end

  post '/players' do
    player = Player.create(params)
    redirect to "/players/#{player.id}"
  end
end
