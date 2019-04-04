require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'
# require 'pry'

class Owner
  # code goes here

attr_reader :species
attr_accessor :pets, :name #added :name to attr_acessor - fixed
# dog => variable
# @dog => instance variable
# @@dog => class variable
@@all=[]

def initialize (species="human",pets)
  @species =species
  @pets = {fishes: [],
          cats:[],
          dogs:[]}
      @@all << self
end

def say_species
  "I am a #{@species}."
end

# def name
#   @name = x
# end

def self.all #CLASS METHOD
  #return an array
  @@all
end

def self.count #CLASS METHOD

def self.reset_all
@@all = []
end

@@all.length
end

          # owner = Owner.new("human")
          # dog = Dog.new("Fido")
          # cat = Cat.new("Crookshanks")
          # fish = Fish.new("Nemo")


#Make a new instance of the appropriate pet, initializing it with that name.
      def buy_dog(name)
        dog = Dog.new(name)
        @pets[:dogs] << dog
      end

      def buy_cat(name)
        cat = Cat.new(name)
        @pets[:cats] << cat

      end

      def buy_fish(name)
          fish = Fish.new(name)

          @pets[:fishes] << fish
      end

def sell_pets
  # @pets[:dogs]=[]
  # @pets[:cats]=[]
  # @pets[:fishes]=[]
  @pets.each do |type, animals|
    animals.each do |animal|
      animal.mood = "nervous"
    end

  end

  @pets[:dogs]=[]
  @pets[:cats]=[]
  @pets[:fishes]=[]

  # @pets.clear #clearing hash

end

def list_pets

"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end



def walk_dogs
  #binding.pry
  @pets[:dogs].each do |dog|
    #walkig the dogs
    #change moods
    dog.mood = "happy"
  end
end

  def play_with_cats
      @pets[:cats].each do |cat|

      cat.mood = "happy"
    end
  end

  def  feed_fish
    @pets[:fishes].each do |fish|

    fish.mood = "happy"

  end


end


end
#
# luis = Owner.new("coder",{fishes: [],cats:[],dogs:[]})
# binding.pry
# puts "asdf"
