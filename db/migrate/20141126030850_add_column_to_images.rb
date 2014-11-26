class AddColumnToImages < ActiveRecord::Migration
  def change
  	add_column :images, :user, :integer
  end
end
