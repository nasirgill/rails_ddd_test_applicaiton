class SecondaryDatabase < ActiveRecord::Base
  self.abstract_class = true
  connects_to database: { 
    reading: ENV['DATABASE_2_CONNNECTION_NAME'].to_sym,
    writing: ENV['DATABASE_2_CONNNECTION_NAME'].to_sym
  }
end