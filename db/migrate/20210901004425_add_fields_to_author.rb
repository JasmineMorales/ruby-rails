class AddFieldsToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :country, :string, null: true
  end
end
