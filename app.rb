require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end
    
    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      # @p_name = params[:pirate][:name]
      # @p_height = params[:pirate][:height]
      # @p_weight = params[:pirate][:weight]
      #
      # @ship = Ship.new(params[:ship])
      # @s_name = params[:ship][:name]
      # @s_type = params[:ship][:type]
      # @s_booty = params[:ship][:booty]
      #
      # @ship2 = Ship.new(params[:ship2])
      # @s2_name = params[:ship2][:name]
      # @s2_type = params[:ship2][:type]
      # @s2_booty = params[:ship2][:booty]

      erb :"pirates/show"
    end


  end
end
