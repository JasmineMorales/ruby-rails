class AddingFieldsToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :has_movie, :boolean, null: true
  end
end
