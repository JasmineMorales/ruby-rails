class CreateBookHasGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :book_has_genres do |t|

      t.timestamps
    end
  end
end
