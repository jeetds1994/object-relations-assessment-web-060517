# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.each.find {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.customer.full_name
  end

  def add_review(restaurant, content)
    #check restaurant
    restu = Restaurant.all.each.find {|res| res.name == restaurant}
    if restu == nil
      restu = Restaurant.new(restaurant)
    end
    new_review = Review.new(self, restu)
    new_review.content = content
  end
end


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
