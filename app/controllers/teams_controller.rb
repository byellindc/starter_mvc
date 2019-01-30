class TeamsController < ApplicationController

  set :views, "app/views/teams"
  
  get '/teams' do 
    @teams = Team.all
    erb :index
  end

  get '/teams/new' do
    erb :new
  end

  post '/teams' do
    team = Team.create(params)
    redirect to "/teams/#{team.id}"
  end

  get '/teams/:id' do
    @team = Team.find(params[:id])
    erb :show
  end 

  get '/teams/:id/edit' do
    @team = Team.find(params[:id])
    erb :edit
  end

  patch '/teams/:id' do
    Team.update(params[:id], name: params[:name], color: params[:color], sport: params[:sport])
    redirect to "/teams/#{params[:id]}"
  end

  delete '/teams/:id' do
    Team.delete(params[:id])
    redirect to "/teams"
  end
end
