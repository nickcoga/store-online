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
  price_1_1 = 1199.99
  price_1_2 = 849.99 
  price_1_3 = 379.99
  price_1_4 = 2021.73
  price_1_5 = 1649.99
  price_1_6 = 1169.96

  price_2_1 = 499.99
  price_3_1 = 497.99

  discount = 100

  product_1_1 = Product.create!(name: "Lenovo Legion 5 Gaming", price: price_1_1, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=1", category: category1)
  product_1_2 = Product.create!(name: "ASUS TUF Dash 15", price: price_1_2, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=2",  category: category1)
  product_1_3 = Product.create!(name: "Acer Aspire 5", price: price_1_3, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=3",  category: category1)
  product_1_4 = Product.create!(name: "ASUS ROG Strix G17", price: price_1_4, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=4", category: category1)
  product_1_5 = Product.create!(name: "ACER PREDATOR", price: price_1_5, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=5",  category: category1)
  product_1_6 = Product.create!(name: "RAZER BLADE 15", price: price_1_6, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=6",  category: category1)
  product_1_7 = Product.create!(name: "HP Chomebook 14", price: price_1_5,discount: discount,  url_image: "https://placeimg.com/199/199/tech?random=7",  category: category1)
  product_1_8 = Product.create!(name: "Asus VivoBook 15", price: price_1_6,discount: discount, url_image: "https://placeimg.com/199/199/tech?random=8",  category: category1)

  product_2_1 = Product.create!(name: "Apple iPhone 11 (64GB)", price: price_2_1, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=9",  category: category2)
  product_2_2 = Product.create!(name: "HUAWEI P30", price: 499.98, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=10", category: category2)
  product_2_3 = Product.create!(name: "Apple iPhone 8 (64GB)", price: 193.00, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=11",  category: category2)
  product_2_4 = Product.create!(name: "Apple iPhone 11 Pro Max(64GB)", price: 719.00, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=12", category: category2)

  product_3_1 = Product.create!(name: "Samsung QN32Q50RAFXZA", price: price_3_1, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=13",  category: category3)
  product_3_2 = Product.create!(name: "TLC 32S334", price: 179.99, discount: discount, url_image: "https://placeimg.com/199/199/tech?random=13",  category: category3)
  
  puts "Finish seeding"



