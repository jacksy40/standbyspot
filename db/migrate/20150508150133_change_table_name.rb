class ChangeTableName < ActiveRecord::Migration

  def up
    rename_table :messages, :inquiries
  end

  def down
    rename_table :inquiries, :messages
  end

end
