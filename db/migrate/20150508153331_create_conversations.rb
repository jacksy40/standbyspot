class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :inquiry_id, null: false
      t.integer :user_id, null: false
      t.string :message, null: false

      t.timestamps null: false
    end
  end
end
