class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(pirate_hash)
    @name = pirate_hash[:name]
    @type = pirate_hash[:type]
    @booty = pirate_hash[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
