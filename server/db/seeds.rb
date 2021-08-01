# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
  unit_price_1_1 = 1199.99
  unit_price_1_2 = 849.99 
  unit_price_1_3 = 379.99
  unit_price_1_4 = 2021.73
  unit_price_1_5 = 1649.99
  unit_price_1_6 = 1169.96

  unit_price_2_1 = 499.99
  unit_price_3_1 = 497.99

  product_1_1 = Product.create!(name: "Lenovo Legion 5 Gaming", unit_price: unit_price_1_1, brand: "Lenovo", weight: 1.4, model: "Legion 5", links: "https://placeimg.com/199/199/tech?random=1", category: category1)
  product_1_2 = Product.create!(name: "ASUS TUF Dash 15", unit_price: unit_price_1_2, brand: "Asus", weight: 1.6, model: "Dash 15", links: "https://placeimg.com/199/199/tech?random=2",  category: category1)
  product_1_3 = Product.create!(name: "Acer Aspire 5", unit_price: unit_price_1_3, brand: "Acer", weight: 1.6, model: "Aspire 5", links: "https://placeimg.com/199/199/tech?random=3",  category: category1)
  product_1_4 = Product.create!(name: "ASUS ROG Strix G17", unit_price: unit_price_1_4, brand: "Asus", weight: 1.4, model: "ROG Strix G17", links: "https://placeimg.com/199/199/tech?random=4", category: category1)
  product_1_5 = Product.create!(name: "ACER PREDATOR", unit_price: unit_price_1_5, brand: "Acer", weight: 1.6, model: "PREDATOR", links: "https://placeimg.com/199/199/tech?random=5",  category: category1)
  product_1_6 = Product.create!(name: "RAZER BLADE 15", unit_price: unit_price_1_6, brand: "Razer", weight: 1.6, model: "BLADE 15", links: "https://placeimg.com/199/199/tech?random=6",  category: category1)
  product_1_7 = Product.create!(name: "HP Chomebook 14", unit_price: unit_price_1_5, brand: "Hp", weight: 1.6, model: "Chomebook 14", links: "https://placeimg.com/199/199/tech?random=7",  category: category1)
  product_1_8 = Product.create!(name: "Asus VivoBook 15", unit_price: unit_price_1_6, brand: "Asus", weight: 1.6, model: "VivoBook 15", links: "https://placeimg.com/199/199/tech?random=8",  category: category1)

  product_2_1 = Product.create!(name: "Apple iPhone 11 (64GB)", unit_price: unit_price_2_1, brand: "APPLE", weight: 1.6, model: "11", links: "https://placeimg.com/199/199/tech?random=9",  category: category2)
  product_2_2 = Product.create!(name: "HUAWEI P30", unit_price: 499.98, brand: "HUAWEI", weight: 2.3, model: "P30", links: "https://placeimg.com/199/199/tech?random=10", category: category2)
  product_2_3 = Product.create!(name: "Apple iPhone 8 (64GB)", unit_price: 193.00, brand: "APPLE", weight: 1.6, model: "8", links: "https://placeimg.com/199/199/tech?random=11",  category: category2)
  product_2_4 = Product.create!(name: "Apple iPhone 11 Pro Max(64GB)", unit_price: 719.00, brand: "HUAWEI", weight: 2.3, model: "11 Pro", links: "https://placeimg.com/199/199/tech?random=12", category: category2)

  product_3_1 = Product.create!(name: "Samsung QN32Q50RAFXZA", unit_price: unit_price_3_1, brand: "SAMSUNG", weight: 7.52, model: "QN32Q50RAFXZA", links: "https://placeimg.com/199/199/tech?random=13",  category: category3)
  product_3_2 = Product.create!(name: "TLC 32S334", unit_price: 179.99, brand: "TLC", weight: 7.52, model: "32S334", links: "https://placeimg.com/199/199/tech?random=13",  category: category3)
  
  puts "Finish seeding"



