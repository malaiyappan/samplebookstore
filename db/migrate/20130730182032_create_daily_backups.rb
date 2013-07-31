class CreateDailyBackups < ActiveRecord::Migration
  def change
    create_table :daily_backups do |t|
      t.string :server_ip
      t.string :bucket_name
      t.string :dbbackup
      t.string :filesbackup
      t.string :status
      t.integer :domain_id

      t.timestamps
    end
  end
end
