require 'pry'


class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood


  def initialize(name)
    @name = name
    @mood = "nervous"
  end



end
# jazz = Cat.new("Jazz")
# molly = Cat.new("Molly")
# binding.pry
# "aaaaa"