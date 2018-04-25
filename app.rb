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
      p0 = Pirate.new(params[:pirate])
      s0 = Ship.new(params[:pirate][:ships][0])
      s1 = Ship.new(params[:pirate][:ships][1])

      # binding.pry

      erb :"pirates/show"
    end

  end
end

# <%# params = {}
# params["pirate"] = {}
# params["pirate"]["name"] = "Ahab"
# params["pirate"]["weight"] = "200"
# params["pirate"]["height"] = "6"
# params["pirate"]["ships"] = {}
# params["pirate"]["ships"]["name"] = "Pequod"
# params["pirate"]["ships"]["type"] = "clipper"
# params["pirate"]["ships"]["booty"] = "gold"
 
# params
#   => {"pirate"=>{"name"=>"Ahab", "weight"=>"200","height"=>"6", "ship"=>{"name"=>"Pequod", "type"=>"clipper", "booty"=>"gold"}}} %>

