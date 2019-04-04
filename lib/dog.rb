class Dog
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name, mood = "nervous", species = "dog")
    @name = name
    @mood = mood
    @species = species
  end
  # code goes here
end
