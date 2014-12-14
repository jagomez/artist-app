class AddProfileImage < ActiveRecord::Migration
  def change
  	add_column :users, :profile_image, :text
  end
end
