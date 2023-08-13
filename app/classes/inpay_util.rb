class InpayUtil

  class << self
    def db_connection
      ActiveRecord::Base.establish_connection(
        Rails.env.test? && :test || ENV['DATABASE_2_CONNNECTION_NAME'].to_sym
      ).connection
    end
  end
end