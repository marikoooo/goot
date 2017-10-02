class AddProfileToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :country, :string
    add_column :users, :gender, :string
    add_column :users, :introduction, :text
    add_column :users, :profile_image, :string
  end
end
