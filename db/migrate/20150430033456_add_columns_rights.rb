class AddColumnsRights < ActiveRecord::Migration

  def up
    add_column :users, :admin, :boolean, default: "false"
    add_column :users, :master, :boolean, default: "false"
  end

  def down
    remove_column :users, :admin
    remove_column :users, :master
  end

end
