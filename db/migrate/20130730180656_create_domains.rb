class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :ip
      t.string :name

      t.timestamps
    end
  end
end
