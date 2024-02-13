class AddViewCountToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :view_counter, :integer, default: 0
  end
end
