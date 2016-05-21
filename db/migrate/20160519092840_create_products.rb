class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :number
      t.string :mclass
      t.boolean :is_selled
      t.boolean :is_direct

      t.timestamps null: false
    end
  end
end
