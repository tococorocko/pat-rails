class CreateAddressCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :address_categories do |t|
      t.string :name
      t.text :description
      t.integer :sort_order
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
