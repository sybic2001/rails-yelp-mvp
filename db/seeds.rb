# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Restaurant.destroy_all
Review.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "chinese",
    phone_number: "0627991331"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "italian",
    phone_number: "0627991332"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "french",
    phone_number: "0627991333"
  },
  {
    name:         "Le délice d'Istanbul",
    address:      "Istanbul",
    category:     "japanese",
    phone_number: "0627991334"
  },
  {
    name:         "Nokogawa",
    address:      "Tokyo",
    category:     "japanese",
    phone_number: "0627991335"
  }
]
restaurants_attributes.each do |params|
  resto = Restaurant.new(params)
  resto.save
  5.times do |i|
    review = Review.new(content: "review #{i}", rating: i)
    review.restaurant = resto
    review.save
  end
end
