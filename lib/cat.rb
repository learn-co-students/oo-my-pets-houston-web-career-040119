

class Cat

  attr_accessor :mood
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end


end
