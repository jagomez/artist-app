class ChangeColumnstoIntegers < ActiveRecord::Migration
  def change
  	change_column :deadlines, :user_id, :integer
  	change_column :deadlines, :opportunity_id, :integer
  end
end
