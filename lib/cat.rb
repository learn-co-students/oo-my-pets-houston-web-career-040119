class Cat #creates class
attr_reader :name #getter
  attr_accessor :mood #getter and setter / allows to change mood
  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous" #initializes with "nervous" but can be changed with attr_accessor line 3
  end


end # ends class

#cat.mood ="nervous"
