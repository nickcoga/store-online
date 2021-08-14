# store-online

Developer Full Stack: Nick Correa Garcia

Project: Stored Online Simple.

# Detail of the Exercise:

This exercise is about a small online store where we can filter various products by name and grouped by category through a search engine that is connected to our server, this store is developed through an Api Rest whose language is based on ruby ​​and as a framework of choice in Ruby on Rails.

The client application is developed in vanilla pure javascript without any framework and with some boopstrap or pure css components.

Finally, the application is available in Netlify, the client part and the server part in Heroku connected with the resources given in the exercise of bsale through a host in AWS.

At the beginning of the construction of the application, the database was integrated with Postgres Sql to perform basic tests satisfactorily, but then the migration of the databases to mysql was carried out, having some problems with the category reference field in products due to the Rails conventions.

# Api Rest detail:

This application is configured with a gem called rakcs-cors in Rails that allows us to configure the origin, headers and methods allowed towards our application (GET, POST, PUT, PATCH, DELETE, OPTIONS HEAD)

Currently the application is configured through an api_fetch.js file that allows us to save the BASE_URL of our server available in heroku in a constant, which will not return the response in a .json file through an async function.

In the same way, you are using this api_fetch to be able to import it into the services that are used in our application, in this case in the category service you are using the GET method to bring all the Category data through a prototype.list which we returns all categories grouped with their corresponding products.

We are also using another prototype.search to be able to make another request with the GET method, but this time for a specific product using a "name" parameter.

Finally these services are being used in our script.js and landpage.js files to be viewed by the end user.

# Fronted detail:

Fronted development is structured in a client folder which is divided by:

- folder scripts which contains (the application services, the landpage and the STORE file where the data of the last queries are saved)
- index.html which contains (the base structure of the entire fronted with the links of the components used for the application)
- script.js contains the init function to render the main page with all the data consulted from the categories
- styles.css service that carries some styles that bootstrap does not currently contemplate .

# The Server or backend is deployed with Heroku in the following links with categories and products:

- Categories: [https://heroku-bsale-server.herokuapp.com/categories]
- Products: [https://heroku-bsale-server.herokuapp.com/products]

# The Fronted Client is deployed with Netlify at the following link:

- Deploy: [https://clever-leakey-38ed47.netlify.app/]

# The tools or libraries used for this project were:

Server:

- gem PG
- gem MYsql2
- gem rack cors
- gem Rubocop
- host aws connection with environment variables

Client:

- Bootstrap
- Responsive
- Grid and Flex
- Singleton
- fontawesome

The implementation of some commands are in:
/store-online/server/docs/commands.md
