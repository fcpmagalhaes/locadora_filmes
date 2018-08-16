class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :name
      t.text :description
      t.integer :year
      t.float :price
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
