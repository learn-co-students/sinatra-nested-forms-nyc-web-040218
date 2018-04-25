class Pirate
  # Pirates should have a name, weight, and height.

  attr_accessor :name, :weight, :height

  ALL =[]

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    ALL << self
  end

  def self.all
    ALL

  end


end
