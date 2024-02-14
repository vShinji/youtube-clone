class AddIndexUniquinessToDislike < ActiveRecord::Migration[7.1]
  def change
  end
  add_index :dislikes, [:user_id, :post_id], unique: true
end
