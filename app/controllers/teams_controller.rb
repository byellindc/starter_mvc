class TeamsController < ApplicationController

  set :views, "app/views/teams"
  
  get '/teams' do 
    erb :index
  end
end
