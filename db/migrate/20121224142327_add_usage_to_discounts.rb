class AddUsageToDiscounts < ActiveRecord::Migration
  def change
    add_column :discounts, :usage, :string
  end
end
