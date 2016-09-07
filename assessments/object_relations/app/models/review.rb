class Review
  @@reviews = []
  def initialize(restaurant, review, customer = nil)
    @restaurant = restaurant
    @review = review
    @@reviews << self
    @customer = customer
  end  
  def customer
    @customer
  end
  def restaurant
    @restaurant
  end
end

