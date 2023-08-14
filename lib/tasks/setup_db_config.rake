task setup_db_config: :environment do
  sql = "INSERT INTO schema_migrations (version) values (20230813125825);" 
  results = ActiveRecord::Base.connection.execute(sql)
end
