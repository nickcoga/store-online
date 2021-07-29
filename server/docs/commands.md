# Models:

rails g model Category name status:integer

rails g model Product name unit_price:decimal{7-2} brand 'weight:decimal{5,2}' model category:references

rails db:create

rails db:migrate

# rails c :

# Create Category

Category.create(name: 'laptops', status: 1)

# Create Product

Product.create(brand: "samsun", model: "s123", name: "sg laptop", unit_price: 2201.23, weight: 2.325, category: Category.find(1))

# Postgresql

psql -d store_online_development

# Controllers without helpers nor assets
