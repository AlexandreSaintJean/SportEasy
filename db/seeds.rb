# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: "Athletics")
Category.create(name: "Cycling")
Category.create(name: "Fight")
Category.create(name: "Automotive")
Category.create(name: "Snow")
Category.create(name: "Racket")

User.create(email: "paul@paul.com", password: "123456789", gender: "male", first_name: "Paul", last_name: "McCartney", city: "Bordeaux", phone_number: 55555456, birth_date: 19561225)
User.create(email: "john@paul.com", password: "123456789", gender: "male", first_name: "John", last_name: "Lennon", city: "Bordeaux", phone_number: 55545456, birth_date: 19620512)

Product.create(name: "Pink bike", description: "A pretty little pink bike", city: "Bordeaux", price_per_day: 5, user_id: 1, category_id: 1)
Product.create(name: "Blue bike", description: "A pretty little blue bike", city: "Bordeaux", price_per_day: 5, user_id: 2, category_id: 2)

Post.create(question: "Is it ok to book it for 2h?", product_id: 1, user_id: 1)
Post.create(question: "Is it avallaible?", product_id: 2, user_id: 2)
