class RemoveUserIdAndIntegerFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :user_id
    remove_column :posts, :integer
  end
end
