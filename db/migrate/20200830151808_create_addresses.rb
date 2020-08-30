class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :extra
      t.string :street
      t.integer :postcode
      t.string :city
      t.string :phone
      t.string :email
      t.string :website
      t.references :address_category, null: false, foreign_key: true
      t.references :severity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
