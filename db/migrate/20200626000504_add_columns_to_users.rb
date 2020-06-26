class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :birthday, :date
    add_column :users, :avatar, :string
  end
end
