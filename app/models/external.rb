class External < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :getup_db_development
end


