class Restaurant
  attr_accessor :customers, :reviews, :name
  @@restaurants = []
  def initialize(name)
    @name = name
    @@restaurants << self
    @reviews = []
    @customers = []
  end

  def self.all
    @@restaurants
  end
   def self.find_or_create_by_name(name)
      restaurant = all.find { |restaurant| restaurant.name == name}
      if restaurant
        restaurant
      else
        Restaurant.new(name)
      end
    end

end