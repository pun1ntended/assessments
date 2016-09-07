class Customer
    @@customers = []
    def initialize(name)
      @name = name
      @reviews = []
      @@customers << self
    end
    def self.all
      @@customers
    end
    def self.find_by_name(name)
      all.find do |customer|
        customer.name = name
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

