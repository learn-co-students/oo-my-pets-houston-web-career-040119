class Fish
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name, mood = "nervous", species = "fish")
    @name = name
    @mood = mood
    @species = species
  end
  # code goes here
end
