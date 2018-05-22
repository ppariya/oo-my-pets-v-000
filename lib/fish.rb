class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood

  def initialize(name)

    @name = name
    @mood = "nervous"
  end

  def mood=(mood)
    self.mood = mood
  end 
    
end
