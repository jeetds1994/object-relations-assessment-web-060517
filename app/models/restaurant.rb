class Restaurant
  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant.name == self.name}
  end

  def customers
    Review.all.select {|review| review.customer if review.restaurant == self}
  end
end
