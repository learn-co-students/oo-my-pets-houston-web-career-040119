require 'pry'


class Dog
  attr_reader :name
  attr_accessor :mood


  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  # def change_to_happy
  #   @mood = "happy"
  #   OR you could just do dog.mood="sad"
  # end




end

# freddie = Dog.new("Freddie")
# binding.pry

# "woof"
