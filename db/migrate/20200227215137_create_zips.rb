class CreateZips < ActiveRecord::Migration[6.0]
  def change
    create_table :zips do |t|
      t.integer :zip

      t.timestamps
    end
  end
end
