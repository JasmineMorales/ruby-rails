class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name, null:false
      t.text :bio, null:true
      t.text :country, null:true
      t.timestamps
    end
  end
end
