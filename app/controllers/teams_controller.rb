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
end
