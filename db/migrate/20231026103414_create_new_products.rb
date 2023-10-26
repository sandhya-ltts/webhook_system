class CreateNewProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :new_products do |t|
    	t.string :name
      t.text :description
      t.float :price
      t.timestamps
    end
  end
end
