require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      erb :root
    end

    get "/new" do
      erb :create_pirates_and_ships
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_hash|
        Ship.new(ship_hash)
      end

      @ships = Ship.all

      erb :display_pirates_and_ships
    end

  end
end
