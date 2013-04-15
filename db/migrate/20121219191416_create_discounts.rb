class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.references :venue
      t.references :discount_club
      t.string :conditions
      t.integer :price
      t.string :discount
      t.string :usage

      t.timestamps
    end
    add_index :discounts, :venue_id
    add_index :discounts, :discount_club_id
  end
end
