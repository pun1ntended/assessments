class Review 
  belongs_to :customer
  belongs_to :restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  

  def customer
    sql = <<-  SQL
      SELECT customer.* FROM customers WHERE customer.id = ?
    SQL
    self.class.db.execute(sql, self.customer_id)

  end

  def restaurant
    sql = <<-  SQL
      SELECT restaurant.* FROM restaurants WHERE restaurant.id = ?
    SQL
    self.class.db.execute(sql, self.restaurant_id)
  end

end

