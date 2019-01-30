class PlayersController < ApplicationController

  set :views, "app/views/players"
  
  get '/players' do 
    @players = Player.all
    erb :index
  end

  get '/players/new' do
    @teams = Team.all
    erb :new
  end

  post '/players' do
    player = Player.create(params)
    redirect to "/players/#{player.id}"
  end

  get '/players/:id' do
    @player = Player.find(params[:id])
    erb :show
  end 

  get '/players/:id/edit' do
    @teams = Team.all
    @player = Player.find(params[:id])
    erb :edit
  end

  patch '/players/:id' do
    Player.update(params[:id], name: params[:name], 
      height: params[:height], sex: params[:sex], 
      nickname: params[:nickname], skill: params[:skill],
      rating: params[:rating])
    redirect to "/players/#{params[:id]}"
  end

  delete '/players/:id' do
    Player.delete(params[:id])
    redirect to "/players"
  end
end
