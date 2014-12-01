class RemoveUserIdFromLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :User_ID, :text
  end
end
