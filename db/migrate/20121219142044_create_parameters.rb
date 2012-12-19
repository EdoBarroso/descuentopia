class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.text :content
      t.integer :discount_club_id

      t.timestamps
    end
  end
end
