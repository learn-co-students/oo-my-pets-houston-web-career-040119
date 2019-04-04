require 'pry'

require_relative "fish.rb"
require_relative "cat.rb"
require_relative "dog.rb"


class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets 


  def initialize(name)
    @name = name 
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    
    @@all << self 
    
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end 

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
    
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
    
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
    
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet|
      pet.each do |pet_id|
        pet_id.mood = "nervous"
      end
    end
  @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  
  end

end

#binding.pry
#puts "hi"
# nathan = Owner.new("nathan")
# nathan.buy_fish("Rupert")