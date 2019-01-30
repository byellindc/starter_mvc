class TeamsController < ApplicationController

  set :views, "app/views/teams"
  
  get '/teams' do 
    @teams = Team.all
    erb :index
  end
end
