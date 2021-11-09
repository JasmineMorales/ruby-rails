class CreateLibrars < ActiveRecord::Migration[6.1]
  def change
    create_table :librars do |t|
      t.references :user, null:false, index:true
      t.references :book, null:false, index:true
      t.timestamps
    end
  end
end
