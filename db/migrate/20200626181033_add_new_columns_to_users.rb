class AddNewColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :delivery_method, :string
    add_column :users, :politeness, :integer
    add_column :users, :faith, :integer
  end
end
