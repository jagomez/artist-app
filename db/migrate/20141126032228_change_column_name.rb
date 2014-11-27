class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :images, :user, :user_id
  end
end
