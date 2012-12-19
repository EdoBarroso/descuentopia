class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.references :category
      t.string :name

      t.timestamps
    end
    add_index :states, :category_id
  end
end
