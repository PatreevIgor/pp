class RemoveColumnUserIdToRoom < ActiveRecord::Migration
  def change
  	remove_column :rooms, :user_id
  end
end
