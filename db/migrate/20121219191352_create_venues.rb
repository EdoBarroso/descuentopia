class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.references :Category
      t.string :name
      t.string :city

      t.timestamps
    end
    add_index :venues, :category_id
  end
end
