class Review

  attr_accessor :restaurant, :customer, :content

  @@all = []

  def initialize(customer, restaurant)
    self.customer = customer
    self.restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end
end
