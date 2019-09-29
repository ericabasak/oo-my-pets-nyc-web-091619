class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"

    @@all << self
  end

  def self.all
    @@all
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end


  def clear
  end

  def say_species
    "I am a #{species}."
  end

  def self.count
    Owner.all.length
  end

  def self.reset_all
    @@all = []
  end


end #end of Owner class