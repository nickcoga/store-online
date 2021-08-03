# store-online

Developer Full Stack: Nick Correa Garcia

Project: Stored Online Simple.

# Introduction:

This application is made in vanilla Javascript (Fronted) with a database instantiated in AWS with MySql and the development of the backend is in Ruby on Rails.

The application tries to implement a small online store that can filter products that are available in stock through queries to the server.

At the beginning of the construction of the application, the database was integrated with Postgres Sql to perform basic tests satisfactorily, but then the migration of the databases to mysql was carried out, having some problems with the category reference field in products due to the Rails conventions.

# The Server or backend is deployed with Heroku in the following links with categories and products:

https://heroku-bsale-server.herokuapp.com/categories
https://heroku-bsale-server.herokuapp.com/products

# The Fronted Client is deployed with Netlify at the following link:

https://clever-leakey-38ed47.netlify.app/

# The tools or libraries used for this project were:

Server:
gem PG
gem MYsql2
gem rack cors
gem Rubocop
host aws connection with environment variables

Client:
Bootstrap
Responsive
Grid and Flex
Singleton
fontawesome

The implementation of some commands are in:
/store-online/server/docs/commands.md
