require "pry"
require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fish.rb"

class Owner
  # code goes here

  @@OWNER=[]

  def initialize(owner_name)
    @name=owner_name
    @pets = {fishes: [], cats: [], dogs: []}
    @species= "human"
    @@OWNER.push(self)
  end

  attr_accessor :pets, :name
  attr_reader :species

  def buy_cat(pet_name)
    @cat=Cat.new(pet_name)
    @pets[:cats].push(@cat)
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_fish(pet_name)
    @fish=Fish.new(pet_name)
    @pets[:fishes].push(@fish)
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def buy_dog(pet_name)
    @dog=Dog.new(pet_name)
    @pets[:dogs].push(@dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def self.all
    @@OWNER
  end

  def self.count
    @@OWNER.length
  end

  def self.reset_all
    @@OWNER.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def sell_pets
  
    @pets.each do |x,y|
      y.each do |a|
      a.mood = 'nervous'
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  binding.pry
end


puts"pry"