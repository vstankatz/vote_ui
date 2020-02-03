class RenameMessagesToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_table :messages, :posts
  end
end
