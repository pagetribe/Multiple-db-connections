This application is a quick example to connecting one or more of your models to an external database.

Check out models: internal_database_model and external_database_model

As their names suggest, one is connected to a table on this application's database (development.sqlite3). 
The other is connected to external.sqlite3

I'm surprised how easy this is!

Basically, establish_connection() is called on your models and then passed up the chain to ActiveRecord::Base.
By defining it's parameters in your model you can set which database connection is used.

I guess to connect more than one of your models to the same external database you'd just stick an extra class
in between them and ActiveRecord::Base like so:

class ExternalDatabaseConnection < ActiveRecord::Base

	table_name_prefix = "foobar"
	
	# establish your connection here
	establish_connection :adapter => "sqlite3", :database => "db/external.sqlite3"

end

class ExternalModelOne < ExternalDatabaseConnection

end

class ExternalModelTwo < ExternalDatabaseConnection

end

see (/lib/external_database_connection.rb)