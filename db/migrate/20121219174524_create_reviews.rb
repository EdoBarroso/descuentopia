class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :venue
      t.references :user
      t.integer :stars
      t.string :comment

      t.timestamps
    end
    add_index :reviews, :venue_id
    add_index :reviews, :user_id
  end
end
