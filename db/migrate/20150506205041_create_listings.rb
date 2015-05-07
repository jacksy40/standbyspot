class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id, null: false
      t.string :address, null: false
      t.integer :room_type, null: false
      t.string :bathroom, null: false
      t.string :price, null: false
      t.string :notes

      t.timestamps null: false
    end
  end
end
