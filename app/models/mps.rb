class Mps < ActiveRecord::Base
  set_table_name "MPs"
  establish_connection :getup_db_development  
end
