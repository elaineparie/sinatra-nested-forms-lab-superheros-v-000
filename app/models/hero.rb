class Hero
  attr_reader :name, :power, :bio

  HEROS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    COURSES << self
  end

  def self.all
    HEROS
  end
end
