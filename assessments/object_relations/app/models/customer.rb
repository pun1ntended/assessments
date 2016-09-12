class Customer
  attr_accessor :name, :reviews, :restaurants
    @@customers = []
    def initialize(name)
      @name = name
      @reviews = []
      @@customers << self
    end
    def self.all
      @@customers
    end
    def self.find_or_create_by_name(name)
      customer = all.find { |customer| customer.name == name}
      if customer
        customer
      else
        Customer.new(name)
      end
    end
    def add_review(review, restaurant)
      review = Review.new(restaurant, review)
      @reviews << review
      review.customer = self
      review.restaurant = restaurant
      restaurant.reviews << review
      restaurant.customers << self
    end
    
end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer

