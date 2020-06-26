class AddPositionToWishes < ActiveRecord::Migration[6.0]
  def change
    add_column :wishes, :position, :integer
  end
end
