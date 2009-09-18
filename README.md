Multiple Database Connections
=====================================================================================================

This application is a quick example to connecting one or more of your models to an external database.

Check out models: internal_database_model and external_database_model

As their names suggest, one is connected to a table on this application's database (development.sqlite3). 
The other is connected to external.sqlite3

I'm surprised at how easy this is!

By calling establish_connection inside your model (along with the relevant options to connect to your db) you can connect one model to a different database to the default for your current environment.

		class ExternalModel < ActiveRecord::Base
 
		  establish_connection :adapter => "mysql", :database => "db/other_database", :username => "root", :password => "password"

		end

Using this method, it may be possible to delegate expensive tasks to a separate application and connect to that application's database.
