class AddActiveColumn < ActiveRecord::Migration
  def change

  	add_column :deadlines, :active, :boolean
  
  end
end
