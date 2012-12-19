class CreateDiscountClubs < ActiveRecord::Migration
  def change
    create_table :discount_clubs do |t|
      t.string :name

      t.timestamps
    end
  end
end
