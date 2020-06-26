class CreateWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      t.string :name, null: false
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
