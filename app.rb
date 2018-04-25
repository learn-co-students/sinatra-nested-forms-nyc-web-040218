require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])
      
      @ships = []
      params["pirate"]["ships"].each do |ship|
        @ships << Ship.new(ship["name"], ship["type"], ship["booty"] )
      end

      erb :'/pirates/show'
    end
    # code other routes/actions here

  end
end
