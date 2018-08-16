class AddFieldsToFilm < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :poster, :string
  end
end
