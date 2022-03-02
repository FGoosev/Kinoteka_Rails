class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :body
      t.string :genre

      t.timestamps
    end
  end
end
