class CreateBookHasAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :book_has_authors do |t|
      t.references :author, null:false, index:true
      t.references :book, null:false, index:true
      t.timestamps
    end
  end
end
