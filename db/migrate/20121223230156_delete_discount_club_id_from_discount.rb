class DeleteDiscountClubIdFromDiscount < ActiveRecord::Migration
  def change
    remove_column :discounts, :discount_club_id
  end
end
