require 'pry'
require_relative 'fish.rb'
require_relative 'cat.rb'
require_relative 'dog.rb'


class Owner

  attr_accessor :pets, :name

  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def self.reset_all
    @@all = []
  end
  def species
    @species
  end
  def say_species
    "I am a #{@species}."
  end
  def name
    @name
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    @pets.each do |species, pets|
      pets.each do |x|
        x.mood = "nervous"
      end
    end
    @pets.each do |species, pets|
      @pets[species].clear
    end
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
