class ChangeColumnStatus < ActiveRecord::Migration
 def change
  	remove_column :deadlines, :status

  	
  end
end
