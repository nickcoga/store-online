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

rails g controller Categories index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Products index show create update destroy --no-helper --no-assets --no-template-engine

# Add Columns Links in Products

rails g migration AddLinksToProdutcs

add_column :products, :links, :string

rails g migration AddDiscountToProdutcs

add_column :products, :discount, :integer

rails g migration DeleteColumnsToProdutcs

rename_column :products, :unit_price, :price
rename_column :products, :links, :url_image
remove_column :products, :brand, :string
remove_column :products, :weight, :decimal
remove_column :products, :model, :string

# Change Database in File config/database.yml

rails db:system:change --to=mysql

sudo apt install libmysqlclient-dev

rake assets:precompile

# Confing database.yml

production:
<<: \*default
database: <%= ENV['BSALE_DATABASE_NAME'] %>
username: <%= ENV['BSALE_DATABASE_USERNAME'] %>
password: <%= ENV['BSALE_DATABASE_PASSWORD'] %>
host: <%= ENV['RDS_HOSTNAME'] %>
port: <%= ENV['RDS_PORT'] %>

# Change pluralize tables for mysql to singular

config.active_record.pluralize_table_names = false

# Variable ENV:

export DB_USERNAME=myusername
export DB_PASSWORD=mypassword
