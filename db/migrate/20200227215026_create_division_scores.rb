class CreateDivisionScores < ActiveRecord::Migration[6.0]
  def change
    create_table :division_scores do |t|
      t.integer :score

      t.timestamps
    end
  end
end
