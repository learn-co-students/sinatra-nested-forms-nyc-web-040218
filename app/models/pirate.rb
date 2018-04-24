class Pirate
  attr_reader :name, :weight, :height
  @@all = []
  def initialize(attributes)
    @name = attributes[:name]
    @weight = attributes[:weight]
    @height = attributes[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end
