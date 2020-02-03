class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :user_name
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
