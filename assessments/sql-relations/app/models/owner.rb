class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  has_many :restaurants
  has_many :reviews, through: :restaurants
  has_many :customers, through: :reviews
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  def restaurants
    sql = <<- SQL
    SELECT restaurants.* FROM restaurants WHERE owner_id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end
end