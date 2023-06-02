class ChangeValuationFactorToFloat < ActiveRecord::Migration[7.0]
  def change
    # table questions
    reversible do |dir|
      change_table :questions do |t|
        dir.up   { t.change :valuation_factor, :float }
        dir.down { t.change :valuation_factor, :integer }
      end
    end
  end
end
