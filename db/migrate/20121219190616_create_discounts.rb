class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.references :venue
      t.string :conditions
      t.integer :price
      t.string :discount

      t.timestamps
    end
    add_index :discounts, :venue_id
  end
end
