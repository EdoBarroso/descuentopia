class CreateCategoriesStates < ActiveRecord::Migration
  def change
    create_table :categories_states, id: false do |t|
      t.references :Category
      t.references :State
    end
    add_index :categories_states, :Category_id
    add_index :categories_states, :State_id
  end
end
