class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :listings, :room_type
    remove_column :listings, :bathroom
  end

   def down
    add_column :listings, :room_type, :integer, null: false
    add_column :listings, :bathroom, :string, null: false
  end

end
