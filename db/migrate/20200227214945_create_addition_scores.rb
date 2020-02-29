class CreateAdditionScores < ActiveRecord::Migration[6.0]
  def change
    create_table :addition_scores do |t|
      t.integer :score

      t.timestamps
    end
  end
end
