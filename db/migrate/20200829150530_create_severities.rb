class CreateSeverities < ActiveRecord::Migration[6.0]
  def change
    create_table :severities do |t|
      t.string :name
      t.integer :value
      t.text :description

      t.timestamps
    end
  end
end
