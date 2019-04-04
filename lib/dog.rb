class Dog
  # code goes here
attr_reader :name #gets name of dog, but cannot change it
attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
