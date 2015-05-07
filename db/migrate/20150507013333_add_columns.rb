class AddColumns < ActiveRecord::Migration

  def up
    add_column :listings, :room_type, :string, null: false
    add_column :listings, :bathroom, :integer, null: false
  end
   def down
    remove_column :listings, :room_type
    remove_column :listings, :bathroom
  end

end
