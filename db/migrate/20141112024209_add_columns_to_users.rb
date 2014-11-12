class AddColumnsToUsers < ActiveRecord::Migration
  def change

  	add_column :users, :address, :text
  	add_column :users, :city, :text
  	add_column :users, :state, :text
  	add_column :users, :zip_code, :text

  end
end
