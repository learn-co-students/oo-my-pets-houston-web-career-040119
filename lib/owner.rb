# require_relative 'dog.rb'
# require_relative 'cat.rb'
# require_relative 'fish.rb'
require 'pry'


class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def name
    name = @name
  end
  
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.name
    self.name
  end

  def pets
    @pets
  end

  def self.pets
    self.pets
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs].push(name)
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats].push(name)
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes].push(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets[:cats].each do |cat|
      cat.mood = "nervous" 
    end
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets[:cats].clear
    @pets[:dogs].clear
    @pets[:fishes].clear

  end


  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end













end
# jeff = Owner.new("Jeff")

# binding.pry

"another one bites the dust"