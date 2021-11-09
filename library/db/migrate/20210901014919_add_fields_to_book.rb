class AddFieldsToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :name, :string, null: false
    add_column :books, :description, :string, null: false
  end
end
