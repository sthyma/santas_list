class ChangeAvatarColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :avatar, :string, default: "https://image.flaticon.com/icons/svg/2945/2945345.svg"
  end
end
