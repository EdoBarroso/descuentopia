class CreateDiscountClubsUsers < ActiveRecord::Migration
  def change
    create_table :discount_clubs_users, id: false do |t|
      t.references :discount_club
      t.references :user
    end
    add_index :discount_clubs_users, :discount_club_id
    add_index :discount_clubs_users, :user_id
  end
end
