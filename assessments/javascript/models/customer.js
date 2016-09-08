const Store = {customers: [], restaurants: [], reviews: []}
class Customer {
  constructor(name) {
    this.name = name
    this.restaurants = []
    this.reviews = []
    Store.customers.push(this)
  }
  add_review(restaurant, review) {
    this.add_restaurant(restaurant)
    var rev = new Review(review, restaurant, this.name)
    this.reviews.push(rev)
    restaurant.reviews.push(rev)
    Store.reviews.push(rev)

  }
  add_restaurant(restaurant) {
    this.restaurants.push(restaurant)
    restaurant.customers.push(this)
    Store.restaurants.push(this)
  }
}