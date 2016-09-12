class Review
  attr_accessor :customer, :restaurant
  @@reviews = []
  def initialize(restaurant, review, customer = nil)
    @restaurant = restaurant
    @review = review
    @@reviews << self
    @customer = customer
  end  
end

