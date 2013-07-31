class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :number_of_pages
      t.float :cost
      t.string :author
      t.integer :stock

      t.timestamps
    end
  end
end
