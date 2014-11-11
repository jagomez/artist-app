class AddUrLcolumn < ActiveRecord::Migration
  def change
  	add_column :opportunities, :url, :text
  end
end
