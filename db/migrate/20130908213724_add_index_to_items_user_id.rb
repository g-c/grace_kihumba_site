class AddIndexToItemsUserId < ActiveRecord::Migration
  def change
     add_index :items,:user_id,unique: true
  end
end
