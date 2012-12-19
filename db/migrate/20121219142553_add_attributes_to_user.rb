class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :phone, :integer
  end
end
