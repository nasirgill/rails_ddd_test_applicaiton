class CreatePayments < ActiveRecord::Migration[7.0]

  def db_connection
   ActiveRecord::Base.establish_connection(
      ActiveRecord::Base.configurations.configs_for(
        env_name: ENV['DATABASE_2_CONNNECTION_NAME']
      ).first.configuration_hash
    ).connection
  end

  def change
    db_connection.create_table :payments do |t|
      t.bigint :user_id
      t.string :amount
      t.integer :currency
      
      t.index :user_id
      t.timestamps
    end
  end
end
