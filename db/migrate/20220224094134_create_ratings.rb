class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.text :body
      t.integer :rate
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
