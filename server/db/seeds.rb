# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  puts "Deleting current data"
  # TODO: fix destroy_all order or search how to delete all records from all tables in one command
  Product.destroy_all
  Category.destroy_all
  
  puts "Start seeding"

  puts "creating categories"
  category1 = Category.create!(name: 'Laptops', status: 1)
  category2 = Category.create!(name: 'Phones & Accessories', status: 1)
  category3 = Category.create!(name: 'TVs', status: 1)


  puts "creating products"
  unit_price_1_1 = 1000
  unit_price_3_1 = 500
  unit_price_1_4 = 1215
  unit_price_1_3 = 1345

  product_1_1 = Product.create!(name: "Macbook", unit_price: unit_price_1_1, brand: "Apple", weight: 1.4, model: "M1 2020", category: category1)
  product_1_2 = Product.create!(name: "Dell Inspiron 3000", unit_price: 1300, brand: "Dell", weight: 1.6, model: "N5030", category: category1)
  product_1_3 = Product.create!(name: "Aspire 5", unit_price: unit_price_1_3, brand: "Acer", weight: 1.6, model: "A515-43-R19L", category: category1)

  product_1_4 = Product.create!(name: "IPHONE X", unit_price: unit_price_1_4, brand: "APPLE", weight: 1.6, model: "X", category: category2)
  product_1_5 = Product.create!(name: "HUAWEI P30", unit_price: 1215, brand: "HUAWEI", weight: 2.3, model: "P30", category: category2)

  product_3_1 = Product.create!(name: "LG OLED65CXPUA", unit_price: unit_price_3_1, brand: "LG", weight: 7.52, model: "OLED65CXPUA", category: category3)

  puts "Finish seeding"
else
  puts "Seeds do not work in other than development environment"
end
