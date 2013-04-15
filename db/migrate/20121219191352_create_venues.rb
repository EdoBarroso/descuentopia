class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.references :category
      t.string :name

      t.timestamps
    end
    add_index :venues, :category_id
  end
end
