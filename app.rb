require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here

    get '/' do
      erb :"root"
    end
    
    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate0 = Pirate.new(params[:pirate])
      ship0 = Ship.new(params[:pirate][:ships][0])
      ship1 = Ship.new(params[:pirate][:ships][1])

      # binding.pry

      erb :"pirates/show"
    end

  end
end
