class CreateVisitPerDays < ActiveRecord::Migration[7.0]
  def change
    create_table :visit_per_days do |t|
      t.integer :number_of_visits
      t.date :date
    end

    add_index :visit_per_days, :date, unique: true
  end
end
