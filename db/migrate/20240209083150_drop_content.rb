class DropContent < ActiveRecord::Migration[7.1]
  def change
    drop_table :contents
  end
end
