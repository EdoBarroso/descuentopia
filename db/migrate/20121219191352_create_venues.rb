class CreateVenues < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.references :category
      t.string :name
      t.string :city

      t.timestamps
    end
    add_index :venues, :category_id
  end
end
