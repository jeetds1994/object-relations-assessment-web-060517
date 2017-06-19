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
