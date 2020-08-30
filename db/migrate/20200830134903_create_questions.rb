class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.text :question_text
      t.integer :sort_order
      t.integer :valuation_factor
      t.references :question_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
