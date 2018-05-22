class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs(name)
    name.mood(feeling = "happy")
  end

end
