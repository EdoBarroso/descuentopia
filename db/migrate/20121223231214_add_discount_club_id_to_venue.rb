class AddDiscountClubIdToVenue < ActiveRecord::Migration
  def change
    add_column :discounts, :discount_club_id, :integer
  end
end
