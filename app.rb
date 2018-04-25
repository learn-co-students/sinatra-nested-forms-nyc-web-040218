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
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
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

