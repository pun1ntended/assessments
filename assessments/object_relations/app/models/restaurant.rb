class Restaurant
  @@restaurants = []
  def initialize(name)
    @name = name
    @@restaurants << self
    @reviews = []
    @customers = []
  end
  def customers
    @customers
  end
  def reviews
    @reviews
  end
  def self.all
    @@restaurants
  end
  def self.find_by_name(name)
    all.find do |restaurant|
      restaurant.name = name
    end
  end

end