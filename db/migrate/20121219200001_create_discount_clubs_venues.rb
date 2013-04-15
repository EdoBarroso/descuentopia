class CreateDiscountClubsVenues < ActiveRecord::Migration
  def change
  	create_table :discount_clubs_venues do |t|
  		t.references :discount_club 
  		t.references :venue
  	end
  	add_index :discount_clubs_venues, :discount_club_id
  	add_index :discount_clubs_venues, :venue_id
  end
end
