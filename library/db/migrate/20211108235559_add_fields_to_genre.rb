class AddFieldsToGenre < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :name, :string, null: false
    add_column :genres, :description, :string, null: false
  end
end
