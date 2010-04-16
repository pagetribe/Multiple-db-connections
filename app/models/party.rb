class Party < ActiveRecord::Base
  set_table_name "Party"
#  establish_connection :adapter => "sqlite3", :database => "db/external.sqlite3"
#  establish_connection :adapter => "mysql", :database => "getup", :username => "root", :password => "root", :host => "localhost"
  establish_connection :getup_db_development  
  
end
