class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.references :category
      t.references :discount_club
      t.string :name
      t.string :city

      t.timestamps
    end
    add_index :venues, :category_id
    add_index :venues, :discount_club_id
  end
end
