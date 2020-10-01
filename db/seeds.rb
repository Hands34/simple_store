# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Product.delete_all

all_products = Product.all
puts "There are #{all_products.count} products in this database"
newest_prod = all_products.last

new_products = []

new_products.insert(
  676.times do
    Product.create(
      title:          Faker::Commerce.product_name,
      price:          Faker::Commerce.price,
      stock_quantity: Faker::Number.number
    )
  end
)
puts "There are #{all_products.count} products in this database"
