class Cat
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name, mood = "nervous", species = "cat")
    @name = name
    @mood = mood
    @species = species
  end
  # code goes here
end
