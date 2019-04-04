require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}

    @@all << self
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes].push(fish)
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats].push(cat)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs].push(dog)
  end

  def make_a_kind_of_pets_happy(pet_category)
    pets[pet_category].each do |pet|
      pet.mood = "happy"
    end
  end

  def walk_dogs
    make_a_kind_of_pets_happy(:dogs)
  end

  def play_with_cats
    make_a_kind_of_pets_happy(:cats)
  end

  def feed_fish
    make_a_kind_of_pets_happy(:fishes)
  end

  def sell_pets
    pets.values.each do |pets_arr|
      pets_arr.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


  def say_species
    "I am a #{species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end
end

# binding.pry
# puts "daf"
