class CreateVenuesCities < ActiveRecord::Migration
  def change
    create_table :venues_cities, id: false do |t|
      t.references :Venue
      t.references :City
    end
    add_index :venues_cities, :Venue_id
    add_index :venues_cities, :City_id
  end
end
